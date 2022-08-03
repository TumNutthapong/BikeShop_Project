<?php

$query_product = "SELECT * FROM tbl_mtb as mtb
INNER JOIN tbl_type as t
ON mtb.type_id = t.type_id
 ORDER BY mtb.mtb_id ASC";
	$result_pro =mysqli_query($con, $query_product) or die ("Error in query: $query_product " . mysqli_error());
		
  //echo($query_product);
		//exit();

?>

<div class="row">

<?php foreach ($result_pro as $row_pro) { ?>

    <div class="card" style="width: 18rem; margin-top: 10px;">
    <img class="card-img-top" src="backend/mtb_img/<?php echo $row_pro['mtb_img']; ?>"  alt="...">
    <div class="card-body"></div>
      <h4 class="card-title"><?php echo $row_pro['mtb_name']; ?></h4>
      <p class="card-text">ประเภท: <?php echo $row_pro['type_name']; ?>
       <b><center><?php echo $row_pro['mtb_price']; ?> ฿</center></b></p>
      
      <a style="width:100%;" href="mtb_show_product_detail.php?id=<?php echo $row_pro['mtb_id'] ?>" class="btn btn-primary">รายละเอียด</a>
    
  </div>
    
<?php } ?>


</div>