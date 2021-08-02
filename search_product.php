<?php 
require_once "db.php";
if (isset($_GET['name']) && $_GET['name']) {
	$name = $_GET['name'];
	$data = "";
	$sql = "SELECT * FROM product WHERE name =".$name;	
	$result = mysqli_query($conn, $sql);
	$result = mysqli_fetch_assoc($result);
	$data = $result['id'];
	echo $data;
}
?>