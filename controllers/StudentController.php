<?php

class StudentController {

	private function input($data) {
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data, ENT_QUOTES, 'UTF-8');
		return $data;
	}

	public function actionRegistration() {

		if (isset($_POST['submit'])) {

			$name = (isset($_POST['name'])) ? $this->input($_POST['name']) : '';
			$surname = (isset($_POST['surname'])) ? $this->input($_POST['surname']) : '';
			$gender = (isset($_POST['gender'])) ? $_POST['gender'] : '';
			$numberOfGroup = (isset($_POST['numberOfGroup'])) ? $this->input($_POST['numberOfGroup']) : '';
			$email = (isset($_POST['email'])) ? $this->input($_POST['email']) : '';
			$pointsOfVNO = (isset($_POST['pointsOfVNO'])) ? $this->input($_POST['pointsOfVNO']) : '';
			$yearOfBirth = (isset($_POST['yearOfBirth'])) ? $this->input($_POST['yearOfBirth']) : '';
			$location = (isset($_POST['location'])) ? $_POST['location'] : '';

			$errors = false;
			//$is_student = false;
			$is_email = false;
			//$ok = null;
			//$student = [];

			if (empty($name)) {
				$errors[] = 'Введите имя';

			}

			if (!empty($name) && !Student::checkNamelength($name)) {
				$errors[] = 'Имя длинной 200 и больше символов не допускается';
			}

			if (empty($surname)) {
				$errors[] = 'Введите фамилию';

			}

			if (!empty($surname) && !Student::checkNamelength($surname)) {
				$errors[] = 'Фамилия длинной 200 и больше символов не допускается';
			}

			if (empty($gender)) {
				$errors[] = 'Выберите пол';

			}

			if (empty($numberOfGroup)) {
				$errors[] = 'Введите номер группы';

			}

			if (!empty($numberOfGroup) && !Student::checkNumberOfGroup($numberOfGroup)) {
				$errors[] = 'Номер группы должен быть от 2 до 5 цифр или букв';
			}

			if (empty($email)) {
				$errors[] = 'Введите e-mail';

			}

			if (!empty($email) && !Student::checkEmail($email)) {
				$errors[] = 'Неправильный email';
			} else {
				$is_email = true;

			}

			if ($is_email && Student::checkEmailExists($email)) {
				$errors[] = 'Такой email уже используется.';
			}

			if (empty($pointsOfVNO)) {
				$errors[] = 'Введите число баллов ВНО';
			}

			if (!empty($pointsOfVNO) && !Student::checkPointsVNO($pointsOfVNO)) {
				$errors[] = 'Суммарное число баллов от 0 до 200';
			}

			if (empty($yearOfBirth)) {
				$errors[] = 'Введите год рождения';
			}

			if (!empty($yearOfBirth) && !Student::checkYear($yearOfBirth)) {
				$errors[] = 'Неправильный год рождения';
			}

			if (empty($location)) {
				$errors[] = 'Выберите местоположение';
			}

			if ($errors == false) {
				$pointsOfVNO = (int) $pointsOfVNO;
				$yearOfBirth = (int) $yearOfBirth;
				$flag = Student::addStudent($name, $surname, $gender, $numberOfGroup, $email, $pointsOfVNO, $yearOfBirth, $location);
				if ($flag) {
					$student = Student::getStudentByEmail($email);
					$id = $student['id'];
					$ok = true;
					setcookie(
						"name",
						$name,
						time() + (10 * 365 * 24 * 60 * 60)
					);
					setcookie(
						"surname",
						$surname,
						time() + (10 * 365 * 24 * 60 * 60)
					);
					setcookie(
						"email",
						$email,
						time() + (10 * 365 * 24 * 60 * 60)
					);
				}
			}

		}

		require_once ROOT . '/views/students/form.php';
		return true;
	}

	public function actionEdit() {

		if (isset($_POST['submitedit'])) {

			$id = $_POST['id'];
			$name = (isset($_POST['name1'])) ? $this->input($_POST['name1']) : '';
			$surname = (isset($_POST['surname1'])) ? $this->input($_POST['surname1']) : '';
			$gender = (isset($_POST['gender1'])) ? $_POST['gender1'] : '';
			$numberOfGroup = (isset($_POST['numberOfGroup1'])) ? $this->input($_POST['numberOfGroup1']) : '';
			$email = (isset($_POST['email1'])) ? $this->input($_POST['email1']) : '';
			$pointsOfVNO = (isset($_POST['pointsOfVNO1'])) ? $this->input($_POST['pointsOfVNO1']) : '';
			$yearOfBirth = (isset($_POST['yearOfBirth1'])) ? $this->input($_POST['yearOfBirth1']) : '';
			$location = (isset($_POST['location1'])) ? $_POST['location1'] : '';

			//var_dump($_POST);

			$errors = false;

			if (empty($name)) {
				$errors[] = 'Введите имя';

			}

			if (!empty($name) && !Student::checkNamelength($name)) {
				$errors[] = 'Имя длинной 200 и больше символов не допускается';
			}

			if (empty($surname)) {
				$errors[] = 'Введите фамилию';

			}

			if (!empty($surname) && !Student::checkNamelength($surname)) {
				$errors[] = 'Фамилия длинной 200 и больше символов не допускается';
			}

			if (empty($gender)) {
				$errors[] = 'Выберите пол';

			}

			if (empty($numberOfGroup)) {
				$errors[] = 'Введите номер группы';

			}

			if (!empty($numberOfGroup) && !Student::checkNumberOfGroup($numberOfGroup)) {
				$errors[] = 'Номер группы должен быть от 2 до 5 цифр или букв';
			}

			if (empty($email)) {
				$errors[] = 'Введите e-mail';

			}

			if (!empty($email) && !Student::checkEmail($email)) {
				$errors[] = 'Неправильный email';
			} else {
				$is_email = true;

			}

			// if ($is_email && Student::checkEmailExists($email)) {
			// 	$errors[] = 'Такой email уже используется.';
			// }

			if (empty($pointsOfVNO)) {
				$errors[] = 'Введите число баллов ВНО';
			}

			if (!empty($pointsOfVNO) && !Student::checkPointsVNO($pointsOfVNO)) {
				$errors[] = 'Суммарное число баллов от 0 до 200';
			}

			if (empty($yearOfBirth)) {
				$errors[] = 'Введите год рождения';
			}

			if (!empty($yearOfBirth) && !Student::checkYear($yearOfBirth)) {
				$errors[] = 'Неправильный год рождения';
			}

			if (empty($location)) {
				$errors[] = 'Выберите местоположение';
			}

			if ($errors == false) {
				$pointsOfVNO = (int) $pointsOfVNO;
				$yearOfBirth = (int) $yearOfBirth;
				Student::update($id, $name,
					$surname, $gender, $numberOfGroup, $email, $pointsOfVNO, $yearOfBirth, $location);

			}

		}
		header("Location: /main");
		return true;
	}

	public function actionMain($page = 1) {

		$total = Student::getTotalStudents();
		$pagination = new Pagination($total, $page, Student::SHOW_BY_DEFAULT, 'page-');

		$students = [];
		//$students = Student::getAllStudents();
		$students = Student::getPortionStudents($page);

		require_once ROOT . '/views/students/main.php';

	}

	public function actionSearch() {

		if (isset($_POST['submitSearch'])) {

			$search = isset($_POST['search']) ? $this->input($_POST['search']) : '';

			if (!empty($search)) {
				$students = [];
				$students = Student::searchData($search);
			} else {
				//$err = "<p>Вы обратились к файлу без необходимых параметров</p>";
			}

		}

		require_once ROOT . '/views/students/search.php';
		return true;

	}

}
