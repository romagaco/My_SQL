
use empresa;
-- A obtener nombre de los articulos
select codigo, nombre from empresa.articulos;
-- B   obtener nombre de los articulos y su precio
select codigo, nombre, precio from empresa.articulos;
-- C articulos unicos de precio menor 20
select codigo, nombre, precio from empresa.articulos
where precio <=20;
-- D articulos unicos de precio entre 60 y 120
select codigo, nombre, precio from empresa.articulos
where precio between 60 and 120
order by precio desc;
-- E calcular rpecio medio 
select  AVG(precio) precio_medio from empresa.articulos;
-- F cacular por frabricante
select  Fabricante, avg(precio) precio_medio 
from empresa.articulos inner join empresa.fabricantes
on fabricantes.codigo = articulos.fabricante
where  fabricantes.codigo = 3; 
-- G 
select count(*) as Articulos from empresa.articulos
where precio <=160; 
-- H 
select a.nombre, f.nombre
from empresa.articulos as a inner join empresa.fabricantes  as f
on a.fabricante = f.codigo;
-- I - J
select  f.nombre, avg(precio) as Precio_Medio
from empresa.articulos as a inner join empresa.fabricantes  as f
on a.fabricante = f.codigo
group by f.nombre;
-- K
select  f.nombre, avg(precio) as Precio_Medio
from empresa.articulos as a inner join empresa.fabricantes  as f
on a.fabricante = f.codigo
group by f.nombre
having Precio_Medio >= 100;

select nombre, precio
from empresa.articulos
order by precio asc
limit 1; 