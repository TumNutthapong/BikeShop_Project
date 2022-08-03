<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
$pt_id = $_GET["ID"];
//2. query ข้อมูลจากตาราง:
$sql = "SELECT pt.*
FROM tbl_protec as pt 
WHERE pt.pt_id = '$pt_id'";
$result2 = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result2);
extract($row);
//2. query ข้อมูลจากตาราง 

//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>
<div class="container">
  <div class="row">
      <form  name="addproduct" action="pt_product_form_edit_db.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
        <div class="form-group">
          <div class="col-sm-9">
            <p> ชื่อสินค้า</p>
            <input type="text"  name="pt_name" class="form-control" required placeholder="ชื่อสินค้า" / value="<?php echo $pt_name; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> ราคาสินค้า</p>
            <input type="text"  name="pt_price" class="form-control" required placeholder="ราคาสินค้า" / value="<?php echo $pt_price; ?>" onKeyUp="if(isNaN(this.value)){ alert('ใส่เฉพาะตัวเลข'); this.value='';}">
          </div>
        </div>
         <div class="form-group">
          <div class="col-sm-6">
            
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-6">
            <p> ประเภทสินค้า </p>
            <select name="cat" class="form-control" required >
              <option value="bmx">bmx</option>
              <option value="mtb">mtb</option>
              <option value="Acc">Accessory</option>   
            </select>
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-9">
            <p>จำนวนสินค้า</p>
            <input type="text"  name="amount" class="form-control" required placeholder="จำนวนสินค้า" / value="<?php echo $amount; ?>" maxlength="3" onKeyUp="if(isNaN(this.value)){ alert('ใส่เฉพาะตัวเลข'); this.value='';}">
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-12">
            <p> รายละเอียดสินค้า </p>
             <textarea  name="pt_detail" rows="5" cols="60"><?php echo $pt_detail; ?>
             </textarea>
          </div>
        </div>
            <div class="form-group">
          <div class="col-sm-12">
            <p> ภาพสินค้า </p>
            <img src="pt_img/<?php echo $row['pt_img'];?>" width="100px">
            <br>
            <br>
            <input type="file" name="pt_img" id="pt_img" class="form-control" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
             <input type="hidden" name="pt_id" value="<?php echo $pt_id; ?>" />
             <input type="hidden" name="img2" value="<?php echo $pt_img; ?>" />
            <button type="submit" class="btn btn-success" name="btnadd"> บันทึก </button>
            
          </div>
        </div>
      </form>
    </div>
  </div>