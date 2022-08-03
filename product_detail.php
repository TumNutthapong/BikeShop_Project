<?php
include('h.php');
include('backend/condb.php');
$p_id = $_GET["p_id"];

?>
<!DOCTYPE html>
<head>
  <title>Bike Shop!</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

     <style>
        div.polaroid {
          width: 80%;
          background-color: white;
          box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
          margin-bottom: 25px;
        }

        div.container_di {
          text-align: center;
          padding: 10px 20px;
        }
      </style>
<?php

?>
<link href="style_cart.css" type="text/css" rel="stylesheet" />
</head>

<body>
   <?php include('header.php');?>
   <font color="black">


  <div class="container">
  <div class="row">
      <?php
      $sql = "SELECT * FROM tbl_product as p 
              INNER JOIN tbl_type  as t ON p.type_id=t.type_id 
               WHERE p_id = $p_id ";
               
      $result = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
      $row = mysqli_fetch_array($result);

      ?>
      <form type="hidden" method="post" action="cart.php?action=add&p_id=<?php echo $row["p_id"]; ?>">
      <div class="col-md-12">
        <div class="container" style="margin-top: 50px">
       
          <div class="row">
          <div class="col-md-6">
              <div class="polaroid">
                <?php echo"<img src='backend/p_img/".$row['p_img']."'width='100%'>";?>
                  <div class="container_di">
                    <p><?php echo $row["p_name"];?></p>
                  </div>
              </div>
            </div>
            <div class="col-md-6">
              <h2><b><?php echo $row["p_name"];?></b><br>
                <?php echo number_format($row['p_price']);?> ฿</h2>
              <p>
                ประเภท: <?php echo $row["type_name"];?><br>
                สินค้าคงเหลือ: <?php echo $row['amount']; ?> ชิ้น
                
              </p>
                <?php echo $row["p_detail"];?>
              <p>   
              <input type="hidden" class="product-quantity"  name="amount"  value="<?php echo $row["amount"]; ?>">
              <?php if($row['amount'] > 0){ ?>
                <div class="cart-action">
                  
                  <input type="text" class="product-quantity" name="quantity" value="1" size="2" /> <input type="submit" value="Add to Cart" class="btn btn-primary" />
                </div>
                <?php }else {
                  echo '<font color="red"><p><h1 align="right">Sold Out</h1></p></font>';
                }  ?>
 
            </div>
            </p>
          </div>
          

			</div>
			</form>
         
        </div>
      </div>
    </div>
  </div>
  
  <?php include('footer.php');?>
</body>
</html>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>


