<!DOCTYPE html>

<?php
session_start();
include("db.php");
include("function.php");


?>

<head>
    <html>
    <title>Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="style.css">
</head>


<body>

    <!-- START TOP NAV -->
    <div class="topnav">
        <a href="dashboard.php">Dashboard</a>
        <a class="active" href="booking.php">Booking</a>
        <a href="logout.php">LogOut</a>
    </div>
    <!-- END TOP NAV -->


    <div class="w3-center w3-margin-top">
        <!-- START FORM -->
        <form action=" add.php" method="post">
            <label for="naam">Voor en achternaam:</label><br>
            <input type="text" id="naam" value="naam" name="naam"><br><br>

            <label for="email">Email:</label><br>
            <input type="text" id="email" value="email" name="email"><br><br>

            <label for="telefoon">Telefoon:</label><br>
            <input type="number" id="telefoon" value="0612345678" name="telefoon"><br><br>

            <label for="date">Afspraak Datum:</label>
            <input type="date" id="afspraak" name="afspraak"><br><br>

            <label for="geslacht">Geslacht:
                <input type="radio" name="geslacht" value="M"> Male
                <input type="radio" name="geslacht" value="F"> Female
            </label><br><br>

            <label for="notities">Notities:</label>
            <input type="text" id="notities" value="notities" name="notities"><br><br>


            <label for="praat">Stil:
                <input type="radio" name="praat" value="Niet stil zijn"> bek dicht
                <input type="radio" name="praat" value="Stil zijn"> bek niet dicht
            </label><br><br>

            <input class="button" type="submit" value="Submit">
        </form>
    </div>
    <!-- END FORM -->
</body>

</html>