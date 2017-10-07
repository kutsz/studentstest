<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Search</title>
	<link href="/template/css/style.css" rel="stylesheet">
	<script src="/template/js/jquery-3.2.1.min.js"></script>
	<script src="/template/js/jquery.tablesorter.min.js"></script>
</head>
<body>

	<h2>Search</h2>

	<p>Список абитуриентов</p>

	<form action="/search" method="post">
		Поиск: <input type="text" name="search" placeholder="<?php echo $search; ?>" />
		<input type="submit" name="submitSearch"  value="Найти" /><br>
	</form><br>



	<?php if (!empty($students) && is_array($students)): ?>

		<table id="myTable">
			<thead>
				<tr>
					<th>
						<center> <?php echo 'Имя'; ?></center>
					</th>
					<th>
						<center> <?php echo 'Фамилия'; ?></center>
					</th>
					<th>
						<center> <?php echo 'Номер группы '; ?></center>
					</th>
					<th>
						<center> <?php echo 'Кол-во баллов'; ?></center>
					</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($students as $student): ?>
					<tr>
						<td> <?php echo $student['name']; ?></td>
						<td> <?php echo $student['surname']; ?></td>
						<td> <?php echo $student['numberOfGroup']; ?></td>
						<td> <?php echo $student['pointsOfVNO']; ?></td>

					</tr>
				<?php endforeach;?>
			<tbody>
		</table> <br>

	<?php endif;?>

	<a href="/main">list of students</a><br>

	<script>
				$(document).ready(function(){

					$("#myTable").tablesorter();
				});

	</script>

</body>

</html>
