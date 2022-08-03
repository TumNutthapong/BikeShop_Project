<?php
      include('h.php');
                //1. เชื่อมต่อ database:
                include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
                //2. query ข้อมูลจากตาราง tb_admin:
                $query = "SELECT * FROM tbl_member ORDER BY member_id ASC" or die("Error:" . mysqli_error());
                //3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
                $result = mysqli_query($con, $query);
                //4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
                echo ' <table class="table table-hover">';
                ?>

<script>    
$(document).ready(function() {
    $('#example2').DataTable( {
      "aaSorting" :[[0,'ASC']],
    //"lengthMenu":[[20,50, 100, -1], [20,50, 100,"All"]]
  });
} );
 
  </script>

  <table border="2" class="display table table-bordered" id="example2" align="center"  >
  <thead>
    <tr class="info">    
    <th width=5%>id</th>
    <th width=15%>username</th>
    <th width=30%>member_name</th>
    <th >member_email</th>
    <th width=5%>tel</th>
    <th width=45%>member_address</th>
    
    <th>del</th>
  </tr>
</thead>
  <?php do { ?>
  
    <tr>
      <td><?php echo $row_am['member_id']; ?></td>
      <td><?php echo $row_am['m_user']; ?></td>
      <td ><?php echo $row_am['m_name']; ?></td>
      <td ><?php echo $row_am['m_email']; ?></td>
      <td ><?php echo $row_am['m_tel']; ?></td>
      <td ><?php echo $row_am['m_address']; ?></td>
      
       <td><a href="member_del_db.php?ID=<?php echo $row_am['member_id']; ?>" class='btn btn-danger btn-sm'  onclick="return confirm('ยืนยันการลบ')">ลบ</a> </td>
    </tr>

    <?php } while ($row_am =  mysqli_fetch_assoc($result)); ?>
  
    </table> 
                  