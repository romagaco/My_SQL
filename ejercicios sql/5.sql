select * from sakila.actor limit 5; -- 1
select address, district from sakila.address where district="Texas"; -- 2
select * from sakila.payment where amount > 11; -- 3
select * from sakila.actor where first_name = "Penelope"; -- 4
select * from sakila.actor where first_name = "PeNelope"; -- 4
select * from sakila.actor where first_name = "PenelopE"; -- 4
select * from sakila.actor where binary first_name = "Penelope"; -- 5
select first_name, last_name from sakila.customer where active = 0; -- 6
select first_name, last_name from sakila.customer where active = false; -- 7 yes
select first_name,last_name,active from sakila.customer where active; 
select first_name,last_name,active from sakila.customer where !active; 

use sakila;
select address, district from sakila.address where district =  "Texas";
select * from sakila.payment where amount > 11;
select * from sakila.actor where first_name = "Penelope";
select * from sakila.actor where first_name = "pEnElope";
select * from sakila.actor where binary first_name = "PENELOPE";
select * from sakila.customer where active=false;
