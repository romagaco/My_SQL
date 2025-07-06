/*
operadores logicos
AND ---> combina las condiciones logicas devolviendo verdadero en caso de que 
todas se cumplan.
or ---> combina las condiciones logicas devolviendo vedadero si una de ellas se
cumple
not ----> niega las carracteristicas o las operaciones
*** buenas practicas *** utilizar parentesis 
*/
use world;

select * from world.country limit 100;
select Name, Continent, Region, Population, LifeExpectancy from world.country 
where (Population >1000000 and LifeExpectancy>=75);

select Name, Continent, Region, Population, SurfaceArea from world.country
where (SurfaceArea > 30000 or Population > 50000000);

select Name, Continent, Region, Population, LifeExpectancy from world.country 
where not (LifeExpectancy<75);

select Name, Continent, Region, Population, LifeExpectancy from world.country 
where not Continent = "Asia";

select Name, Continent, Region, Population, LifeExpectancy from world.country 
where not Continent = "Asia" and not Continent = "Africa";