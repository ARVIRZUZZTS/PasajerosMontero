document.addEventListener("DOMContentLoaded", function () {
    loadPlacas();
    loadPH();
});

function loadPlacas() {

    var xhr = new XMLHttpRequest();
    xhr.open("GET", "php/viajes/placasGet.php", true);

    xhr.onreadystatechange = function () {

        if (xhr.readyState === 4 && xhr.status === 200) {

            var data = JSON.parse(xhr.responseText);
            var select = document.getElementById("flotasSel");

            var html = "";

            for (var i = 0; i < data.length; i++) {
                html += '<option value="' + data[i].placa + '">' + data[i].placa + '</option>';
            }

            select.innerHTML = html;
        }
    };

    xhr.send();
}

function loadPH() {
    var hs = document.getElementById("hora_salida");
    hs.placeholder = "5";
    hs.value = "";
    var cr = document.getElementById("carril");
    cr.placeholder = "5";
    cr.value = "5";
    var fc = document.getElementById("fecha");
    fc.placeholder = getFecha();
    fc.value = getFecha();
}   

function newViaje() {

    var placa = document.getElementById("flotasSel").value;
    var destino = document.getElementById("destino").value;
    var carril = document.getElementById("carril").value;
    var hora_salida = document.getElementById("hora_salida").value;
    var ayudante = document.getElementById("ayudante").value;
    var fecha = document.getElementById("fecha").value;

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "php/viajes/viajeNew.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    var params = 
        "placa=" + placa +
        "&destino=" + destino +
        "&carril=" + carril +
        "&hora_salida=" + hora_salida +
        "&ayudante=" + ayudante +
        "&fecha=" + fecha;

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            window.location.href = "menu.html";
        }
    };

    xhr.send(params);
}

function getFecha() {
    var hoy = new Date();
    
    var dia = hoy.getDate();
    if (dia < 10) {
        dia = '0' + dia;
    }
    var mes = hoy.getMonth() + 1;
    if (mes < 10) {
        mes = '0' + mes;
    }
    var anio = hoy.getFullYear();

    return dia + "-" + mes + "-" + anio;
}
