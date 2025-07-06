-- crear tablas
-- create table ""
use dml;
create table proveedores(
cod_prov int,
nombre varchar(45),
direccion varchar(100),
fehca_alta date);
select * from dml.proveedores;

-- Alter table, permite añadir nuevas columnas, mod existentes,  borrar y añadir restri

-- añadir columna
alter table proveedores add Fecha_mod date;
desc proveedores;

-- borrar columna
alter table proveedores drop Fecha_mod;
desc proveedores;

-- Modificar existencias
alter table proveedores modify fehca_alta timestamp;
desc proveedores;

-- añadir en posicion especial 1
alter table proveedores add cod_producto int after cod_prov;
desc proveedores;

-- añadir en posicion especial 2
alter table proveedores add fecha_compra date first;
desc proveedores;

-- añadimos datos
insert into dml.proveedores values("2024-01-01", 1, 1, "Proveedor1", "Direccion1", now()),
	("2024-01-01", 2, 2, "Proveedor2", "Direccion2", now());

select * from dml.proveedores;
-- no nos permite hacer numeors ya que la tabla ya posee letras
alter table proveedores modify direccion decimal;












