<?php include('h.php');?>
<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี

?>

<div class="container" style="margin-top:30px; margin-bottom:150px;">
  
<h1> เพิ่มข่าวสาร</h1>
  <div class="row">
      <form  name="addproduct" action="news_form_add_db.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
        <div class="form-group">
          <div class="col-sm-9">
            <p> หัวข้อ</p>
            <input type="text"  name="n_title" class="form-control" required placeholder="หัวข้อข่าว" />
          </div>
        </div>
        



        <div class="form-group">
          <div class="col-sm-8">
            <p> ประเภท</p>
            <select name="n_type" class="form-control" required>
              <option value="ข่าวสาร">ข่าวสาร</option>
              <option value="สถานที่">สถานที่</option>
             
            </select>
          </div>
        </div>


        <div class="form-group">
          <div class="col-sm-12">
            <p> รายละเอียด </p>
             <textarea  name="n_detail" rows="5" cols="60"></textarea>
          </div>
        </div>
        <div class="form-group">
          
          <div class="col-sm-12">
            <p> ภาพสินค้า </p>
            <input type="file" name="n_img" id="n_img" class="form-control" />
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
  