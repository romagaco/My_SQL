-- como iniciamos una transaction 

use academia;

start transaction;
delete	from notas_alumnos where cod_alumno > 4;
insert	into alumnos values(990, "xxxxx", "xxxxx", "xxxx@gmail.com", 20,2);
insert into notas_alumnos values(990, 2,1,0);
Commit; 

select *from alumnos; 
select *from notas_alumnos; 

-- despues del commit un rollback no deshace lo ejecutado