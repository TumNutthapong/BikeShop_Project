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
<p class="w3-xxxlarge font-effect-shadow-multiple">Custom BMX Mode </p>

 

 </div>

<img src="img_home/custom_bmx.jpg" usemap="#image-map">

<map name="image-map">
    <area target="" alt="Tire,Wheels" title="Tire,Wheels" href="http://localhost/pro/show_product_bmx_custom.php?act=showbytype&type_id=21" coords="1219,225,201" shape="circle">
    <area target="" alt="Frame" title="Frame" href="http://localhost/pro/show_product_bmx_custom.php?act=showbytype&type_id=24" coords="39,303,396,80,1010,27,1014,165,433,375,41,333" shape="poly">
    <area target="" alt="Cranks" title="Cranks" href="http://localhost/pro/show_product_bmx_custom.php?act=showbytype&type_id=23" coords="643,357,783,456" shape="rect">
    <area target="" alt="Pedals" title="Pedals" href="http://localhost/pro/show_product_bmx_custom.php?act=showbytype&type_id=18" coords="37,30,122,224" shape="rect">
    <area target="" alt="Chain" title="Chain" href="http://localhost/pro/show_product_bmx_custom.php?act=showbytype&type_id=2" coords="972,485,978,424,1008,388,1044,440,1027,486,1001,499" shape="poly">
    <area target="" alt="Seats" title="Seats" href="http://localhost/pro/show_product_bmx_custom.php?act=showbytype&type_id=19" coords="851,310,877,255,901,255,907,295,903,348,904,403,893,431,877,432" shape="poly">
    <area target="" alt="Stem" title="Stem" href="http://localhost/pro/show_product_bmx_custom.php?act=showbytype&type_id=20" coords="489,497,518,574" shape="rect">
    <area target="" alt="Handlebars" title="Handlebars" href="http://localhost/pro/show_product_bmx_custom.php?act=showbytype&type_id=17" coords="77,400,197,404,235,447,397,450,472,412,608,393,437,508,404,565,386,584,297,585,348,592,314,589,282,573" shape="poly">
    <area target="" alt="Fork" title="Fork" href="http://localhost/pro/show_product_bmx_custom.php?act=showbytype&type_id=4" coords="581,486,652,478,736,483,793,505,841,532,901,532,946,536,936,555,814,554,768,586,708,586,619,586,599,586,588,581" shape="poly">
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