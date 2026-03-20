document.addEventListener("DOMContentLoaded", function () {
  getFlotas();
});

function getFlotas() {
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "php/flotas/flotasGet.php", true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var data = JSON.parse(xhr.responseText);
            var dinamic = document.getElementById("dinamic");
            var dinamicHTML = "";
            for (var i = 0; i < data.length; i++) {
                var flotas = data[i];
                dinamicHTML +=
                    '<div class="flotasBox">' + 
                        '<h3>' + flotas.placa + '</h3>' +
                        '<h3>' + flotas.chofer1 + '</h3>' +
                        '<h3>' + flotas.licencia1 + '</h3>' +
                        '<h3>' + flotas.chofer2 + '</h3>' +
                        '<h3>' + flotas.licencia2 + '</h3>' +
                        '<h3>' + flotas.asientos + '</h3>' +
                        '<h3>' + flotas.tipo_bus + '</h3>' +
                    '</div>';
            }
            dinamic.innerHTML = dinamicHTML;
        }
    };
    xhr.send();
}
