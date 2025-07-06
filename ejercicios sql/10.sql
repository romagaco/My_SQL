-- tabla 1 
-- tabla 1.1
select Name,Continent, Population from world.country where (Continent = "Asia" and 
Population > 20000000);
-- tabla 1.2
select Name,Continent from world.country where 
Continent = "Africa" or Continent = "Asia";
-- tabla 1.3
select Name,Continent from world.country where 
(Name like "B%" and Continent = "Africa");
-- tabla 1.4
select Name, Continent, LifeExpectancy from world.country where
(Continent = "Europe") and (LifeExpectancy between 75 and 85);
-- tabla 1.5
select Name, GovernmentForm from world.country where 
(GovernmentForm = "Monarchy" or GovernmentForm = "Republic");
-- tabla 1.6
select Name,Continent,GovernmentForm,IndepYear from world.country where
(Continent = "Africa" and IndepYear > 1950 and GovernmentForm = "Republic");

-- tabla 2
use sakila;
-- tabla 2.1
select first_name,last_name from sakila.actor where 
not first_name = "Tom" and not first_name = "John";
-- tabla 2.2
select title,rating, language_id from sakila.film where 
rating = "PG" and language_id = 1;
-- tabla 2.3
select title, rating from sakila.film where
(rating = "PG" or rating = "G");
-- tabla 2.4
select rental_date from sakila.rental where 
rental_date < "2005-05-28" or rental_date > "2006-01-01"; 
-- tabla 2.5
select first_name, last_name from sakila.customer where 
first_name like "A%";

select * from sakila.customer;
select * from sakila.address;

select Name, GovernmentForm from world.country where 
(GovernmentForm like "Monarchy%" or GovernmentForm = "Republic");