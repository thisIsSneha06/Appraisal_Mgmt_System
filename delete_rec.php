<?php

$id = $_REQUEST["id"];

require 'conn1.php';

$query = "delete from employee_list  where id='$id'";

mysqli_query($con,$query);

$n = mysqli_affected_rows($con);

if($n>0){
	header('Location: http://localhost/ams/index.php?page=attendance');
}

mysqli_close($con);
?>