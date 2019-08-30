
CREATE TABLE Empleado(
  idEmpleado INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idCargo int UNSIGNED NOT NULL,
  idEstadoCivil int UNSIGNED NOT NULL ,
  CI varchar(40) NOT NULL,
  primerNombre varchar(20) NOT NULL,
  segundoNombre varchar(20),
  apellidoPaterno varchar(20) NOT NULL,
  apellidoMaterno varchar(20),
  fechaNacimiento date NOT NULL,
  codeRFID varchar(20) NOT NULL,
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

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,1,2,'1234','Jose','Amilcar','Cayllante','Capia','2000-08-01','702387872','M',null,'78823923','2663832','jcayllante1234','1234',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,cfotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,5,2,'1235','Edwin','Patricio','Logro','Masabanda','2000-06-01','700072','M',null,'67776667','232323','elogro1235','1235',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,2,2,'1236','Magaly','','Vergara','Huarachi','2000-09-01','552626232','F',null,'656533434','2222333','mvergara1236','1236',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,4,2,'1237','Juan','Carlos','Aruni','Torrez','2000-08-01','702387872','M',null,'78823923','2663832','jaruni','1237',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,2,2,'1238','Neftali','','Mamani','Garcia','2000-06-01','700072','M',null,'67776667','232323','nmamani1238','1238',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,4,2,'1239','Gaby','Corina','Zarate','Mamani','2000-09-01','552626232','F',null,'656533434','2222333','gzarate1239','1239',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,4,2,'1240','Juan','Alberto','Arevalo','Mamani','2000-08-01','702387872','M',null,'78823923','2663832','jarevalo1240','1240',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,2,2,'1241','Yeny','','Estrada','Mita','2000-06-01','700072','F',null,'67776667','232323','yestrada','1241',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'1242','Yessica','Marisol','Condori','Chambi','2000-09-01','552626232','F',null,'656533434','2222333','ycondori1242','1242',true);
 
 INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,4,2,'1243','Ana','Raquel','Quelca','Cadena','2000-08-01','702387872','F',null,'78823923','2663832','aquelca','1243',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,2,2,'1244','Ulda','','Machaca','Huarachi','2000-06-01','700072','F',null,'67776667','232323','umachaca1244','1244',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'1245','Luz','Dareth','Marca','Toco','2000-09-01','552626232','F',null,'656533434','2222333','lmarca1245','1245',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'1246','','Alberto','Arevalo','Mamani','2000-08-01','702387872','M',null,'78823923','2663832','jarevalo1240','1240',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,2,2,'1247','Lizeth','Miriam','Copa','Aro','2000-06-01','700072','F',null,'67776667','232323','lcopa1247','1247',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'1248','Ruth','','Balboa','Chambi','2000-09-01','552626232','F',null,'656533434','2222333','rbalboa1248','1248',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,7,1,'770','Jorge','Luis','Villca','Zarate','2001-11-11','22323323','M',null,'6454534','2334999','jvillca770','770',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,8,3,'780','Wilfredo','','Gonzales','Tapia','2001-04-02','22323323','M',null,'6454534','2334999','wgonzales780','780',true);

INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo)
VALUES(null,3,2,'781','Luis','Fernando','Vega','Ortiz','2002-09-12','22323323','M',null,'6454534','2334999','lvega781','781',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'782','Job','Samuel','Ortega','Perez','2000-02-21','22323323','M',null,'6454534','2334999','jortega782','782',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'783','Abel','Elias','Ventura','Barriuso','2000-03-23','22323323','M',null,'6454534','2334999','aventura783','783',true);




INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'785','Baruc','','Puma','Dias','1998-08-01','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'786','Pedro','Pablo','Dominguez','Capia','1999-09-22', '22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'787','Ramiro','','Ramirez','Pinto','2002-10-01','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'788','Brayan','Diego','Mendez','Vera','2004-08-23','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'789','Grover','','Aruiza','Parra','2001-01-27','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'790','Julio','Cesar','Rojas','Blanco','2004-08-01','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'791','Santos','','Navarro','Villa','2001-08-01','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'792','Hector','Rene','Garcia','Beltran','1999-03-25','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'793','Herlan','','Lopez','Honorio','2000-02-12','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'794','Ana','Raquel','guerra','Gutierrez','2002-05-15','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'795','Rosa','Guadalupe','Berrios','Calderon','2003-01-06','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'796','Carmen','Rocio','Gallardo','Rivera','2002-09-29','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'797','Carla','Karen','Herrera','Tejada','1998-10-22','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'798','Karina','','Sorzano','Chavez','2002-06-14','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'799','Maritza','','Villegas','Vargas','2000-07-15','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'800','Alejandra','','Gomez','Duran','2003-05-07','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'801','Alicia','Roberta','Manjarres','Bautista','2001-07-18','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'802','Patricia','','Carrasco','Villagomez','2004-10-25','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,'803','Maria','Jose','Siles','Salinas','2003-10-17','22323323','M',null,'6454534','2334999','bdias785','785',true);

