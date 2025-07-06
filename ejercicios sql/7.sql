create database dates;
use sys;
select * from sys.fechas;
-- select * from sys.fechas where fecha>"2021-10-01";
-- select * from sys.fechas where fecha_hora = "2022-10-28 22:24:19";
-- select * from sys.fechas where tiempo >"9:30:00";
-- select * from sys.fechas where anio="2012";
-- select * from sys.fechas where anio between"2001" and "2012";
-- select * from world.country where IndepYear between 1939 and 200;

select * from sys.fechas where fecha between "2022-01-01" and "2023-12-01";
select * from world.country where name like "a%a";
select * from world.country where IndepYear in (1941, 1965, 1956);
