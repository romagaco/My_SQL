use empresa;
-- left and right join 
-- ayuda  a saber informacion que no tenemos en las tablas
select departamentos.nombre, empleados.nombre, empleados.apellido
from departamentos inner join empleados
on departamentos.codigo = empleados.departamento;

-- en joins muy complejos podemos usar alias con la funcion AS
select D.nombre, E.nombre, E.apellido
from departamentos as D inner join empleados as E
on D.codigo = E.departamento;

select D.nombre, E.nombre, E.apellido
from departamentos as D left join empleados as E
on D.codigo = E.departamento;

select D.nombre, E.nombre, E.apellido
from departamentos as D right  join empleados as E
on D.codigo = E.departamento;