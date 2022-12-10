<?php
session_start();
include("db.php");
include("function.php");


// if isset post update_user update users in database pdo

if (isset($_POST['updateafspraak'])) {
    $id = $_POST['id'];
    $datum = $_POST['datum'];
    // print($datum);
    // print"\n";
    // print($id);

    $update = "UPDATE afspraken SET datum= '$datum' WHERE afspraak_id = '$id'";
    $stmt = $conn->prepare($update);
    // $data = [':datum' => $datum, ':afspraak_id' => $id];
    $stmt->execute();
    if ($stmt->rowCount()) {
        $_SESSION['success'] = "Afspraak Successfully Updated";
        header("location:dashboard.php");
        
    }
}


?>