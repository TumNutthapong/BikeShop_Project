 <?php
      include('h.php');
                //1. เชื่อมต่อ database:
                include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
                //2. query ข้อมูลจากตาราง tb_admin:
                $query = "SELECT * FROM tbl_type ORDER BY type_id ASC" or die("Error:" . mysqli_error());
                //3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
                $result = mysqli_query($con, $query);
                //4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
                echo ' <table class="table table-hover">';
                  //หัวข้อตาราง 
                    echo "
                      <tr>
                      <td>id</td>
                      <td>type</td>
                      <td>edit</td>
                      <td>del</td>                 
                    </tr>";
                
                  while($row = mysqli_fetch_array($result)) {
                  echo "<tr>";
                    echo "<td>" .$row["type_id"] .  "</td> ";
                    echo "<td>" .$row["type_name"] .  "</td> ";
                    //แก้ไขข้อมูล
                    echo "<td><a href='type.php?act=edit&ID=$row[0]' class='btn btn-warning btn-sm'>แก้ไข</a></td> ";  
                    //ลบข้อมูล
                    echo "<td><a href='type_del_db.php?ID=$row[0]' onclick=\"return confirm('ยืนยันการลบประเภทสินค้า? !!!')\" class='btn btn-danger btn-sm'>ลบ</a></td> ";
                  echo "</tr>";
                  }
                echo "</table>";
                //5. close connection
                mysqli_close($con);
                ?>