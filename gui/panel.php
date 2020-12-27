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
        <link rel="icon" href="../assets/logo.ico" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
            <section id="main">
            <section id="categorie" class="categorie">
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
                    <a href="javascript:void(0);" class="icon" onclick="mainnavbarmenu()">
                        <i class="fa fa-bars"></i>
                    </a>
                    <img class="avatar" src="<?=$steamprofile['avatarmedium']?>" alt="iconsteam">
                    <p><?=$steamprofile['personaname']?><br>
                        <br>
                       steam:<?=dechex($steamprofile['steamid'])?></p>
                </div>
                <div class="suiRight">
                    <form action='' method='get'><button name='logout' type='submit'>Logout</button></form>
                </div>
            </div>
            <section id="home" onclick="closenavbarmenu()">
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
            </section>
        </section>
        <?php
            }
        ?>
        </body>
</html>