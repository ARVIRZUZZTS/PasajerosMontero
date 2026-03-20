create database PasajeroMontero;

use  pasaPasajeroMontero;

create table flota (
placa varchar(10)  primary key,
chofer1 varchar(150) not null,
licencia1 varchar(10) not null,
chofer2 varchar(150),
licencia2 varchar(10),
asientos int not null,
tipo_bus enum('Cama', 'Semi-cama', 'Normal') not null
);

create table viaje (
id_viaje int auto_increment primary key,
placa varchar(10),
destino varchar(10) not null,
carril varchar(2),
hora_salida time not null,
ayudante varchar(150),
fecha date not null
);

create table pasajero (
id_pasajero int auto_increment primary key,
id_viaje int,
ci varchar(20),
nombre varchar(150),
precio int
);

CREATE TABLE `choferes` (
  `id_c` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
