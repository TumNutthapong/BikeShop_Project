<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
//2. query ข้อมูลจากตาราง 
$query = "
SELECT * FROM tbl_product as p 
INNER JOIN tbl_type  as t ON p.type_id=t.type_id 
WHERE p.cat = 'bmx'
ORDER BY p.p_id DESC" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:

echo  ' <table class="table table-hover">';
  //หัวข้อตาราง
    echo "<tr>
      <td width='5%'>id</td>
      <td width=10%>type</td>
      
      <td width=30%>name</td>
      <td>price</td>
      <td width=25%>img</td>
      <td width=10%>amount</td>
      <td width=5%>edit</td>
      <td width=5%>del</td> 
    </tr>";
  while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
    echo "<td>" .$row["p_id"] .  "</td> ";
    echo "<td>" .$row["type_name"] .  "</td> ";
   
    echo "<td>" .$row["p_name"] .  "</td> ";
    echo "<td>" .number_format($row["p_price"]) .  "</td> ";
    echo "<td align=center>"."<img src='p_img/".$row[p_img]."' width='100'>"."</td>";
    echo "<td>" .$row["amount"] .  "</td> ";
    //แก้ไขข้อมูล
    echo "<td><a href='product.php?act=edit&ID=$row[0]' class='btn btn-warning btn-sm'>edit</a></td> ";
    
    //ลบข้อมูล
    echo "<td><a href='product_del_db.php?ID=$row[0]' onclick=\"return confirm('ยืนยันการลบสินค้า? !!!')\" class='btn btn-danger btn-sm'>del</a></td> ";
  echo "</tr>";
  }
echo "</table>";
//5. close connection
mysqli_close($con);
?>