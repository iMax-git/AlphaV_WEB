function navbarmenu() {
    var x = document.getElementById("jsbuttonlist");
    if (x.className === "buttonlist") {
        x.className += " responsive";
    } else {
        x.className = "buttonlist";
    }
}