use academia;

drop procedure if exists insert_curso;

delimiter //
create procedure insert_curso(p_codigo int, p_nombre varchar(50), p_precio decimal)
begin
	if p_precio < 100 then 
		insert into cursos values (p_codigo, p_nombre, 100);
	elseif p_precio > 300 then
		select "el precio no puede ser mayor a 300";
	else 
		insert into cursos values (p_codigo, p_nombre, p_precio);
	end if;
	
    

end//
delimiter ;

call insert_curso(1001, "curso1001", 9);
call insert_curso(2001, "curso2001", 909);
select * from cursos;

-- case

delimiter //
create procedure insert_curso(p_codigo int, p_nombre varchar(50), p_precio decimal)
begin
	case
    when p_precio < 100 then 
		insert into cursos values (p_codigo, p_nombre, 100);
	when p_precio > 300 then
		select "el precio no puede ser mayor a 300";
	else 
		insert into cursos values (p_codigo, p_nombre, p_precio);
	end case;
	

end//
delimiter ;


call insert_curso(1002, "curso1002", 9);
call insert_curso(2002, "curso2002", 909);
select * from cursos;

-- BUCLES LOOP 

drop procedure bucle_while;
delimiter //
create procedure bucle_while()
begin
	declare counter int;
    declare resultado varchar(50);
    
    set counter = 0;
    set resultado = "";
    
    while counter  <= 10 do
		set resultado = concat(resultado, "-", counter);
		set counter = counter +1;
    end while;
    select resultado;

end //

delimiter ;

call bucle_while;

-- bucle repeat 

drop procedure bucle_repeat;

delimiter //

create procedure bucle_repeat()
begin
	declare counter int;
    declare resultado varchar(50);
    
    set counter = 0;
    set resultado ="";
    
    repeat 
		set resultado = concat(resultado, "-", counter);
        set counter = counter +1;
	until counter = 11
		end repeat;
	select resultado;
end//

call bucle_repeat();



































