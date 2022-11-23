<?php
include("login/db.php");
<<<<<<< Updated upstream
$sql = "INSERT INTO `klanten`(`id`, `naam`, `email`, `telefoon`, `afspraak`, `geslacht`, `noties`, `praat`) VALUES ('$id', '$naam', '$email', '$telefoon', '$afspraak', '$geslacht', '$notites', '$praat')";
$conn->exec($sql);
=======
>>>>>>> Stashed changes


try {
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "INSERT INTO `klanten`(`id`, `naam`, `email`, `telefoon`, `afspraak`, `geslacht`, `noties`, `praat`) VALUES ('$id', '$naam', '$email', '$telefoon', '$afspraak', '$geslacht', '$notites', '$praat')";
    $conn->exec($sql);
    echo "New record created successfully";
} catch (PDOException $e) {
    echo $sql . "<br>" . $e->getMessage();
}
