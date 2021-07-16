<?php
session_start();

if (!isset($_SESSION['username']) || time() - $_SESSION['timeout'] > 600) {

	unset($_SESSION["username"]);
	unset($_SESSION["valid"]);
	unset($_SESSION["timeout"]);

	exit(header("Location: login.php"));
}

?>