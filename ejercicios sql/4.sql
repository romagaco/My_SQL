-- CLAUSULA WHERE (CONDICIONES)
SELECT * FROM world.country limit 10;
-- filtrando con Where"" 
SELECT * FROM world.country where Continent="Asia" limit 10;
SELECT * FROM world.country where IndepYear > 1990;
SELECT * FROM world.country where IndepYear < 1900;
-- las letras tambien puede ser condicionadas
select * from world.country where Name > "y";

