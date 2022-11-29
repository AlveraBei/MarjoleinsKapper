<?php
session_start();
include("db.php");
include("function.php");

$naam = $_POST['naam'];
$email = $_POST['email'];
$telefoon = $_POST['telefoon'];
$afspraak = $_POST['afspraak'];
$tijd = $_POST['tijd'];
$geslacht = $_POST['geslacht'];
$notites = $_POST['notities'];
$praat = $_POST['praat'];

try {
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "INSERT INTO `klanten`(`naam`, `email`, `telefoon`, `afspraak`, `tijd`, `geslacht`, `notities`, `praat`) 
    VALUES ('$naam', '$email', '$telefoon', '$afspraak', '$tijd', '$geslacht', '$notites', '$praat')";
    $conn->exec($sql);
    echo "New record created successfully";
    header("location:booking.php");
} catch (PDOException $e) {
    echo $sql . "<br>" . $e->getMessage();
}
