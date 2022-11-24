<?php
require ("../login/db.php");


$naam = $_POST['naam'];
$naam = filter_var($naam, FILTER_SANITIZE_STRING);
$email = $_POST['email'];
$email = filter_var($email, FILTER_SANITIZE_STRING);
$telefoon = $_POST['telefoon'];
$telefoon = filter_var($telefoon, FILTER_SANITIZE_STRING);
$afspraak = $_POST['afspraak'];
$afspraak = filter_var($afspraak, FILTER_SANITIZE_STRING);
$sql = "INSERT INTO `klanten`(`id`, `naam`, `email`, `telefoon`, `afspraak`, `geslacht`, `noties`, `praat`) VALUES ('$id', '$naam', '$email', '$telefoon', '$afspraak', '$geslacht', '$notites', '$praat')";


$insert = $conn->prepare("INSERT INTO `klanten`(naam, email, telefoon, afspraak, geslacht, noties, praat) VALUES(?,?,?,?,?,?,?)");
$insert->execute([$name, $email, $telefoon, $afspraak, $geslacht, $noties, $praat]);
if(isset($_POST['submit'])){

    }
 
 
 
 ?>





