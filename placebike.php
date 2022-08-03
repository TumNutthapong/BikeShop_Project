<?php
session_start();
 include('h.php');
 include('header.php');

 $query = "SELECT * FROM tbl_news  WHERE n_type ='สถานที่'  ORDER BY n_id DESC" or die("Error:" . mysqli_error());
 //3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
 $result = mysqli_query($con, $query)
		
  //echo($query_product);
		//exit();

?>

<style>
    span {
      color: red;
    }

    header {
      background-color: rgb(0, 0, 0);
      font-family: tahoma;
    }

    footer {
      color: white;
      background-color: black;
      max-width: 100%;
      font-family: tahoma;
    }


    .container {
      position: relative;
      font-family: Arial;
    }

    .text-block {
      position: absolute;
      bottom: 20px;
      right: 20px;
      background-color: black;
      color: white;
      padding-left: 20px;
      padding-right: 20px;
    }
  </style>




<font color="black">
<center><h1>สถานที่ปั่นที่น่าสนใจ</h1></center> <br>
 </font>
<div class="row">

<div class="container">
<?php foreach ($result as $row) { ?>


   <div class="container">
    <img src="backend/n_img/<?php echo $row['n_img']; ?>" style="width:100%;margin-bottom: 35px;">
    <div class="text-block" style="width:100%;margin-bottom: 35px;">
    <h4><?php echo $row['n_title']; ?></h4>
    <p><?php echo $row['n_detail']; ?></p>
    </div>
  </div>
  

<?php } ?>
</div>
</div>

<?php include('footer.php');?>

