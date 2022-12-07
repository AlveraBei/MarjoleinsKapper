<?php
session_start();
include("db.php");
include("function.php");

    $naam = $_POST['naam'];
    $email = $_POST['email'];
    $wachtwoord = $_POST['wachtwoord'];
    $rol = $_POST['rol'];
    $kapperid = $_SESSION['kapperid'];

try {
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "INSERT INTO users (rol, naam, email, wachtwoord, kapperid) 
    VALUES ('$rol', '$naam', '$email','$wachtwoord', (SELECT MAX( kapperid ) FROM users c) +1)";
    $conn->exec($sql);
    echo "New record created successfully";
    header("location:accountdashboard.php");
} catch (PDOException $e) {
    echo $sql . "<br>" . $e->getMessage();
}
