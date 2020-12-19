<?php 
session_start();

include ('include.config.db.php');

$conn = new mysqli($servername, $username, $password, $dbname);
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

if(isset($_POST['search'])){
  if(strlen($_POST['search']) > 0){
    $search = $_POST['search'];

    /*
    $sql = "SELECT * FROM `report` WHERE id LIKE ".$search." OR title LIKE '%".$search."%'";
    $sql_result = $conn->query($sql);
    */

    $sql = "SELECT * FROM `report` WHERE id LIKE '$search' OR title LIKE '%$search%'";
    $sql_result = $conn->query($sql);

    
    while ($result = $sql_result->fetch_assoc()) {
      echo "<li>\n";
      echo "<h4>".$result["title"] .' | '.$result['agentname'].' | '. $result['date'] . '</h4>';
      echo "<p>". $result['date'] ." - ".$result['hour']." - ID du rapport: ".$result['id'];
      echo "</li>\n";
    } 
  }
}
$conn->close();



?>