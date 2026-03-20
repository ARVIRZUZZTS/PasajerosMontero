CREATE TABLE `choferes` (
  `id_c` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `choferes`
--

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
(1, '1234-pre', 'Cochabamba', '1', '00:00:00', 'juan', '2026-03-20'),
(2, '2701-YNF', 'Cochabamba', '5', '10:00:00', 'juan', '2026-03-20'),
(3, '1194-UKE', 'Cochabamba', '4', '19:30:00', 'Jose', '2026-03-20'),
(4, '2830-UTA', 'La Paz', '5', '19:00:00', 'JUANITO', '2026-03-20'),
(5, '2264-KGD', 'Cochabamba', '5', '19:00:00', 'PEDRO', '0000-00-00'),
(6, '2494-RXU', 'Cochabamba', '5', '18:00:00', 'Karlitos', '2026-03-20');
