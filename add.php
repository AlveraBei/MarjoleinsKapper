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
$servicescategorie = $_POST['servicescategorie'];




if (isset($_POST['submit'])) {
    $sql = "INSERT INTO `klanten`(`naam`, `email`, `telefoon`, `geslacht`, `notities`, `praat`) 
    VALUES ('$naam', '$email', '$telefoon', '$geslacht', '$notites', '$praat')";
    $conn->exec($sql);

    $klanten_id = $conn->lastInsertId();

    $sql = "INSERT INTO `afspraken`(`klanten_id`, `datum`) 
    VALUES ('$klanten_id', '$afspraakdatum')";
    $conn->exec($sql);

    $afspraak_id = $conn->lastInsertId();

    



    $sql = "SELECT * FROM `services`
    INNER JOIN `servicescategorie` ON servicescategorie_id = servicescategorie
     WHERE `servicenaam` = '$serviceKapper'  AND `servicescategorie` = '$servicescategorie'";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    foreach ($result as $row) {
        echo $serviceKapper = $row['servicenaam'];
        echo $servicescategorie = $row['servicescategorie'];
<<<<<<< Updated upstream
        echo $serviceKapperid  = $row['id']; 
    }

    
=======
    }



>>>>>>> Stashed changes
    $sql = "SELECT * FROM `servicekt` WHERE `service_id` = '$serviceKapperid'";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    foreach ($result as $row) {
        echo $medewerker_id = $row['medewerker_id'];
    }

    $sql = "INSERT INTO `userkt`(`afspraak_id`, `user_id` , `service_id`)    
    VALUES ('$afspraak_id', '$medewerker_id',  '$serviceKapperid')";
    $conn->exec($sql);

    print("<br>");
    print("<br>");
    print_r($serviceKapper);
    header("location:dashboard.php");
    exit();
}
