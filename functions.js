function display() {
    var currentImage = document.getElementById("lucas").src;
    if (currentImage.match("lucas.jpg")) {
        document.getElementById("lucas").src = "lucassat.jpg";
    } else {
        document.getElementById("lucas").src = "lucas.jpg";
    }
}

function phpPgsqlQuery() {
    var queryResult = "<?php tableQuery(); ?>"
    document.getElementById("queryResult") = queryResult
}