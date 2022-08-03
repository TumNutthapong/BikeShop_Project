<?php require_once('backend/condb.php');

	$query_type = "SELECT * FROM tbl_type ORDER BY  type_id ASC";
	$result_type =mysqli_query($con, $query_type) or die ("Error in query: $query_type " . mysqli_error());
		// echo($query_type);
		// exit()

?>
 <div class="container">
<div class="list-group"> 
<b><a href="show_product_bmx.php" class="list-group-item list-group-item-action btn-info">All OF BMX</a></b>
	<?php
		foreach ($result_type as $row )  { ?>

		 <a href="show_product_bmx.php?act=showbytype&type_id=<?php echo $row['type_id'];?>" class="list-group-item list-group-item-action list-group-item-light"> 
		 	<?php echo $row["type_name"]; ?></a>

	<?php } ?>                      
</div>
</div>