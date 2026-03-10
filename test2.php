<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Mi Proyecto Retro</title>
navegador no lo comprende: 
header, footer, nav, section, article, aside {
    display: block;
}
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mi App Retro</title>
    <link rel="stylesheet" href="css/global.css">
</head>
<body>

    <header id="menu">
        <strong>Mi Panel PHP 5.3</strong>
    </header>

    <section class="columna">
        <h1>Hola desde PHP</h1>
        <?php
            $fecha = date("d/m/Y");
            echo "<p>Hoy es: " . $fecha . "</p>";

            // Arreglo estilo viejo
            $items = array("Manzana", "Pera", "Plátano");
            echo "<ul>";
            foreach ($items as $fruta) {
                echo "<li>" . $fruta . "</li>";
            }
            echo "</ul>";
        ?>
    </section>

    <section class="columna">
        <h2>Interactividad JS</h2>
        <button id="miBoton">Haz clic aquí</button>
    </section>

    <div class="limpiar"></div>

    <script type="text/javascript">
        // JS estilo antiguo
        var boton = document.getElementById('miBoton');
        boton.onclick = function() {
            alert('¡Funciona en Firefox 10!');
        };
    </script>

</body>
</html>