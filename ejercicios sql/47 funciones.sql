/* Funciones 
igual a un procedimiento pero a difertencia estas siempre devuelven un valor
se pueden usar en cualquier consulta
*/
use academia; 

drop function calcula_iva;

delimiter //

create function calcula_iva(p_codigo int)
returns decimal reads sql data
begin
	declare precio_total decimal;
		select precio + (precio*0.21) into precio_total 
			from cursos where cod_curso = p_codigo;
    
    return precio_total;

end//

delimiter ;

select calcula_iva(1);

select *, calcula_iva (cod_curso) as precio_final from cursos;
