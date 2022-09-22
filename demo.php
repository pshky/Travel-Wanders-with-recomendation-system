<form action="" method="POST">
         
       pnumber:<br><input type="text" size="27"name="avg_rating" placeholder="Enter the rating"/><br>
     <br> <input type="submit" name="update" value="Update">
   </fieldset>
 </form>

<?php
include("connection/connect.php");
error_reporting(0);
session_start();
if($_POST['submit'])
													{
                                                              
													$SQL="insert into r_ratings(u_id,index,location_rating) values('".$_SESSION["user_id"]."',,'".$item["index"]."','".$item["location_rating"]."')";
						
														mysqli_query($db,$SQL);
														
                                                        
                                                        
                                                        unset($item["index"]);
                                                        unset($item["quantity"]);
                                                        unset($item["price"]);
														$success = "Thank you. Your Booking has been placed!";

                                                        function_alert();

														
														
													}
												
?>
