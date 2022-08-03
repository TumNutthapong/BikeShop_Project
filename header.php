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

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster&effect=shadow-multiple">
<style>
.w3-lobster {
  font-family: "Lobster", Sans-serif;
}
</style>
  <title>Bicycle Shop!</title>
  <style>
    span {
      color: red;
  }
    header {
      background-color: rgb(0, 0, 0);
      font-family: tahoma;
      height: 120px; 
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

<header  class="w3-container w3-lobster">
    <div style="margin-top:10px;" class="container d-flex flex-wrap justify-content-center">
      <a href="index.php" class="d-flex align-items-center mb-3 mb-lg-0 me-lg-auto text-dark text-decoration-none">
        <span class="w3-xxxlarge font-effect-shadow-multiple">BICYCLE SHOP!</span>
      </a>
      <ul style="margin-top:25px;" class="nav me-auto">
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
          </a></li></font>
      </ul>
     
      
      
        
     
      <div style="margin-top:25px;margin-left:0px;" >
      <a  href="cart.php"><i style='font-size:30px;color:white' class='fas'>&#xf217;</i></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<div class="w3-dropdown-hover w3-right" style="margin-right:10px;">
      <a href="member_form_login.php"><i style='font-size:40px;color:white' class='fas'>&#xf2bd;</i></a>
    
    <div class="w3-dropdown-content w3-bar-block w3-border" style="right:0">
    
      <a href="htr.php" class="w3-bar-item w3-button">ประวัติการสั่งซื้อ</a>
      </div>
</div>&nbsp;&nbsp;
</div>
 
<?php if (isset($_SESSION['success'])) : ?>
            <div class="success">
                <h3>
                    <?php 
                        echo $_SESSION['success'];
                        unset($_SESSION['success']);
                    ?>

                </h3>
    </div>
        <?php endif ?>

        <!-- logged in user information -->
         <?php if (isset($_SESSION['m_name'])) : ?>
      <p style="margin-top:20px;"><font color="white">Welcome  <strong><?php echo $_SESSION['m_name']; ?></strong><br>
      <a href="logout.php?logout='1'"class="btn btn-danger" style="color: black;">Logout</a></p>
        <?php endif ?>
        

  
        
    </div>
    

  </header>


   <b  class="w3-container w3-lobster"><ul  class="nav me-auto">
        <li class="nav-item"><a href="show_product_all.php" class="nav-link link-dark fs-4">All Product</a></li>
        <li class="nav-item"><a href="show_product_pt.php" class="nav-link link-dark fs-4">Accessory</a></li>
      </ul></b>

      </body>
</html>

