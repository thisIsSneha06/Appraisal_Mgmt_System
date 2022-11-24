<?php


$originalDate = date('d-m-Y');

include("conn1.php");
    $select = 'SELECT * from  attendance_tbl where date1 = "'.$originalDate.'" ';

   $data1 = mysqli_query($con,$select);
   $row1 = mysqli_fetch_array($data1);
   $id =  $row1['id'];
  if($id)
  {
    echo 0;
    exit();
  }  


require('conn.php');
 $query = "INSERT INTO attendance_tbl (emp_id, attendance,date1)VALUES (:emp_id, :attendance,:date1)";


for($count = 0; $count<count($_POST['emp_id']); $count++)
{
          
	     

	     
         
         
      
           
	$data = array(
		':emp_id'	=>	$_POST['emp_id'][$count],
		':attendance'	=>	$_POST['attendance'][$count],
		 ':date1'	=> $originalDate
		
        
            
	);



 
	$statement = $connect->prepare($query);
	  $statement->execute($data);
  
}


?>