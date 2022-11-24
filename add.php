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




// $sql = "INSERT INTO `klanten`(`naam`, `email`, `telefoon`, `afspraak`, `geslacht`, `noties`, `praat`) VALUES ('$naam', '$email', '$telefoon', '$afspraak', '$geslacht', '$notites', '$praat')";
// $conn->exec($sql);

// $stmt = $pdo->prepare("INSERT INTO `klanten`(`naam`, `email`, `telefoon`, `afspraak`, `geslacht`, `noties`, `praat`) VALUES ('$naam', '$email', '$telefoon', '$afspraak', '$geslacht', '$notites', '$praat')");
// try {
//     $pdo->beginTransaction();
// } catch (Exception $e) {
//     $pdo->rollback();
//     throw $e;
// }

// $stmt = $pdo->prepare("INSERT INTO `klanten`(`naam`, `email`, `telefoon`, `afspraak`, `geslacht`, `noties`, `praat`) VALUES (?, ?)");
// $stmt = $pdo->prepare("INSERT INTO klanten (naam, email, telefoon, afspraak, geslacht, noties, praat) VALUES (?, ?, ?, ?, ?, ?, ?)");
// $stmt->execute([$_POST['naam'], ['email'], ['naam']]);
// $stmt = null;

// $sql = "INSERT INTO klanten (naam, email, telefoon, afspraak, geslacht, noties, praat) VALUES (?, ?, '12345', '2001-11-11', ?, ?, '1')";
// $pdo->prepare($sql)->execute([$naam, $email, '12345', '2001-11-11', $geslacht, $notites, '1']);

// $sql = "INSERT INTO klanten (naam, email, telefoon, afspraak, geslacht, noties, praat) VALUES (?, ?, '12345', '2001-11-11', ?, ?, '1')";
// $stmt = $pdo->prepare($sql);
// $stmt->execute([$naam, $email, '12345', '2001-11-11', $geslacht, $notites, '1']);

// $data = [
//     [$naam, $email, '12345', '2001-11-11', $geslacht, $notites, '1']
// ];
// $stmt = $pdo->prepare("INSERT INTO `klanten`(`naam`, `email`, `telefoon`, `afspraak`, `geslacht`, `noties`, `praat`) VALUES (?, ?, ?, ?, ?, ?, ?)");
// try {
//     $pdo->beginTransaction();
//     foreach ($data as $row) {
//         $stmt->execute($row);
//     }
//     $pdo->commit();
// } catch (Exception $e) {
//     $pdo->rollback();
//     throw $e;
// }

// try {
//     $pdo->beginTransaction();
//     foreach ($data as $row) {
//         $stmt->execute($row);
//     }
//     $pdo->commit();
// } catch (Exception $e) {
//     $pdo->rollback();
//     throw $e;
// }


// try {
//     // connect to mysql
//     $pdoConnect = new PDO("mysql:host=$servername;dbname=kapper", $username, $password);
// } catch (PDOException $exc) {
//     echo $exc->getMessage();
//     exit();
// }

// // get values form input text and number
// $naam = $_POST['naam'];
// $email = $_POST['email'];
// $telefoon = $_POST['telefoon'];
// $afspraak = $_POST['afspraak'];
// $geslacht = $_POST['geslacht'];
// $notites = $_POST['notities'];
// $praat = $_POST['praat'];

// // mysql query to insert data

// $pdoQuery = "INSERT INTO `klanten`(`naam`, `email`, `telefoon`, `afspraak`, `geslacht`, `notities`, `praat`)  VALUES ('$naam', '$email', '$telefoon', '$afspraak', '$geslacht', '$notites', '$praat')";

// $pdoResult = $pdoConnect->prepare($pdoQuery);

// $pdoExec = $pdoResult->execute(array(":name" => $name, ":email" => $email, ":telefoon" => $telefoon, ":afspraak" => $afspraak, ":geslacht" => $geslacht, ":notities" => $notites, ":praat" => $praat));

// // check if mysql insert query successful
// if ($pdoExec) {
//     echo 'Data Inserted';
// } else {
//     echo 'Data Not Inserted';
// }
