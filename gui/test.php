<?php

include ('../includes/include.config.db.php');
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed MAIN: " . $conn->connect_error);
}

$sql3 = 'SELECT * FROM `report` LIMIT 5';
$sql3_result = $conn->query($sql3);


while ($result = $sql3_result->fetch_assoc()) {
    echo "<li>\n";
    echo $result["id"] .' '. $result['title'] . ' ' . $result['content'];
    echo "</li>\n";
}

?>