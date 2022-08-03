<?php
session_start();
//1. เชื่อมต่อ database:
include('backend/condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
include('header.php');
include('h.php');
$member_id = $_REQUEST["ID"];

//2. query ข้อมูลจากตาราง:
//2. query ข้อมูลจากตาราง 
$query = "SELECT * FROM tbl_member ORDER BY 'member_id' asc" or die("Error:" . mysqli_error());
$query2 = "SELECT * FROM tbl_product ORDER BY 'p_id' asc" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);


?>
<!DOCTYPE html>
<html>


<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="style_cart.css" type="text/css" rel="stylesheet" />
<style>




span.price {
  float: right;
  color: grey;
}


</style>

</head>
<font color="black">
<body >
<div class="form-group">
<form  action="form_pay_db.php" method="post" enctype="multipart/form-data"  class="form-horizontal" style="margin-left:100px;">
<h1 align="center">ข้อมูลการชำระเงิน</h1>
<table id="shopping-cart" class="col-50" class="tbl-cart" cellpadding="10" cellspacing="1">
<tbody>
<tr>
<th style="text-align:left;">Name</th>
<th style="text-align:right;" width="5%">Quantity</th>
<th style="text-align:right;" width="10%">Unit Price</th>
<th style="text-align:right;" width="10%">Price</th>

</tr>	
<?php		
    foreach ($_SESSION["cart_item"] as $item){
        $item_price = $item["quantity"]*$item["p_price"];
		?>
    
				<tr>

       <?php $stc= $item["amount"] - $item["quantity"]; ?>
        <input type="hidden" name="amount" value ="<?php echo ($stc); ?>">

				<td><img src="backend/p_img/<?php echo $item["p_img"]; ?>" class="cart-item-image" /><?php echo ($item["p_name"]); ?>
        <input type="hidden" name="p_id" value ="<?php echo ($item["p_id"]); ?>">
        <input type="hidden" name="p_name" value ="<?php echo ($item["p_name"]); ?>">
        </td>
        <td style="text-align:right;"><?php echo $item["quantity"]; ?>
        <input type="hidden" name="quantity" value ="<?php echo $item["quantity"]; ?>"></td>

				<td  style="text-align:right;"><?php echo "฿ ". number_format($item["p_price"]); ?></td>
				<td  style="text-align:right;"><?php echo "฿ ". number_format($item_price,2); ?>
        <input type="hidden" name="p_price" value ="<?php echo  number_format($item_price,2); ?>"></td>
				
				</tr>
				<?php
				$total_quantity += $item["quantity"];
				$total_price += ($item["p_price"]*$item["quantity"]);
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

		



<h1> ชำระสินค้า</h1>
  <div class="row">
      
        <div class="form-group">
          <div class="col-sm-5">
            <p> ชื่อ</p>
            <input type="hidden"  name="member_id"  value="<?php echo $_SESSION["member_id"]; ?>">
            <input type="text"  name="or_name" class="form-control" required placeholder="ชื่อ"/  value="<?=$m_name;?>" / >
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-12">
            <p> ที่อยู่ </p>
             <textarea  name="or_address" rows="4" cols="60" required placeholder=""></textarea>
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-5">
            <p> เบอร์โทรศัพท์</p>
            <input type="text"  name="or_tel" class="form-control" required placeholder="เบอร์โทรศัพท์" onKeyUp="if(isNaN(this.value)){ alert('ใส่เฉพาะตัวเลข'); this.value='';}" maxlength="10">
          </div>
        </div>
        
       <div class="form-group">
          <div class="col-sm-4">
            <p>จำนวนเงินที่ต้องชำระ</p>
            <input type="text"  name="total" class="form-control"  value =" <?php echo number_format($total_price,2);  ?>" readonly/>
          </div>
        </div>
       
        
       
        <div class="form-group">
           <div class="col-sm-3">
           <div align="center" class="col-50">
            <h3></h3>
            <img  src="img_home/qr_pay.jpg" style="wight:550px; height:650px;">
            <h3>โปรดสแกนเพื่อทำการชำระเงินและแนบสลิปโอนเงิน</h3>
          </div>

          <script>
                function previewImage() {
                 var file = document.getElementById("file").files;
            if (file.length > 0) {
            var fileReader = new FileReader();
 
            fileReader.onload = function (event) {
                document.getElementById("preview").setAttribute("src", event.target.result);
            };
 
            fileReader.readAsDataURL(file[0]);
            }
            }
            </script>
 
            <form method="POST"  action="form_pay_db.php" enctype="multipart/form-data">
                <input type="file" name="slip_img" id="file" accept="slip_img" onchange="previewImage();">
            </form>
            <img id="preview" style="wight:600px; height:650px;" >        
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
          <input type="hidden" name="s_id" value="รอดำเนินการ" />
            <button href="form_pay_db.php" type="submit" class="btn btn-success" > บันทึก </button>
            
          </div>
        </div>
    
    </div>
  </div>

  </form>


</div>
</body>



</font>
<?php include('footer.php'); ?>
</html>