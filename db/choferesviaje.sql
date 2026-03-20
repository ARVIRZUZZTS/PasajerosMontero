CREATE TABLE `choferes` (
  `id_c` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `choferes` (`id_c`, `nombre`) VALUES
(1, 'HUGO GABRIEL RASGUIDO'),
(2, 'MARIO CRUZ LACATO'),
(3, 'REINALDO JORGE OCZACHOQUE'),
(4, 'JHONNY VARGAS HERBAS'),
(5, 'ELOY TERCEROS MONTAÑO'),
(6, 'CALIXTO ANDIA QUINTEROS'),
(7, 'DEMETRIO GALINDO MERIDA'),
(8, 'ERICK MENDOZA MONTESINOS'),
(9, 'ARIEL VARGAS VALLEJOS'),
(10, 'WILSON LAZARTE MONTAÑO'),
(11, 'JUAN QUISPE LLAMPAS'),
(12, 'JHONNY VARGAS'),
(13, 'RICHAR IRUSTA JIMENEZ'),
(14, 'ARCENIO CABALLERO V.'),
(15, 'VICTOR HUGO VELARSCO CAERO'),
(16, 'ALEX SANDRO VILLARROEL ROMERO');

INSERT INTO `viaje` (`id_viaje`, `placa`, `destino`, `carril`, `hora_salida`, `ayudante`, `fecha`) VALUES
(1, '1234-pre', 'Cbba', '1', '00:00:00', 'juan', '2026-03-19'),
(2, '2701-YNF', 'Cochabamba', '5', '10:00:00', 'juan', '2026-03-20'),
(3, '1194-UKE', 'Cochabamba', '4', '19:30:00', 'Jose', '2026-03-19');
