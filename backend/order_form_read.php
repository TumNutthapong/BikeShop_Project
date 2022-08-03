<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
$or_id = $_GET["ID"];
//2. query ข้อมูลจากตาราง:
$sql = "SELECT mtb.*,t.t_id,p_name,p_price,quantity 
FROM tbl_order as mtb 
INNER JOIN tbl_order_item as t 
ON mtb.or_id = t.or_id 
WHERE mtb.or_id = '$or_id' 
ORDER BY mtb.or_id ASC";
$result2 = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result2);
extract($row);

//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>


<?php include('h.php') ?>


<div style="margin-top:30px;" class="container">
<h1>รายละเอียดคำสั่งซื้อสินค้า</h1>
  <div class="row">
    
      <form  name="addproduct" action="order_form_read_db.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div  class="form-group">
          <div class="col-sm-12">
            <p> ชื่อลูกค้า : <b> <?php echo $or_name; ?></b> &nbsp;&nbsp;&nbsp;  เบอร์โทรที่ติดต่อได้: <b><?php echo $or_tel; ?></b></p>
          </div>
        </div>
    
        
         <div class="form-group">
          <div class="col-sm-12">
            <p> ที่อยู่ </p>
            <b><?php echo $or_address; ?></b>
             </textarea>
           </div> 
          </div>   
             
              
           
          <div style="margin-top:20px;" class="container">   
          <p> รายการ </p>
            
            
            <?php 
            echo  ' <table class="table table-hover">';
            //หัวข้อตาราง
              echo "<tr>
              
                  <td width=30%>ลำดับ</td>
                  <td width=30%>ชื่อสินค้า</td>  
                  <td width=30%>ราคา</td> 
                  <td width=30%>จำนวน</td> 
              </tr>";
              $result2 = mysqli_query($con, $sql);
             while($row = mysqli_fetch_array($result2)){
              echo "<tr>"; 
              echo "<td>" .$row["t_id"] .  "</td> ";
              echo "<td>" .$row["p_name"] .  "</td> ";
              echo "<td>" .$row["p_price"] .  "</td> ";
              echo "<td>" .$row["quantity"] .  "</td> ";
                "</tr>";
            }
              
            echo "</table>";?>


            <p> ราคารวม : <b> <?php echo $total; ?>

          </div>
          

        <div class="form-group">
          <div class="col-lg-12 ">
            <p> ภาพหลักฐานการโอนเงิน</p>
            <img src="slip_img/<?php echo $slip_img; ?>" width="30%">
            <br>
            <br>
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-4">
            <p> เลือกสถานะ </p>
            <select name="s_id" class="form-control"  required>
              <option value="รอดำเนินการ">รอดำเนินการ</option>
              <option value="กำลังดำเนินการจัดส่งสินค้า">กำลังดำเนินการจัดส่งสินค้า</option>
              <option value="จัดส่งสินค้าเสร็จสิ้น">จัดส่งสินค้าเสร็จสิ้น</option>   
              <option value="ยกเลิกรายการ">ยกเลิกรายการ</option> 
            </select>
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-5">
            <p>เลขพัสดุ</p>
            <input type="text"  name="post_id" class="form-control" value="<?php echo $post_id; ?>" required placeholder="เลขพัสดุ" />
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-12">
             <input type="hidden" name="or_id" value="<?php echo $or_id; ?>" /><br>
             
            <button type="submit" class="btn btn-success" name="btnadd"> บันทึก </button>
            
          </div>
        </div>
      </form>
    </div>
  </div>
  <br><br>