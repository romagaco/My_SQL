use empresa;
select * from empresa.directores; 
-- 1
select nombrecompleto, dni from empresa.directores;
-- 2
select nombrecompleto, dni from empresa.directores where dnijefe is null;
-- 3
select despacho, count(*)  as Numero_directores from empresa.Directores
group by despacho; 

select codigo, count(dni) from empresa.despachos left join empresa.directores
on despachos.codigo = directores.despacho
group by codigo;

select NombreApellidos, proyecto, nombre from
centro_investigacion.cientificos as c inner join 
(centro_investigacion.asignado_a as a inner join centro_investigacion. proyecto as p
on a.Proyecto = p.id)
on a.Cientifico=c.dni;

select NombreApellidos, dni, count(proyecto)
from centro_investigacion.cientificos left join centro_investigacion.asignado_a
on cientifico = dni
group by NombreApellidos, dni;

select id, nombre, count(proyecto) from
centro_investigacion.proyecto left join centro_investigacion.asignado_a
on id  = proyecto
group by id, nombre;

select NombreApellidos, DNI, sum(horas) from centro_investigacion.cientificos as c left join
(centro_investigacion.asignado_a as a inner join centro_investigacion.proyecto as p
on p.id = a.proyecto)
on c.DNI = A.cientifico
group by DNI, NombreApellidos;

-- ---------------
select * from empresa.directores;














