<?php
include("db.php");


// logout button
if(isset($_POST['logout'])){
   session_destroy();
   header('location:index.php');
}