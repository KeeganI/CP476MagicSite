<?php
session_start();
include 'functions.php';

$conn = getDB();
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$id = $_GET['id'];
$sql = "SELECT * From cards";
$sql2 = "SELECT * From decks";
$result2 = runQuery($conn,$sql2);
$result = runQuery($conn,$sql);
while($quer2 = mysqli_fetch_array($result2))
{
	if($quer2["deck_id"] === $id){
		$row2 = $quer2;
		break;
	}
}
?>
<!DOCTYPE html>
<html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>
        Decklist
    </title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <script type="text/javascript" src="magic.js"></script>
    <div class="pwrap">
        <ul class="a">
            <li>
                <a href="mainpage.php" style="text-decoration:none; font-size: 22 ;">MTS MAIN </a>
            </li>
            <li>
                <input type="text" placeholder="Find Cards..">
            </li>
        </ul>
        </ul>
        <div class="mtitle">
            <b><?php echo utf8_encode($row2['name']) ?></b>
            <br>
            <g> Click a card to visit the card page! </g>
        </div>
        <hr>
        <div class ="content">
        <f style = "margin-left: 40%" >Creatures (<?php echo $row2['num_c'] ?>)</f>
        <br>
        <?php
        while($row = mysqli_fetch_array($result))
        {
          if($row["deck_id"] == $id){
            if($row["card_type"] == "Creature"){

        ?>
        <g  onclick="location.href='cardS.php?id=<?php echo $row["card_id"] ?>';" style = "margin-left: 40%"> <?php echo $row['total'] ?>x <?php echo utf8_encode($row['name']) ?> </g>
        <br>
        <?php
            }
        }
        }
        ?>
        </div>
        <div class ="content">
        <f style = "margin-left: 40%">Instants (<?php echo $row2['num_i'] ?>)</f>
        <br>
        <?php
        $result = runQuery($conn,$sql);
        while($row = mysqli_fetch_array($result))
        {
          if($row["deck_id"] == $id){
            if($row["card_type"] == "Instant"){

        ?>
        <g  onclick="location.href='cardS.php?id=<?php echo $row["card_id"] ?>';" style = "margin-left: 40%"> <?php echo $row['total'] ?>x <?php echo utf8_encode($row['name']) ?> </g>
        <br>
        <?php
            }
        }
        }
        ?>
        </div>
        <div class ="content">
        <f style = "margin-left: 40%">Sorceries (<?php echo $row2['num_s'] ?>)</f>
        <br>
        <?php
        $result = runQuery($conn,$sql);
        while($row = mysqli_fetch_array($result))
        {
          if($row["deck_id"] == $id){
            if($row["card_type"] == "Sorcery"){

        ?>
        <g  onclick="location.href='cardS.php?id=<?php echo $row["card_id"] ?>';" style = "margin-left: 40%"> <?php echo $row['total'] ?>x <?php echo utf8_encode($row['name']) ?> </g>
        <br>
        <?php
            }
        }
        }
        ?>
        </div>
        <div class ="content">
        <f style = "margin-left: 40%">Lands (<?php echo $row2['num_l'] ?>)</f>
        <br>
        <?php
        $result = runQuery($conn,$sql);
        while($row = mysqli_fetch_array($result))
        {
          if($row["deck_id"] == $id){
            if($row["card_type"] == "Land"){

        ?>
        <g  onclick="location.href='cardS.php?id=<?php echo $row["card_id"] ?>';" style = "margin-left: 40%">  <?php echo $row['total'] ?>x <?php echo utf8_encode($row['name']) ?> </g>
        <br>
        <?php
            }
        }
        }
        ?>
        </div>
          
        
    </div>
</body>
</html>