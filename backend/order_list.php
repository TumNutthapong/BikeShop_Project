<?php
//1. เชื่อมต่อ database:
include('backend/condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
//2. query ข้อมูลจากตาราง 
$query = "
SELECT * FROM tbl_order as o
ORDER BY o.or_id DESC" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:

echo  ' <table class="table table-hover">';
  //หัวข้อตาราง
    echo "<tr>
    
        <td width=30%>ชื่อลูกค้า</td>
        <td width=15%>จำนวนเงิน</td>  
        <td width=10%>เบอร์โทร</td> 
      <td width=20%>img</td>
      <td width=25%>สถานะ</td>
      <td width=5%>Read</td>
      
    </tr>";
  while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
  
  
    echo "<td>" .$row["or_name"] .  "</td> ";
    echo "<td>" .$row["total"] .  "</td> ";
    echo "<td>" .$row["or_tel"] .  "</td> ";
    
  
    echo "<td align=center>"."<img src='slip_img/".$row['slip_img']."' width='100'>"."</td>";
  
    echo "<td>" .$row["s_id"] .  "</td> ";

    echo "<td><a href='order_form_read.php?act=read&ID=$row[0]' class='btn btn-warning btn-sm'>Read</a></td> ";

    
    
  echo "</tr>";
  }
echo "</table>";
//5. close connection
mysqli_close($con);
?>