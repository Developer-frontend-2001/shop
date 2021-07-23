<?php 
require_once "db.php";
session_start();
// session_destroy();
if (isset($_GET['product_id']) && isset($_GET['user_id'])) {
	var_dump($_GET);
	$product_id = $_GET['product_id'];
	$user_id = $_GET['user_id'];
	$data ='';
	if (isset($_SESSION['comment_text'])&& $_SESSION['comment_text']) {
		$sql_comment_insert = "INSERT INTO comment (user_id, product_id, comment_text, status) 
		VALUES(".$user_id.", ".$product_id.", '".$_SESSION['comment_text']."', 1) WHERE comment.product_id =".$product_id."";
		$result = mysqli_query($conn, $sql_comment_insert);
		print_r($sql_comment_insert);
	}

	$data .= "div class='col-12 col-md-6 bg-light mb-3 rounded pos-relative' style='border: 2px solid #819696;'>";
	$data .="<h1 class='h5 font-bold' style='font-style: italic;'></h1>";
	$data .="<p class='fs-6 fw-lighter' style='display: block;'></p>";
	$data .="<p class='fs-6 text-muted' style='float: right; display: block; position: relative;'></p></div>";	
	echo $data;

}

?>