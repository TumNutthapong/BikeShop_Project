<!DOCTYPE html>
<html>
<head>
<?php include('h.php');
error_reporting( error_reporting() & ~E_NOTICE );
?>
<head>
  <body>
 
    <?php
        $act = $_GET['act'];
        if($act == 'read'){
        include('form_htr_read.php');
        }
        else {
        include('form_htr_list.php');
        }
        ?>
    
  <br><br><br><br><br>
  </body>

</html> 
 <?php include('footer.php');?>