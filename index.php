<?php
require_once('db.php');

session_start();
session_destroy();
?>


<!DOCTYPE html>
<html lang="en-US">
<head>
	<meta charset="utf-8">
	<title>Shop.loc</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	<?php require_once "menu.php"; ?>
	<?php
	$where = '1';
	if (isset($_GET['category_id']) && is_numeric($_GET['category_id'])) {
		$where = 'category_id = '.$_GET['category_id'];
	}

	$sql_product = "SELECT * FROM product WHERE $where ORDER BY id DESC LIMIT 4";
	$last_id = 0;
	$_SESSION['product_url'] = "../index.php";
	?>
	<div class="container " style="margin-top: 100px;">
		<pre>
		</pre>
		<div class="row" id="products">
			<?php $count = 0; ?>
			<?php foreach ($conn->query($sql_product) as $row): ?>
				<div class="col-md-3">
					<div class="card mt-4">
						<div class="thumbnail" style="border: 1px solid #eee; min-height: 332px; padding: 5px">
							<a href="#">
								<img class="img-fluid rounded" src="<?= str_replace("../", "", $row['picture']) ?>" alt="Lights" style="width:100%">
								<div class="caption " style="position: absolute; bottom: 0; ">
									<h4><a href="product.php?id=<?= $row['id'] ?>"><?= $row['name'] ?></a></h4>
									<p>
										<button class="btn btn-info btn-sm">
											<?php if (empty($row['amount'])): ?>
												Tekin
											<?php else: ?>
												<?=$row['amount']?> so'm
											<?php endif ?>
										</button>
									</p>
									<button class="btn btn-warning add_product btn-sm w-100" data-id="<?= $row['id'] ?>">Cart</button>
								</div>
							</a>
						</div>
					</div>
				</div>
				<?php $count++ ?>	
			<?php endforeach ?>
			<?php $last_id = $count; ?>
			<div class="clearfix"></div>
			<?php if ($last_id >= 4): ?>

				<div class="col-md-4 my-5 offset-4" id="more_<?= $row['id'] ?>">
					<button class="btn btn-primary w-100 btn-outline-primary add_more" data-id="<?= $last_id ?>">Ko'proq ko'rish</button>
				</div>
			<?php endif ?>
		</div>
	</div>
</body>
</html>
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script type="text/javascript">
	
	$('.add_product').click(function() {
		let id = $(this).data('id');
		
		$.ajax({
			method: "GET",
			url: "add_product_cart.php",
			data: { product_id: id },
			success: function(data) {
				$('#shopping_cart').html(data);
				console.log(data);
			},
			error: function (jqXHR, textStatus, errorThrown) {
				console.log(jqXHR);
				console.log(textStatus);
				console.log(errorThrown);
			}
		});
	});

	$(document).on('click', '.add_more', function() {
		let id = $(this).data('id');
		
		$.ajax({
			method: "GET",
			url: "more_product.php",
			data: { last_id: id },
			success: function(data) {
				console.log(data);
				$('#more_'+id).remove();

				$('#products').append(data);
				
				// $('#shopping_cart').html(data);
			},
			error: function (jqXHR, textStatus, errorThrown) {
				console.log(jqXHR);
				console.log(textStatus);
				console.log(errorThrown);
			}
		});
	});

</script>