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
        <a  href="dashboard.php">Dashboard</a>
        <a href="booking.php">Afspraak Maken</a>
        <a href="kalender.php">Kalender</a>
        <a href="accountmaken.php">account maken</a>
        <a class="active" href="accountdashboard.php">account dashboard</a>
        <a href="logout.php">Log uit</a>
    </div>
    <!-- END TOP NAV -->

    <div class="w3-center">
        <br><br>
        <h1><strong>Goedemiddag, <?php echo $naam ?></strong></h1>
        <h3><?php echo date('d-m-y h:i:s'); ?></h3>
        <br><br>
        <h3>Afspraken voor <strong>vandaag:</strong></h3>
    </div>

    <div>
        <!-- START TABEL -->
        <table class="table table-bordered table-striped w3-center">
            <thead>
                <tr>
                    <th>id</th>
                    <th>rol</th>
                    <th>email</th>
                    <th>kapperid</th>
                    <th>verwijderen</th>
                </tr>
            </thead>
            <tbody>
                <?php
                // pdo query select all from klanten
                $stmt = $conn->prepare("SELECT * FROM `users`");
                $stmt->execute();
                $result = $stmt->fetchAll();
                foreach ($result as $row) {
                    echo "</tr>" . "<br>";
                    echo "<td>" . $row['id'] . "</td>";
                    echo "<td>" . $row['rol'] . "</td>";
                    echo "<td>" . $row['email'] . "</td>";
                    echo "<td>" . $row['kapperid'] . "</td>";
                    echo "<td>" . "<a href='deleterow.php?id=" . $row['id'] . "' class='btn btn-danger'>╳</a>" . "</td>";
                    echo "</tr>" . "<br>";
                }
                ?>
            </tbody>
        </table>
    </div>
</body>

</html>