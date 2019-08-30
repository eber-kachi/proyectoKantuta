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
  (idCargo, idEstadoCivil, Ci, primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno, fechaNacimiento, codeRFID, genero, fotografia, numeroCelular, numeroFijo, usuario, contrasenia, activo)
values(1, 2, '34653-CB', 'Manuel', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'busfdv21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (2, 2 , '34363-CB', 'Mauricio', 'Andres', 'Zespedes', 'Catari', '1991-03-20', 'bsusdv21', 'M', 'Foto', '7587641', '4390769', 'mauricio', '1234', 1),
      (3, 2 , '34563-CB', 'Roca', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'busadv21', 'M', 'Foto', '7523641', null, 'roca', '1234', 1),
      (4, 1 , '34556-CB', 'Filomon', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'bucssdv21', 'M', 'Foto', '7523641', null, 'filomon', '1234', 1),
      (3, 3 , '34587-CB', 'Mario', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'bussd2v21', 'M', 'Foto', '7523641', null, 'mario', '1234', 1),
      (4, 1 , '34509-CB', 'Abel', 'Carlos', 'Medrano', 'Flores', '1972-03-05', 'busadvc21', 'M', 'Foto', '7523641', null, 'abel', '1234', 1),
      (3, 3 , '34504-CB', 'Araceli', null, 'Claros', 'Medina', '1988-02-05', 'busdvs2c1', 'F', 'Foto', '7523641', null, 'araceli', '1234', 1),
      (3, 2 , '34593-CB', 'Roberto', null, 'Paniagua', 'Zapata', '1972-06-05', 'bussdv21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 2 , '34594-CB', 'Rolando', null, 'Perez', 'Morales', '1992-12-05', 'abausdv21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '34561-CB', 'Ramiro', 'Pedro', 'Medina', 'Merida', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),

      (3, 3 , '354561-CB', 'Antonio', 'Juan', 'Barrioso', null, '1992-10-05', 'abaus2dva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '345561-CB', 'Albert', null, 'Alabe', 'Claros', '1982-10-05', 'abau2sdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (4, 3 , '345561-CB', 'Deyni', 'Juan', 'Nina', 'Miranda', '1992-10-05', 'aba3usdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (8, 3 , '345761-CB', 'Denis', 'Rene', 'Feliciano', null, '1992-10-05', 'aba2usdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (8, 3 , '345661-CB', 'Eber', 'Pedro', 'Carmelo', 'Megia', '1982-10-05', 'abau3sdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (8, 3 , '345671-CB', 'Edgardo', null, 'Sanches', 'Medoza', '1982-10-05', 'aba3us3dva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (8, 3 , '374561-CB', 'Ernesto', 'Pedro', 'Mejia', null, '1992-10-05', 'abausd3va21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (8, 3 , '334561-CB', 'Gabo', 'Pedro', 'Morales', 'Uruquipa', '1982-10-05', 'ab3ausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (8, 3 , '343561-CB', 'Rogelio', 'Juan', 'Mendoza', 'Constancia', '1982-10-05', '2abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (8, 3 , '345631-CB', 'Rolando', null, 'Merida', 'Flores', '1992-10-05', 'abausdva215', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (8, 3 , '314561-CB', 'Ronal', 'Pedro', 'Nuñes', null, '1982-10-05', 'abausd5va21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (8, 3 , '345611-CB', 'Rodrigo', 'Rene', 'Nueva', 'Saniso', '2002-10-05', 'ab5ausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (8, 3 , '314561-CB', 'Rosendo', 'Pedro', 'Miranda', null, '2000-10-05', 'a5b5ausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (8, 3 , '342561-CB', 'Rompe', 'Rene', 'MiraFlor', 'Tapia', '1992-10-05', 'abau24sdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (8, 3 , '324561-CB', 'Marco', null, 'Goni', 'Tarqui', '1992-10-05', '2ab4ausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (8, 3 , '234561-CB', 'Marcelo', 'Pedro', 'Carros', 'Moreno', '1982-10-05', '44abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
    

      (8, 3 , '7345612-CB', 'Rojelio', null, 'Gomez', null, '1992-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3456721-CB', 'Mateo', null, 'Gonzales', 'Cacerez', '1987-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3045261-CB', 'Alvaro', null, 'Fernandez', 'Figueroa', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3452601-CB', 'David', null, 'Lopez', 'Cordoba', '1987-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3425061-CB', 'Adrian', null, 'Diaz', null, '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3240561-CB', 'Wilson', null, 'Martinez', 'Paz', '1997-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3304561-CB', 'Martin', null, 'Romero', 'Rivero', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3834561-CB', 'Nicolas', null, 'Ruiz', 'Miranda', '1987-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3643561-CB', 'Miguel', null, 'Alvares', 'Cruz', '1995-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3545361-CB', 'Lucas', null, 'Herrera', 'Lucero', '1985-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3445631-CB', 'Jacob', null, 'Pereyra', null, '1992-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3453613-CB', 'Simon', null, 'Molida', 'Moyano', '1982-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3456214-CB', 'Gabriel', null, 'Ortiz', 'Zoto', '1985-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3145641-CB', 'Antony', null, 'Luna', 'Valdez', '1985-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3425461-CB', 'Sisy', null, 'Rios', null, '1996-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1),
      (3, 3 , '3454621-CB', 'Andrea', null, 'Moreno', 'Bravo', '1996-10-05', 'abausdva21', 'M', 'Foto', '7523641', null, 'manuel', '1234', 1);
    -- falta hasta aqui se lleno 








































































































































































































































































































































































































































































































































































