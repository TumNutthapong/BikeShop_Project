<?php

$type_id = $_GET['type_id'];
//echo $type_id;
//exit();

$query_product_type = "SELECT * FROM tbl_product as p
INNER JOIN tbl_type as t
ON p.type_id = t.type_id
WHERE p.type_id = $type_id 
 ORDER BY p.p_id ASC";
	$result_pro =mysqli_query($con, $query_product_type) or die ("Error in query: $query_product_type " . mysqli_error());
    
   //echo($query_product_type);
		//exit();

?>

<div class="row">

<?php foreach ($result_pro as $row_pro) { ?>

    <div class="card" style="width: 24rem; margin-bottom: 35px; margin-right: 30px;" >
    <img class="card-img-top" src="backend/p_img/<?php echo $row_pro['p_img']; ?>"  alt="...">
    <div class="card-body"></div>
    <h4 class="card-title"><?php echo $row_pro['p_name']; ?></h4>
      <p class="card-text">ประเภท: <?php echo $row_pro['type_name']; ?> , <?php echo $row_pro['cat']; ?></p>
      <p class="card-text">สินค้าคงเหลือ: <?php echo $row_pro['amount']; ?> ชิ้น</p>
       <b><center><p style="font-size:40px;"><?php echo number_format($row_pro['p_price']) ; ?> ฿</center></b></p>
      <a style="width:100%;" href="product_detail.php?p_id=<?php echo $row_pro['p_id'] ?>" class="btn btn-primary">รายละเอียด</a>
    
  </div>
    
<?php } ?>


</div>

