<?php?>
<!DOCTYPE html>
<html>
<?php include ('h.php');?>
<?php include ('backend/condb.php');?>
<head>
<link href="style_cart.css" type="text/css" rel="stylesheet" />
</head>
<?php include ('header.php');?>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster&effect=shadow-multiple">
<style>
.w3-lobster {
  font-family: "Lobster", Sans-serif;
}
</style>



<body>
<font color="black"><center>  
<div class="w3-container w3-lobster">
<p class="w3-xxxlarge font-effect-shadow-multiple">Custom Mountain Bike Mode </p>

 

 </div>

<img src="img_home/custom_mtb.jpg" usemap="#image-map">

<map name="image-map">
    <area target="" alt="Tire,Wheels" title="Tire,Wheels" href="http://localhost/pro/show_product_mtb_custom.php?act=showbytype&type_id=22" coords="92,187,115,118,193,65,272,48,353,60,416,82,468,130,481,186,461,238,411,281,342,305,273,315,200,299,144,272,113,246" shape="poly">
    <area target="" alt="Tire,Wheels" title="Tire,Wheels" href="http://localhost/pro/show_product_mtb_custom.php?act=showbytype&type_id=22" coords="826,358,888,270,955,242,1014,234,1097,246,1155,275,1196,317,1211,369,1187,427,1128,476,1069,491,984,491,935,480,889,460,860,437,835,408" shape="poly">
    <area target="" alt="Frame" title="Frame" href="http://localhost/pro/show_product_mtb_custom.php?act=showbytype&type_id=24" coords="261,365,288,339,300,328,314,338,339,331,358,333,437,326,543,314,586,314,570,267,557,231,586,239,623,255,716,234,789,209,864,182,916,163,939,151,960,157,975,179,983,189,950,201,836,260,798,296,769,323,711,369,670,400,629,417,575,422,321,389" shape="poly">
    <area target="" alt="Cranks" title="Cranks" href="http://localhost/pro/show_product_mtb_custom.php?act=showbytype&type_id=23" coords="171,464,249,461,287,432,338,442,358,453,386,462,433,461,476,467,481,480,363,489,326,509,286,509,186,481,169,472" shape="poly">
    <area target="" alt="Pedals" title="Pedals" href="http://localhost/pro/show_product_mtb_custom.php?act=showbytype&type_id=18" coords="631,470,820,555" shape="rect">
    <area target="" alt="Chain" title="Chain" href="http://localhost/pro/show_product_mtb_custom.php?act=showbytype&type_id=2" coords="501,113,906,125" shape="rect">
    <area target="" alt="Seats" title="Seats" href="http://localhost/pro/show_product_mtb_custom.php?act=showbytype&type_id=19" coords="1045,171,1054,151,1086,139,1130,133,1168,158,1181,179,1228,208,1261,237,1233,239,1159,218,1068,195" shape="poly">
    <area target="" alt="Handlebars" title="Handlebars" href="http://localhost/pro/show_product_mtb_custom.php?act=showbytype&type_id=17" coords="861,58,1404,84" shape="rect">
    <area target="" alt="Fork" title="Fork" href="http://localhost/pro/show_product_mtb_custom.php?act=showbytype&type_id=4" coords="1297,167,1396,434" shape="rect">
</map>  
   
<table id="shopping-cart" class="col-50" class="tbl-cart" cellpadding="10" cellspacing="2">
<tbody>
<tr>
<th style="text-align:left;">Name</th>
<th style="text-align:right;" width="5%">Quantity</th>
<th style="text-align:right;" width="10%">Unit Price</th>
<th style="text-align:right;" width="10%">Price</th>
<th style="text-align:center;" width="5%">Remove</th>
</tr>	
<?php		
    foreach ($_SESSION["cart_item"] as $item){
        $item_price = $item["quantity"]*$item["p_price"];
		?>
				<tr>
				<td><img src="backend/p_img/<?php echo $item["p_img"]; ?>" class="cart-item-image" /><?php echo $item["p_name"]; ?></td>
				<td style="text-align:right;"><?php echo $item["quantity"]; ?></td>
				<td  style="text-align:right;"><?php echo "฿ ". number_format($item["p_price"]); ?></td>
				<td  style="text-align:right;"><?php echo "฿ ". number_format($item_price,2); ?></td>
				<td style="text-align:center;"><a href="cart.php?action=remove&p_id=<?php echo $item["p_id"]; ?>" class="btnRemoveAction"><img src="img_home/icon-delete.png" alt="Remove Item" /></a></td>
				</tr>
				<?php
				$total_quantity += $item["quantity"];
				$total_price += ($item["p_price"]*$item["quantity"]);
		}
		?>

</table>
</center>
		

		<div align="right" style="margin-right:20px; margin-bottom:20px; margin-top:20px;">
			<a  href="cart.php" ><button class="w3-button w3-blue"><b><i  class='fas'>&#xf217;</i> ชำระเงิน<b></button></a>
		</div>



</body>
	</font>
<br><br><br>
<?php include ('footer.php');?>

</html>