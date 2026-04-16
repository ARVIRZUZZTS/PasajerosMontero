-- FLOTAS (18 registros)
INSERT INTO flota (placa, chofer1, licencia1, chofer2, licencia2, asientos, tipo_bus) VALUES 
('1234-pre', 'JUAN PEREZ (PRUEBA)', '1234567', 'MARIO CRUZ LACATO', '7995969', 33, 'Normal'),
('3056-EAY', 'HUGO GABRIEL RASGUIDO', '8036400', 'REINALDO JORGE OCZACHOQUE', '3531243', 33, 'Semi-cama' ),
('1803-BN', 'CARLOS CHUQUIMIA', '5566778', 'HUGO GABRIEL RASGUIDO', '8036400', 33, 'Semi-cama'),
('1800-FIU', 'MARIO CRUZ LACATO', '7995969', 'ELOY TERCEROS MONTAÑO', '4512727', 33, 'Semi-cama' ),
('2537-DER', 'REINALDO JORGE OCZACHOQUE', '3531243', '', '', 33, 'Semi-cama' ),
('2996-UKF', 'JHONNY VARGAS HERBAS', '3780185', 'CALIXTO ANDIA QUINTEROS', '2951649', 33, 'Semi-cama' ),
('2447-CPE', 'ELOY TERCEROS MONTAÑO', '4512727', '', '', 33, 'Semi-cama' ),
('2494-RXU', 'CALIXTO ANDIA QUINTEROS', '2951649', 'DEMETRIO GALINDO MERIDA', '4438619', 33, 'Semi-cama' ),
('2550-TFU', 'DEMETRIO GALINDO MERIDA', '4438619', '', '', 33, 'Semi-cama' ),
('1194-UKE', 'ERICK MENDOZA MONTESINOS', '6472193', 'ARIEL VARGAS VALLEJOS', '7939232', 33, 'Semi-cama' ),
('2830-UTA', 'ARIEL VARGAS VALLEJOS', '7939232', '', '', 33, 'Semi-cama' ),
('1461-KUX', 'WILSON LAZARTE MONTAÑO', '8691695', 'JUAN QUISPE LLAMPAS', '4321568', 33, 'Semi-cama' ),
('1580-EYR', 'JUAN QUISPE LLAMPAS', '4321568', '', '', 33, 'Semi-cama' ),
('2130-YXG', 'JHONNY VARGAS', '6053938', 'RICHAR IRUSTA JIMENEZ', '4560090', 33, 'Semi-cama'),
('2447-DKT', 'RICHAR IRUSTA JIMENEZ', '4560090', '', '', 33, 'Semi-cama'),
('2701-YNF', 'ARCENIO CABALLERO V.', '3567742', 'VICTOR HUGO VELARSCO CAERO', '4403658', 33, 'Semi-cama'),
('2264-KGD', 'VICTOR HUGO VELARSCO CAERO', '4403658', '', '', 33, 'Semi-cama'),
('2218-PCT', 'ALEX SANDRO VILLARROEL ROMERO', '4512363', 'ARCENIO CABALLERO V.', '3567742', 33, 'Semi-cama');

-- CHOFERES (16 registros)
INSERT INTO choferes (id_c, nombre) VALUES
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

-- VIAJES (10 registros)
INSERT INTO viaje (id_viaje, placa, destino, carril, hora_salida, ayudante, fecha) VALUES
(1, '1234-pre', 'Cochabamba', '1', '00:00:00', 'juan', '2026-03-20'),
(2, '2701-YNF', 'Cochabamba', '5', '10:00:00', 'juan', '2026-03-20'),
(3, '1194-UKE', 'Cochabamba', '4', '19:30:00', 'Jose', '2026-03-20'),
(4, '2830-UTA', 'La Paz', '5', '19:00:00', 'JUANITO', '2026-03-20'),
(5, '2264-KGD', 'Cochabamba', '5', '19:00:00', 'PEDRO', '2026-03-20'),
(6, '2494-RXU', 'Cochabamba', '5', '18:00:00', 'Karlitos', '2026-03-20'),
(7, '3056-EAY', 'Santa Cruz', '2', '20:00:00', 'Mateo', '2026-03-21'),
(8, '1800-FIU', 'Oruro', '3', '21:30:00', 'Lucas', '2026-03-21'),
(9, '2537-DER', 'Sucre', '1', '22:00:00', 'Marcos', '2026-03-22'),
(10, '2996-UKF', 'Tarija', '6', '17:00:00', 'Juan', '2026-03-22');

-- PASAJEROS (12 registros)
INSERT INTO pasajero (id_pasajero, id_viaje, ci, nombre, precio) VALUES
(1, 1, '8765432', 'Carlos Sanchez', 50),
(2, 1, '9876543', 'Ana Morales', 50),
(3, 2, '5432167', 'Luis Alberto Rojas', 60),
(4, 2, '6543218', 'Maria Fernanda Gomez', 60),
(5, 3, '1238904', 'Jorge Ramirez', 70),
(6, 4, '3456789', 'Lucia Fernandez', 80),
(7, 5, '4567890', 'Marta Diaz', 50),
(8, 6, '5678901', 'Elena Torres', 55),
(9, 7, '6789012', 'Raul Flores', 40),
(10, 8, '7890123', 'Carmen Castro', 90),
(11, 9, '8901234', 'Roberto Ruiz', 85),
(12, 10, '9012345', 'Daniela Arce', 100);