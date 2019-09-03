DROP  database IF EXISTS OLIVOS;
create database OLIVOS;
 use OLIVOS;
 create table propietario(
    codigoPropietario int primary key auto_increment not null,
    primerNombre varchar(15)not null,
    segundoNombre varchar(15)null,
    apellidoPaterno varchar(15)not null,
    apellidoMaterno varchar(15)not null,
    ci varchar(16)not null,
    fechaNacimiento date not null,
    edad int (3)null,
    genero ENUM('F','M') NOT NULL,
    numeroTelefono int null,
    celular int not null,
    fotografia varchar(5)null,
    numeroEmergencia int null
    );
 create table pago(
 	codigoPago int primary key auto_increment not null,
 	precio decimal(10,2)not null ,
 	fecha date not null
 	);
 create table tipoInmueble(
 	codigoTipoInmueble int primary key auto_increment not null,
 	nombre varchar(20)not null
 	);
 create table inmueble(
 	codigoInmueble int primary key auto_increment not null,
 	codigoTipoInmueble INT not null,
 	codigoPropietario int not null,
 	nombre varchar(20) not null,
    foreign key (codigoTipoInmueble)references tipoInmueble(codigoTipoInmueble)on update cascade on delete cascade,
    foreign key (codigoPropietario)references propietario(codigoPropietario)on update cascade on delete cascade
    );
 create table pagoInmueble(
 	codigoInmueble int not null,
 	codigoPago int not null,
 	foreign key (codigoInmueble)references inmueble(codigoInmueble)on update cascade on delete cascade,
 	foreign key (codigoPago)references pago(codigoPago)on update cascade on delete cascade
 	);
 create table ambiente(
 	codigoAmbiente int primary key auto_increment not null,
 	nombre varchar(20)not null
 	);
 create table pagoAmbiente(
 	codigoPago int not null,
 	codigoAmbiente int not null,
 	foreign key (codigoPago)references pago(codigoPago)on update cascade on delete cascade,
 	foreign key (codigoAmbiente)references ambiente(codigoAmbiente)on update cascade on delete cascade);
 create table reserva(
 	codigoReserva int primary key auto_increment not null,
 	codigoAmbiente int not null,
 	fecha date not null,
 	hora time not null,
 	foreign key (codigoAmbiente)references ambiente(codigoAmbiente)on update cascade on delete cascade
 	);
 create table rol(
 	codigoRol int primary key auto_increment not null,
 	nombre varchar(15)not null
 	);
 create table usuario(
 	codigoUsuario int primary key auto_increment not null,
 	codigoRol int not null,
 	primerNombre varchar(15)not null,
 	segundoNombre varchar(15) null,
 	apellidoPaterno varchar(15)not null,
 	apellidoMaterno varchar(15) null,
 	ci varchar(15)not null,
 	fechaNacimiento date not null,
 	edad int (3)null,
 	genero ENUM('F','M') NOT NULL,
 	numeroTelefono int null,
 	celular int not null,
 	fotografia varchar(10) null,
 	numeroEmergencia int not null,
 	fechaInicio datetime not null,
 	fechaFin datetime not null,
 	activo bool not null,
 	foreign key (codigoRol)references Rol(codigoRol)on update cascade on delete cascade
 	);
