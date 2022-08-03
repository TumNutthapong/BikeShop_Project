<?php
session_start();
//1. เชื่อมต่อ database:
include('header.php');
include('h.php');
include('backend/condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
$member_id =  $_SESSION["member_id"];
$or_id = $_GET["ID"];
//2. query ข้อมูลจากตาราง:
$sql = "SELECT mtb.*,t.t_id,p_name,p_price,quantity 
FROM tbl_order as mtb 
INNER JOIN tbl_order_item as t 
ON mtb.or_id = t.or_id 
WHERE mtb.member_id= '$member_id' AND mtb.or_id= '$or_id'";
$result2 = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result2);
extract($row);

//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>

<font color="black">
<div style="margin-top:20px;" class="container">
 <h1>ประวัติการสั่งซื้อ</h1>
  <div class="row">
    
     
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
          <div class="col-sm-12">
            
             
            <a href="htr.php"><button   class="btn btn-success" > ย้อนกลับ </button><a>
            <div align="right" >
            <a  href="claim_form_add.php"><button   class="btn btn-danger" > แจ้งสินค้ามีปัญหา </button><a>
        </div>
          </div>
        </div>

        

    </div>
  </div>
 </font>

<?php include('footer.php'); ?>   
        