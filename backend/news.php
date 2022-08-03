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
      <h2>ข่าวสารและสถานที่ปั่น</h2>
       <a href="news_form_add.php?act=add" class="btn-info btn-sm">เพิ่มข่าวสาร</a>
        <p></p>

        <?php
        $act = $_GET['act'];
        if($act == 'add'){
        include('news_form_del_db.php');
        }
        else {
        include('newslist.php');
        }
        ?>
        
      </div>

    </div>
  </div><br><br><br><br><br>
  </body>
</html>