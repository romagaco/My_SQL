use sakila;

-- extarer y calcular cantiad de actores por cada pelicula
select title,  f.film_id, count(factor.film_id) as Numero_Actores
from film as f left join film_actor as factor
on factor.film_id = f.film_id
group by f.film_id;

select * from inventory;

select film_id, store_id, count(*) as catidad
from inventory
group by film_id, store_id
order by film_id, store_id;

select * from film where film_id=1;

select title, count(*) as cantidad
from inventory right join film
on inventory.film_id = film.film_id
group by title
having title = "ACADEMY DINOSAUR";

