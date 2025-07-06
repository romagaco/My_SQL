select current_date();
-- mostrar fecha hora en dos columnas 
select curdate(), curtime();
-- mostrar fehca hora junto
select now();
-- añadiendo timepo 
select curtime() as "hora actual", addtime(curtime(), 25*60) as "mas 25 minutos";
-- añadiendo dias 
select curdate() as "fecha actual", date_add(curdate(), interval 24 hour) as "24 horas";
-- 
select rental_date, date(rental_date) from sakila.rental;
select rental_date, monthname(rental_date) from sakila.rental where 
monthname(rental_date)  in ("May", "January") and year(rental_date)=2005;

select rental_date,
	case month(rental_date)
		when 1 then "Enero"
        when 2 then "Febrero"
        when 3 then "Marzo"
        when 4 then "Abril"
        when 5 then "Mayo"
        when 6 then "Junio"
        when 7 then "Julio"
        when 8 then "Agosto"
        when 9 then "Septiembre"
        when 10 then "Octubre" 
        when 11 then "Noviembre"
        when 12 then "Diciembre"
	end as "Mes"
    from sakila.rental;

select rental_date, monthname(rental_date), dayname(rental_date), year(rental_date)
from sakila.rental
where month(rental_date)=5 and dayname(rental_date) in ("saturday", "sunday") 
and year(rental_date)=2005;

select datediff(curdate(), "1998-03-01") as "Dias vividos";

select rental_date, adddate(rental_date, interval 45 Hour) as "Fecha devolucion" 
from sakila.rental;

select date_format(now(), "Fecha de factura: %w, dia %d del mes %M del año %Y") as factura;
