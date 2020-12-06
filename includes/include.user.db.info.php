<?php
    include ('include.config.db.php');
    include ('include.user.steam.info.php');
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql2 = "SELECT * FROM `users` INNER JOIN `job_grades` ON users.job = job_grades.job_name AND users.job_grade = job_grades.grade WHERE identifier ='steam:".dechex($steamprofile['steamid'])."'";
    $result = $conn->query($sql2);
    $result = $result -> fetch_assoc();

    $rpuserinfo["prenom"] = $result["firstname"];
    $rpuserinfo["nom"] = $result["lastname"];

    if ($result["sex"] == "m") {
        $rpuserinfo["sexe"] = "Homme";
    } elseif ($result["sex"] == "f") {
        $rpuserinfo["sexe"] = "Femme";
    };

    $rpuserinfo["dob"] = $result["dateofbirth"];
    $rpuserinfo["job"] = ucfirst($result["job"]);
    $rpuserinfo["job_grade"] = $result["label"];
    $rpuserinfo["money"] = $result["money"];
    $rpuserinfo["bank"] = $result["bank"];
    $rpuserinfo["phone"] = $result["phone_number"];
    if ($result["group"] == "superadmin") {
        $rpuserinfo["grade"] = ucfirst($result["group"]);
        $rpuserinfo["grade"] = '<span class="red">'.$rpuserinfo["grade"].'</span>';
    } elseif ($result["group"] == "user") {
        $rpuserinfo["grade"] = ucfirst($result["group"]);
        $rpuserinfo["grade"] = '<span class="green">'.$rpuserinfo["grade"].'</span>';
    };

    $_SESSION["prenom"] = $rpuserinfo['prenom'];
    $_SESSION["nom"] = $rpuserinfo["nom"];
 
    $conn->close();
?>