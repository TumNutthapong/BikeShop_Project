<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
$mtb_id = $_GET["ID"];
//2. query ข้อมูลจากตาราง:
$sql = "SELECT mtb.*,t.type_name
FROM tbl_mtb as mtb 
INNER JOIN tbl_type as t ON mtb.type_id = mtb.type_id
WHERE mtb.mtb_id = '$mtb_id'
ORDER BY mtb.type_id asc";
$result2 = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result2);
extract($row);

//2. query ข้อมูลจากตาราง 
$query = "SELECT * FROM tbl_type ORDER BY type_id asc" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>
<div class="container">
  <div class="row">
      <form  name="addproduct" action="mtb_product_form_edit_db.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
        <div class="form-group">
          <div class="col-sm-9">
            <p> ชื่อสินค้า</p>
            <input type="text"  name="mtb_name" class="form-control" required placeholder="ชื่อสินค้า" / value="<?php echo $mtb_name; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> ราคาสินค้า</p>
            <input type="text"  name="mtb_price" class="form-control" required placeholder="ราคาสินค้า" / value="<?php echo $mtb_price; ?>" onKeyUp="if(isNaN(this.value)){ alert('ใส่เฉพาะตัวเลข'); this.value='';}">
          </div>
        </div>
         <div class="form-group">
          <div class="col-sm-6">
            <p> ประเภทสินค้า </p>
            <select name="type_id" class="form-control" required>
              <option value="<?php echo $row["type_id"];?>">
                <?php echo $row["type_name"]; ?>
              </option>
              <option value="type_id">ประเภทสินค้า</option>
              <?php foreach($result as $results){?>
              <option value="<?php echo $results["type_id"];?>">
                <?php echo $results["type_name"]; ?>
              </option>
              <?php } ?>
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
             <textarea  name="mtb_detail" rows="5" cols="60"><?php echo $mtb_detail; ?>
             </textarea>
          </div>
        </div>
            <div class="form-group">
          <div class="col-sm-12">
            <p> ภาพสินค้า </p>
            <img src="mtb_img/<?php echo $row['mtb_img'];?>" width="100px">
            <br>
            <br>
            <input type="file" name="mtb_img" id="mtb_img" class="form-control" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
             <input type="hidden" name="mtb_id" value="<?php echo $mtb_id; ?>" />
             <input type="hidden" name="img2" value="<?php echo $mtb_img; ?>" />
            <button type="submit" class="btn btn-success" name="btnadd"> บันทึก </button>
            
          </div>
        </div>
      </form>
    </div>
  </div>