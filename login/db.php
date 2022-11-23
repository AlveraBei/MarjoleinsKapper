

<?php
$servername = "localhost";
$username = "root";
$password = "";

<<<<<<< Updated upstream
try {
  $conn = new PDO("mysql:host=$servername;dbname=kapper", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  echo "Connected successfully";
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}
?>
=======
$conn = new PDO($db_name, $username, $password);
>>>>>>> Stashed changes
