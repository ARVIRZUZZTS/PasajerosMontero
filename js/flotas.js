document.addEventListener("DOMContentLoaded", function () {
  getFlotas();
});

function valorOBlank(valor) {
  if (valor === null || valor === undefined || valor === "") {
    return "&nbsp;";
  }
  return valor;
}

function getFlotas() {
  var xhr = new XMLHttpRequest();
  xhr.open("GET", "php/flotas/flotasGet.php", true);
  xhr.onreadystatechange = function () {
    if (xhr.readyState === 4 && xhr.status === 200) {
      var data = JSON.parse(xhr.responseText);
      var dinamic = document.getElementById("dinamic");
      var dinamicHTML = "";
      for (var i = 0; i < data.length; i++) {
        var flotas = data[i];
        dinamicHTML +=
          '<div class="dinamic_button flotasBox">' +
          "<h3>" +
          valorOBlank(flotas.placa) +
          "</h3>" +
          "<h3>" +
          valorOBlank(flotas.chofer1) +
          "</h3>" +
          "<h3>" +
          valorOBlank(flotas.licencia1) +
          "</h3>" +
          "<h3>" +
          valorOBlank(flotas.chofer2) +
          "</h3>" +
          "<h3>" +
          valorOBlank(flotas.licencia2) +
          "</h3>" +
          "<h3>" +
          valorOBlank(flotas.asientos) +
          "</h3>" +
          "<h3>" +
          valorOBlank(flotas.tipo_bus) +
          "</h3>" +
          "</div>";
      }
      dinamic.innerHTML = dinamicHTML;
    }
  };
  xhr.send();
}
