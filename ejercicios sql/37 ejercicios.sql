use academia;

create table servidores
(Cod_sevidor int,
nombre varchar(50),
marca varchar(50),
memoria INT,
disco INT,
precio decimal(7,2),
cpus INT,
fecha_entrada date
);

select * from academia.servidores;

-- nueva columna
alter table servidores add descuento int;
select * from academia.servidores;

-- insertar filas
insert into servidores values
(1, "server1", "hp", 1000, 12000, 500.5, 2, curdate(), 20),
(2, "server2", "hp", 1000, 15000, 550.5, 2, curdate(), 10),
(3, "server3", "dell", 1200, 22000, 600.70, 2, curdate(), 40),
(4, "server4", "envidia", 1500, 12000, 800.0, 2, curdate(), 50);

select * from academia.servidores;

-- modificamos descuento a character
alter table servidores modify descuento varchar(2);

-- modificamos descuento a int de regreso
alter table servidores modify descuento INT;

-- modificamos marca a int
alter table servidores modify marca INT; -- no se peude ya que ya 
-- tenemos caracteres en las tablas

-- modificamos lalongiud de una columna a un vaslor menor
alter table servidores modify marca varchar(30);

-- cambariar coluna descuento apra que este a la par de precio
alter table servidores modify descuento int after precio;
select * from academia.servidores;

-- modificar marca y nombre a varchar 75 y el cod servidor
alter table servidores modify
nombre varchar(75), modify marca varchar(75) after cod_servidor;
select * from academia.servidores;

-- cambiar columna disco a almacenameinto 
alter table servidores change column disco almacenamiento int;
select * from academia.servidores;

-- boorar fecha de compra
alter table servidores drop fecha_entrada;
select * from academia.servidores;

-- generar precio servidor 
alter table servidores add precio_servidor decimal(7,2) 
generated always as (precio-(precio*descuento/100));
select * from academia.servidores;

-- insetamos fila
insert into servidores(Cod_sevidor, nombre, marca, memoria, almacenamiento, precio, descuento, cpus) 
values(3, "hp", "server3", 1000,14000,700,30,4);
select * from academia.servidores;
desc servidores;


alter table servidores add datos_servidor varchar(150) 
generated always as (UPPER(concat(nombre, "-", marca))) after nombre;
select * from academia.servidores;

rename table servidores to servidor;

-- mueve la base de datos
rename table servidor to dml.servidor;

drop table dml.servidor;









