<?php
    require ('../includes/include.steamAuth.php');
?>
<html>
    <head>
        <meta charset="UTF-8">
        <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
        <meta name="viewport" content="height=device-height">
        <title>Alpha V - Panneau de Gestion</title>
        <link rel="stylesheet" href="../css/panel/connect.css">
        <link rel="stylesheet" href="../css/panel/color.css">
        <link rel="stylesheet" href="../css/panel/base.css">
        <link rel="stylesheet" href="../css/panel/home.css">
        <link rel="stylesheet" href="../css/panel/lspd.css">
        <!-- <link rel="stylesheet" href="../css/panel/ems.css"> -->
        <!-- <link rel="stylesheet" href="../css/panel/admin.css"> -->
        <link rel="icon" href="../assets/logo.ico" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="../js/panel-menu.js"></script>
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
            <section id="main">
            <section id="categorie">
                <h1>Alpha V</h1>
                <ul>
                    <li class="JSaccueil">Accueil</li>
                    <li class="JSLSPD">LSPD</li>
                    <li class="JSEMS">EMS</li>
                    <li class="last JSAdmin">Administration</li>
                </ul>
            </section>
            <div class="steamuserinfo">
                <div class="suiLeft">
                    <img class="avatar" src="<?=$steamprofile['avatarmedium']?>" alt="iconsteam">
                    <p><?=$steamprofile['personaname']?><br>
                        <br>
                       steam:<?=dechex($steamprofile['steamid'])?></p>
                </div>
                <div class="suiRight">
                    <form action='' method='get'><button name='logout' type='submit'>Logout</button></form>
                </div>
            </div>
            <section id="home">
                <h1 class="title">Bienvenue, <?=$steamprofile['personaname']?></h1>
                <div class="playerserverinfo">
                    <h2>Personnage RolePlay</h2>
                    <ul>
                        <li>Nom: <?=$rpuserinfo["nom"]?></li>
                        <li>Prenom: <?=$rpuserinfo["prenom"]?></li>
                        <li>Sexe: <?=$rpuserinfo["sexe"]?></li>
                        <li>DOB: <?=$rpuserinfo["dob"]?></li>
                        <li>Emploi: <?=$rpuserinfo["job"]?></li>
                        <li>Fonction: <?=$rpuserinfo["job_grade"]?></li>
                        <li>Liquide: <?=$rpuserinfo["money"]?>$</li>
                        <li>Banque: <?=$rpuserinfo["bank"]?>$</li>
                        <li>Tel: <?=$rpuserinfo["phone"]?></li>
                        <li>Grade: <?=$rpuserinfo["grade"]?></li>
                    </ul>
                </div>
                <div class="actualite">
                    <h2>File d'actualité</h2>
                </div>
            </section>
            <section id="lspd">
                <img src="../assets/mdtP.jpg">
                <h2 class="name">Bonjour, <?=$rpuserinfo["job_grade"]?> <?=$rpuserinfo["nom"]?></h2>
                <ul class="buttonlist">
                    <li class="JShome">Home</li>
                    <li class="JSrapport">Rapport</li>
                    <li class="JScriminals">Criminels</li>
                    <li class="JSinformation">Information</li>
                    <li class="JSmemo">Mémo</li>
                </ul>
                <div class="main">
                    <form method="POST">
                        <h3>TROUVER UN RAPPORT</h3>
                        <div class="field fieldlarge">
                            <label for="search" class="field-label">Nom ou ID du rapport</label>
                            <input type="text" id="search" name="search" class="field-input">
                        </div>
                    </form>
                    <h3>DERNIER RAPPORT</h3>
                    <ul>
                        <li>
                            <h4>{RAPPORT_TITLE} | {DATE}</h4>
                            <p>{DATE} - {HEURE_DE CREATION} - ID du rapport:{REPORTID}</p>
                        </li>
                    </ul>
                </div>
                <div class="rapport">
                    <div class="selectreportpd">
                        <h2 class="JScreaterepportPD">Crée un rapport.</h2>
                        <h2 class="JSfindrepportPD">Trouver un rapport.</h2>
                    </div>
                    <div class="createreportpd">
                        <form class="JScreatereportpd">
                            <div class="field">
                                <label for="search" class="field-label">Nom du civil</label>
                                <input type="text" id="JSFIELDCIVNAME" name="civname" class="field-input">
                            </div>
                            <div class="field">
                                <label for="search" class="field-label">Nom du rapport</label>
                                <input type="text" id="JSFIELDREPORTNAME" name="reportname" class="field-input">
                            </div>
                            <div class="field fieldlargerapport">
                                <label for="search" class="field-label-large">Rapport</label>
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
                    <form>
                        <div class="field fieldsearch">
                            <label for="search" class="field-label">Nom ou ID de rapport</label>
                            <input type="text" id="search" name="search" class="field-input-search">
                        </div>
                        <input type="button" id="submit" name="Valider" class="submitbutton">
                        <div class="rapportlist">
                            <ul>
                                <li>
                                    <h4>{RAPPORT_TITLE} | {DATE}</h4>
                                    <p>{DATE} - {HEURE_DE CREATION} - ID du rapport:{REPORTID}</p>
                                </li>
                            </ul>
                        </div>
                        <div class="rapportcontent">
                            <p>
                                <span style="padding-bottom: 40px;
                                color: #ffc825;
                                text-align: center;">Nom du civil:</span> <br>
                                <br>
                                <span style="padding-bottom: 40px;
                                color: #ffc825;
                                text-align: center;">Nom du Rapport:</span> <br>
                                <br>
                                <span style="padding-bottom: 40px;
                                color: #ffc825;
                                text-align: center;">Date:</span> <br>
                                <br>
                                <span style="padding-bottom: 40px;
                                color: #ffc825;
                                text-align: center;">Rapport:</span> <br>
                                <br>
                            </p>
                        </div>
                    </form>
                    </div>
                </div>
            </section>
            <section id="ems">

            </section>
            <section id="admin">
                
            </section>
        </section>
        <?php
            }
        ?>
        </body>
</html>