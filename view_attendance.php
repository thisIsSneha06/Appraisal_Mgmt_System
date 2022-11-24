<?php include'db_connect.php' ?>
<?php require 'header.php'; ?>
<div class="col-lg-12">
	<div class="card card-outline card-success">
		<div class="card-header">
		</div>
		<div class="card-body">
<body>

<div class="container">
  <div class="row">
    <div class="col-sm-6">
      
     <input type="date" id="date1" name="date1" class="form_control"> to
     <input type="date" id="date2" name="date2" class="form_control"><br><br>
     <input type="submit" name="batan" value="Search by Date" class="btn btn-success" onclick="return myfun()">
    </div>
  </div>
</div>
  
 
  
  

<div class="container"><div class="row"><br>
<div class="col-md-12">

<div id="showreport1"></div><br>
<caption><h1><b>Total Attendance</b></h1></caption>
  <form id="user_form"> <!-- <input type="submit" name="insert" id="insert" class="btn btn-primary" value="Save attendance"  />  -->
<table class="table table-striped">
    <thead>
      <tr>
        <th>Emp iD</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Present</th>
        <th>Absent</th>
        <th>Half Day</th>
        <th>On Leave</th>
        <!-- <th>Today(<?php echo date('d-m-Y') ?>) Status</th> -->
        <!-- <th>View</th> -->
      </tr>
    </thead>
   <?php 

$host = 'localhost';
$username = 'root';
$db = 'ams_db';
$pass = '';

$con = mysqli_connect($host,$username,$pass,$db);
$u_id = $_REQUEST['id'];

$select = "SELECT * FROM employee_list JOIN attendance_tbl ON employee_list.id=$u_id  AND attendance_tbl.emp_id=$u_id  WHERE attendance_tbl.attendance='P'";
$r = mysqli_query($con,$select);
$n = 0;

while ($row2 = mysqli_fetch_array($r)) { 
  $n++;
  $firstname =  $row2 ['firstname']; 
  $lastname =  $row2 ['lastname']; 
 }



$select1 = "SELECT * FROM employee_list JOIN attendance_tbl ON employee_list.id=$u_id  AND attendance_tbl.emp_id=$u_id  WHERE attendance_tbl.attendance='A'";
$r1 = mysqli_query($con,$select1);
$A = 0;

while ($row2 = mysqli_fetch_array($r1)) { 
  $A++;
   
 }

 $select2 = "SELECT * FROM employee_list JOIN attendance_tbl ON employee_list.id=$u_id  AND attendance_tbl.emp_id=$u_id  WHERE attendance_tbl.attendance='H'";
$r2 = mysqli_query($con,$select2);
$H = 0;

while ($row2 = mysqli_fetch_array($r2)) { 
  $H++;
   
 }

  $select3 = "SELECT * FROM employee_list JOIN attendance_tbl ON employee_list.id=$u_id  AND attendance_tbl.emp_id=$u_id  WHERE attendance_tbl.attendance='F'";
$r3 = mysqli_query($con,$select3);
$F = 0;

while ($row2 = mysqli_fetch_array($r3)) { 
  $F++;
   
 }





   ?>
 
    
  
  <tbody>
      <tr>
        <td><?php echo $u_id ?></td>
        <td><?php echo $firstname ?></td>
        <td><?php echo $lastname ?></td>
         <input type="hidden" name="name[]" value="<?php echo $firstname ?>" class="first_name">
         <input type="hidden" name="name[]" value="<?php echo $lastname ?>" class="first_name"></td>

         <td><?php echo $n ?></td>
          <td> <?php echo $A ?></td>
        <td> <?php echo $H ?></td>
        <td><?php echo $F ?></td>


       <td>        </td>

        
      </tr>
   
    
 </tbody>
  </table></form></div></div></div><br>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <a href="http://localhost/ams/index.php?page=attendance"> ← Go back to Dashboard</a></div></div></div>
    </body>
</html>



<script type="text/javascript">

function myfun(){


var date1 =$('#date1').val();
var date2 =$('#date2').val();
var id = <?php echo $u_id ?>

 // alert(id);


$.ajax({


          type:'POST',


          data:{'date1':date1,'date2':date2,'id':id},


          url:'http://localhost/ams/ajax_fetch.php',

          success:function(result){

               // alert(result)

          $('#showreport1').html(result);

           }

          });



          }



</script>
