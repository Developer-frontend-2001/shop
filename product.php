<?php
require_once('db.php');

session_start();
// session_destroy();
$username = isset($_SESSION['username']) ? $_SESSION['username'] : NULL;
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Shop.loc</title>
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" crossorigin="anonymous">
	<script type='text/javascript' src='http://code.jquery.com/jquery.min.js'></script>
	<style>
	button[disabled]{
		pointer-events: auto!important;
		cursor: no-drop;

	}
	.add_product{
		transition: 0.25s all linear;
	}
	.add_product:active{
		transform: scale(0.97);
		font-size: 16px;
	}
	textarea:active{
		background-color: lightgreen;
	}
</style>
</head>
<body>
	<?php require_once "menu.php"; 
	$where = '1';
	if (isset($_GET['id']) && is_numeric($_GET['id'])) {
		$where = 'id = '.$_GET['id'];
	}
	$sql_product = "SELECT * FROM product WHERE $where";
	$result = mysqli_query($conn, $sql_product);
	$product = mysqli_fetch_assoc($result);
	$sql_users = "SELECT * FROM users WHERE username = '".$username."'";
	$result = mysqli_query($conn, $sql_users);
	$users = mysqli_fetch_assoc($result);
	$_SESSION['product_url'] ="../product.php?id=".$product['id']."";

	?>
	<div class="container " style="margin-top: 100px;">
		<div class="row my-4">
			<div class="col-md-11 row d-flex align-items-center">
				<div class="col-md-4" style="width: 320px;">
					<div class="card">
						<div class="thumbnail" >
							<img class="img-fluid rounded" src="<?= str_replace("../", "", $product['picture']) ?>" alt="Lights" >
						</div>
					</div>
				</div>
				<div class="col-md-6 text-left">
					<h4><?= $product['name'] ?></h4>
					<p>
						Narxi: <?php if (empty($product['amount'])): ?>
						Tekin
					<?php else: ?>
						<?=$product['amount']?> so'm
					<?php endif ?>
				</p>
				<?php if ($username === NULl): ?>
					<a class="btn btn-secondary btn-sm w-100 my-2 text-center" href="admin/login.php">Kirish</a>
				<?php else: ?>

					<div class="alert alert-success alert-dismissible fade show" role="alert">
						<p>Tabriklaymiz siz ro'yxatdan o'tdingiz</p>
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>

						<?php 
						if (isset($sql_comment_insert)) {
							print_r(mysqli_query($conn, $sql_comment_insert)); 
						}

						?>

					</div>
					<?php 
					echo "<script>
					$('.btn-close').click(function(){

						$('.add_product').removeAttr('disabled');
						$('.add_product').removeClass('disabled');
						});
						</script>";
						?>
					<?php endif ?>
					<button class="btn btn-warning add_product btn-sm w-100 disabled" disabled="disabled" data-id="<?= $product['id'] ?>">Cart</button>


				</div>
				<!-- Sidebar qismi -->


				<div class="row">
					<div class="col-md-12 text-justify">
						<p style="text-align: justify;"><?= $product['content'] ?></p>
						<br>

						Kommentariyalar
						<div class="container-sm">
							<?php 
							$sql_comment = "SELECT users.username as username, users.id as user_id, comment.comment_text as comment_text, comment.create_date as create_date
							  FROM `comment` 
							INNER JOIN  users ON comment.user_id = users.id 
							WHERE comment.status = 1 and comment.product_id = ".$product['id']." ORDER BY create_date";
							$result = mysqli_query($conn, $sql_comment);
							if (isset($_POST['comment_text']) && $_POST['comment_text']) {
								$_SESSION['comment_text'] = $_POST['comment_text'];
							}
							?>
							<div class="row d-flex flex-column comment-item">
								<?php while ($comment = mysqli_fetch_assoc($result)): ?>
									<div class="col-12 col-md-6 bg-light mb-3 rounded pos-relative" style="border: 2px solid #819696;">
										<h1 class="h5 font-bold" style="font-style: italic;"><?=$comment['username']?></h1>
										<p class="fs-6 fw-lighter" style="display: block;"><?=$comment['comment_text']?></p>
										<p class="fs-6 text-muted" style="float: right; display: block; position: relative;"><?=date('d.m.Y H:i', strtotime($comment['create_date']))?></p>
									</div>	
								<?php endwhile ?>
							</div>
						</div>

						<hr>
						<?php if ($username): ?>
							<form method="POST">
								<textarea id="comment_text" name="comment_text"  max-rows="6" min-cols="20" class="form-control mb-3" placeholder="Bu yerda izoh yoziladi. Kamida 50 ta bo'lishi kerak" ></textarea>

								<button id="btn_push" type="submit" data-p_id="<?= $product['id'] ?>" data-u_id="<?= $users['id'] ?>" class="btn btn-primary btn_push btn-sm ">Izoh qoldirish</button>


							</form>
						<?php else: ?>
							<p>Izoh qoldirish uchun ro'yxatdan o'tishni bosing yoki ro'yxatdan o'tgan bo'lsangiz kirishni bosing</p>
							<div class="row">
								<div class="col-md-6">

									<a class="btn btn-primary btn-sm w-100 mt-2 text-center" href="admin/register.php">Ro'yxatdan o'tish</a>
								</div>
								<div class="col-md-6">
									<a class="btn btn-secondary btn-sm w-100 mt-2 text-center" href="admin/login.php">Kirish</a>
								</div>
							</div>
						<?php endif ?>

					</div>
				</div>
			</div>

		</div>


		<!-- Sidebar qismi -->
		<div class="position-fixed" style="float: right; max-width: 250px; height: 600px; overflow-y: auto; transform: translateX(500%); top: 100px; ">
			<?php  
			$sidebar_product = "SELECT * FROM product  WHERE NOT id = ".$product['id']." and category_id = ".$product['category_id']."";
			$category_sql = "SELECT * FROM category WHERE id =".$product['category_id']."";
			$resultCategory = mysqli_query($conn, $category_sql);
			$resultCategory = mysqli_fetch_assoc($resultCategory);
			$result = mysqli_query($conn, $sidebar_product);
			echo "<h1 class='h5 text-center text-muted text-warning'> Ushbu  <span class='text-warning' style='cursor: 	grabbing;'>".$resultCategory['name']."</span>  bo'limidagi mahsulotlar bilan tanishing</h1>";
			?>
			<?php while ($row = mysqli_fetch_assoc($result)): ?>
				<div class="card col-12 col-md-12 mb-3 row" >
					<div class="thumbnail d-flex justify-content-center align-items-stretch" style="border: 1px solid #eee; min-height: 332px; padding: 5px; ">
						<div class="col-12 col-sm-12">
							<a href="#" class="mb-2 nav-link">
								<img class="img-fluid rounded" src="<?= str_replace("../", "", $row['picture']) ?>" alt="Lights" >
							</a>
						</div>
						<div class="caption " style="position: absolute; bottom: 0; ">
							<a href="product.php?id=<?= $row['id'] ?>"> <h4><?= $row['name'] ?> </h4></a>
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
					</div>
				</div>
			<?php endwhile ?>
		</div>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"  crossorigin="anonymous"></script>
<script type="text/Javascript">
	$("#comment_text").mousemove(function(){
		if ($(this).val().length >= 50) {
			$(".btn_push").prop('disabled', false);
			$(".btn_push").removeClass('disabled');
		}
		else
			$(".btn_push").prop('disabled', true);
			// $(".btn_push").addClass('disabled');
		});

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


	// Comment text jadvaliga qo'shish
	$("#btn_push").click(function(){
		let p_id = $(this).data('p_id');
		let u_id = $(this).data('u_id');
		$.ajax({
			method: "GET",
			url: "product_comment.php",
			data: { product_id: p_id, user_id: u_id },
			success: function(data) {
				$('.comment-item').append(data);
				console.log(data);
			},
			error: function (jqXHR, textStatus, errorThrown) {
				console.log(jqXHR);
				console.log(textStatus);
				console.log(errorThrown);
			}
		});
	})
	
</script>
<script src="js/search_selectors.js"></script>
</html>