<?php
require_once "auth.php";
require_once "../db.php";
session_start();

$cart = isset($_SESSION['cart']) ? $_SESSION['cart'] : NULL;
$customer_id = isset($_SESSION['customer_id']) ? $_SESSION['customer_id'] : NULL;
$arr = [];

$sql_cart = "";

// echo "<pre>";
// print_r($_SESSION);
// echo "</pre>";

if ($cart && $customer_id) {
	foreach ($cart as $product_id => $value) {
		if ($product_id == 'count') {
			continue;
		}
		$sql_cart = "INSERT INTO orders (count, customer_id, product_id) VALUES('".$value['count']."', '".$customer_id."', '".$product_id."')";
		if ($conn->query($sql_cart) == TRUE) {
			header("Location: index.php");

			unset($_SESSION['cart'][$product_id]);
		} else {
			echo "Xatolik sodir bo'ldi<br>";
		}
	}
	unset($_SESSION['cart']);
	
} 

?>