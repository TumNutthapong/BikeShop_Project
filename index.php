<?php include('condb.php');?>
<!doctype html>
<html lang="en">
<head>
<?php include('h.php');?>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
       <!-- CSS -->
 
  <link href="login.css" rel="stylesheet">
  <meta name="robots" content="noindex,follow" />



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
    body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.hero-image1 {
  background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("img_home/placebike.jpg");
  height: 30%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.hero-image2 {
  background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("img_home/new01.jpg");
  height: 30%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}

.hero-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: #ddd;
  text-align: center;
  cursor: pointer;
}


  </style>
</head>

   <?php include ('header.php');?>
<body>

 
   
<style>
  

/* Slideshow container */
.slideshow-container {
  
  position: center;
  margin: auto;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 2.0s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}


</style>
</head>
<body>

<div class="container">

<div class="mySlides fade">
  
  <img  src="img_home/addbmx.jpg"style="border: solid 8px #000000"  width="95%"height="450">
  
</div>

<div class="mySlides fade">
 
  <img src="img_home/addmtb.jpg"style="border: solid 8px #000000" width="95%"height="450">
  
</div>

<div class="mySlides fade">
  
  <img src="img_home/adddbmx.jpg"style="border: solid 8px #000000" width="95%"height="450">
 
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 5 seconds
}
</script>


  <br><br>
    <center><h1><b><font color="black">เลือกประเภทสินค้าที่คุณสนใจ</font></h1></b></center>

  
    <br>
    &nbsp;<a href ="show_product_mtb.php"><img style="border: solid 4px #000033" src="img_home/mtb.jpg"width="33%"height="450"></a> 
    <a href ="show_product_bmx.php" ><img style="border: solid 4px #000033" src="img_home/bmx.jpg"width="33%"height="450"></a> 
    <a href ="show_product_pt.php" ><img style="border: solid 4px #000033" src="img_home/pt.jpg"width="32%"height="450"></a>
   
    
    
    
    
    <br><br><br>
    <Center><h1 ><b><font color="red" >BUILD <font color="black">YOUR BIKE</font></font></b></h1></Center>
    <center><p><font color="black">**โปรดเลือกประเภทจักรยานที่คุณต้องการประกอบ**</font></p></center>
    <br>

    


    &nbsp;<a href ="custom_bmx.php" ><img  style="border: solid 8px #DCDCDC" src="img_home/custom_bmx.jpg"width="49%"height="450"></a>&nbsp;&nbsp;
          <a  href ="custom_mtb.php"><img  style="border: solid 8px #DCDCDC" src="img_home/mtb-kits.jpg"width="49%"height="450"></a>

    <br><br><br>

    &nbsp;<iframe width="49%" height="400" style="border: solid 7px #37474F" src="https://www.youtube.com/embed/cKxn3QIu14Q?autoplay=1&mute=1" ></iframe>
    &nbsp;&nbsp;&nbsp;<iframe width="49%" height="400" style="border: solid 7px #37474F" src="https://www.youtube.com/embed/wxyQ06_blF8?autoplay=1&mute=1" ></iframe>
    <br><br>

   
    
    <div class="hero-image1">
  <div class="hero-text">
    <h1 style="font-size:50px">สถานที่ปั่นจักรยานที่่แนะนำ</h1>
    <a href="placebike.php"><button >SHOW</button></a>
  </div>
</div>
<br>
<div class="hero-image2">
  <div class="hero-text">
    <h1 style="font-size:50px">ข่าวสาร</h1>
    <a href="news.php"><button >READ</button></a>
  </div>
</div>
      


   
    <?php include ('footer.php');?>

    

    
</body>

</html>

