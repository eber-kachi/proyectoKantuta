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
  nombre varchar(30) NOT NULL,
  flexible boolean NOT NULL
)ENGINE=INNODB;

CREATE TABLE EstadoCivil
(
  idEstadoCivil INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(20) not null,
)ENGINE=INNODB;

CREATE TABLE Horario
(
  idHorario INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idCargo int UNSIGNED,
  horarioIngreso DATETIME NOT NULL ,
  HorarioSalida DATETIME NOT NULL ,
  estadoTurno boolean NOT NULL,
  ingresoTurno2 DATETIME ,
  salidaTurno2 DATETIME ,
  FOREIGN KEY(idCargo) REFERENCES Cargo(idCargo) ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE Empleado(
  idEmpleado INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idCargo int UNSIGNED NOT NULL,
  idEstadoCivil int UNSIGNED NOT NULL ,
  CI varchar(40) NOT NULL,
  primerNombre varchar(20) NOT NULL,
  segundoNombre varchar(20),
  apellidoPaterno varchar(20) NOT NULL,
  apellidoMaterno varchar(20),
  fechaNacimiendo varchar(20) NOT NULL,
  codeRFID varchar(20) NOT NULL,
  genero ENUM('M','F') NOT NULL,
  fotografia varchar(70),
  numeroCelular varchar(20),
  numeroFijo varchar(20),
  usuario varchar(40) NOT NULL,
  contraseña varchar(70) NOT NULL,
  activo boolean NOT NULL,
   FOREIGN KEY (idCargo)REFERENCES Cargo(idCargo)ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY (idEstadoCivil)REFERENCES EstadoCivil(idEstadoCivil)ON UPDATE CASCADE ON DELETE CASCADE
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

