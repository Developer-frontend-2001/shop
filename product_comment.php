<?php 
require_once "db.php";
	if (isset($_GET['product_id']) && $_GET['product_id'] && isset($_GET['user_id']) && $_GET['user_id'] ) {
		$product_id = $_GET['product_id'];
		$user_id = $_GET['user_id'];
		if (isset($_SESSION['comment_text'])&& $_SESSION['comment_text']) {
			$sql_comment_insert = "INSERT INTO comment (user_id, product_id, comment_text, status) 
			VALUES(".$user_id.", ".$product_id.", '".$_SESSION['comment_text']."', 1) WHERE product_id =".$product_id."";
		unset($_SESSION['comment_text']);
		}

	}
 ?>