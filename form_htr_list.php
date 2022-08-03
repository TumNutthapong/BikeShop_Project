<?php

include('header.php');

include('backen/condb.php');
$member_id =  $_SESSION["member_id"];
//1. เชื่อมต่อ database:
  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
//2. query ข้อมูลจากตาราง 
$query = "SELECT * FROM tbl_order as o
WHERE member_id= '$member_id'
ORDER BY o.or_id DESC " or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>
<font color="black">
<h1>ประวัติการสั่งซื้อ</h1><br>
</font>

<b>
<?php
echo  ' <table class="table table-hover">';
  //หัวข้อตาราง
    echo "<tr>
    
        <td width=30%>ชื่อ</td>
        <td width=20%>จำนวนเงิน</td>  
        <td width=20%>เลขพัสดุ</td>
        <td width=20%>สถานะการสั่งซื้อ</td> 
        <td width=15%>รายละเอียดคำสั่งซื้อ</td> 
    </tr>";?><b>
<?php
  while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
  
  
    echo "<td>" .$row["or_name"] .  "</td> ";
    echo "<td>" .$row["total"] .  "</td> ";
    echo "<td>" .$row["post_id"] .  "</td> ";
    echo "<td>" .$row["s_id"] .  "</td> ";
    
  
  
    
    echo "<td><a href='form_htr_read.php?act=read&ID=$row[0]' class='btn btn-success btn-sm'>View</a></td> ";
    
    //ลบข้อมูล
    ;
  }
echo "</table>";
//5. close connection
mysqli_close($con);

?>

