<?php
include 'functions.php';
$conn = getDB();
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$id = $_GET['id'];
$sql = "SELECT * From cards";
$result = runQuery($conn,$sql);
while($quer = mysqli_fetch_array($result))
{
	if($quer["card_id"] === $id){
		$row = $quer;
		break;
	}
}

?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>
        Card Selected
    </title>
    <link rel="stylesheet" href="css/style.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body>
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
            <b> <?php echo utf8_encode($row['name']) ?></b>
        </div>
        <hr>
        <div class="dispcard">
            <img src="pics/<?php echo $row['art'] ?>.jpg" id="p1" width="260" height="345">
        </div>
        <div class = "sdown">
        <div class="content">
            <f>Mana Cost:</f>
            <g><?php echo $row['total_mana'] ?></g>
        </div>
        <div class="content">
            <script>
                if (<?php echo $row['power'] ?> > 0) {
                    document.write("<f>Power:</f> <g> <?php echo $row['power'] ?></g>")
                }
        </script>
        </div>
        <div class="content">
        <script>
                if (<?php echo $row['toughness'] ?> > 0) {
                    document.write("<f>Toughness:</f> <g> <?php echo $row['toughness'] ?></g>")
                }
        </script>
        </div>
        <div class="content">
            <f>Keyword(s):</f>
            <g> <?php echo $row['keywords'] ?></g>
            <br>
            <g onclick="location.href='https://mtg.fandom.com/wiki/Keyword_Abilities';" ><b> Click me to view the different keyword rules!</b><g>
        </div>
        <div class="content">
            <f>Text:</f>
            <g> <?php echo utf8_encode($row['text']) ?></g>
        </div>
        <div class="content">
            <f>Card Type:</f>
            <g> <?php echo $row['card_type'] ?></g>
        </div>
        <div class="content">
            <f>Flavor Text:</f>
            <g> <?php echo utf8_encode($row['oracle_text']) ?></g>
        </div>
    </div>

    </div>
    </div>
    <script>

$('#p1').mouseenter(function() {
    $(this).css("cursor","pointer");
    $(this).animate({width: "300", height: "390"});
});

$('#p1').mouseleave(function() {
    $(this).animate({width: "260", height: "345"}, 'slow');
});
</script>
</body>

</html>