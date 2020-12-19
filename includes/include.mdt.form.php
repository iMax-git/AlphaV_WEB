<?php 
session_start();

$civname = $_POST['civname'];
$reportname = $_POST['reportname'];
$reportcontent = $_POST['reportcontent'];
$hour = date("H-i-s");
$date = date("Y-m-d");


include ('include.config.db.php');

$agentname = "".$_SESSION["nom"].".".substr($_SESSION["prenom"],0,1)."";

// Systeme verification
if (empty($servername)) {echo "Value 'servername' is empty !";}
if (empty($username)) {echo "Value 'username' is empty !";}
if (empty($dbname)) {echo "Value 'dbname' is empty !";}
//connection db
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO report(hour, date, agentname, civname, title, content) 
        VALUES ('$hour','$date','$agentname','$civname','$reportname','$reportcontent');";


if ($conn->query($sql) === TRUE) {
    sleep(1);
  } else {
    sleep(1);
  }
$conn->close();


?>