<?php
    require ('../includes/include.steamAuth.php');

?>
<html>
    <head>
        <meta charset="UTF-8">
        <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
        <meta name="viewport" content="height=device-height">
        <title>Alpha V - LSPD</title>
        <link rel="stylesheet" href="../css/panel/connect.css">
        <link rel="stylesheet" href="../css/panel/color.css">
        <link rel="stylesheet" href="../css/panel/base.css">
        <link rel="stylesheet" href="../css/panel/lspdpage.css">
        <link rel="icon" href="../assets/logo.ico" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
        <script src="../js/jquery.js"></script>
        <script src="../js/panel-menu.js"></script>
        <script src="../js/navbar.js"></script>
    </head>
    <body>
        <?php
            if(!isset($_SESSION['steamid'])) {
                echo '
                <section id="connect">
                    <img class="bg" src="../assets/steambg.png" alt="bg">
                    <img class="bg2" src="../assets/steam3.png" alt="bg2">
                    <section id="right">
                        <div class="formulaire">
                            <p class="title text">
                                Se Connecter avec Steam
                            </p>
                            <a class="button text fab fa-steam" href="?login">
                            <span> - Se connecter </span>
                            </a>
                        </div>
                    </section>
                </section>
                ';
            } else {
                include ('../includes/include.user.steam.info.php');
                include ('../includes/include.user.db.info.php');
        ?>
        <h2 class="name">Bonjour, <?=$rpuserinfo["job_grade"]?> <?=$rpuserinfo["nom"]?></h2>
        <div class="buttonlist" id="jsbuttonlist">
            <a class="JShome">Home</a>
            <a class="JSrapport">Rapport</a>
            <a class="JScriminals">Criminels</a>
            <a class="JSinformation">Information</a>
            <a class="JSmemo">Mémo</a>
            <a href="javascript:void(0);" class="icon" onclick="navbarmenu()">
                <i class="fa fa-bars"></i>
            </a>
        </div>
        <div class="main">
            <div class="fnc-center">
                
                <h3>DERNIER RAPPORT</h3>
                <ul>
                    <?php
                    include ('../includes/include.user.db.info.php');

                    while ($result = $sql3_result->fetch_assoc()) {
                        echo "<li>\n";
                        echo "<h4>".$result["title"] .' | '.$result['agentname'].' | '. $result['date'] . '</h4>';
                        echo "<p>". $result['date'] ." - ".$result['hour']." - ID du rapport: ".$result['id'];
                        echo "</li>\n";
                    }
                    ?>
                </ul>
            </div>
        </div>
        <div class="rapport">
                <div class="fnc-center">
                    <div class="selectreportpd">
                        <h2 class="JScreaterepportPD">Crée un rapport.</h2>
                        <h2 class="JSfindrepportPD">Trouver un rapport.</h2>
                    </div>
                    <div class="createreportpd">
                        <form class="JScreatereportpd">
                            <div class="field small">
                                <label for="search" class="field-label">Nom du civil</label>
                                <input type="text" id="JSFIELDCIVNAME" name="civname" class="field-input">
                            </div>
                            <div class="field small">
                                <label for="search" class="field-label">Nom du rapport</label>
                                <input type="text" id="JSFIELDREPORTNAME" name="reportname" class="field-input">
                            </div>
                            <div class="fieldlargerapport">
                                <h4 class="field-label-large">Rapport</h4>
                                <textarea id="JSFIELDREPORTCONTENT" class="TArapport" name = "reportcontent"
                                rows="5" cols="33" ></textarea>
                            </div>
                            <input type="submit" id="submit" name="Valider" class="submitbutton" onclick="messageresult()">
                            <pre id="result" style="background-color: green;
                                                    text-align: center;
                                                    padding: 10px;
                                                    top: -30px;
                                                    position: absolute;
                                                    display: none;">New record created successfully</pre>
                        </form>
                    </div>
                <div class="searchreportpd">
                    <form id="searchreport" method="POST">
                        <div id="rapportfield" class="field fieldsearch">
                            <label for="search" class="field-label">Nom ou ID de rapport</label>
                            <input type="text" id="search2" name="search" class="field-input-search">
                        </div>
                        
                        <div class="rapportlist">
                            <ul id="rapportlisting">
                                
                            </ul>
                        </div>
                        <div class="rapportcontent">
                            <?php
                                include ("../includes/include.mdt.form.search.php");
                            ?>
                        </div>
                    </form>
                </div>
            </div> 
        </div>
        <?php
            }
        ?>
    </body>
</html>