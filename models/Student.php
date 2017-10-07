<?php

class Student {

	const SHOW_BY_DEFAULT = 50;

	public static function checkNamelength($name) {
		if (mb_strlen($name) >= 200) {
			return false;
		}
		return true;
	}

	public static function checkEmail($email) {
		if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
			return true;
		}
		return false;
	}

	public static function checkEmailExists($email) {
		$db = Db::getConnection();

		$sql = 'SELECT COUNT(*) FROM students WHERE email = :email';

		$result = $db->prepare($sql);
		$result->bindParam(':email', $email, PDO::PARAM_STR);
		$result->execute();

		if ($result->fetchColumn()) {
			return true;
		}

		return false;
	}

	public static function checkYear($year) {
		$year = (int) $year;
		if ($year > 1900 && $year < 2100) {
			return true;
		}
		return false;
	}

	public static function checkPointsVNO($points) {
		$points = (int) $points;
		if ($points >= 0 && $points <= 200) {
			return true;
		}
		return false;
	}

	public static function checkNumberOfGroup($number) {
		$length = mb_strlen($number);
		if ($length >= 2 && $length <= 5) {
			return true;
		}
		return false;
	}

	public static function getStudentByEmail($email) {
		$db = Db::getConnection();

		$sql = 'SELECT * FROM students WHERE email = :email';

		$result = $db->prepare($sql);
		$result->bindParam(':email', $email, PDO::PARAM_STR);

		$result->setFetchMode(PDO::FETCH_ASSOC);
		$result->execute();

		return $result->fetch();
	}

	public static function addStudent($name, $surname, $gender, $numberOfGroup, $email, $pointsOfVNO, $yearOfBirth, $location) {

		$db = Db::getConnection();

		$sql = 'INSERT INTO students (name, surname, gender, numberOfGroup, email, pointsOfVNO, yearOfBirth, location) '
			. 'VALUES (:name, :surname, :gender, :numberOfGroup, :email, :pointsOfVNO, :yearOfBirth, :location)';

		$result = $db->prepare($sql);
		$result->bindParam(':name', $name, PDO::PARAM_STR);
		$result->bindParam(':surname', $surname, PDO::PARAM_STR);
		$result->bindParam(':gender', $gender, PDO::PARAM_STR);
		$result->bindParam(':numberOfGroup', $numberOfGroup, PDO::PARAM_STR);
		$result->bindParam(':email', $email, PDO::PARAM_STR);
		$result->bindParam(':pointsOfVNO', $pointsOfVNO, PDO::PARAM_INT);
		$result->bindParam(':yearOfBirth', $yearOfBirth, PDO::PARAM_INT);
		$result->bindParam(':location', $location, PDO::PARAM_STR);

		return $result->execute();
	}

	public static function update($id, $name, $surname, $gender, $numberOfGroup, $email, $pointsOfVNO,
		$yearOfBirth, $location) {

		$db = Db::getConnection();

		$statement = $db->prepare('UPDATE students
			                        SET
			                        name = :name,
			                        surname = :surname,
		                            gender = :gender,
		                            numberOfGroup = :numberOfGroup,
		                            email = :email,
			                        pointsOfVNO = :pointsOfVNO,
		                            yearOfBirth = :yearOfBirth,
		                            location = :location
		                            WHERE id = :id');
		$statement->execute([
			':id' => $id,
			':name' => $name,
			':surname' => $surname,
			':gender' => $gender,
			':numberOfGroup' => $numberOfGroup,
			':email' => $email,
			':pointsOfVNO' => $pointsOfVNO,
			':yearOfBirth' => $yearOfBirth,
			':location' => $location,
		]);

	}

	public static function searchData($search) {

		$db = Db::getConnection();

		$statement = $db->prepare('SELECT id,name,surname,numberOfGroup,pointsOfVNO FROM students
		WHERE name LIKE :search');
		$statement->execute([':search' => "%{$search}%"]);

		$data_temp = [];
		$i = 0;
		while ($row = $statement->fetch()) {
			$data_temp[$i]['id'] = $row['id'];
			$data_temp[$i]['name'] = $row['name'];
			$data_temp[$i]['surname'] = $row['surname'];
			$data_temp[$i]['numberOfGroup'] = $row['numberOfGroup'];
			$data_temp[$i]['pointsOfVNO'] = $row['pointsOfVNO'];

			$i++;
		}

		return $data_temp;
	}

	public static function getTotalStudents() {
		$db = Db::getConnection();

		$sql = 'SELECT count(id) AS count FROM students';

		$result = $db->prepare($sql);

		$result->execute();

		$row = $result->fetch();
		return $row['count'];
	}

	public static function getAllStudents() {

		$db = Db::getConnection();

		$statement = $db->prepare('SELECT id,name,surname,numberOfGroup,pointsOfVNO FROM students');
		$statement->execute();

		$data_temp = [];
		$i = 0;
		while ($row = $statement->fetch()) {
			$data_temp[$i]['id'] = $row['id'];
			$data_temp[$i]['name'] = $row['name'];
			$data_temp[$i]['surname'] = $row['surname'];
			$data_temp[$i]['numberOfGroup'] = $row['numberOfGroup'];
			$data_temp[$i]['pointsOfVNO'] = $row['pointsOfVNO'];

			$i++;
		}

		return $data_temp;
	}

	public static function getPortionStudents($page = 1) {

		$limit = self::SHOW_BY_DEFAULT;
		$offset = ($page - 1) * self::SHOW_BY_DEFAULT;

		$db = Db::getConnection();

		$statement = $db->prepare('SELECT id,name,surname,numberOfGroup,pointsOfVNO FROM students ORDER BY pointsOfVNO DESC LIMIT :limitt OFFSET :offset');

		$statement->bindParam(':limitt', $limit, PDO::PARAM_INT);
		$statement->bindParam(':offset', $offset, PDO::PARAM_INT);

		$statement->execute();

		$data_temp = [];
		$i = 0;
		while ($row = $statement->fetch()) {
			$data_temp[$i]['id'] = $row['id'];
			$data_temp[$i]['name'] = $row['name'];
			$data_temp[$i]['surname'] = $row['surname'];
			$data_temp[$i]['numberOfGroup'] = $row['numberOfGroup'];
			$data_temp[$i]['pointsOfVNO'] = $row['pointsOfVNO'];

			$i++;
		}

		return $data_temp;
	}

}
