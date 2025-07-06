show variables like "autocommit";
set autocommit = 0;

use academia;

delete from alumnos where cod_alumno =1;
delete from Notas_alumnos where cod_alumno = 1;
select * from alumnos;

rollback;
select * from alumnos;

delete from notas_alumno where cod_alumno >4;
insert into alumnos values (990, "xxxxxx", "xxxx", "xxxx@gmail.com", 20, 2 );
insert into notas_alumnos  values (990, 2, 1, 0);
select * from alumnos;

rollback;  