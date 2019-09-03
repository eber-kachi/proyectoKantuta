use kantuta;
-- se inserto datos de cargo 
INSERT INTO cargo
  (nombre,esFlexible)
VALUES
  ('Administrador', 0),
  ('Secretaria', 0),
  ('Obrero', 0),
  ('Supervisor', 0),
  ('Contador', 0),
  ('Seguridad', 0),
  ('Almacenero', 0),
  ('Chofer', 0),
  ('Prensista',0),
  ('Distribuidor',0);

-- agregando estado civil
insert into estadocivil
  ( nombre)
values
  ('Casado'),
  ('Soltero'),
  ('Viudo');
-- se esta rellenando  la tabla empleado con 40 datos 

INSERT INTO empleado
  (idEmpleado,idCargo, idEstadoCivil, ci, primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno, fechaNacimiento, codeRFID, genero, fotografia, numeroCelular, numeroFijo, usuario, contrasenia, activo)
values(null,1, 2, '34653-CB', 'Manuel', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'busfdv21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,2, 2 , '34363-CB', 'Mauricio', 'Andres', 'Zespedes', 'Catari', '1991-03-20', 'bsusdv21', 'M', 'Foto', '7587641', '4390769', 'mauricio', '1234', 1),
      (null,3, 2 , '34563-CB', 'Roca', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'busadv21', 'M', 'Foto', '7523641', null, 'roca', '1234', 1),
      (null,4, 1 , '34556-CB', 'Filomon', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'bucssdv21', 'M', 'Foto', '7523641', null, 'filomon', '1234', 1),
      (null,3, 3 , '34587-CB', 'Mario', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'bussd2v21', 'M', 'Foto', '7523641', null, 'mario', '1234', 1),
      (null,4, 1 , '34509-CB', 'Abel', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'busadvc21', 'M', 'Foto', '7523641', null, 'abel', '1234', 1),
      (null,3, 3 , '34504-CB', 'Araceli', null, 'Claros', 'Medina', '1988-02-05', 'busdvs2c1', 'F', 'Foto', '7523641', null, 'araceli', '1234', 1),
      (null,3, 2 , '34593-CB', 'Roberto', null, 'Paniagua', 'Zapata', '1972-06-05', 'bussdv21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 2 , '34594-CB', 'Rolando', null, 'Perez', 'Morales', '1992-12-05', 'abausdv21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '34561-CB', 'Ramiro', 'Pedro', 'Medina', 'Merida', '1982-10-05', 'abausdva321', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),

      (null,3, 3 , '354561-CB', 'Antonio', 'Juan', 'Barrioso', null, '1992-10-05', 'abaus2dva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '345561-CB', 'Albert', null, 'Alabe', 'Claros', '1982-10-05', 'abau2sdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,4, 3 , '345561-CB', 'Deyni', 'Juan', 'Nina', 'Miranda', '1992-10-05', 'aba3usdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,8, 3 , '345761-CB', 'Denis', 'Rene', 'Feliciano', null, '1992-10-05', 'aba2usdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,8, 3 , '345661-CB', 'Eber', 'Pedro', 'Carmelo', 'Megia', '1982-10-05', 'abau3sdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,8, 3 , '345671-CB', 'Edgardo', null, 'Sanches', 'Medoza', '1982-10-05', 'aba3us3dva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,8, 3 , '374561-CB', 'Ernesto', 'Pedro', 'Mejia', null, '1992-10-05', 'abausd3va21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,8, 3 , '334561-CB', 'Gabo', 'Pedro', 'Morales', 'Uruquipa', '1982-10-05', 'ab3ausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,8, 3 , '343561-CB', 'Rogelio', 'Juan', 'Mendoza', 'Constancia', '1982-10-05', '2abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,8, 3 , '345631-CB', 'Rolando', null, 'Merida', 'Flores', '1992-10-05', 'abausdva215', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,8, 3 , '314561-CB', 'Ronal', 'Pedro', 'Nuñes', null, '1982-10-05', 'abausd5va21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,8, 3 , '345611-CB', 'Rodrigo', 'Rene', 'Nueva', 'Saniso', '2002-10-05', 'ab5ausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,8, 3 , '314561-CB', 'Rosendo', 'Pedro', 'Miranda', null, '2000-10-05', 'a5b5ausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,8, 3 , '342561-CB', 'Rompe', 'Rene', 'MiraFlor', 'Tapia', '1992-10-05', 'abau24sdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,8, 3 , '324561-CB', 'Marco', null, 'Goni', 'Tarqui', '1992-10-05', '2ab4ausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,8, 3 , '234561-CB', 'Marcelo', 'Pedro', 'Carros', 'Moreno', '1982-10-05', '44abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
    

      (null,8, 3 , '7345612-CB', 'Rojelio', null, 'Gomez', null, '1992-10-05', 'abausdva213', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3456721-CB', 'Mateo', null, 'Gonzales', 'Cacerez', '1987-10-05', 'abaus3dva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3045261-CB', 'Alvaro', null, 'Fernandez', 'Figueroa', '1982-10-05', 'a3bausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3452601-CB', 'David', null, 'Lopez', 'Cordoba', '1987-10-05', 'abau3sdva21zz', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3425061-CB', 'Adrian', null, 'Diaz', null, '1982-10-05', 'abausdvas21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3240561-CB', 'Wilson', null, 'Martinez', 'Paz', '1997-10-05', 'abasusdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3304561-CB', 'Martin', null, 'Romero', 'Rivero', '1982-10-05', 'absausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3834561-CB', 'Nicolas', null, 'Ruiz', 'Miranda', '1987-10-05', 'absausdvas21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3643561-CB', 'Miguel', null, 'Alvares', 'Cruz', '1995-10-05', 'abausdva2s1', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3545361-CB', 'Lucas', null, 'Herrera', 'Lucero', '1985-10-05', 'abaud4sdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3445631-CB', 'Jacob', null, 'Pereyra', null, '1992-10-05', 'ab4ausdva2e1', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3453613-CB', 'Simon', null, 'Molida', 'Moyano', '1982-10-05', 'aba4usdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3456214-CB', 'Gabriel', null, 'Ortiz', 'Zoto', '1985-10-05', 'abewausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3145641-CB', 'Antony', null, 'Luna', 'Valdez', '1985-10-05', 'abwwausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3425461-CB', 'Sisy', null, 'Rios', null, '1996-10-05', 'efwefgdtht5', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (null,3, 3 , '3454621-CB', 'Andrea', null, 'Moreno', 'Bravo', '1996-10-05', 'abewwausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1);

--43

-- agregando gestion 
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,50,'2018-01-02 13:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,51,'2018-01-02 14:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,35,'2018-01-02 15:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,52,'2018-01-02 16:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,53,'2018-01-02 17:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,54,'2018-01-02 18:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,55,'2018-01-02 19:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,56,'2018-01-02 10:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,57,'2018-01-02 10:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,58,'2018-01-02 11:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,59,'2018-01-02 12:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,60,'2018-01-02 12:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,61,'2018-01-02 13:50:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,62,'2018-01-02 13:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,63,'2018-01-02 13:30:00');

INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,64,'2018-01-02 13:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,65,'2018-01-02 14:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,66,'2018-01-02 15:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,67,'2018-01-02 16:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,68,'2018-01-02 17:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,69,'2018-01-02 18:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,70,'2018-01-02 19:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,71,'2018-01-02 19:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,72,'2018-01-02 19:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,73,'2018-01-02 10:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,74,'2018-01-02 10:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,75,'2018-01-02 10:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,75,'2018-01-02 15:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,76,'2018-01-02 14:50:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,77,'2018-01-02 12:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,78,'2018-01-02 11:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,79,'2018-01-02 11:30:00');


INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,80,'2018-01-02 13:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,85,'2018-01-02 14:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,86,'2018-01-02 15:20:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,87,'2018-01-02 12:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,88,'2018-01-02 12:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,89,'2018-01-02 12:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,90,'2018-01-02 12:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,95,'2018-01-02 12:30:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,100,'2018-01-02 12:40:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,101,'2018-01-02 19:10:00');
INSERT INTO Gestion (idGestion,idEmpresa,idEmpleado,Fecha) VALUES (null,1,102,'2018-01-02 17:20:00');

-- insertando turno de horario
insert into turno(nombre)
values('Fijo'),
      ('Mañana'),
      ('Tarde');

-- insertando horario  desde contador 
-- insertando horario  desde contador
--  ('Administrador', 0), 1
--   ('Secretaria', 0),   2
--   ('Obrero', 0),       3
--   ('Supervisor', 0),   4
  -- ('Contador', 0),     5
  -- ('Seguridad', 0),    6
  -- ('Almacenero', 0),   7
  -- ('Chofer', 0),       8
  -- ('Prensista',0);     9
  --('Distibuidor');      10

insert INTO horario(idHorario,idCargo,idTurno, horarioIngreso,horarioSalida)
values(null,1,2,'08:00:00','12:00:00'),-- Secretaria
      (null,1,2,'14:00:00','18:00:00'),-- Secretaria
      (null,3,1,'06:00:00','14:00:00'),-- Obrero corrido
      (null,3,1,'14:00:00','22:00:00'),-- obrero corrido
      (null,4,1,'06:00:00','14:00:00'),-- supervisor corrido
      (null,4,1,'14:00:00','22:00:00'),-- supervisor corrido
      (null,5,2,'08:00:00','12:00:00'),-- Contador
      (null,6,1,'08:00:00','20:00:00'),-- Seguridad
      (null,7,2,'06:00:00','14:00:00'),-- Almacenero corrido
      (null,7,2,'14:00:00','22:00:00'),-- Almacenero corrido
      (null,8,1,'08:00:00','12:00:00'),-- Chofer
      (null,9,1,'06:00:00','14:00:00'),-- Prensista corrido
      (null,9,1,'06:00:00','14:00:00'),-- Prensista corrido
      (null,10,1,'08:00:00','12:00:00'),-- Distibuidor
      (null,10,1,'14:00:00','18:00:00');-- Distibuidor


-- llenando asistencia de empleado id 3 (roca carlos)

insert into asistencia (idEmpleado, horaFechaEntrada, horaFechaSalida, TotalHoras)
values (3, '2019-08-26 06:00:06', '2019-08-26 14:00:15', 8.0),
        (3, '2019-08-27 06:01:06', '2019-08-27 14:00:15', 7.99),
        (3, '2019-08-28 06:00:06', '2019-08-28 14:00:15', 8.0),
        (3, '2019-08-29 06:05:06', '2019-08-29 14:00:15', 7.95),
        (3, '2019-08-30 06:20:06', '2019-08-30 14:30:15', 8.0);

-- llenando asistencia de empleado id 3 (roca carlos)

insert into asistencia (idEmpleado, horaFechaEntrada, horaFechaSalida, TotalHoras)
values (4, '2019-08-26 06:00:06', '2019-08-26 14:00:15', 8.0),
        (4, '2019-08-27 06:01:06', '2019-08-27 14:00:15', 7.99),
        (4, '2019-08-28 06:00:06', '2019-08-28 14:00:15', 8.0),
        (4, '2019-08-29 06:05:06', '2019-08-29 14:00:15', 7.95),
        (4, '2019-08-30 06:20:06', '2019-08-30 14:30:15', 8.10);


-- viendo los datos de
SELECT CONCAT_WS(' ',e.apellidoPaterno,e.apellidoMaterno,e.primerNombre,e.segundoNombre) as Empleado,
       (ELT(WEEKDAY(DATE(a.horaFechaEntrada)) + 1, 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado', 'Domingo')) AS DIA,
       a.TotalHoras as HorasTrabajadas, c.nombre AS Cargo,
	   IF(c.esFlexible,'Horario Flexible','Horario Fijo') AS TipoHorario,
	   h.horarioIngreso, h.horarioSalida
	   -- t.nombre AS Turno
FROM empleado e INNER JOIN asistencia a
ON e.idEmpleado = a.idEmpleado AND e.idEmpleado = 3
AND DATE(a.horaFechaEntrada) = '2019-08-26'
INNER JOIN cargo c
ON e.idCargo = c.idCargo
INNER JOIN horario h
ON c.idCargo = h.idCargo
INNER Join turno t
ON h.idTurno = t.idTurno AND t.idTurno = 1;








































































































































































































































































































































































































































































































































































