<?php
session_start();
include 'functions.php';

$conn = getDB();
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


$sql = "SELECT * FROM cards";
$result = runQuery($conn,$sql);
    
?>



<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>
        Popular Cards
    </title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="pwrap">
        <ul class="a">
            <li>
                <a href="mainpage.php" style="text-decoration:none; font-size: 22 ;">MTS MAIN </a>
            </li>
            <li>
                <input type="text" placeholder="Find Cards..">
            </li>
        </ul>
        <div class="mtitle">
            <b>Popular Cards </b>
            <br>
            <g> Click a card to visit the card page! </g>
        </div>
        <?php
        while($row = mysqli_fetch_array($result))
        {
        ?>
            <img src="pics/<?php echo $row["art"]; ?>.jpg" onclick="location.href='cardS.php?id=<?php echo $row["card_id"] ?>';" width = "200" height = "280">
            <?php
        }
            ?>
        
        
    </div>
    </div>
</body>

</html>