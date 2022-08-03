<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
$c_id = $_GET["ID"];
//2. query ข้อมูลจากตาราง:
$sql = "SELECT c.*
FROM tbl_claim as c 
WHERE c.c_id = '$c_id'";
$result2 = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result2);
extract($row);

//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>

<?php include('h.php') ?>

<div style="margin-top:20px;" class="container">
 <h2>รายละเอียดการแจ้งปัญหาสินค้า</h2>
  <div class="row">
    
      <form  name="addproduct" action="claim_form_read_db.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div  class="form-group">
          <div class="col-sm-5">
            <p> ชื่อลูกค้า</p>
            <b><input type="text"  name="c_name" class="form-control"  readonly/ value="<?php echo $c_name; ?>"></b>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-5">
            <p> เบอร์โทรที่ติดต่อได้</p>
            <b><input type="text"  name="c_tel" class="form-control"  readonly/ value="<?php echo $c_tel; ?>"></b>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-5">
            <p> อีเมล์</p>
            <b><input type="text"  name="c_email" class="form-control"  readonly/ value="<?php echo $c_email; ?>"></b>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> ที่อยู่ </p>
             <textarea  name="c_address" rows="5" cols="60" readonly/  ><?php echo $c_address; ?>
             </textarea>
        
        
          
            <p>รายละเอียดสินค้า </p>
             <textarea  name="c_detail" rows="5" cols="60" readonly/  ><?php echo $c_detail; ?>
             </textarea>
             

            <div class="form-group">
          <div class="col-lg-12 ">
            <p> ภาพสินค้า </p>
            <img src="c_img/<?php echo $row['c_img'];?>" width="30%">
            <br>
            <br>
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-4">
            <p> การอนุมัติ </p>
            <select name="c_status" class="form-control" required>
              <option value="อนุมัติ">อนุมัติ</option>
              <option value="ไม่อนุมัติ">ไม่อนุมัติ</option>
            </select>
          </div>
        </div>
        <br>
        <div class="form-group">
          <div class="col-sm-12">
             <input type="hidden" name="c_id" value="<?php echo $c_id; ?>" />
             
            <button type="submit" class="btn btn-success" name="btnadd"> บันทึก </button>
            
          </div>
        </div>
      </form><br><br>
    </div>
  </div>