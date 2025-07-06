show engines;
use world;
show create table city;
show table status where name = "city";

create schema motores;
create table T1(id INT, nombre varchar(100));
show table status where name = "T1";

create table T2(
id INT not null,
nombre varchar(100) not null
) engine = csv;

show table status where name = "T2";

show variables like "%datadir%";

create table T3(
id INT not null,
nombre varchar(100) not null
) ;

alter table t3 engine=csv;
show table status where name = "T3";

/*
tablas temporales, son tablas que estan presentas hasta que la
sesion se cierra, ademas que solo el ususario que las crea
puede visualizarlas 
*/

create temporary table temporal1(id INT, codigo varchar(100));
desc temporal1;
