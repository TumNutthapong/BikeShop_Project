<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
//2. query ข้อมูลจากตาราง 
$query = "
SELECT * FROM tbl_claim as c
ORDER BY c.c_id DESC" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:

echo  ' <table class="table table-hover">';
  //หัวข้อตาราง
    echo "<tr>
    
        <td width=30%>ชื่อลูกค้า</td>
        <td width=20%>เบอร์โทร</td>  
      <td width=25%>img</td>
      <td width=20%>สถานะ</td> 
      <td width=5%>Read</td>
      <td width=5%>del</td> 
    </tr>";
  while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
  
  
    echo "<td>" .$row["c_name"] .  "</td> ";
    echo "<td>" .$row["c_tel"] .  "</td> ";
    echo "<td align=center>"."<img src='c_img/".$row[c_img]."' width='100'>"."</td>";
    echo "<td>" .$row["c_status"] .  "</td> ";
    //แก้ไขข้อมูล
    echo "<td><a href='claim_form_read.php?act=read&ID=$row[0]' class='btn btn-warning btn-sm'>Read</a></td> ";
    
    //ลบข้อมูล
    echo "<td><a href='claim_del_db.php?ID=$row[0]' onclick=\"return confirm('Do you want to delete this record? !!!')\" class='btn btn-danger btn-sm'>del</a></td> ";
  echo "</tr>";
  }
echo "</table>";
//5. close connection
mysqli_close($con);
?>