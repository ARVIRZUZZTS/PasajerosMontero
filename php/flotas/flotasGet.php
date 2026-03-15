<?php
    include '../conexion.php';
    $sql = "SELECT * FROM flota";
    $result = $conexion->query($sql);

    $flotas = array();

    while ($row = $result->fetch_assoc()) {
        $flotas[] = $row;
    }

    echo json_encode($flotas);
?>