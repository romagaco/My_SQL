use empresa;
-- a
select * from empresa.almacenes;
-- b
select * from empresa.cajas where valor > 50;
-- c
select distinct contenido from empresa.cajas;
-- d 
select avg(valor) as valor_promedio from empresa.cajas; 
-- e
select a.lugar, avg(c.valor) as valor_promedio from empresa.cajas as c inner join empresa.almacenes as a
on a.Codigo = c.Almacen
group by a.lugar;
-- f
select c.numReferencia, a.lugar from empresa.cajas as c inner join empresa.almacenes as a
on a.codigo = c.almacen;
-- g 
select lugar, count(numReferencia)
from empresa.almacenes as a left join empresa.cajas as c
on a.codigo = c.almacen
group by(a.Codigo);
-- H alter
select numreferencia
from almacenes left join cajas
on codigo = almacen
where lugar = "Almacen N";





