<?php include'db_connect.php' ?>
<?php require 'header.php'; ?>
<div class="col-lg-12">
	<div class="card card-outline card-success">
		<div class="card-header">
		</div>
		<div class="card-body">
        <?php require 'header.php'; ?>
<body>
<div class="container">
  <div class="row">
    <?php if($_SESSION['login_type'] == 2): ?>
    <div class="col-sm-6">
      <input type="submit" name="btn" value="Today's Date : <?php echo date('d-m-Y') ?>" class="form-control btn btn-success"> <br><br>
     </div>
    <div class="col-sm-6">
    <a href="./delete_rec_bydate.php"> <input type="submit" name="btn" value="Today's Attendance  (<?php echo date('d-m-Y') ?>)  Reset" class="form-control btn btn-danger" onclick="return confirm('Are you sure want to reset attendance?') "></a> 
    </div>
    <?php endif; ?>
  </div>
</div>
  
  
  
<?php 

$host = 'localhost';
$username = 'root';
$db = 'ams_db';
$pass = '';

$con = mysqli_connect($host,$username,$pass,$db);
if(isset($_REQUEST['btn']))
{

$name = $_REQUEST['fname'];



$q = "insert into employee_list (name) values('$name')";

$r = mysqli_query($con,$q);

$n = mysqli_affected_rows($con);
if($n)
{
  echo "<script>alert('reg sucessfully')</script>";
}

}

$select = 'select * from employee_list';

$r = mysqli_query($con,$select);
$n = 0;

?> 

<div class="container"><div class="row"><br>
<?php if($_SESSION['login_type'] == 2): ?>
<div class ="col-md-12"><form id="user_form"> <input type="submit" name="insert" id="insert" class="btn btn-primary" value="Save Attendence"  /> 
<?php endif; ?>
<br>
<table class="table table-striped">
    <br>
    <thead>
      <tr>
        <th>Emp iD</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Present</th>
        <th>Absent</th>
        <th>Half Day</th>
        <th>On Leave</th>
        <!-- <th>Today (<?php echo date('d-m-Y') ?>) Status</th> -->
        <th>Today's Attendance</th>
        <th>View Record</th>
      </tr>
    </thead>
    

 <?php
 error_reporting(0);
 while ($row2 = mysqli_fetch_array($r)) { 
  $n++;
 
 $u_id  = $row2 ['id'];
 $originalDate = date('d-m-Y');

  $select1 = "select * from   attendance_tbl where emp_id = '$u_id' and date1 = '$originalDate'";

$r1 = mysqli_query($con,$select1);
 
 while ($row3 = mysqli_fetch_array($r1)) { 
  $attendance = $row3['attendance'];
 }
?>
    
  
  <tbody>
      <tr>
        <td><?php echo $n ?></td>
        <input type="hidden" name="emp_id[]" value="<?php echo $row2 ['id'] ?> " class="first_name">
        <td><?php echo $row2['firstname'] ?></td>
         <input type="hidden" name="name[]" value="<?php echo $row2 ['firstname'] ?>" class="first_name">
        <td><?php echo $row2['lastname'] ?></td>
         <input type="hidden" name="name[]" value="<?php echo $row2 ['lastname'] ?>" class="first_name">

         <td><input type="checkbox" class="Present <?php echo $row2 ['id'] ?>" name="attendance[]" id ="<?php echo $row2 ['id'] ?>"  value="P" required></td>
          <td><input type="checkbox" class="Present <?php echo $row2 ['id'] ?>" name="attendance[]" id ="<?php echo $row2 ['id'] ?>" value="A" required></td>
        <td><input type="checkbox" class="Present <?php echo $row2 ['id'] ?>" name="attendance[]" id ="<?php echo $row2 ['id'] ?>"  value="H" required></td>
        <td><input type="checkbox" class="Present <?php echo $row2 ['id'] ?>" name="attendance[]" id ="<?php echo $row2 ['id'] ?>"  value="F" required></td>

       <td> 
      <?php if($attendance == 'P') { ?>
          <button type="button" class="btn btn-success">Present</button>
       <?php } ?>
  
<?php  if($attendance == 'H') { ?>
       <button type="button" class="btn btn-primary">Half Day</button>
         <?php } ?>

<?php  if($attendance == 'A') { ?>
      <button type="button" class="btn btn-danger">Absent</button>
       <?php } ?>
       <?php if($attendance == 'F') { ?>

      <button type="button" class="btn btn-warning">On Leave</button>
      <?php }?>
      <?php if($attendance == ''){ ?>

      <button type="button" class="btn btn-warning">Not recorded </button>
      <?php } ?> 
       </td>
        <td> <a href="view_attendance.php?id= <?php echo $u_id ?>"> View Total Attendance</a></td>
        </tr>
   
<?php }?>
 </tbody>
  </table></form></div></div></div>

</body>
</html>

<script>  
$(document).ready(function(){ 
var count = 0;
$('#user_form').on('submit', function(event){

event.preventDefault();
var count_data = 0;
$('.first_name').each(function(){
count_data = count_data + 1;
});
if(count_data > 0)
{
var form_data = $(this).serialize();
$.ajax({
url:"insert.php",
method:"POST",
data:form_data,
success:function(data)
{  
 (data)
if(data==0)
 {
   alert('Attendance saved! To alter press Reset button.')
  } 
  else alert('Attendance saved successfully!')   
    window.location.reload()
}
})
}
});
});  

</script>

<script type="text/javascript">
  function myfunn(){
    $(".Present:checked").each(function(){
   var id = ($(this).attr('id'));
   var val = ($(this).attr('value'));
   $.ajax({
url:"insert1.php",
method:"POST",
data:{'id':id,'val':val},
success:function(data)
{  
 alert(data)
 if(data>1)
 {
    alert('Attendance saved! To alter press Reset button.')
  } 
  else alert('Attendance saved successfully!')    
}
})  
});

  


  }


 $('input:checkbox').click(function(){
   var id = ($(this).attr('id'));
   // alert(id)
    var $inputs = $("#id")
        if($(this).is(':checked')){
            // $("."+id).prop('disabled', true); // <-- disable all but checked one
             $("."+id).not(this).prop('disabled',true);
        }else{
           // $inputs.prop('disabled',false); // <--
           $("."+id).prop('disabled', false);
        }
    })
</script>

</div>