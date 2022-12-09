<?php
session_start();
include("db.php");
include("function.php");

if (isset($_POST['update_student_btn'])) {
    $user_id = $_POST['user_id'];
    $rol = $_POST['rol'];
    $naam = $_POST['naam'];
    $email = $_POST['email'];
    $wachtwoord = $_POST['wachtwoord'];
    $kapperid = $_POST['kapperid'];

    try {
        $query = "UPDATE students SET fullname=:fullname, email=:email, phone=:phone, course=:course WHERE id=:stud_id LIMIT 1";
        $statement = $conn->prepare($query);

        $data = [
            ':user_id' => $user_id,
            ':rol' => $rol,
            ':naam' => $naam,
            ':email' => $email,
            ':wachtwoord' => $wachtwoord,
            ':kapperid' => $kapperid
        ];
        $query_execute = $statement->execute($data);

        if ($query_execute) {
            $_SESSION['message'] = "Updated Successfully";
            header('Location: index.php');
            exit(0);
        } else {
            $_SESSION['message'] = "Not Updated";
            header('Location:/index.php');
            exit(0);
        }
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
}
