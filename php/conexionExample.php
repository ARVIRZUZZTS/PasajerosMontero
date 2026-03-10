<?php

$conexion = mysqli_connect("localhost","root","","santacruz");
# en el tercer "" colocar el puerto "3307"-Waka; ""-Arvi
if(!$conexion){
    die("Error de conexión: " . mysqli_connect_error());
}

echo "Conectado correctamente a la base de datos";

?>