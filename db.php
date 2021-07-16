<?php 

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "shop";

// Bazaga ulanish
$conn = new mysqli($servername, $username, $password, $dbname);

// Bazaga ulanganligini tekshirish
if ($conn->connect_error) {
    die("Bazaga ulana olmadi: " . $conn->connect_error);
}