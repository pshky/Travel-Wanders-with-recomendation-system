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
                                                        echo"Successful updated (Email and id remain same as before)";
                                                        }else{
                                                        echo"Put email and ID as before";
                                                        }

														
														
													}
?>
<!DOCTYPE html>
<html lang="en">
<body>
<form action="" method="POST">
         
       index:<br><input type="number" size="27" name="index" placeholder="Enter the rating"/><br>
       rating:<br><input type="number" size="27" name="location_rating" placeholder="Enter the rating"/><br>
     <br> <input type="submit" name="update" value="Update">
   </fieldset>
 </form>
 </body>
 </html>

