

<?php

session_start();
include 'functions.php';

$conn = getDB();
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$query =$_GET['q'];


$query = htmlspecialchars($query);
//we don't allow no injection
$sql = "SELECT * FROM cards WHERE `name` LIKE '%".mysqli_real_escape_string($conn,$query)."%'";



$result = runQuery($conn,$sql);


?>




<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>
        Search Result
    </title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <script type="text/javascript" src="magic.js"></script>
    <div class="pwrap">
        <ul class="a">
            <li>
                <a id = "msearch" href="mainpage.php" style="text-decoration:none; font-size: 22 ;">MTS MAIN </a>
            </li>
            <li>
            <form action="csearch.php" method="GET">
                <input type="text" name = "q" placeholder="Find Cards..">
            </li>
            <li>
            <button type="submit" class = "button1">Search</button>
            </form>
            </li>
        </ul>

        <div class="mtitle">
            <b>Result "<?php echo $query ?>": <?php echo mysqli_num_rows($result) ?></b>
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