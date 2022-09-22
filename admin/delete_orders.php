<?php
include("../connection/connect.php");
error_reporting(0);
session_start();

mysqli_query($db,"DELETE FROM users_booking WHERE o_id = '".$_GET['order_del']."'");
header("location:all_booking.php");  

?>
