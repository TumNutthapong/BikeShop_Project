<?php
session_start();

if (!isset($_SESSION['m_name'])) {
	$_SESSION['msg'] = "You must log in first";
	header('location: member_form_login.php');
}

if (isset($_GET['logout'])) {
	session_destroy();
	unset($_SESSION['m_name']);
	header('location: login.php');
}

include('header.php');
include('h.php');
require_once("backend/condb.php");


//code for Cart
if(!empty($_GET["action"])) {
switch($_GET["action"]) {
	//code for adding product in cart
	case "add":
		if(!empty($_POST["quantity"])) {
			$p_id=$_GET["p_id"];
			$result=mysqli_query($con,"SELECT * FROM tbl_product WHERE p_id='$p_id'");
	          while($productByCode=mysqli_fetch_array($result)){
			$itemArray = array($productByCode["p_name"]=>array('p_name'=>$productByCode["p_name"], 'p_id'=>$productByCode["p_id"], 'quantity'=>$_POST["quantity"],'amount'=>$_POST["amount"], 'p_price'=>$productByCode["p_price"], 'p_img'=>$productByCode["p_img"]));
			if(!empty($_SESSION["cart_item"])) {
				if(in_array($productByCode["p_name"],array_keys($_SESSION["cart_item"]))) {
					foreach($_SESSION["cart_item"] as $k => $v) {
							if($productByCode["p_name"] == $k) {
								if(empty($_SESSION["cart_item"][$k]["quantity"])) {
									$_SESSION["cart_item"][$k]["quantity"] = 0;
								}
								$_SESSION["cart_item"][$k]["quantity"] += $_POST["quantity"];
							}
					}
				} else {
					$_SESSION["cart_item"] = array_merge($_SESSION["cart_item"],$itemArray);
				}
			}  else {
				$_SESSION["cart_item"] = $itemArray;
			}
		}
	}
	break;

	// code for removing product from cart
	case "remove":
		if(!empty($_SESSION["cart_item"])) {
			foreach($_SESSION["cart_item"] as $k => $v) {
					if($_GET["p_name"] == $k)
						unset($_SESSION["cart_item"][$k]);				
					if(empty($_SESSION["cart_item"]))
						unset($_SESSION["cart_item"]);
			}
		}
	break;
	// code for if cart is empty
	case "empty":
		unset($_SESSION["cart_item"]);
	break;	
}
}
?>
<HTML>
<HEAD>
<font color="black">
<br><br>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="style_cart.css" type="text/css" rel="stylesheet" />
<style>
.w3-button {width:150px;}
</style>
</HEAD>
<body>
<!-- Cart ---->
<div id="shopping-cart">
<h2 class="txt-heading">ตะกร้าสินค้า</h2>

<a id="btnEmpty" href="cart.php?action=empty">Empty Cart</a>
<?php
if(isset($_SESSION["cart_item"])){
    $total_quantity = 0;
    $total_price = 0;
?>
<font color="black">	
<table class="col-50" class="tbl-cart" cellpadding="10" cellspacing="2">
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
				<td style="text-align:center;"><a href="cart.php?action=remove&p_name=<?php echo $item["p_name"]; ?>" class="btnRemoveAction"><img src="img_home/icon-delete.png" alt="Remove Item" /></a></td>
				</tr>
				<?php
				$total_quantity += $item["quantity"];
				$total_price += ($item["p_price"]*$item["quantity"]);
				$stc= $item["amount"] - $item["quantity"];
				
		}
		?>

<tr>
<td colspan="1" align="right">Total:</td>
<td align="right"><?php echo $total_quantity; ?></td>
<td align="right" colspan="2"><strong><?php echo "฿ ".number_format($total_price, 2); ?></strong></td>
<td></td>
</tr>
</tbody>
</table>		
  <?php
} else {
?>
<div class="no-records">ไม่มีสินค้าในตะกร้า</div>
<?php 
}
?>
</div><br>
<div align="right" style="margin-right:20px; margin-bottom:80px;">
<a style="margin-right:20px;" onclick="history.go(-2)" class="btn btn-danger">continue shopping</a>
<a  href="form_pay.php" ><button class="w3-button w3-blue"><b>ชำระเงิน<b></button></a>
</div>







</body>
</font>
</font>
<?php include('footer.php');?>
</HTML>