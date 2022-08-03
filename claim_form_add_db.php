<meta charset="UTF-8">
<?php
include('backend/condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
//Set ว/ด/ป เวลา ให้เป็นของประเทศไทย
date_default_timezone_set('Asia/Bangkok');
	//สร้างตัวแปรวันที่เพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลด
	$date1 = date("Ymd_His");
	//สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
	$numrand = (mt_rand());
	//รับค่าไฟล์จากฟอร์ม
$c_name = $_POST['c_name'];
$c_detail = $_POST['c_detail'];
$c_email = $_POST['c_email'];
$c_tel = $_POST['c_tel'];
$c_address = $_POST['c_address'];
$c_status = $_POST['c_status'];
$c_img =(isset($_POST['c_img']) ? $_POST['c_img'] :'');
//img
	$upload=$_FILES['c_img'];
	if($upload <> '') {

	//โฟลเดอร์ที่เก็บไฟล์
	$path="backend/c_img/";
	//ตัวขื่อกับนามสกุลภาพออกจากกัน
	$type = strrchr($_FILES['c_img']['name'],".");
	//ตั้งชื่อไฟล์ใหม่เป็น สุ่มตัวเลข+วันที่
	$newname ='c_img'.$numrand.$date1.$type;
	$path_copy=$path.$newname;
	$path_link="backend/c_img/".$newname;
	//คัดลอกไฟล์ไปยังโฟลเดอร์
	move_uploaded_file($_FILES['c_img']['tmp_name'],$path_copy);
	}
	// เพิ่มไฟล์เข้าไปในตาราง uploadfile
	
		$sql = "INSERT INTO tbl_claim
		(
		c_name,
		c_address,
		c_detail,
		c_email,
        C_tel,
        c_img,
		c_status
        )
		VALUES
		(
		'$c_name',
		'$c_address',
		'$c_detail',
        '$c_email',
        '$c_tel',   
		'$newname',
		'$c_status')";
		
		$result = mysqli_query($con, $sql);// or die ("Error in query: $sql " . mysqli_error());
	
	mysqli_close($con);
	// javascript แสดงการ upload file
	
	
	if($result){
echo "<script type='text/javascript'>";
echo "alert('Add Succesfuly');";
echo "window.location = 'htr.php'; ";
echo "</script>";
}
else{
echo "<script type='text/javascript'>";
echo "alert('Error back to upload again');";
echo "window.location = 'claim_form_add.php'; ";
echo "</script>";
}
?>