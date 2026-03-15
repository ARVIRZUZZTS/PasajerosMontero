var SelectorFecha = {
  MESES: [
    "Enero",
    "Febrero",
    "Marzo",
    "Abril",
    "Mayo",
    "Junio",
    "Julio",
    "Agosto",
    "Septiembre",
    "Octubre",
    "Noviembre",
    "Diciembre",
  ],
  ANIO_INICIAL: 2026,

  renderizar: function (idContenedor) {
    var contenedor = document.getElementById(idContenedor);
    if (!contenedor) return;

    var selectDia = document.createElement("select");
    selectDia.id = "comp-dia";

    var selectMes = document.createElement("select");
    selectMes.id = "comp-mes";

    var selectAnio = document.createElement("select");
    selectAnio.id = "comp-anio";

    for (var i = 0; i < this.MESES.length; i++) {
      var optMes = document.createElement("option");
      optMes.value = i + 1;
      optMes.text = this.MESES[i];
      selectMes.appendChild(optMes);
    }

    for (var a = this.ANIO_INICIAL; a <= this.ANIO_INICIAL + 10; a++) {
      var optAnio = document.createElement("option");
      optAnio.value = a;
      optAnio.text = a;
      selectAnio.appendChild(optAnio);
    }

    function actualizarDias() {
      var mes = parseInt(selectMes.value, 10);
      var anio = parseInt(selectAnio.value, 10);
      var diaPrevio = selectDia.value;

      var totalDias = new Date(anio, mes, 0).getDate();

      selectDia.innerHTML = "";

      for (var d = 1; d <= totalDias; d++) {
        var optDia = document.createElement("option");
        optDia.value = d;
        optDia.text = d;
        selectDia.appendChild(optDia);
      }

      if (diaPrevio) {
        selectDia.value = diaPrevio > totalDias ? totalDias : diaPrevio;
      }
    }

    selectMes.onchange = actualizarDias;
    selectAnio.onchange = actualizarDias;

    var fechaActual = new Date();

    selectAnio.value = fechaActual.getFullYear();
    selectMes.value = fechaActual.getMonth() + 1;

    actualizarDias();

    selectDia.value = fechaActual.getDate();

    contenedor.appendChild(document.createTextNode("Día: "));
    contenedor.appendChild(selectDia);

    contenedor.appendChild(document.createTextNode(" Mes: "));
    contenedor.appendChild(selectMes);

    contenedor.appendChild(document.createTextNode(" Año: "));
    contenedor.appendChild(selectAnio);
  },

  obtenerFechaFormateada: function () {
    var dia = document.getElementById("comp-dia").value;
    var mes = document.getElementById("comp-mes").value;
    var anio = document.getElementById("comp-anio").value;

    if (dia.length === 1) dia = "0" + dia;
    if (mes.length === 1) mes = "0" + mes;

    return anio + "-" + mes + "-" + dia;
  },
};
