<?php
session_start();
include 'functions.php';

$conn = getDB();
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


$sql = "SELECT * FROM decks";
$result = runQuery($conn,$sql);
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>
        Popular Decks
    </title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="pwrap">
        <ul class="a">
            <li>
                <a href="mainpage.php"  style="text-decoration:none; font-size: 22 ;">MTS MAIN </a>
            </li>
            <li>
                <input type="text" placeholder="Find Decks..">
            </li>
        </ul>
        <div class="mtitle">
            <b>Popular Decks </b>
            <br>
            <g> Click a deck to visit the deck page! </g>
        </div>
        <ul class="deck">
            <img src = "pics/R.png" width="200" height="200" style = "margin-left: 30%" onclick="location.href='decklist.php?id=1';">
            <li class="deck" onclick="location.href='decklist.php?id=1';"style="background-image: url(pics/mart1.jpg)"> Mono Red Aggro</li>
            <img src = "pics/b.png" width="200" height="200" style = "margin-left: 30%" onclick="location.href='decklist.php?id=2';">
            <li class="deck" onclick="location.href='decklist.php?id=2';" style="background-image: url(pics/mart1.jpg)"> Mono Blue Tempo</li>
        </ul>
        <ul class="deck">
            <img src = "pics/Azor.png" width="200" height="200" style = "margin-left: 30%" onclick="location.href='decklist.php?id=3';">
            <li class="deck" onclick="location.href='decklist.php?id=3';"style="background-image: url(pics/mart1.jpg)"> Azorius Aggro</li>
            <img src = "pics/golgari.png" width="200" height="200" style = "margin-left: 30%" onclick="location.href='decklist.php?id=4';">
            <li class="deck" onclick="location.href='decklist.php?id=4';"style="background-image: url(pics/mart1.jpg)"> Golgari Reanimator</li>
        </ul>


    </div>
    </div>
</body>

</html>