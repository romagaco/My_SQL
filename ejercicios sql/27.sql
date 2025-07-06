
select * from practica_2.emple where apellido like "%o";
select * from practica_2.emple where apellido like "%o" and salario > 1000;

use academia;
 select cursos.nombre, count(alumnos.cod_curso) as num_alumnos from (select * from cursos where cod_curso between 1 and 5) as cursos
 inner join alumnos on cursos.cod_curso = alumnos.cod_curso
 group by cursos.nombre;
 
 select * from academia.alumnos;
 
 select nombre from academia.cursos where cod_curso in (1,2,3,4,5);
 select cod_curso, count(*) as num_alumnos from academia.alumnos group by cod_curso;
 


