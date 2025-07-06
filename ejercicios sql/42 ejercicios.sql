use academia;
select * from cursos;
select * from alumnos;
select * from asignaturas; 
-- 1. Crea una vista llamada ‘cursos_precio_alto’ con los cursos cuyo 
--  precio sea superior a 150
create view cursos_precio_alto as select * from academia.cursos
where precio > 150; 
select * from cursos_precio_alto;

-- 2. Crea una vista llamada ‘cursos_alumno’ que tengan las columnas
-- nombre del curso y nombre del alumno. Tiene que aparecer el 
-- alumno y sus cursos
drop view cursos_alumnos;
create view cursos_alumnos(alumno_nombre, curso_nombre) as 
select alumnos.nombre, cursos.nombre from alumnos join cursos on 
alumnos.cod_curso= cursos.cod_curso; 
select * from cursos_alumnos;

-- 3. Crea una vista llamada ‘asignaturas_curso’ en la que aparezcan los cursos con
-- las asignaturas que tienen. En este caso las columnas se llamarán
-- “Asignatura” y “curso”. Los nombres de las columnas deben ser creadas en la
-- declaración de la vista. También debe estar ordenado por el nombre del curso.

create or replace view Asignaturas_curso( Curso, Asignatura) as 
select cursos.nombre, asignaturas.nombre from cursos join asignaturas on 
cursos.cod_curso= asignaturas.cod_curso
order by cursos.nombre; 
select * from Asignaturas_curso;

-- 4. Intenta insertar un nuevo curso a través de la vista ‘cursos_precio_alto’
insert into  cursos_precio_alto values (20, "CURSO20", 250);
select * from cursos_precio_alto;

-- 5. Intenta hacer lo mismo con ‘asignaturas_curso’
insert into asignaturas_curso values ("Curso30", "Musica");

-- 6. ¿Y si le ponemos todas las columnas de las tablas asignaturas y cursos?
insert into asignaturas_curso values (cursos.cod_curso, cursos.nombre, cursos.precio, asignaturas.cod_asignatura,
asignaturas.nombre, asignaturas.cod_curso, asignaturas.cod_profesor, asignaturas.duracion) 
no se peude



-- 7. Vamos ahora a probar el Check Option. Vamos a insertar una fila en la vista
-- “cursos_precio_alto” que sea de un curso que no cumpla la condición (precio
-- > 150) ¿funciona?   NOOOo
create or replace view cursos_precio_alto as select * from academia.cursos
where precio > 150
WITH CHECK OPTION;
select * from cursos_precio_alto;

insert into  cursos_precio_alto values (20, "CURSO20", 140)