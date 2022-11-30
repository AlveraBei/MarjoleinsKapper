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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>


<body>
    <!-- START TOP NAV -->
    <div class="topnav">
        <a href="dashboard.php">Dashboard</a>
        <a class="active" href="booking.php">Afspraak Maken</a>
        <a href="kalender.php">Kalender</a>
        <a href="logout.php">Log uit</a>
    </div>
    <!-- END TOP NAV -->


    <div class="w3-center w3-margin-top">
        <!-- START FORM -->
        <form action=" add.php" method="post">
            <label for="naam">Voor en achternaam:</label><br>
            <input type="text" id="naam" placeholder="Naam" name=" naam" required><br><br>

            <label for="email">Email:</label><br>
            <input type="text" id="email" placeholder="Email" name="email" required><br><br>

            <label for="telefoon">Telefoon:</label><br>
            <input type="text" id="telefoon" value="+31" name="telefoon" required><br><br>

            <label for="date">Afspraak Datum:</label>
            <input type="date" id="afspraak" name="afspraak" required><br><br>

            <label for="time">Afspraak Tijd:</label>
            <input type="time" id="tijd" name="tijd" min="09:00" max="18:00" required><br><br>

            <label for="geslacht">Geslacht:
                <input type="radio" name="geslacht" value="Man" required> Man
                <input type="radio" name="geslacht" value="Vrouw" required> Vrouw
            </label><br><br>

            <label for="notities">Notities:</label>
            <input type="text" id="notities" placeholder="meneer kan bijten" name="notities" required><br><br>


            <label for="praat">Stil:
                <input type="radio" name="praat" value="Stil zijn" required> bek dicht
                <input type="radio" name="praat" value="Niet stil zijn" required> bek niet dicht
            </label><br><br>

            <input class="button" type="submit" value="Submit">
        </form>
    </div>
    <!-- END FORM -->
</body>

</html>