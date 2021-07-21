<?php
   session_start();
   unset($_SESSION["username"]);
   unset($_SESSION["valid"]);
   unset($_SESSION["timeout"]);
   unset($_SESSION["customer_id"]);
   unset($_SESSION["product_url"]);
   
   header('Refresh: 1; URL = login.php');
?>