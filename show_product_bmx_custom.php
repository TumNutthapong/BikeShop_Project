<?php session_start();?>
<?php include('h.php');?>


<body>
  <?php include('header.php');?>

  <font color="black">
 <a style="margin-bottom:20px;" href="custom_bmx.php" class="btn btn-danger">Back To Custom BMX Bike</a>
    
    <div class="row">
    <div class="col-md-2">
            <?php include('menu_bmx.php'); ?>
        </div>


    <div class="col-md-10"> 
        
        <?php
            $act = (isset($_GET['act']) ? $_GET['act'] : '');
            $search = (isset($_GET['search']) ? $_GET['search'] : '');
            if($act == 'showbytype') {
                include('show_product_bmx_type.php');     //โชว์โปรดักแยกตามประเภท
            }else if($search!=''){
                include('show_product_bmx_search.php');      //โชว์โปรดักตามการค้นหา
            }else{
                include('show_product_bmx_all.php');          //โชว์โปรดักทั้งหมด
            }
        ?>

    </div>
    </div>
   

<?php include('footer.php');?>
</body>
</html>