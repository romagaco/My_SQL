-- sub consultas where
-- dos sub consultas 
use world;

select Name, Population from world.country 
where Population = ( select max(Population) from world.country)  
or  
Population = (select min(Population) from  world.country where Population > 0);

-- columna referencial
select name, Continent, population
from country as paises
where population = (select max(population) from country where 
continent = paises.continent and population >0);

-- sobconsuilta con otras tablas 
select name from city where countrycode =
(select code from country where name ="United States");

-- operadores IN, any y all 
select * from country where continent in ("Asia", " Africa");

-- extaer paises que pertenecen a africa
select name
from city
where countrycode in  (select code from country where continent = "Africa" );

-- paises que pertenecen a españa y argentia 
select name
from city
where countrycode in  (select code from country 
where name = "Brazil" or name = "China");


select name
from city
where countrycode in  (select code from country 
where name in ( "Spain" ,"Argentina"));

select name
from city
where countrycode in  (select code from country 
where Continent in ("Europe", "Asia"));

-- / ANY  comprar contra 3 valores, devuelve verdadero si uno de los 3 se cumple
-- / ALL comprar contra 3 valores, devuelve verdadero si los 3 se cumplen
-- ejemplos

-- Paises que tienen mas esperanza de vida que cualquier pais de asia 
select Name, Continent, LifeExpectancy from country
where LifeExpectancy > any(select LifeExpectancy from country 
where Continent = "Asia")
order by LifeExpectancy;

-- paises que tienen mas esperanza DE VIDA QUE TODOS LOS PAISES DE ASIA
select Name, Continent, LifeExpectancy from country
where LifeExpectancy > ALL(select LifeExpectancy from country 
where Continent = "Asia")
order by LifeExpectancy;

-- PAISES CON MAS POBOACION QUE CUALQUIER PAIS DE AFRICA

SELECT Name, Continent, Population from country
where Population > any(select Population from country where Continent ="Africa");

-- PAISES CON MAS POBOACION QUE todos PAIS DE AFRICA
SELECT Name, Continent, Population from country
where Population > all(select Population from country where Continent ="Africa");


/*    
exist - comprueba la existencia de alguna fila en la subcosulta 
not exist comprueba la no existencia de alguna fila en la subcosulta 
*/

-- ciudades con esperanza de vida mayor 80

select Name from city as ciudades
where exists(select * from country where LifeExpectancy >80
and Code = ciudades.CountryCode);

-- paises con ciudadees que tenga mas de 6M de hbaitantes 
select name from country as paises
where not exists(select * from city where Population > 6000000 and CountryCode = paises.Code);

-- HAVING 
-- region que tengan mas poblaicon que todo el continente de Africa
select sum(Population) from country where Continent = "Africa";

select region, sum(Population) from country
group by region
having sum(Population) > (select sum(Population) from country 
where Continent = "Africa");

-- continentes con media de vida mayor a china
select LifeExpectancy from country where Name = "China";

select Continent, avg(LifeExpectancy) from country
group by Continent
having avg(LifeExpectancy) > (select LifeExpectancy from country 
where Name = "China");










