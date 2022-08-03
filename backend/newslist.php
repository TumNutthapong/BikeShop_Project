<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
//2. query ข้อมูลจากตาราง 
$query = "
SELECT * FROM tbl_news   ORDER BY n_id DESC" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:

echo  ' <table class="table table-hover">';
  //หัวข้อตาราง
    echo "<tr>
      <td width='5%'>id</td>
      <td width=10%>type</td>
      
      <td width=30%>name</td>
  
      <td width=25%>img</td>
      
      <td width=5%>del</td> 
    </tr>";
  while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
    echo "<td>" .$row["n_id"] .  "</td> ";
    echo "<td>" .$row["n_type"] .  "</td> ";
   
    echo "<td>" .$row["n_title"] .  "</td> ";
    
    echo "<td align=center>"."<img src='n_img/".$row[n_img]."' width='100'>"."</td>";
    //ลบข้อมูล
    echo "<td><a href='news_form_del_db.php?ID=$row[0]' onclick=\"return confirm('ยืนยันการลบสินค้า? !!!')\" class='btn btn-danger btn-sm'>del</a></td> ";
  echo "</tr>";
  }
echo "</table>";
//5. close connection
mysqli_close($con);
?>