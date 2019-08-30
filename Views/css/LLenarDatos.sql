INSERT INTO propietario(codigoPropietario,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,ci,fechaNacimiento,edad,genero,numeroTelefono,celular,fotografia,numeroEmergencia) 
VALUES(null,'Jose','Luis','Cayllante','Capia','9086119','1997-12-02',22,'M',6623772,82388723,null,23232333);

INSERT INTO propietario(codigoPropietario,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,ci,fechaNacimiento,edad,genero,numeroTelefono,celular,fotografia,numeroEmergencia) 
VALUES(null,'Juan','Carlos','Silva','Calle','9343119','1997-08-12',22,'M',232323,232323,null,3422323);
INSERT INTO propietario(codigoPropietario,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,ci,fechaNacimiento,edad,genero,numeroTelefono,celular,fotografia,numeroEmergencia) 
VALUES(null,'Maria','Jose','Torrez','Fernandez','876544','1998-12-02',21,'F',6600072,820008723,null,2320076);
INSERT INTO propietario(codigoPropietario,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,ci,fechaNacimiento,edad,genero,numeroTelefono,celular,fotografia,numeroEmergencia) 
VALUES(null,'Gerardo','','Davilas','Ochoa','8712512','1995-12-02',24,'M',6677772,8676723,null,23267673);
INSERT INTO propietario(codigoPropietario,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,ci,fechaNacimiento,edad,genero,numeroTelefono,celular,fotografia,numeroEmergencia) 
VALUES(null,'Juan','Pablo','Robles','Robles','903434','1996-12-02',23,'M',600072,82300023,null,23256563);



INSERT INTO pago(codigoPago,precio,fecha) 
VALUES(null,150,'2019-01-10');
INSERT INTO pago(codigoPago,precio,fecha) 
VALUES(null,250,'2018-12-01');
INSERT INTO pago(codigoPago,precio,fecha) 
VALUES(null,350,'2018-11-02');
INSERT INTO pago(codigoPago,precio,fecha) 
VALUES(null,100,'2019-03-03');
INSERT INTO pago(codigoPago,precio,fecha) 
VALUES(null,200,'2019-02-01');

INSERT INTO tipoInmueble(codigoTipoInmueble,nombre) 
VALUES(null,'Departamento');
INSERT INTO tipoInmueble(codigoTipoInmueble,nombre) 
VALUES(null,'Casa');


INSERT INTO inmueble(codigoInmueble,codigoTipoInmueble,codigoPropietario,nombre) 
VALUES(null,1,1,'A-1-1');
INSERT INTO inmueble(codigoInmueble,codigoTipoInmueble,codigoPropietario,nombre) 
VALUES(null,1,2,'A-1-2');
INSERT INTO inmueble(codigoInmueble,codigoTipoInmueble,codigoPropietario,nombre) 
VALUES(null,1,3,'A-2-1');
INSERT INTO inmueble(codigoInmueble,codigoTipoInmueble,codigoPropietario,nombre) 
VALUES(null,2,4,'E1');
INSERT INTO inmueble(codigoInmueble,codigoTipoInmueble,codigoPropietario,nombre) 
VALUES(null,2,5,'E2');


INSERT INTO pagoInmueble(codigoInmueble,codigoPago) 
VALUES(1,1);
INSERT INTO pagoInmueble(codigoInmueble,codigoPago) 
VALUES(2,2);
INSERT INTO pagoInmueble(codigoInmueble,codigoPago) 
VALUES(3,3);
INSERT INTO pagoInmueble(codigoInmueble,codigoPago) 
VALUES(4,4);
INSERT INTO pagoInmueble(codigoInmueble,codigoPago) 
VALUES(5,5);


INSERT INTO ambiente(codigoAmbiente,nombre) 
VALUES(null,'Parrillero');
INSERT INTO ambiente(codigoAmbiente,nombre) 
VALUES(null,'Salon de Eventos');
INSERT INTO ambiente(codigoAmbiente,nombre) 
VALUES(null,'Sala de proyeccion');


INSERT INTO pagoAmbiente(codigoPago,codigoAmbiente) 
VALUES(1,1);
INSERT INTO pagoAmbiente(codigoPago,codigoAmbiente) 
VALUES(2,2);
INSERT INTO pagoAmbiente(codigoPago,codigoAmbiente) 
VALUES(3,3);



INSERT INTO reserva(codigoReserva,codigoAmbiente,fecha,hora) 
VALUES(null,1,'2018-11-03','08:00:00');
INSERT INTO reserva(codigoReserva,codigoAmbiente,fecha,hora) 
VALUES(null,2,'2018-11-15','09:00:00');
INSERT INTO reserva(codigoReserva,codigoAmbiente,fecha,hora) 
VALUES(null,3,'2018-12-25','07:00:00');
INSERT INTO reserva(codigoReserva,codigoAmbiente,fecha,hora) 
VALUES(null,1,'2019-01-15','12:00:00');
INSERT INTO reserva(codigoReserva,codigoAmbiente,fecha,hora) 
VALUES(null,2,'2019-02-10','15:00:00');


INSERT INTO rol(codigoRol,nombre) 
VALUES(null,'Administrador');
INSERT INTO rol(codigoRol,nombre) 
VALUES(null,'Presidente');
INSERT INTO rol(codigoRol,nombre) 
VALUES(null,'Secretario');
INSERT INTO rol(codigoRol,nombre) 
VALUES(null,'Propietario');




INSERT INTO usuario(codigoUsuario,codigoRol,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,ci,fechaNacimiento,edad,genero,numeroTelefono,celular,fotografia,numeroEmergencia,fechaInicio,fechaFin,activo) 
VALUES(null,1,'Edwin','Patricio','Logro','Masabanda','19871212','1997-12-02',22,'M',6623772,82388723,null,23232333,'2008-01-02','2022-12-02',1);

INSERT INTO usuario(codigoUsuario,codigoRol,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,ci,fechaNacimiento,edad,genero,numeroTelefono,celular,fotografia,numeroEmergencia,fechaInicio,fechaFin,activo) 
VALUES(null,2,'Roger','Brayan','Cabezas','Solares','198223000','1998-12-02',21,'M',6600772,82000723,null,20000333,'2010-01-02','2021-12-02',1);
INSERT INTO usuario(codigoUsuario,codigoRol,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,ci,fechaNacimiento,edad,genero,numeroTelefono,celular,fotografia,numeroEmergencia,fechaInicio,fechaFin,activo) 
VALUES(null,3,'Jorge','Luis','Vargas','Toledo','826252772','1996-12-02',23,'M',662112,18721113,null,2111212333,'2009-01-02','2020-12-02',1);
INSERT INTO usuario(codigoUsuario,codigoRol,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,ci,fechaNacimiento,edad,genero,numeroTelefono,celular,fotografia,numeroEmergencia,fechaInicio,fechaFin,activo) 
VALUES(null,4,'Ana','Rebeca','Lumbardo','Terrazas','19329923','1997-12-02',22,'F',23232323,998762323,null,0876523,'2012-01-02','2020-12-02',1);
INSERT INTO usuario(codigoUsuario,codigoRol,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,ci,fechaNacimiento,edad,genero,numeroTelefono,celular,fotografia,numeroEmergencia,fechaInicio,fechaFin,activo) 
VALUES(null,4,'Juan','Carlos','Robles','Robles','903434','1996-12-02',23,'M',600072,82300023,null,23256563,'2013-01-02','2021-12-02',1);















