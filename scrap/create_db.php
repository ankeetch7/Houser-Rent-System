<?php

class CreateDb
{
	public $servername;
	public $username;
	public $password;
	public $dbname;
	public $tablename;
	public $con;

	function __construct($dbname = "newdb",
		$tablename = "producttb",
		$servername = "localhost",
		$username = "root",
		$password = "")
	{
		$this->dbname = $dbname;
		$this->tablename = $tablename;
		$this->servername = $servername;
		$this->username = $username;
		$this->password = $password;

		$this->con = mysqli_connect($servername, $username, $password);
		if (!$this->con) {
			die("Connection Failed: ".mysqli_connect_error());
		}
		$sql = "CREATE DATABASE IF NOT EXISTS $dbname";
		if(mysqli_query($this->con, $sql)){
			$this->con = mysqli_connect($servername, $username, $password, $dbname);

			$sql = "CREATE TABLE IF NOT EXISTS $tablename(
				id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
				product_name VARCHAR(25) NOT NULL,
				product_price FLOAT,
				product_image VARCHAR(100)
			);";
			if (!mysqli_query($this->con, $sql)) {
				echo "Error Creating  tabel: ".mysqli_error($this->con);
			}
		}else{
				return false;
		}
	}
	function getData(){
		$sql = "SELECT * FROM $this->tablename";
		$result = mysqli_query($this->con, $sql);
		if (mysqli_num_rows($result)>0) {
			return $result;
		}
	}
}
?>