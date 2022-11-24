<?php



require 'conn1.php';

 $d = date('d-m-Y');

$query = "delete from attendance_tbl   where date1 ='$d'";

mysqli_query($con,$query);

$n = mysqli_affected_rows($con);

if($n>0){
	header('Location: http://localhost/ams/index.php?page=attendance');
}

mysqli_close($con);
?>