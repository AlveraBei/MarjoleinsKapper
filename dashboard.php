<!DOCTYPE html>

<?php
session_start();
include("db.php");
include("function.php");

// if session is active then show naam from database
if(isset($_SESSION['admin_id'])){
   $admin_id = $_SESSION['admin_id'];
   $select = $conn->prepare("SELECT * FROM `users` WHERE id = ?");
   $select->execute([$admin_id]);
   $row = $select->fetch(PDO::FETCH_ASSOC);
   $naam = $row['naam'];
}


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
        <a class="active" href="dashboard.php">Dashboard</a>
        <a href="booking.php">Booking</a>
        <a href="logout.php">LogOut</a>
    </div>
    <!-- END TOP NAV -->


    <!-- START TABEL -->

    <div class="w3-center">

   
    <h1>Goedemiddag <?php echo $naam ?></h1>
        <h1>Afspraken voor vandaag:</h1>

        <?php

        $date = date("Y-m-d");
        echo "<table style='display: flex;justify-content: center;'>";
        echo "<tr><th>Naam</th><th>Email</th><th>Telefoon</th><th>Geslacht</th><th>Notities</th><th>Bek dicht?</tr>";

        class TableRows extends RecursiveIteratorIterator
        {
            function __construct($it)
            {
                parent::__construct($it, self::LEAVES_ONLY);
            }

            function current()
            {
                return "<td style='width:150px;border:1px solid black;'>" . parent::current() . "</td>";
            }

            function beginChildren()
            {
                echo "<tr>";
            }

            function endChildren()
            {
                echo "</tr>" . "\n";
            }
        }



        try {
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $stmt = $conn->prepare("SELECT naam, email, telefoon, geslacht, notities, praat FROM klanten WHERE afspraak = '$date'");
            $stmt->execute();

            // set the resulting array to associative
            $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
            foreach (new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k => $v) {
                echo $v;
            }
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }
        $conn = null;
        echo "</table>";
        ?>
        <!-- END TABEL -->
    </div>
</body>

</html>