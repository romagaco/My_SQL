-- Update  comando que nos permite actualizar datos existentes
-- sintaxis
-- Update tabla
--		set col1 = valor, col2 = val2 ....
-- 		where "Condicion"  una condicion para que no se nos 
--      actualicen todos los valores la tabla
use dml;

select * from dml.estudiantes;
update estudiantes 
	set nombre="Pedro" where codigo=4;
    
select * from dml.estudiantes;
update estudiantes 
	set nombre="Juan Luis" where codigo=1;
    
select * from dml.estudiantes;

select * from dml.estudiantes;
update estudiantes 
	set edad=40 where Fecha_matricula="2024-01-11";
select * from dml.estudiantes;


-- delete nos sirve para borrar datos
-- delete from tabla where "condicion"

delete from estudiantes where codigo = 9;
select * from dml.estudiantes;

-- Replace nos sirve para reemplazar datos de la fila
-- replace into table (c1,c29 values (v1,v2)

replace into estudiantes (codigo, nombre, edad, Fecha_matricula) values
(6, "Manuel", 33, "2024-01-14");
select * from dml.estudiantes;

replace into estudiantes (codigo, nombre, edad, Fecha_matricula) values
(9, "Ismael", 33, "2024-01-30");
select * from dml.estudiantes;