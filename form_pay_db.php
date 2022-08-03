<meta charset="UTF-8">
<?php
session_start();
include('backend/condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
//Set ว/ด/ป เวลา ให้เป็นของประเทศไทย
date_default_timezone_set('Asia/Bangkok');
	//สร้างตัวแปรวันที่เพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลด
	$date1 = date("Ymd_His");
	//สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
	$numrand = (mt_rand());
	//รับค่าไฟล์จากฟอร์ม

$member_id = $_POST['member_id'];
$total = $_POST['total'];
$or_name = $_POST['or_name'];
$or_address = $_POST['or_address'];
$or_tel = $_POST['or_tel'];
$s_id = $_POST['s_id'];
$or_id = $_post['or_id'];
$p_name = $_post['p_name'];
$p_price = $_POST['p_price'];
$quantity = $_POST['quantity'];
$p_id = $_POST['p_id'];
$amount = $_POST['amount'];


$slip_img =(isset($_POST['slip_img']) ? $_POST['slip_img'] :'');
//img
	$upload=$_FILES['slip_img'];
	if($upload <> '') {

	//โฟลเดอร์ที่เก็บไฟล์
	$path="backend/slip_img/";
	//ตัวขื่อกับนามสกุลภาพออกจากกัน
	$type = strrchr($_FILES['slip_img']['name'],".");
	//ตั้งชื่อไฟล์ใหม่เป็น สุ่มตัวเลข+วันที่
	$newname ='slip_img'.$numrand.$date1.$type;
	$path_copy=$path.$newname;
	$path_link="backend/slip_img/".$newname;
	//คัดลอกไฟล์ไปยังโ ฟลเดอร์
	move_uploaded_file($_FILES['slip_img']['tmp_name'],$path_copy);
	}

	// เพิ่มไฟล์เข้าไปในตาราง uploadfile
	

	
		$sql1= "INSERT INTO tbl_order (member_id,total,or_name,or_address,or_tel,slip_img,s_id)
							VALUES ('$member_id','$total','$or_name','$or_address','$or_tel','$newname','$s_id')";

		$result1 = mysqli_query($con, $sql1) or die ("Error in query: $sql1 " . mysqli_error());
		
				
		
		
		$query = "SELECT * FROM tbl_order ORDER BY or_id DESC LIMIT 1" or die("Error:" . mysqli_error());
$result = mysqli_query($con, $query);
$row = mysqli_fetch_array($result);
		$id = $row['or_id'];
		
		
		$count = 1;


		foreach ($_SESSION["cart_item"] as $item){
			$item_price = $item["p_price"];
			$item_id = $item["or_id"];
			$item_name = $item["p_name"];
			$item_q = $item["quantity"];
			
		
			$sql = "INSERT INTO tbl_order_item (or_id,t_id,p_name,p_price,quantity)
									VALUES ('$id','$count','$item_name','$item_price','$item_q')";
						   $count = $count+1;
	  $result = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
	

	  }

	  //ตัดสต๊อก
	  foreach ($_SESSION["cart_item"] as $item){

				$stc= $item["amount"] - $item["quantity"];
				$tt = $item["p_id"];
		$sql2 = "UPDATE tbl_product SET  
		   amount='$stc'
		   WHERE  p_id = '$tt' ";
		$query3 = mysqli_query($con, $sql2) or die ("Error in query: $sql2 " . mysqli_error());  

		}


		
	 
		unset($_SESSION["cart_item"]);

	mysqli_close($con);
	// javascript แสดงการ upload file
	
	
if($result){
echo "<script type='text/javascript'>";
echo "alert('ขอบคุณที่ใช้บริการครับ');";
echo "window.location = 'index.php'; ";
echo "</script>";
}
else{
echo "<script type='text/javascript'>";
echo "alert('กรอกข้อมูลผิดพลาดโปรดกลับไปแก้ไขข้อมูล');";
echo "window.location = 'form_pay.php'; ";
echo "</script>";
}
?>