<?php
define("DB_HOST", "localhost");
define("DB_USER", "root");
define("DB_PASSWORD", "root");
define("DB_DATABASE", "shop");

$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);

// Bazaga ulanganligini tekshirish
if ($conn->connect_error) {
    die("Bazaga ulana olmadi: " . $conn->connect_error);
}
?>