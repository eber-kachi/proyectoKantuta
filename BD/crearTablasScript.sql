drop DATABASE kantuta;
CREATE DATABASE kantuta;
USE kantuta;


CREATE TABLE Empresa
(
  idEmpresa INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  nit varchar(50) NOT NULL
)ENGINE=INNODB;

CREATE TABLE Cargo
(
  idCargo INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(30),
  flexible boolean 
)ENGINE=INNODB;

CREATE TABLE Horario
(
  idHorario INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idCargo int UNSIGNED,
  `horarioIngreso` DATETIME ,
  `HorarioSalida` DATETIME ,
  `estadoTurno` DATETIME ,
  `ingresoTurno2` DATETIME ,
  `salidaTurno2` DATETIME ,
  PRIMARY KEY(`idHorario`),
  FOREIGN KEY (idCargo)REFERENCES Cargo(idCargo)ON DELETE CASCADE
 
)ENGINE=INNODB;


CREATE TABLE `EstadoCivil`
(
  `idEstadoCivil` int auto_increment,
  `nombre` varchar(20),
  PRIMARY KEY(`idEstadoCivil`)
)ENGINE=INNODB;





CREATE TABLE `Empleado`(
  `idEmpleado` int auto_increment,
  `idCargo` int ,
  `idEstadoCivil` int ,
  `Ci` varchar(70),
  `primerNombre` varchar(70),
  `segundoNombre` varchar(70),
  `apellidoPaterno` varchar(70),
  `apellidoMaterno` varchar(70),
  `fechaNacimiendo` varchar(70),
  `codeRFID` varchar(70),
  `genero` ENUM('M','F'),
  `fotografia` varchar(70),
  `numeroCelular` varchar(20),
  `numeroFijo` varchar(20),
  `usuario` varchar(70),
  `contrasenia` varchar(70),
  `activo` boolean,
   PRIMARY KEY(`idEmpleado`),
   FOREIGN KEY (idCargo)REFERENCES Cargo(idCargo)ON DELETE CASCADE,
   FOREIGN KEY (idEstadoCivil)REFERENCES EstadoCivil(idEstadoCivil)ON DELETE CASCADE
)ENGINE=INNODB;
CREATE TABLE `Asistencia`
(
  `idAsistencia` int auto_increment,
  `idEmpleado` int ,
  `estado` varchar(20),
  `horaFechaEntrada` DATETIME,
  `horaFechaSalida` DATETIME,
  `TotalHoras` int ,
  PRIMARY KEY(`idAsistencia`),
   FOREIGN KEY (idEmpleado)REFERENCES Empleado(idEmpleado)ON DELETE CASCADE
)ENGINE=INNODB;
CREATE TABLE Vacacion
(
  `idVacacion` int auto_increment,
  `idEmpleado` int ,
  `inicioVacacion` date not null,
  `finVacacion` date not null,
  PRIMARY KEY(`idVacacion`),
  FOREIGN KEY (idEmpleado)REFERENCES Empleado(idEmpleado)ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE `Feriado`
(
  `idFeriado` int auto_increment ,
  `fechaInicio`DATETIME ,
  `fechaFin`DATETIME ,
  `descripción` text,
  PRIMARY KEY(`idFeriado`)
)ENGINE=INNODB;

CREATE TABLE `Gestion`
(
  `idGestion` int auto_increment,
  `idEmpresa` int ,
  `idEmpleado`int ,
  `Fecha` DATETIME,
  KEY `Pk`(`idGestion`),
  FOREIGN KEY (idEmpresa)REFERENCES Empresa(idEmpresa)ON DELETE CASCADE,
  FOREIGN KEY (idEmpleado)REFERENCES Empleado(idEmpleado)ON DELETE CASCADE
  
)ENGINE=INNODB;

CREATE TABLE `ReferenciaEmpleado`
(
  `idReferenciaEmpleado` int auto_increment,
  `IdEmpleado` int,
  `ci` varchar(20),
  `primerNombre` varchar(50),
  `segundoNombre` varchar(50),
  `apellidoPaterno` varchar(50),
  `apellidoMaterno` varchar(50),
  PRIMARY KEY(`idReferenciaEmpleado`),
  FOREIGN KEY (idEmpleado)REFERENCES Empleado(idEmpleado)ON DELETE CASCADE
 
)ENGINE=INNODB;
CREATE TABLE `TipoReferencia`
(
  `idTipoReferencia` int auto_increment,
  `idReferenciaEmpleado` int ,
  `nombre` varchar(20),
  PRIMARY KEY(`idTipoReferencia`),
   FOREIGN KEY (idReferenciaEmpleado)REFERENCES ReferenciaEmpleado(idReferenciaEmpleado)ON DELETE CASCADE
 
)ENGINE=INNODB;

