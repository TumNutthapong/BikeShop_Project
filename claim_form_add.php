<?php
include('h.php');
include('header.php');
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
//2. query ข้อมูลจากตาราง tb_member:
$query = "SELECT * FROM tbl_claim " or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:


?>
<font color="black">

<div class="container">  
  <h1>แจ้งปัญหาสินค้า</h1>
  <div class="row">
      <form  name="addproduct" action="claim_form_add_db.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
        <div class="form-group">
          <div class="col-sm-9">
            <p> ชื่อลูกค้า</p>
            <input type="text"  name="c_name" class="form-control" required placeholder="ชื่อ-สกุล" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> email</p>
            <input type="email"  name="c_email" class="form-control" required placeholder="email" />
          </div>
        </div>  
        <div class="form-group">
          <div class="col-sm-9">
            <p> เบอร์โทรที่ติดต่อได้</p>
            <input type="text"  name="c_tel" class="form-control" required placeholder="09xxxxxxxx" onKeyUp="if(isNaN(this.value)){ alert('ใส่เฉพาะตัวเลข'); this.value='';}" maxlength="10" />
          </div>
        </div>   
        <div class="form-group">
          <div class="col-sm-9">
            <p> ที่อยู่</p>
            <input type="text"  name="c_address" class="form-control" required placeholder="ที่อยู่" />
          </div>
        </div>
         <div class="form-group">
          <div class="col-sm-8">
            </select>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
          <input type="hidden" name="c_status" value="รอดำเนินการ" />
            <p> รายละเอียดการเคลม </p>
             <textarea  name="c_detail" rows="5" cols="60"></textarea>
          </div>
        </div>
        <div class="form-group">
          
          <div class="col-sm-12">
            <p> ภาพสินค้า </p>
            <input type="file" name="c_img" id="c_img" class="form-control" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <button type="submit" class="btn btn-success" name="btnadd"> บันทึก </button>
            
          </div>
        </div>
      </form>
    </div>
  </div>

</font>
  <?php include('footer.php');?>