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
      <h2>จัดการสินค้า mountain bike </h2>
       
        <p></p>

        <?php
        $act = $_GET['act'];
        if($act == 'add'){
        include('mtb_product_form_add.php');
        }elseif ($act == 'edit') {
        include('mtb_product_form_edit.php');
        }
        elseif ($act == 'rwd') {
        include('mtb_product_form_rwd.php');
        }
        else {
        include('mtb_product_list.php');
        }
        ?>
        
      </div>

    </div>
  </div><br><br><br><br><br>
  </body>
</html>