use academia; 

-- 1.  Crea un procedimiento llamado “cursos_asignaturas”para visualizar los cursos y sus
-- asignaturas respectivamente. Ordénalo por cursos
drop procedure if exists cursos_asignaturas;
delimiter //

create procedure cursos_asignaturas()
begin
	select cursos.nombre, asignaturas.nombre from cursos 
    inner join asignaturas on asignaturas.cod_curso = cursos.cod_curso
    order by cursos.nombre;
    
end//

call cursos_asignaturas() //


-- 2. Crea un procedimiento llamado “actualizar_precio”, que reciba como parámetro el
-- código del curso y el precio que se le va a asignar a ese curso. Se debe controlar
-- que el precio sea mayor que 100. Si no se cumple, se fija el precio a 100.
delimiter //
drop procedure if exists actualizar_precio//

create procedure actualizar_precio(p_codigo int, p_precio decimal)
begin
	if p_precio < 100 then
		set p_precio = 100;
	end if;
    
    update cursos set precio = p_precio where cod_curso = p_codigo;
    

end //


call actualizar_precio(4, 50)//
call actualizar_precio(8, 200)//
select * from cursos//

-- 3. Crea un procedimiento llamado “profesores_cursos” para visualizar los cursos de
-- cada profesor. Debe recibir un parámetro que sea el nombre del profesor para ver
-- las asignaturas.

drop procedure if exists profesores_cursos//

create procedure profesores_cursos(p_nombre varchar(50))
begin
	select * from cursos inner join asignaturas on cursos.cod_curso = asignaturas.cod_curso
		inner join profesores on asignaturas.cod_profesor = profesores.cod_profesor
			where profesores.nombre = p_nombre;

end//

call profesores_cursos("Dreddy")//
call profesores_cursos("Andi")//

-- 4. Crea un procedimiento llamado “nombre_completo” que devuelva una SELECT con
-- el nombre y el apellido de un alumno. Debe recibir el parámetro de entrada del
-- código del alumno.

drop procedure if exists nombre_completo// 

create procedure nombre_completo(p_codigo_alumno int)
begin
	select concat(nombre, " ", apellidos) from alumnos
		where cod_alumno = p_codigo_alumno;

end//

call nombre_completo(8)//
call nombre_completo(5)//

-- 5. Modificar el procedimiento anterior (crea uno nuevo con otro nombre) para que el
-- resultado se almacene en una variable de tipo OUT. Para ver que ha funcionado,
-- visualiza la variable.

set @resultado = "";

drop procedure if exists nombre_completovar//

create procedure nombre_completovar (p_codigo int, out salida varchar(100))
begin
	select concat(nombre, " ", apellidos)
    from alumnos
    where cod_alumno = p_codigo;

end//

call nombre_completovar(1, @resultado)//

-- 6. Crea un procedimiento llamado “devolver_mayus” con un argumento de tipo INOUT.
-- El parámetro debe ser una cadena de texto que se devuelva en mayúsculas.
drop procedure if exists devolver_mayus//

set @mayus = "Soy alumno de conquer blocks"//
create procedure devolver_mayus(inout p_texto varchar(150))
begin
	select concat("el texto", p_texto, " en mayuscula es: ", upper(p_texto))into p_texto;

end//

call devolver_mayus(@mayus)//
select @mayus;


-- 7. Crea un procedimiento llamado “devolver_datos” que reciba como parámetro de
-- entrada el código del curso, y que devuelva en dos variables de tipo OUT el nombre
-- y el precio. Visualiza el resultado para ver que ha salido correctamente.


drop procedure if exists devolver_datos//

set @nombre_curso = " "//
set @precio = 0//

create procedure devolver_datos(p_codigo int, out p_nombre varchar(50), out p_precio decimal)
begin
	select nombre, precio into p_nombre, p_precio
    from cursos
    where cod_curso = p_codigo;
end//

call devolver_datos(8, @nombre_curso, @precio_curso)//

select @nombre_curso, @precio_curso//






