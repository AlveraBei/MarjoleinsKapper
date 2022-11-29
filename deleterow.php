<?php
include("db.php");

$sql = "DELETE FROM klanten WHERE id=$_GET[id]";
$stmt = $pdo->prepare($sql);
$stmt->execute([$id]);
