<?php include('db_connect.php') ?>
<?php
$twhere ="";
if($_SESSION['login_type'] != 1)
  $twhere = "  ";
?>

<div class="col-12">
  <div class="card">
    <div class="card-body">
      Welcome <?php echo $_SESSION['login_name'] ?>!
    </div>
  </div>
</div>
<?php if($_SESSION['login_type'] != 0): ?>
<div class="row">
          <div class="col-12 col-sm-6 col-md-4">
          <a href="./index.php?page=department">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM department_list ")->num_rows; ?></h3>

                <p>Total Departments</p>
              </div>
              <div class="icon">
                <i class="fa fa-th-list"></i>
              </div>
            </div></a>
          </div>
           <div class="col-12 col-sm-6 col-md-4">
            <a href="./index.php?page=designation">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM designation_list")->num_rows; ?></h3>

                <p>Total Designations</p>
              </div>
              <div class="icon">
                <i class="fa fa-list-alt"></i>
              </div>
            </div></a>
          </div>
          <div class="col-12 col-sm-6 col-md-4">
          <a href="./index.php?page=employee_list">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM employee_list")->num_rows; ?></h3>

                <p>Total Employees</p>
              </div>
              <div class="icon">
                <i class="fa fa-user-friends"></i>
              </div>
            </div></a>
          </div>
          <div class="col-12 col-sm-6 col-md-4">
          <a href="./index.php?page=task_list">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM task_list")->num_rows; ?></h3>

                <p>Total Tasks</p>
              </div>
              <div class="icon">
                <i class="fa fa-tasks"></i>
              </div>
            </div></a>
          </div>
          <div class="col-12 col-sm-6 col-md-4">
          <a href="./index.php?page=evaluation">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM ratings")->num_rows; ?></h3>

                <p>Total Evaluations</p>
              </div>
              <div class="icon">
                <i class="far fa-edit"></i>
              </div>
            </div></a>
          </div>
          <div class="col-12 col-sm-6 col-md-4">
          <a href="./index.php?page=appraisal">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM kpi")->num_rows; ?></h3>

                <p>Total Appraisals</p>
              </div>
              <div class="icon">
                <i class="fa fa-trophy"></i>
              </div>
            </div></a>
          </div>
      </div>     
<?php endif; ?>
