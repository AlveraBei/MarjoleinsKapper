<?php
include("login/db.php");

// get values form input text and number
$naam = $_POST['naam'];
$email = $_POST['email'];
$telefoon = $_POST['telefoon'];
$afspraak = $_POST['afspraak'];
$geslacht = $_POST['geslacht'];
$notites = $_POST['notities'];
$praat = $_POST['praat'];

try {
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "INSERT INTO `klanten`(`naam`, `email`, `telefoon`, `afspraak`, `geslacht`, `noties`, `praat`) 
    VALUES ('$naam', '$email', '$telefoon', '$afspraak', '$geslacht', '$notites', '$praat')";
    $conn->exec($sql);
    echo "New record created successfully";
} catch (PDOException $e) {
    echo $sql . "<br>" . $e->getMessage();
}



