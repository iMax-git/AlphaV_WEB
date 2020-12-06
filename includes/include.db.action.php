<?php

include ('include.config.db.php');


// Systeme verification
if (empty($servername)) {echo "Value 'servername' is empty !";}
if (empty($username)) {echo "Value 'username' is empty !";}
if (empty($dbname)) {echo "Value 'dbname' is empty !";}
//connection db
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT identifier FROM users";
$result = $conn->query($sql);

// fonction qui verifie la whitelist

function whitelisted($game = "None",$steamid = "None"){
  global $result, $lists;
  assert($game != "None");
  assert($steamid != "None");
  if($game == "fivem"){
    while($row = $result->fetch_assoc()){
      if($row["identifier"] == $steamid){
        return "True";
      }
    }
  }
}
$conn->close();
?>