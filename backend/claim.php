<!DOCTYPE html>
<html>
<head>
<?php include('h.php');
error_reporting( error_reporting() & ~E_NOTICE );
?>
<head>
  <body>
    <div class="container">
  <p></p>
    <div class="row">
      <div class="col-md-3">
      สวัสดี คุณ <?php echo $a_name; ?>
        <?php include('menu_left.php');?>
      </div>

      <div class="col-md-9">
      <h2>รายการแจ้งปัญหาสินค้า</h2>
        <!-- <a href="claim.php?act=add" class="btn-info btn-sm">แจ้งสินค้ามีปัญหา</a> -->
        <p></p>

        <?php
        $act = $_GET['act'];
        if($act == 'add'){
        include('claim_form_add.php');
        }elseif ($act == 'read') {
        include('claim_form_read.php');
        }
        elseif ($act == 'rwd') {
        include('claim_form_rwd.php');
        }
        else {
        include('claim_list.php');
        }
        ?>
        
      </div>

    </div>
  </div><br><br><br><br><br>
  </body>
</html>