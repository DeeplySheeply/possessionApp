<?php

// Variables to handle the database connection
$host = "localhost";
$username = "root";
$password = "root";
$dbname = "ballyeahurling";

$connection = mysqli_connect($host, $username, $password, $dbname);

if (!$connection) {
	die("Database connection error.");
}

?>

