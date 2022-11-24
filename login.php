<!DOCTYPE html>
<html lang="en">
<?php 
session_start();
include('./db_connect.php');
  ob_start();
  // if(!isset($_SESSION['system'])){

    $system = $conn->query("SELECT * FROM system_settings")->fetch_array();
    foreach($system as $k => $v){
      $_SESSION['system'][$k] = $v;
    }
  // }
  ob_end_flush();
?>
<?php 
if(isset($_SESSION['login_id']))
header("location:index.php?page=home");

?>
<?php include 'header.php' ?>
<body>
<div class="login-page" style="background-image: url('./assets/uploads/login-bg.png');">
  <h2><b style="color: white;font-size: 40px;-webkit-text-stroke: 0.8px #000000;">
  Appraisal Management System</b></h2>
<div class="login-box">
  <div class="login-logo">
    <a href="#" class="text-white"></a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body" style="background-color: #000823;">
      <form action="" id="login-form">
        <div class="input-group mb-3">
          <input type="email" class="form-control" name="email" required placeholder="Email/Username">
          <div class="input-group-append">
            <div class="input-group-text" style="color: white;">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" name="password" required placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text" style="color: white;">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="form-group mb-3">
          <label for="" style="color: white;">Login As</label>
          <select name="login" id="" class="custom-select custom-select-sm">
            <option value="0">Employee</option>
            <option value="1">Evaluator</option>
            <option value="2">Admin</option>
          </select>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember" style="color: white;">
                Remember Me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block" style="background-color: white; color: #000823; border: #ffffff solid;">
              Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->
<script>
  $(document).ready(function(){
    $('#login-form').submit(function(e){
    e.preventDefault()
    start_load()
    if($(this).find('.alert-danger').length > 0 )
      $(this).find('.alert-danger').remove();
    $.ajax({
      url:'ajax.php?action=login',
      method:'POST',
      data:$(this).serialize(),
      error:err=>{
        console.log(err)
        end_load();

      },
      success:function(resp){
        if(resp == 1){
          location.href ='index.php?page=home';
        }else{
          $('#login-form').prepend('<div class="alert alert-danger" style="text-align: center;">Username/password or login-type incorrect.</div>')
          end_load();
        }
      }
    })
  })
  })
</script>
<!-- <?php include 'footer.php' ?> -->
</div>
</body>
</html>
