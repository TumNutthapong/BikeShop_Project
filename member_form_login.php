<?php session_start();?>
<?php include('header.php');?>
<?php include('h.php');?>
<style type="text/css">
#btn{
width:100%;
}

</style>
<font color="black">
<p align="center" href ="index.php" ><img  src="img_home/shop logo.jpg"width="28%"height="320"></p>
<div class="container">
  <div class="row">
    <div class="col-lg-3"></div>
    <div class="col-lg-6" style="background-color:#FFFFFF">
      
      <form  name="formlogin" action="member_checklogin.php" method="POST" id="login" class="form-horizontal">
        <div class="form-group">
          <div class="col-sm-12">
            <input type="text"  name="m_user" class="form-control" required placeholder="Username" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <input type="password" name="m_pass" class="form-control" required placeholder="Password" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <button type="submit" class="btn btn-success" id="btn">
            <span class="glyphicon glyphicon-log-in"> </span>
             Login </button>
               <label>
                <a href="member_form_add.php" type="text"  name="register"> สมัครสมาชิก</a>
               </label>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
</font>
<br><br><br><br><br>
<?php include('footer.php');?>