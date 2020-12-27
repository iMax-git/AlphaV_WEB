<?php 


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
      echo "<h4 onclick='getReport(".$result["id"].")'>".$result["title"] .' | '.$result['agentname'].' | '. $result['date'] . '</h4>';
      echo "<p>". $result['date'] ." - ".$result['hour']." - ID du rapport: ".$result['id'];
      echo "</li>\n";
    } 
  }
}

if (isset($_POST['requestid'])) {
  $request = $_POST['requestid'];
  $sql = "SELECT * FROM `report` WHERE id ='$request'";
  $sql_result = $conn->query($sql);
  $sql_result = $sql_result -> fetch_assoc();

  $report["id"] = $sql_result["id"];
  $report["civname"] = $sql_result["civname"];
  $report["title"] = $sql_result["title"];
  $report["date"] = $sql_result["date"];
  $report["content"] = $sql_result["content"];


  echo "<p>";
  echo '<span style="padding-bottom: 40px; color: #ffc825; text-align: center;">ID du rapport: <span style="color: white;">'.$report["id"].'</span></span> <br>';
  echo "<br>";
  echo '<span style="padding-bottom: 40px; color: #ffc825; text-align: center;">Nom du civil: <span style="color: white;">'.$report["civname"].'</span></span> <br>';
  echo "<br>";
  echo '<span style="padding-bottom: 40px; color: #ffc825;text-align: center;">Nom du Rapport: <span style="color: white;">'.$report["title"].'</span></span> <br>';
  echo "<br>";
  echo '<span style="padding-bottom: 40px;color: #ffc825;text-align: center;">Date: <span style="color: white;">'.$report["date"].'</span></span> <br>';
  echo '<br>';
  echo '<span style="padding-bottom: 40px;color: #ffc825; text-align: center;">Rapport: <span style="color: white;">'.$report["content"].'</span></span> <br>';
  echo '<br>';
  echo '</p>';

}


$conn->close();





?>