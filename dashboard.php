<!DOCTYPE html>

<?php
include("db.php");


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
    </div>
    <!-- END TOP NAV -->


    <!-- START TABEL -->
    <?php
    echo "<table style='border: solid 1px black;'>";
    echo "<tr><th>Naam</th><th>Email</th><th>Afspraak</th></tr>";

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
    }

    try {
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $stmt = $conn->prepare("SELECT naam, email, afspraak FROM klanten");
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

</body>

</html>