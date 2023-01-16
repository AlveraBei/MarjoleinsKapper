<?php
include("../../../db.php");

header('Content-Type: application/json; charset=utf-8');      //告诉系统这是一个数组，而不是string
header("Access-Control-Allow-Origin: *");                      //给不同的locatie接口，让他们可以连接这个API

$dataJson = file_get_contents('php://input');   //https://www.geeksforgeeks.org/how-to-receive-json-post-with-php/
echo $dataJson;

//1.tijdblokken met 15min.
$startDateTime = new DateTimeImmutable();
$startDateTime = $startDateTime->setTime(9, 0);
$endDateTime = new DateTimeImmutable();
$endDateTime = $endDateTime->setTime(17,0);

$tijdList = [];
while($startDateTime < $endDateTime){
    $tijdList[] = $startDateTime;
    $newTijd = $startDateTime->add(new DateInterval("PT15M"));
    $startDateTime = $newTijd;
}

echo json_encode ($tijdList);

//2.kozen van klanten duration (15min+30min) en datum naar backend verzenden.
$geslecteerdeTijd=($_POST);
//3. backend:verzoek uitlezen
//4A.als deze datum geen afspraken zijn, stuur dan een tijdlist met alle tijdblokken. (9:00-9:45/9:15-10:00/9:30-10:15)
//4B.als er afspraken zijn, stuur een tijdlist met alle beschikbare tijdblokken.

