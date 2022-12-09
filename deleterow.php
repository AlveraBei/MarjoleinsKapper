<?php
include("db.php");

// delete from database
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $delete = $conn->prepare("DELETE FROM `klanten` WHERE id = ?");
    $delete->execute([$id]);
    header("location:/dashboard.php");
}
