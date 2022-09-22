<?php
include("connection/connect.php"); //connection to db
error_reporting(0);
session_start();


// sending query
mysqli_query($db,"DELETE FROM users_booking WHERE o_id = '".$_GET['order_del']."'"); 
header("location:your_bookings.php"); 

?>
