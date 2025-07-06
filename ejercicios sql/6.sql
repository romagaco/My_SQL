select title, length from sakila.film where length between 120 and 130;
select rental_id, rental_date from sakila.rental where rental_date between "2006-02-01" and "2006-02-28";
select first_name from sakila.actor where first_name between "B" and "D";


select first_name from sakila.actor where first_name like "b%a";
select last_name from sakila.customer where last_name like "ma%";
select first_name, last_name from sakila.customer where last_name like "%th%";
select last_name from sakila.customer where last_name like"_A_E%";

select first_name, last_name from sakila.actor where first_name in ("sara", "fred", "sandra", "ed", "helen");
select title, rental_rate from sakila.film where rental_rate in (2.99, 4.99);
select special_features from sakila.film;
select title, special_features from sakila.film where special_features in ("Deleted Scenes", "Commentaries");

