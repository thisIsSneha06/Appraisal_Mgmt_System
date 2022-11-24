

<?php    

 $date1 = $_POST['date1'];
 $date2 = $_POST['date2'];
 $id = $_POST['id'];

$originalDate1 = $date1;
$newDate1 = date("d M, Y", strtotime($originalDate1));

$originalDate2 = $date2;
$newDate2 = date("d M, Y", strtotime($originalDate2));

include "conn1.php";
$select3 = "SELECT * FROM employee_list JOIN attendance_tbl ON employee_list.id=$id AND attendance_tbl.emp_id=$id WHERE attendance_tbl.attendance='P' AND attendance_tbl.date1 BETWEEN '$newDate1' AND '$newDate2' ";

          $data3 = mysqli_query($con,$select3);
           $n = 0;
                while ($row2 = mysqli_fetch_array($data3)) { $n++;

                  $firstname =  $row2 ['firstname']; 
                  $lastname =  $row2 ['lastname'];
                }
                

$select4 = "SELECT * FROM employee_list JOIN attendance_tbl ON employee_list.id=$id AND attendance_tbl.emp_id=$id WHERE attendance_tbl.attendance='A' AND attendance_tbl.date1 BETWEEN '$newDate1' AND '$newDate2' ";

          $data4 = mysqli_query($con,$select4);
           $A = 0;
                while ($row4 = mysqli_fetch_array($data4)) { $A++;

                   }



$select1 = "SELECT * FROM employee_list JOIN attendance_tbl ON employee_list.id=$id AND attendance_tbl.emp_id=$id WHERE attendance_tbl.attendance='H' AND attendance_tbl.date1 BETWEEN '$newDate1' AND '$newDate2' ";

          $data1 = mysqli_query($con,$select1);
           $H = 0;
                while ($row1 = mysqli_fetch_array($data1)) { $H++;

                   }

$select2 = "SELECT * FROM employee_list JOIN attendance_tbl ON employee_list.id=$id AND attendance_tbl.emp_id=$id WHERE attendance_tbl.attendance='F' AND attendance_tbl.date1 BETWEEN '$newDate1' AND '$newDate2' ";

          $data2 = mysqli_query($con,$select2);
           $F = 0;
                while ($row1 = mysqli_fetch_array($data2)) { $F++;

                   }
                  ?>
                 



<table class="table table-striped">
    <br><h1><b> Attendance between <?php echo $newDate1 ?> to <?php echo $newDate2 ?> </b></h1>
    <thead>
      <tr>
        <th>Emp iD</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Present</th>
        <th>Absent</th>
        <th>Half Day</th>
        <th>On Leave</th>
        <!-- <th>Today(<?php echo date('M d, Y') ?>) Status</th> -->
        <!-- <th>View</th> -->
      </tr>
    </thead>
    
            
                     

                    
                       
  <tbody>
      <tr>
        <td><?php echo $id ?></td>
        <td><?php echo $firstname ?></td>
        <td><?php echo $lastname ?></td>
         <td><?php echo $n ?></td>
          <td> <?php echo $A ?></td>
        <td> <?php echo $H ?></td>
        <td><?php echo $F ?></td>


       <td>        </td>

        
      </tr>
   
    
 </tbody>
  </table>
