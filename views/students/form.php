<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Registration</title>
	<link href="/template/css/style.css" rel="stylesheet">
</head>
<body>

	<h2>Registration</h2>

	<?php if (isset($errors) && is_array($errors) && count($errors) > 0): ?>
		<div id = 'errors'>
			<ul>
				<?php foreach ($errors as $error): ?>
					<li>  <?php echo $error; ?></li>
				<?php endforeach;?>
			</ul>
		</div>
	<?php endif;?>


	<?php if (isset($_COOKIE)): ?>

		<div id = 'ok'>
			Cпасибо, данные сохранены,вы можете их отредактировать или просмотреть список абитуриентов.
		</div>

		<form action="edit" method="POST">

			<p>
				Name<br>
				<input type="text" name="name1" value="<?php echo $_COOKIE['name']; ?>">
			</p>

			<p>
				Surname<br>
				<input type="text" name="surname1" value="<?php echo $_COOKIE['surname']; ?>">
			</p>

			<p>
				Gender<br>
				<input type='radio' name="gender1" value="male"
				<?php if ($_COOKIE['gender'] == 'male'): ?> checked <?php endif;?> >male<br>
				<input type='radio' name="gender1" value="female"
				<?php if ($_COOKIE['gender'] == 'female'): ?> checked <?php endif;?> >female<br>
			</p>
			<p>
				Number of group<br>
				<input type="text" name="numberOfGroup1" value="<?php echo $_COOKIE['numberOfGroup']; ?>">
			</p>

			<p>
				E-mail <br>
				<input type="email" name="email1" value="<?php echo $_COOKIE['email']; ?>">
			</p>

			<p>
				Points of VNO<br>
				<input type="text" name="pointsOfVNO1" value="<?php echo $_COOKIE['pointsOfVNO']; ?>">
			</p>

			<p>
				Year of birth<br>
				<input type="text" name="yearOfBirth1" value="<?php echo $_COOKIE['yearOfBirth']; ?>">
			</p>

			<p>
				location<br>
				<input type='radio' name="location1" value="local"
				<?php if ($_COOKIE['location'] == 'local'): ?> checked <?php endif;?> >local<br>
				<input type='radio' name="location1" value="nonresident"
				<?php if ($_COOKIE['location'] == 'nonresident'): ?> checked <?php endif;?> >nonresident<br>
			</p>

			<input type="hidden" name ="id" value="<?php echo $_COOKIE['id']; ?>" >

			<p>
				<input type="submit" name="submitedit" value="Submit">
			</p>


		</form>

	<?php else: ?>

		<form action="" method="POST">

			<p>
				Name<br>
				<input type="text" name="name" >
			</p>

			<p>
				Surname<br>
				<input type="text" name="surname" >
			</p>

			<p>
				Gender<br>
				<input type='radio' name="gender" value="male">male<br>
				<input type='radio' name="gender" value="female">female<br>
			</p>
			<p>
				Number of group<br>
				<input type="text" name="numberOfGroup" >
			</p>

			<p>
				E-mail <br>
				<input type="email" name="email" >
			</p>

			<p>
				Points of VNO<br>
				<input type="text" name="pointsOfVNO" >
			</p>

			<p>
				Year of birth<br>
				<input type="text" name="yearOfBirth" >
			</p>

			<p>
				location<br>
				<input type='radio' name="location" value="local">local<br>
				<input type='radio' name="location" value="nonresident">nonresident<br>
			</p>


			<p>
				<input type="submit" name="submit" value="Submit">
			</p>


		</form>


	<?php endif;?>

	<a href="/main">list of students</a><br>

</body>

</html>
