<?php

include '../conexion.php';

$placa = $_POST['placa'];
$destino = $_POST['destino'];
$carril = $_POST['carril'];
$hora_salida = $_POST['hora_salida'];
$ayudante = $_POST['ayudante'];
$fecha = $_POST['fecha'];

$sql = "INSERT INTO viaje (placa, destino, carril, hora_salida, ayudante, fecha)
        VALUES ('$placa', '$destino', '$carril', '$hora_salida', '$ayudante', '$fecha')";

if ($conexion->query($sql) === TRUE) {
    echo "Viaje guardado correctamente";
} else {
    echo "Error: " . $conexion->error;
}

?>