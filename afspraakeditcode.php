<?php
session_start();
include("db.php");
include("function.php");


// if isset post update_user update users in database pdo

if (isset($_POST['updateafspraak'])) {
    $id = $_POST['id'];
    $datum = $_POST['datum'];
    $servic = $_POST['servic'];
    $serviceKapper = $_POST['serviceKapper'];
    print_r($servic);

    $update = "UPDATE afspraken SET datum= '$datum' WHERE afspraak_id = '$id'";
    $stmt = $conn->prepare($update);
    $stmt->execute();



    $update = "UPDATE userkt SET service_id= '$serviceKapper' WHERE afspraak_id = '$id'";
    $stmt = $conn->prepare($update);
    $stmt->execute();

    
    $update = "UPDATE services SET servicescategorie= '$servic' WHERE servicescategorie_id = '$id'";
    $stmt = $conn->prepare($update);
    $stmt->execute();

    if ($stmt->rowCount()) {
        $_SESSION['success'] = "Afspraak Successfully Updated";
        // header("location:dashboard.php");
        
    }
}


?>