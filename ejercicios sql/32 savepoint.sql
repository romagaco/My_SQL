-- save points son puntos de guardado

use academia;

start transaction;
	delete	from notas_alumnos where cod_alumno = 990;
	insert	into alumnos values(999, "xxxxx", "xxxxx", "xxxx@gmail.com", 20,2);
	insert into notas_alumnos values(999, 2,1,0);

	savepoint paso2;

	update alumnos set Apellidos = "prueba";

select * from alumnos;
rollback to paso2;
select * from alumnos; 