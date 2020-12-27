function navbarmenu() {
    var x = document.getElementById("jsbuttonlist");
    if (x.className === "buttonlist") {
        x.className += " responsive";
    } else {
        x.className = "buttonlist";
    }
}

function mainnavbarmenu() {
    var x = document.getElementById("categorie");
    if (x.className === "categorie") {
        x.className += " responsive";
    } else {
        x.className = "categorie";
    }
}

function closenavbarmenu(){
    var x = document.getElementById("categorie");
    if (x.className === "categorie responsive"){
        x.className = "categorie"
    }
}