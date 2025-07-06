-- cursores 
use academia; 
drop procedure if exists leer_cursos;

delimiter //
create procedure leer_cursos()
begin
	declare fin bool;
    declare resultado text;
    declare cod_curso int;
    declare nombre_curso varchar (50);
    declare precio_curso decimal;
    
    declare cursor_cursos cursor for select * from cursos;
    
    declare continue handler for not found
		set fin = true;
		 OPEN cursor_cursos;
    set resultado = " ";
    bucle: loop
		fetch cursor_cursos into cod_curso, nombre_curso, precio_curso;
			if fin then
				leave bucle;
			end if;
		set resultado = concat(resultado, " ", nombre_curso);
    end loop;
    
     CLOSE cursor_cursos;
    select resultado;
    
    
end//

call leer_cursos()//














