<?php
session_start();
include("db.php");
include("function.php");

$naam = $_POST['naam'];
$email = $_POST['email'];
$telefoon = $_POST['telefoon'];
$geslacht = $_POST['geslacht'];
$notites = $_POST['notities'];
$praat = $_POST['praat'];
$afspraakdatum = $_POST['afspraakdatum'];
$serviceKapper = $_POST['serviceKapper'];

// print($serviceKapper);

if (isset($_POST['submit'])) {
    //insert informatie in database in klanten
    $sql = "INSERT INTO `klanten`(`naam`, `email`, `telefoon`, `geslacht`, `notities`, `praat`) 
    VALUES ('$naam', '$email', '$telefoon', '$geslacht', '$notites', '$praat')";
    $conn->exec($sql);

    //last inserted primary key
    $klanten_id = $conn->lastInsertId();

    $sql = "INSERT INTO `afspraken`(`klanten_id`, `datum`) 
    VALUES ('$klanten_id', '$afspraakdatum')";
    $conn->exec($sql);

    $afspraak_id = $conn->lastInsertId();

    $sql = "SELECT * FROM `services` WHERE `servicenaam` = '$serviceKapper'";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    // print_r($result);
    foreach ($result as $row) {
        echo $serviceKapper = $row['servicenaam'];
        echo $serviceKapperid = $row['id'];
        // echo $serviceKapper;
    }

    // print $serviceKapperid;

    $sql = "SELECT * FROM `servicekt` WHERE `service_id` = '$serviceKapperid'";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    // print_r($result);
    foreach ($result as $row) {
        echo $medewerker_id = $row['medewerker_id'];
        // echo $serviceKapperid = $row['servid'];
        // echo $serviceKapper;
    }

    $sql = "INSERT INTO `userkt`(`afspraak_id`, `user_id` , `service_id`)    
    VALUES ('$afspraak_id', '$medewerker_id',  '$serviceKapperid')";
    $conn->exec($sql);

    header("location:/dashboard.php");
    exit();
}
