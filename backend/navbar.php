<?php?>
<!doctype html>
<html lang="en">
<head>

<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BICYCLE SHOP!</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
       <!-- CSS -->
 
  <link href="login.css" rel="stylesheet">
  <meta name="robots" content="noindex,follow" />

  <meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>


  <title>Bicycle Shop!</title>
  <style>
    span {
      color: red;
  }
    header {
      background-color: rgb(0, 0, 0);
      font-family: tahoma;
    }
    footer{
      color: white;
      background-color: black;
      max-width: 100%;
      font-family: tahoma;
    }
   
  </style>
</head>


<body>
<header class="py-4 border-bottom">
    <div class="container d-flex flex-wrap justify-content-center">
      <a href="index.php" class="d-flex align-items-center mb-3 mb-lg-0 me-lg-auto text-dark text-decoration-none">
        <span class="fs-2">BICYCLE SHOP!</span>
      </a>
      <ul class="nav me-auto">
        <li class="nav-item"><a href="index.php" class="nav-link link-dark fs-5 active" aria-current="page">
            <font color="white">Home
          </a></li>
        </font>
        <li class="nav-item"><a href="contact.php" class="nav-link link-dark fs-5">
            <font color="white">Contact
          </a></li>
        </font>
        <li class="nav-item"><a href="about.php" class="nav-link link-dark fs-5">
            <font color="white">About
          </a></li>
        </font>
      </ul>
      
     

      <a href="ไปที่หน้าแก้ไขข้อมูลส่วนตัว"><i style='font-size:40px;color:white' class='fas'>&#xf2bd;</i></a>&nbsp;&nbsp;&nbsp;&nbsp;
      
      <form class="col-12 col-lg-auto mb-3 mb-lg-0" action="index.php" method="GET">
        <input type="search" class="form-control" placeholder="Search..." aria-label="Search" name="search">
      </form>&nbsp;&nbsp;&nbsp;&nbsp;

      <ul class="nav">
        <li class="nav-item"><a href="member_form_login.php" class="nav-link link-dark px-2"><font color="white">Log in</a></li></font>
        <li class="nav-item"><a href="member_form_add.php" class="nav-link link-dark px-2"><font color="white">Sign up</a></li></font>
      </ul> 
      &nbsp;&nbsp;<a href="ไปที่หน้าตะกร้าสินค้า"><i style='font-size:30px;color:white' class='fas'>&#xf217;</i></a>
      </div>

  </header>
  
  <div class="col-md-3">
    <!-- แสดงชื่อคนที่ล็อกอินเข้ามา -->
      สวัสดี<?php echo $m_name; ?>
  </div>

   <b><ul class="nav me-auto">
        <li class="nav-item"><a href="bmx-part.php" class="nav-link link-dark fs-4 active" aria-current="page">BMX</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark fs-4">Mountain Bike</a></li>
        <li class="nav-item"><a href="acc-part.php" class="nav-link link-dark fs-4">Accessory</a></li>
      </ul></b>

      </body>
</html>
