--------
-- 1 crear tabla
use restricciones;
create table Fabricante
(Codigo INT auto_increment primary key,
	Nombre varchar(50) not null,
	Apellidos varchar(50),
	Edad int,
	fecha_alta date);

select * from restricciones.Fabricante;

-- 2 revisamos propiedades
	desc restricciones.Fabricante;

-- 3 agrgar valores a la tabla
	insert into restricciones.Fabricante(nombre, apellidos, edad, fecha_alta)
	values ("Roberto", "Corona", 24, "2024-01-01"),
	("Moncho", "Corona", 5, "2024-01-05"), ("Negrita", "Corona", 4, "2024-01-15");
	select * from restricciones.Fabricante;

-- 4 Modificar el campo AUTOINCREMENT para que comience ahora desde 1000
	alter table Fabricante auto_increment = 1000; 

-- 5. Insertar otro par de filas para omprobar el resultado
	insert into restricciones.Fabricante(nombre, apellidos, edad, fecha_alta)
	values ("chiquita", "Corona", 16, "2024-01-14"),
	("marly", "Corona", 17, "2024-01-30"), ("pelusa", "Corona", 8, "2024-01-15");
	select * from restricciones.Fabricante;

-- 6. Crear una clave única a nivel de TABLA para las columnas nombre y apellidos.
-- La llamamos nombre_completo.
	alter table fabricante add constraint Nombre_completo1 unique key
    (nombre,apellidos);

-- 7. Hacer un DESC para comprobar el resultado. Debe poner MUL para indicar que
-- es una clave múltiple.
	desc restricciones.Fabricante;

-- 8. Comprobar las constraints de la tabla con
-- “information_schema.table_constraints
select * from information_schema.table_constraints where table_name="fabricante" and 
table_schema="restricciones";

-- 9. Crear una tabla llamada “TANQUES” con la siguiente estructura y después
-- comprobar con DESC:

	CREATE TABLE tanques(
		Codigo int auto_increment primary key,
		Nombre varchar(50) not null,
		Pais varchar(50) not null default "desconocido",
		Longitud INT not null default 0,
		Peso int default 5600,
		peso_armado int
		);

	desc restricciones.tanques;

-- 10. Añadir las siguientes filas y comprobar que se han insertado:

	insert into tanques (nombre,pais,longitud,peso,peso_armado) values
	('Lepoard A','Alemania',9.67,62000,65000);
	insert into tanques (nombre,pais,longitud,peso,peso_armado) values
	('Lepoard E','España',9.67,62000,65000);
	insert into tanques (nombre,pais,longitud,peso,peso_armado) values
	('T-90M','Rusia',9.63,46000,48000);
	insert into tanques (nombre,pais,longitud,peso,peso_armado) values
	('Leclerc','Francia',10.6,56000,73000);
	insert into tanques (nombre,pais,longitud,peso,peso_armado) values
	('Merkava Mk.4','Israel',9.04,65000,73000);

	select * from restricciones.tanques;

DELETE FROM tanques WHERE codigo = 6;
-- 11. Añadir una constraint de tipo UNIQUE en la columna “nombre_tanque”

alter table tanques add constraint nombre_tanque unique(nombre);

select * from information_schema.table_constraints where table_name="tanques" and 
table_schema="restricciones";

-- 12. error
	insert into tanques (nombre,pais,longitud,peso,peso_armado) values
	('Merkava Mk.4','Israel',9.04,65000,73000);

-- 13 default
	insert into tanques(Nombre, peso_armado) values("ejercicio1", 300000);
	select * from restricciones.tanques;

-- 15 cambair valor defualts

alter table tanques alter longitud set default 9;
	insert into tanques(Nombre, peso_armado) values("ejercicio3", 450000);
	select * from restricciones.tanques;



alter table tanques add constraint control_peso check (peso<peso_armado);
select * from information_schema.table_constraints where table_name="tanques" and 
table_schema="restricciones";


create table paises(
nombre_pais varchar(50) primary key,
descripcion varchar(150));

alter table tanques add constraint FkEY1 foreign key(pais) references paises(nombre_pais);

insert into paises (nombre_pais) values ("Alemania"), ("España") ,("Rusia"), ("Francia"), ("Israel"), ("desconocido");
alter table tanques add constraint FkEY1 foreign key(pais) references paises(nombre_pais);

alter table tanques drop constraint control_peso;

alter table tanques alter longitud drop default;











