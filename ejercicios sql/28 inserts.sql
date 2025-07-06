use dml;
SELECT * FROM DML.ESTUDIANTES;

-- iNSERT > COMANDO, nos permite insertar  filas
-- sintazis Insert into tabla (c1,c2) values (v1,V2);

Insert into Estudiantes  (Codigo, Nombre, Edad, Fecha_matricula) values (1, "Juan", 23, "2024-01-25");
SELECT * FROM DML.ESTUDIANTES;
Insert into Estudiantes  (Codigo, Nombre, Edad, Fecha_matricula) values (2, "Maria", 20, "2024-01-26");
SELECT * FROM DML.ESTUDIANTES;
-- si respetamos el orden de las columnas no es necesario llamar las comlumnas ejemp: 
Insert into Estudiantes values (3, "Paco", 30, "2024-01-30");
Insert into Estudiantes  (nombre, Fecha_matricula, codigo, edad) values ("PEdro", "2024-01-11", 4, 26);

Insert into Estudiantes  (Codigo, Nombre, Fecha_matricula) values (5, "Alejandro", "2024-01-26");
SELECT * FROM DML.ESTUDIANTES;
Insert into Estudiantes  (Codigo, Nombre, edad, Fecha_matricula) values (6, "Sergio", null,  "2024-01-27");

-- inserts  multiples 1 
Insert into Estudiantes  (Codigo, Nombre, edad, Fecha_matricula) values 
(7, "rosa", 24, "2024-01-12"),
(8, "rene", 26, "2024-01-08"),
(9, "Luis", 30, "2024-01-03");

-- inserts  multiples 2 Copiamos los datos de una tabla a otra
insert into alumnos select * from Estudiantes where edad is not null;
select * from dml.alumnos;




