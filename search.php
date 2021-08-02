<?php
require_once "db.php";

$result = [];

if (isset($_GET['term']) && $_GET['term']) {
    $search = $_GET['term'];

    $sql = "SELECT * FROM `product` 
    where `name` LIKE '%".$search."%'";
    
    foreach ($conn->query($sql) as $row) {
        $result[] = [
            'id' => $row['id'],
            'value' => $row['name']
        ];
    }
}
echo json_encode($result);
?>