INSER3,2,T INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'804','Victor','','Blanco','Marca','1997-02-03','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'805','Fidel','','Choque','Guarachi','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'807','Bertty','Ivan','Guarachi','Borda','1996-08-01','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'808','Lidia','','Flores','Quispe','1997-01-01','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'809','Richard','Eliseo','Flores','Capia','1996-11-11','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'810','Richard','Angel','Lima','Capia','1995-04-02','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'811','Cesar','','Mamani','Mamani','1997-09-12','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'812','Irma','','Mamani','Chino','1997-02-21','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'813','Alex','Alvaro','Morales','Capia','1996-03-23','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'814','Graciela','','Nina','Silvestre','1998-08-01','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'815','Luis','Hector','Perez','Paco','1994-09-22','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'816','Marco','Antonio','Perez','Mamani','1996-10-01','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'817','Veronica','','Rojas','Pinto','1997-08-23','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'818','Iban','','Toco','Tiparani','1995-01-27','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'819','Silvia','','Tola','Huanca','1995-08-01','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'820','Clotilde','','Sarzuri','Laura','1997-08-01','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'821','Barbara','','Vacara','Condori','1995-03-25','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'822','Ayme','Esmeralda','Zenteno','Pocoaca','1995-02-12','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'823','Ever','','Condori','Sarzo','1994-05-15','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'824','Guisela','','Quispe','Chambi','1998-01-06','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'825','Juan','Carlos','Huanca','Laura','1994-09-29','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'826','Nancy','','Coria','Mamani','1997-10-22','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'827','Wendy','','Uchani','Flores','1996-06-14','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'828','vladimir','','Lima','Mamani','1996-07-15','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'829','Hortencia','','Maidana','Quispe','1993-05-07','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'830','Jhovit','','Alborta','Aguilar','1993-07-18','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'831','Jhoselin','','Quispe','Lima','1997-10-25','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,'832','Sulma','','Nina','Condori','2003-10-17','22323323','M',null,'6454534','2334999','bdias785','785',true);

INSER3,2,T INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,3,2,'833','Aide','Rosita','Morales','Conde','2002-10-17','22323323','M',null,'6454534','2334999','bdias785','785',true);
INSERT INTO Empleado(idEmpleado,idCargo,idEstadoCivil,CI,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,codeRFID,
genero,fotografia,numeroCelular,numeroFijo,usuario,contrasenia,activo) 
VALUES(null,'834','Sara','','Martinez','Garza','2001-10-17','22323323','M',null,'6454534','2334999','bdias785','785',true);

--INSERT HORARIO


INSERT INTO Horario(idHorario,idCargo,horarioIngreso,HorarioSalida,estadoTurno,ingresoTurno2,salidaTurno2) 
VALUES(null,2,'08:00:00','12:00:00',1,'14:00:00','18:00:00');
INSERT INTO Horario(idHorario,idCargo,horarioIngreso,HorarioSalida,estadoTurno,ingresoTurno2,salidaTurno2) 
VALUES(null,3,'06:00:00','14:00:00',0,null,null);
INSERT INTO Horario(idHorario,idCargo,horarioIngreso,HorarioSalida,estadoTurno,ingresoTurno2,salidaTurno2) 
VALUES(null,4,'06:00:00','14:00:00',0,null,null);

---GESTION
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,1,'2019-01-01 13:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,2,'2019-01-01 14:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,3,'2019-01-01 15:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,4,'2019-01-01 16:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,5,'2019-01-01 17:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,6,'2019-01-01 18:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-01-01 19:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-01-01 10:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,9,'2019-01-01 10:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,10,'2019-01-01 11:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,11,'2019-01-01 12:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,12,'2019-01-01 12:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,13,'2019-01-01 13:50:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,14,'2019-01-01 13:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,15,'2019-01-01 13:30:00');

INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,16,'2019-01-01 13:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,17,'2019-11-01 14:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,18,'2019-11-01 15:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,19,'2019-11-01 16:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,20,'2019-11-01 17:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,21,'2019-01-01 18:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,22,'2019-01-01 19:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,23,'2019-01-01 19:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,24,'2019-01-01 19:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,25,'2019-01-01 10:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,26,'2019-01-01 10:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,27,'2019-01-01 10:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,28,'2019-01-01 15:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,29,'2019-01-01 14:50:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,30,'2019-01-01 12:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,31,'2019-01-01 11:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,32,'2019-01-01 11:30:00');


INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,33,'2019-01-01 13:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,34,'2019-11-01 14:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,35,'2019-11-01 15:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,36,'2019-11-01 12:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,37,'2019-11-01 12:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,38,'2019-01-01 12:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,39,'2019-01-01 12:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,40,'2019-01-01 12:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,41,'2019-01-01 12:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,42,'2019-01-01 19:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,43,'2019-01-01 17:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,44,'2019-01-01 16:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,45,'2019-01-01 14:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,46,'2019-01-01 12:50:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,47,'2019-01-01 14:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,48,'2019-01-01 14:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,49,'2019-01-01 14:30:00');


INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,50,'2019-11-01 10:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,51,'2019-11-01 10:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,52,'2019-11-01 10:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,53,'2019-11-01 12:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,54,'2019-11-01 13:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,55,'2019-11-01 14:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,56,'2019-11-01 15:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,57,'2019-11-01 16:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,58,'2019-11-01 17:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,59,'2019-11-01 18:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,60,'2019-11-01 13:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,61,'2019-01-01 13:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,62,'2019-01-01 13:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,63,'2019-01-01 13:50:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,64,'2019-01-01 13:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,65,'2019-01-01 13:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,66,'2019-01-01 14:30:00');


INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,67,'2019-01-01 09:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,68,'2019-01-01 12:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,69,'2019-01-01 12:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-11-01 13:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-11-01 14:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-11-01 14:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-11-01 14:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-11-01 14:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-11-01 17:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-11-01 16:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-11-01 17:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-01-01 17:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-01-01 17:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-01-01 17:50:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-01-01 13:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-01-01 13:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,7,'2019-01-01 17:30:00');

INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-01-01 09:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-01-01 12:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-01-01 12:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-11-01 13:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-11-01 14:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-11-01 14:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-11-01 14:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-11-01 14:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-11-01 17:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-11-01 16:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-11-01 17:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-01-01 17:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-01-01 17:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-01-01 17:50:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-01-01 13:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-01-01 13:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,8,'2019-01-01 12:30:00');