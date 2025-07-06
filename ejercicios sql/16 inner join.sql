
-- inner join 
-- inner join con where
select city.name, country.name
from world.city, world.country
where city.CountryCode = country.Code;

-- inner join  con  inner join 

select city.name, country.name
from world.city inner join world.country
on city.CountryCode = country.Code;

select nombre_ciudad, nombre_pais
from (
select name as nombre_ciudad, CountryCode
from world.city) city
inner join
(select name as nombre_pais, code
from world.country) country

on city.CountryCode = country.Code;
