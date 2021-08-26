<?php
namespace repport;
include "newConnect.php";
use db;

class Report 
{
	public String  $sql = "SELECT region.name as name, COUNT(orders.id) as soni FROM `orders` INNER JOIN customer ON customer.id = orders.customer_id INNER JOIN region ON region.id = customer.region_id GROUP BY region.name";
	// public Array $arr;
	// public $query ;

	public  function toregion()
	{
		$db = new db\ConnectDb();
		$db = $db->getInstance();
		$this->conn = $db->getConnection();
		$query = mysqli_query($this->conn, $this->sql);
	  $arr=[];
		foreach ($query as $item) {
			$b = array('name'=>$item['name'], 'soni'=>$item['soni']);
			array_push($arr, $b);
		}
		return  $arr;
	}
}

?>