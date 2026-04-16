var fecha = getFecha();

document.addEventListener("DOMContentLoaded", function () {
  loadViajes();
});

function valorOBlank(valor) {
  if (valor === null || valor === undefined || valor === "") {
    return "&nbsp;";
  }
  return valor;
}

function loadViajes() {
  var fecha = getFecha();
  var xhr = new XMLHttpRequest();

  xhr.open(
    "GET",
    "php/menu/viajesGet.php?fecha=" + encodeURIComponent(fecha),
    true,
  );
  xhr.onreadystatechange = function () {
    if (xhr.readyState === 4 && xhr.status === 200) {
      var data = JSON.parse(xhr.responseText);
      var dinamic = document.getElementById("dinamic");
      var html = "";

      for (var i = 0; i < data.length; i++) {
        var viajes = data[i];

        html +=
          '<div class="dinamic_button viajeBox">' +
          "<h3>" +
          valorOBlank(viajes.placa) +
          "</h3>" +
          "<h3>" +
          valorOBlank(viajes.chofer1) +
          "</h3>" +
          "<h3>" +
          valorOBlank(viajes.destino) +
          "</h3>" +
          "</div>";
      }

      dinamic.innerHTML = html;
    }
  };

  xhr.send();
}

function getFecha() {
  var hoy = new Date();

  var dia = hoy.getDate();
  if (dia < 10) {
    dia = "0" + dia;
  }
  var mes = hoy.getMonth() + 1;
  if (mes < 10) {
    mes = "0" + mes;
  }
  var anio = hoy.getFullYear();

  return anio + "-" + mes + "-" + dia;
}
