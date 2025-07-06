-- null // case
-- forma incorrecta ->  select address, address2 from sakila.address where address2 = null;
select address, address2 from sakila.address where address2 is null;
select rental_id, rental_date, return_date from sakila.rental where return_date is not null;

select distinct name from sakila.category;
select name,
	case name
		when "Action" then "accion"
		when "Children" then "infantil"
		when "Comedy" then "comedia"
		when "Horror" then "horror"
		when "Sci-Fi" then "Ciencia ficcion"
		else "Otra categoria"
    end as categoria
    from sakila.category;
    
select * from sakila.payment limit 100;
select rental_id, amount,
	case
		when amount <= 0.99 then "barato"
        when amount between 1 and 4.99 then "Medio"
        when amount >= 4.99 then "Caro"
        else "Otro Valor"
	end as "precios"
    from sakila.payment;
    