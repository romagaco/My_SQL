
select Continent, country.name, city.name
from city inner join country
on countrycode = code
order by Continent;

select country.name, Continent, count(*) as Num_ciudades
from city inner join country
on countrycode = code
group by country.name, Continent
order by Continent;

use sakila;

select title, film.film_id, category_id
from film inner join film_category
on film.film_id = film_category.film_id
order by film.film_id;


select title, film.film_id, category.category_id, category.name
from film inner join film_category
on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
order by film.film_id;

