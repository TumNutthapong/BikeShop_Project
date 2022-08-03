<?php session_start();?>
<?php include('h.php');?>


<body>
  <?php include('header.php');?>
  <font color="black">
  <div align="right"  style="margin-right: 70px; margin-bottom:20px;">
  <form class="col-12 col-lg-auto mb-3 mb-lg-0" action="show_product_mtb.php" method="GET">
        <input  class="item" type="search" class="form-control" placeholder="Search..." aria-label="Search" name="search">
      </form>
    </div>
    <div class="row">
       
        <div class="col-md-2">
            <?php include('menu_mtb.php'); ?>
        </div>

        <div class="col-md-10">
        
        <?php
            $act = (isset($_GET['act']) ? $_GET['act'] : '');
            $search = (isset($_GET['search']) ? $_GET['search'] : '');
            if($act == 'showbytype') {
                include('show_product_mtb_type.php');     //โชว์โปรดักแยกตามประเภท
            }else if($search!=''){
                include('show_product_mtb_search.php');      //โชว์โปรดักตามการค้นหา
            }else{
                include('show_product_mtb_all.php');          //โชว์โปรดักทั้งหมด
            }
        ?>

        </div>
    </div>

<?php include('footer.php');?>
</body>
</html>