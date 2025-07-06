
select * from sakila.staff;
-- 1
select first_name, length(first_name) as "tamaño" from sakila.actor where length(first_name) >=10;
-- 2
select first_name, last_name from sakila.actor where length(first_name) =length(last_name);
-- 3
select concat(first_name, " ",last_name) as "nombre completo" from sakila.actor;
-- 4
select first_name, last_name, concat(substr(first_name,1,1), ".",substr(last_name,1,1)) as iniciales
from sakila.staff;
select first_name, last_name, concat(substr(first_name,1,1), ".",substr(last_name,1,1)) as iniciales
from sakila.actor;
-- 5
select first_name from sakila.staff where locate( "a", first_name) <> 0;
select first_name, locate( "a", first_name) from sakila.actor where locate( "a", first_name) <> 0;
-- 6
select first_name, substr(first_name, length(first_name), length(first_name)) as "ultima letra" from sakila.actor;
-- 7
select first_name, substr(first_name, length(first_name), length(first_name)) as "ultima letra" from sakila.actor
where substr(first_name, length(first_name), length(first_name)) in ("a", "e", "i", "o", "u");
-- 8
select first_name, substr(first_name, length(first_name), length(first_name)) as "ultima letra" from sakila.actor
where substr(first_name, length(first_name), length(first_name)) not in ("a", "e", "i", "o", "u");
-- 9
select first_name, last_name, email, substr(email, 1, locate("@", email -1)) from sakila.staff;
