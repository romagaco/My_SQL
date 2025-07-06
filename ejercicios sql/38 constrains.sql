-- creamos una nueva base de datos
create schema restricciones;
use restricciones;

-- creamos tablas
create table tabla1(
Codigo INT not null,
Nombre varchar(50));

-- insertamos datos
insert into tabla1(Codigo) values(10);
insert into tabla1(Nombre) values("Juan"); -- error ya que codigo no puede ser nulo
select * from tabla1;

-- primary KEY
create table tabla2(
codigo int primary key,
Nombre varchar(50));

desc tabla2;
insert into tabla2(Codigo, nombre) values(1,"Juan");
-- no se pueden modificar ya que primary key no acepta duplicados
insert into tabla2(Codigo, nombre) values(1,"Juan");
select * from tabla2;

create table tabla3(
Cod_Alumno int auto_increment primary key,
Nombre varchar(50));

insert into tabla3(Nombre) values 
("Albereto"), ("Maria");

select * from restricciones.tabla3;

create table tabla4(
Cod_Alumno int auto_increment primary key,
Nombre varchar(50));

alter table tabla4 auto_increment = 100;

insert into tabla4(Nombre) values 
("Albereto"), ("Maria");

select * from restricciones.tabla4;

create table tabla5(
Codigo int,
Cod_proveedor INT,
Producto varchar(50),
primary key (Codigo, Cod_proveedor));

select * from restricciones.tabla5;

insert into tabla5(Codigo, Cod_proveedor, Producto) 
values (1,003,"tijeras");

insert into tabla5(Codigo, Cod_proveedor, Producto) 
values (1,004,"vasos");

insert into tabla5(Codigo, Cod_proveedor, Producto) 
values (2,003,"lapices");

create table alumnos_default(
codigo int auto_increment primary key,
Nombre varchar(50),
pais varchar(50) not null default "España",
fecha_alta date  not null default(curdate())
);

insert into alumnos_default(nombre) values ("Mario");
select * from alumnos_default;
insert into alumnos_default(nombre, pais) values ("Maria", "colombia"),
("Roberto", "Guatemala");