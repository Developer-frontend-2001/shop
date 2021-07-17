<?php
require_once('db.php');

session_start();

$username = isset($_SESSION['username']) ? $_SESSION['username'] : NULL;

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Shop.loc</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	<?php require_once "menu.php"; ?>
	<?php
		$where = '1';
		if (isset($_GET['id']) && is_numeric($_GET['id'])) {
			$where = 'id = '.$_GET['id'];
		}
		
		$sql_product = "SELECT * FROM product WHERE $where";
		
		$result = mysqli_query($conn, $sql_product);
		$product = mysqli_fetch_assoc($result);

	?>
	<div class="container">
		<div class="row mt-4">
			<div class="col-md-3">
				<div class="card">
            		<div class="thumbnail">
				        <img src="<?= str_replace("../", "", $product['picture']) ?>" alt="Lights" style="width:220px">
				    </div>
				</div>
			</div>
			<div class="col-md-6">
				<h4><?= $product['name'] ?></h4>
				<p>
	          		Narxi: <?= $product['amount'] ?> so'm
	          	</p>
	          	<button class="btn btn-warning add_product btn-sm w-100" data-id="<?= $product['id'] ?>">Cart</button>
			</div>
			<div class="col-md-3">
				<p>Bu yerda sidebar</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9">
				<p><?= $product['content'] ?></p>
				<br>

				Kommentariyalar
				<hr>
				Rahmatulloh 16.07.2021 18:23
				<p>
					Bu mahsulotni sifatiga gap yo'q!
				</p>
				<?php if ($username): ?>
					<form method="POST">
						<textarea rows="6" cols="20" class="form-control" placeholder="Bu yerda izoh yoziladi. Kamida 50 ta bo'lishi kerak"></textarea>

						<button type="submit" class="btn btn-primary btn-sm">Izoh qoldirish</button>
					</form>
				<?php endif ?>

			</div>
		</div>
	</div>
</body>