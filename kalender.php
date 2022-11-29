<!DOCTYPE html>

<?php
session_start();
include("db.php");
include("function.php");

if (isset($_SESSION['admin_id'])) {
    $admin_id = $_SESSION['admin_id'];
    $select = $conn->prepare("SELECT * FROM `users` WHERE id = ?");
    $select->execute([$admin_id]);
    $row = $select->fetch(PDO::FETCH_ASSOC);
    $naam = $row['naam'];
}
$date = date("Y-m-d");
?>


<head>
    <html>
    <title>Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>


<body>

    <!-- START TOP NAV -->
    <div class="topnav">
        <a href="dashboard.php">Dashboard</a>
        <a href="booking.php">Booking</a>
        <a class="active" href="kalender.php">Kalender</a>
        <a href="logout.php">LogOut</a>
    </div>
    <!-- END TOP NAV -->

    <div class="w3-center">
        <br><br>

        <form action="kalender_get.php" method="get">
            <label for="datum">Afspraak Datum:</label>
            <input type="date" id="datum" name="datum"><br><br>

            <input class="button" type="submit" value="Submit">
        </form>

    </div>
</body>

</html>