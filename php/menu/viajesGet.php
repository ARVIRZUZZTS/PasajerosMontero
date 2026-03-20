<?php
    include '../conexion.php';

    $fecha = $_GET['fecha'];

    $sql = "SELECT v.placa, f.chofer1, v.destino
            FROM viaje v
            INNER JOIN flota f ON v.placa = f.placa
            WHERE v.fecha = '$fecha'";

    $result = $conexion->query($sql);

    $viajes = array();

    while ($row = $result->fetch_assoc()) {
        $viajes[] = $row;
    }

    echo json_encode($viajes);
?>