
use academia;

delimiter //
drop procedure if exists errores1//

create procedure errores1(p_codigo int, p_nombre varchar(50), p_precio decimal)
begin
	declare nombre_nulo bool;
	declare continue handler for 1062
		select concat("el codigo ", p_codigo, " ya existe");
        
	declare continue handler for 1048
		set nombre_nulo = true;
        
	insert into cursos values(p_codigo, p_nombre, p_precio);
    if nombre_nulo then
		insert into cursos values (p_codigo, "desconocido", p_precio);
	end if;
		select "he pasado por aqui";
end//

call errores1(45645, null, 9999)//
select * from cursos;









