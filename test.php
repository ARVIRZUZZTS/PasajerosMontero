<?php

$conexion = mysqli_connect("localhost","root","","santacruz");

if(!$conexion){
    die("Error de conexión: " . mysqli_connect_error());
}

echo "Conectado correctamente a la base de datos";

?>