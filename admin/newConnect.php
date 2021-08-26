<?php 
namespace db;
class ConnectDb {
  // Hold the class instance.
	public static $instance = null;
	public $conn;
	
	public $servername = "localhost";
	public $username = "root";
	public $password = "root";
	public $dbname = "shop";
	
  // The db connection is established in the public constructor.
	public function __construct()
	{
		$this->conn =  mysqli_connect($this->servername, $this->username, $this->password, $this->dbname);
	}
	
	public static function getInstance()
	{
		if(!self::$instance)
		{
			self::$instance = new ConnectDb();
		}
		
		return self::$instance;
	}
	
	public  function getConnection()
	{
		return $this->conn;
	}
}

?>