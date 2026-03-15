var fecha = getFecha();

function goMenu() {
    window.location.href = "menu.html";
}
function goFlotas() {
    window.location.href = "flotas.html";
}
function goViajes() {
    window.location.href = "viajes.html";
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
