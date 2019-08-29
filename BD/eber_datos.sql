use kantuta;
-- se inserto datos de cargo 
INSERT INTO cargo
  (nombre,flexible)
VALUES
  ('Administrador', 0),
  ('Secretaria', 0),
  ('Obrero', 0),
  ('Supervisor', 0),
  ('Contador', 0),
  ('Seguridad', 0),
  ('Almacenero', 0),
  ('Chofer', 0);
-- agregando estado civil
insert into estadocivil
  ( nombre)
values
  ('Casado'),
  ('Soltero'),
  ('Viudo');
-- se esta rellenando  la tabla empleado con 40 datos 

INSERT INTO empleado
  (idCargo, idEstadoCivil, Ci, primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno, fechaNacimiendo, codeRFID, genero, fotografia, numeroCelular, numeroFijo, usuario, contrasenia, activo)
values(1, 2, '34653-CB', 'Manuel', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'busfdv21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (2, 2 , '34363-CB', 'Mauricio', 'Andres', 'Zespedes', 'Catari', '1991-03-20', 'bsusdv21', 'M', 'Foto', '7587641', '4390769', 'mauricio', '1234', 1),
  (3, 2 , '34563-CB', 'Roca', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'busadv21', 'M', 'Foto', '7523641', '', 'roca', '1234', 1),
  (4, 1 , '34556-CB', 'Filomon', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'bucsdv21', 'M', 'Foto', '7523641', '', 'filomon', '1234', 1),
  (3, 3 , '34587-CB', 'Mario', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'bussdv21', 'M', 'Foto', '7523641', '', 'mario', '1234', 1),
  (4, 1 , '34509-CB', 'Abel', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'busadvc21', 'M', 'Foto', '7523641', '', 'abel', '1234', 1),
  (3, 3 , '34504-CB', 'Araceli', null, 'Claros', 'Medina', '1988-02-05', 'busdvs2c1', 'F', 'Foto', '7523641', '', 'araceli', '1234', 1),
  (3, 2 , '34593-CB', 'Roberto', null, 'Paniagua', 'Zapata', '1972-06-05', 'bussdv21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 2 , '34594-CB', 'Rolando', null, 'Perez', 'Morales', '1992-12-05', 'abausdv21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '34561-CB', 'Ramiro', 'Pedro', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),

  (3, 3 , '354561-CB', 'Antonio', 'Juan', 'Medina', null, '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '345561-CB', 'Albert', null, 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (4, 3 , '345561-CB', 'Deyni', 'Juan', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (8, 3 , '345761-CB', 'Denis', 'Rene', 'Medina', null, '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (8, 3 , '345661-CB', 'Eber', 'Pedro', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (8, 3 , '345671-CB', 'Edgardo', null, 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (8, 3 , '374561-CB', 'Ernesto', 'Pedro', 'Medina', null, '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (8, 3 , '334561-CB', 'Gabo', 'Pedro', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (8, 3 , '343561-CB', 'Rogelio', 'Juan', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (8, 3 , '345631-CB', 'Rolando', null, 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (8, 3 , '314561-CB', 'Ronal', 'Pedro', 'Medina', null, '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (8, 3 , '345611-CB', 'Rodrigo', 'Rene', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (8, 3 , '314561-CB', 'Rosendo', 'Pedro', 'Medina', null, '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (8, 3 , '342561-CB', 'Rompe', 'Rene', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (8, 3 , '324561-CB', 'Marco', null, 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (8, 3 , '234561-CB', 'Marcelo', 'Pedro', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  -- falta hasta aqui se lleno 
  (8, 3 , '734561-CB', 'Ramiro', 'Pedro', 'Medina', null, '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '345671-CB', 'Ramiro', 'Pedro', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '304561-CB', 'Ramiro', null, 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '345601-CB', 'Ramiro', 'Pedro', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '345061-CB', 'Ramiro', 'Pedro', 'Medina', null, '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '340561-CB', 'Ramiro', 'Pedro', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '304561-CB', 'Ramiro', 'Pedro', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '384561-CB', 'Ramiro', 'Pedro', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '364561-CB', 'Ramiro', null, 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '354561-CB', 'Ramiro', 'Pedro', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '344561-CB', 'Ramiro', 'Pedro', 'Medina', null, '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '345361-CB', 'Ramiro', null, 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '345621-CB', 'Ramiro', 'Pedro', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '314561-CB', 'Ramiro', null, 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '342561-CB', 'Ramiro', 'Pedro', 'Medina', null, '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1),
  (3, 3 , '345621-CB', 'Ramiro', 'Pedro', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', '', 'manuel', '1234', 1)
,








































































































































































































































































































































































































































































































































































