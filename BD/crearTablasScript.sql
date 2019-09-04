drop DATABASE kantuta;
CREATE DATABASE kantuta;
USE kantuta;


CREATE TABLE Empresa
(
  idEmpresa INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  nit varchar(50) NOT NULL
)ENGINE=INNODB;

CREATE TABLE TURNO(
idTurno int UNSIGNED not null  auto_increment PRIMARY KEY,
nombre varchar(20) not null  
);
CREATE TABLE Cargo
(
  idCargo INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(30) NOT NULL,
  esFlexible boolean NOT NULL
)ENGINE=INNODB;
CREATE TABLE EstadoCivil
(
  idEstadoCivil INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(20) not null
)ENGINE=INNODB;

CREATE TABLE Horario
(
  idHorario INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idCargo int UNSIGNED,
  idTurno int UNSIGNED,
  horarioIngreso TIME NOT NULL ,
  horarioSalida TIME NOT NULL ,
  FOREIGN KEY(idCargo) REFERENCES Cargo(idCargo) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY(idTurno) REFERENCES Turno(idTurno) ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE Empleado(
  idEmpleado INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idCargo int UNSIGNED NOT NULL,
  idEstadoCivil int UNSIGNED NOT NULL ,
  ci varchar(40) NOT NULL,
  primerNombre varchar(20) NOT NULL,
  segundoNombre varchar(20),
  apellidoPaterno varchar(20) NOT NULL,
  apellidoMaterno varchar(20),
  fechaNacimiento date NOT NULL,
  codeRFID varchar(20) UNIQUE   NOT NULL,
  genero ENUM('M','F') NOT NULL,
  fotografia varchar(70),
  numeroCelular varchar(20),
  numeroFijo varchar(20),
  usuario varchar(40) NOT NULL,
  contrasenia varchar(70) NOT NULL,
  activo boolean NOT NULL,
   FOREIGN KEY (idCargo)REFERENCES Cargo(idCargo)ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY (idEstadoCivil)REFERENCES EstadoCivil(idEstadoCivil)ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;


CREATE TABLE Gestion
(
  idGestion INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idEmpresa int UNSIGNED NOT NULL ,
  idEmpleado int UNSIGNED NOT NULL ,
  fecha DATETIME NOT NULL,
  FOREIGN KEY (idEmpresa)REFERENCES Empresa(idEmpresa)ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (idEmpleado)REFERENCES Empleado(idEmpleado)ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE Asistencia
(
  idAsistencia INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idEmpleado INT UNSIGNED NOT NULL,
  horaFechaEntrada DATETIME NOT NULL,
  horaFechaSalida DATETIME NOT NULL,
  TotalHoras Double NOT NULL,
  FOREIGN KEY (idEmpleado)REFERENCES Empleado(idEmpleado)ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE Vacacion
(
  idVacacion int auto_increment,
  idEmpleado int UNSIGNED ,
  inicioVacacion date not null,
  finVacacion date not null,
  PRIMARY KEY(idVacacion),
  FOREIGN KEY (idEmpleado)REFERENCES Empleado(idEmpleado)ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE Feriado
(
  idFeriado INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  fechaInicio  DATE NOT NULL,
  fechaFin  DATE NOT NULL ,
  descripción text NOT NULL
)ENGINE=INNODB;


CREATE TABLE ReferenciaEmpleado
(
  idReferenciaEmpleado int auto_increment,
  idEmpleado int UNSIGNED,
  ci varchar(20),
  primerNombre varchar(50),
  segundoNombre varchar(50),
  apellidoPaterno varchar(50),
  apellidoMaterno varchar(50),
  PRIMARY KEY(idReferenciaEmpleado),

  FOREIGN KEY (idEmpleado)REFERENCES Empleado(idEmpleado)ON UPDATE CASCADE ON DELETE CASCADE

)ENGINE=INNODB;

CREATE TABLE TipoReferencia
(
  idTipoReferencia int auto_increment,
  idReferenciaEmpleado int ,
  nombre varchar(20),
  PRIMARY KEY(idTipoReferencia),
   FOREIGN KEY (idReferenciaEmpleado)REFERENCES ReferenciaEmpleado(idReferenciaEmpleado)ON UPDATE CASCADE ON DELETE CASCADE
 
)ENGINE=INNODB;

