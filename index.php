<?php
require_once('db.php');

session_start();

// session_destroy();
?>


<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>Shop.loc</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/fontawesome.min.css">
	<link rel="stylesheet" href="css/all.min.css">
</head>

<body>
	<?php require_once "menu.php"; ?>
	<?php
	$limit = '';
	$where = '1';
	if (isset($_GET['category_id']) && is_numeric($_GET['category_id'])) {
		$where = 'category_id = ' . $_GET['category_id'];
	}
	$limit .= "LIMIT 4";
	$sql_product = "SELECT * FROM product WHERE $where  ORDER BY id DESC $limit";
	?>
	<div class="container-fluid">
		<div class="row">
			<?php foreach ($conn->query($sql_product) as $row) : ?>
				<div class="col-md-3">
					​<div class="thumbnail">
						<a href="#">
							<img src="<?= $row['picture'] ?>" alt="Lights" style="width:100%">
							<div class="caption">
								<h4><?= $row['name'] ?></h4>
								<p>
									<?= $row['amount'] ?>
									<button class="btn btn-warning add_product btn-sm" data-id="<?= $row['id'] ?>">Cart</button>
								</p>
							</div>
						</a>
					</div>
				</div>
			<?php endforeach ?>

		</div>
		<a id="show-more" href="#">Yana ko'rish</a>
	</div>
</body>

</html>
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>

<script type="text/javascript">
	$('.add_product').click(function() {
		let id = $(this).data('id');

		$.ajax({
			method: "GET",
			url: "add_product_cart.php",
			data: {
				product_id: id
			},
			success: function(data) {
				$('#shopping_cart').html(data);
				console.log(data);
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(jqXHR);
				console.log(textStatus);
				console.log(errorThrown);
			}
		});
	});
	$('#show-more').click(function() {

	});
</script>