<?php
include("connection/connect.php");
include_once 'product-action.php';
$id = "";
if(isset($_GET["id"]))
{
    $id=$_GET["id"];
}

error_reporting(0);
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>Location Decription</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet"> 
</head>
<body class="home">                                            
<header id="header" class="header-scroll top-header headrom">
            <nav class="navbar navbar-dark">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                    <a class="navbar-brand" href="index.php"> <img class="img-rounded" src="./images/client-logo-4.png" alt="" style="width: 58px;"> </a>
                    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="index.php">Home <span class="sr-only">(current)</span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="location.php">Locations <span class="sr-only"></span></a> </li>
                            
                           
							<?php
						if(empty($_SESSION["user_id"])) // if user is not login
							{
								echo '<li class="nav-item"><a href="login.php" class="nav-link active">Login</a> </li>
							  <li class="nav-item"><a href="registration.php" class="nav-link active">Register</a> </li>';
							}
						else
							{

                    
									echo  '<li class="nav-item"><a href="your_bookings.php" class="nav-link active">My Packages</a> </li>';
									echo  '<li class="nav-item"><a href="logout.php" class="nav-link active">Logout</a> </li>';
							}

						?>
							 
                        </ul>
						 
                    </div>
                </div>
            </nav>

        </header>									
<div class="container">
        <div class="row">
        <?php
                    
                    $query_res= mysqli_query($db,"SELECT * FROM final_popular WHERE location_id=$id "); 
                    $r=mysqli_fetch_array($query_res);
                    {
         ?>
            <div class="col-sm-6">
            <figure class="figure">
                                                <img class="figure img-fluid img-rounded" style=" border-radius: 157px;" src="<?php echo $r['image_url']?>"></img>
                                                <h3 style="margin-top: 15px,   font-size: 50px;">Description:</h3>
                                                <p style ="font-weight: bold";>Index : <?php echo $r['index']?></p>
                                                <p style="margin-top:15px;"><?php echo $r['description']?></p>
                                                </figure>
            </div>
            <?php
                  }                  
                  ?>  
            <div class="col-sm-6" s>
                 
                  
                 <?php
include("connection/connect.php");
error_reporting(0);
session_start();


 if(isset($_POST['update']))
													{
						$u_id= $_SESSION["user_id"];
                        $index= $_POST["index"];
                        $location_rating= $_POST["location_rating"];
													$query="INSERT INTO r_ratings VALUES('$u_id','$index','$location_rating')";                                               																						                                                                                                                                                                                                         
                                                        $result=mysqli_query($db,$query);
                                                        if($result){
                                                        echo"Successfully updated";
                                                        }else{
                                                        echo"Please input index and rating";
                                                        }

														
														
													}
?>

<form action="" method="POST" style="margin-top: 96px;">
         
       <h5>Index:</h5><br><input type="number" size="27" min="10"  name="index" placeholder="Enter the index" style="border-radius: 20px"/><br>
      <h5     style="margin-top: 41px;">Rating:</h5> <br><input type="number" size="27" max="10" min="1" name="location_rating" style="border-radius: 20px" /><br>
     <br> <input type="submit" name="update" value="Rate us!!" class="btn btn-warning"   style=" border-radius: 14px;">
   </fieldset>
 </form>
                 
            </div>
        </div>
       </div>
       
       
       <footer class="footer">
            <div class="container">

             
                <div class="bottom-footer">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 payment-options color-gray">
                            <h5>Payment Options</h5>
                            <ul>
                            <li>
                                    <a href="#"> <img src="images/esewa.png" class=" rounded" alt="Esewa" style="width: 37px;"> </a>
                                </li> 
                            </ul>
                        </div>
                        <div class="col-xs-12 col-sm-4 address color-gray">
                            <h5>Address</h5>
                            <p>Balkumari, Lalitpur</p>
                                    <h5>Phone: 9887554848</a></h5> </div>
                        <div class="col-xs-12 col-sm-5 additional-info color-gray">
                            <h5>Addition informations</h5>
                           <p>Join to get benefit from being partnered with us.</p>
                        </div>
                    </div>
                </div>
            
            </div>
        </footer>
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>   
</body>
</html>
