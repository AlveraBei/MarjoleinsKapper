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
error_reporting(0);
?>


<head>
    <html>
    <title>Kalender</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>


<body>

    <!-- START TOP NAV -->
    <div class="topnav">
        <a href="dashboard.php">Dashboard</a>
        <a href="booking.php">Afspraak Maken</a>
        <a class="active" href="kalender.php">Kalender</a>
        <a href="accountmaken.php">Account Maken</a>
        <a href="accountdashboard.php">Account Dashboard</a>
        <a href="logout.php">Log uit</a>
    </div>
    <!-- END TOP NAV -->

    <div class="w3-center">
        <br><br>
        <form action="kalender.php" method="get">

            <label for="datum">Afspraak Datum:</label>
            <input type="date" id="datum" name="datum" value="<?php echo $_GET["datum"] ?>"><br><br>

            <input type="submit" value="Pas toe"><br><br>
        </form>
    </div>

    <div>
        <!-- START TABEL -->
        <table class="table table-bordered table-striped w3-center">
            <thead>
                <tr>
                    <th>Tijd</th>
                    <th>Naam</th>
                    <th>Email</th>
                    <th>Telefoon</th>
                    <th>Geslacht</th>
                    <th>Notities</th>
                    <th>wel of niet praten</th>
                    <th>Annuleren</th>
                </tr>
            </thead>
            <tbody>
                <?php
                
                // pdo query select all from klanten
                $date = $_GET["datum"];
                

                $stmt = $conn->prepare("SELECT afspraken.datum, klanten.naam, klanten.email, klanten.telefoon, klanten.geslacht, klanten.notities, klanten.praat FROM `afspraken` 
                INNER JOIN `klanten` ON afspraken.klanten_id = klanten.id 
                INNER JOIN `userkt` ON userkt.afspraak_id = afspraken.id
                INNER JOIN `services` ON services.id = userkt.service_id
                WHERE datum >= '$date'
                AND datum <'$date' + INTERVAL 1 day
                ");
                $stmt->execute();
                $result = $stmt->fetchAll();
                foreach ($result as $row) {
                    echo "</tr>" . "<br>";
                    echo "<td>" . $row['datum'] . "</td>";
                    echo "<td>" . $row['naam'] . "</td>";
                    echo "<td>" . $row['email'] . "</td>";
                    echo "<td>" . $row['telefoon'] . "</td>";
                    echo "<td>" . $row['geslacht'] . "</td>";
                    echo "<td>" . $row['notities'] . "</td>";
                    echo "<td>" . $row['praat'] . "</td>";
                    echo "<td>" . "<a href='deleterow.php?id=" . $row['id'] . "' class='btn btn-danger'>╳</a>" . "</td>";
                    echo "</tr>" . "<br>";
                }
               
                ?>
            </tbody>
        </table>
    </div>
</body>

</html>