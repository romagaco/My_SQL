use world;
select * from world.contabilidad;

-- 1. Obtener el importe total de venta de cada departamento
select  departamento, sum(importe) as "Totales" 
from world.contabilidad
group by departamento;
-- 2. obteber el total de gastos de cada departamento
select  * from world.contabilidad
where departamento like "Gastos%";
select departamento, sum(importe) as "Gasto"
from world.contabilidad
where cuenta_contable in("4200", "4300", "4400", "6300")
group by departamento;

-- 3. 
select cuenta_contable, count(*) as Numero_registros
from world.contabilidad
group by cuenta_contable;

-- 4. totla de ventas por mes
select departamento, month(fecha) as mes, sum(importe) as importe_total
from world.contabilidad
where departamento ="Ventas"
group by month(fecha);

-- 5. ventas por departamento y mes 
select departamento, month(fecha) as mes, sum(importe) as importe_total
from world.contabilidad
group by month(fecha), departamento;

-- 6. obtener numeor de registro de cada cuenta y mes
select cuenta_contable,  month(fecha) as mes, count(*) as numero_registros
from  world.contabilidad
group by cuenta_contable, month(fecha);

-- 7. ordenar de mayor a menor 
select departamento, month(fecha) as mes, sum(importe) as importe_total
from world.contabilidad
where departamento ="Ventas" 
group by departamento, month(fecha)
order by importe_total desc;

-- 8. numero registro ordenado amyora menor
select cuenta_contable,  month(fecha) as mes, count(*) as numero_registros
from  world.contabilidad
group by cuenta_contable, month(fecha)
order by numero_registros desc;




