-- agrupaciones parte 2

-- cantidad de paises de cada continente 
use world;

select Continent, count(*) as numero_paises
from country
group by Continent;

-- numero total de ciudades por cada pais
select CountryCode, count(*) numero_ciudades
from city
group by CountryCode;

-- paises con poblacion mayor a 100 M
select Continent, sum(Population) as Totalpopulation
from world.country
group by Continent
having Totalpopulation > 100000000;

-- canitdad de lenguages por pais
select countryCode, count(*) as OfficalLanguages
from countrylanguage
where IsOfficial="T"
group by CountryCode;

-- expectativa de vida menor a 70 años
select Continent, avg(LifeExpectancy) as VidaPromedio
from country
group by Continent
having VidaPromedio < 70;

-- num total de hablantes de idioma en el mundo
select * from countrylanguage;
select language, sum(Percentage)/100 as totalpercentage
from countrylanguage
group by Language
order by totalpercentage desc;

-- continentes donde ningun pais tiene una poblacion superior a 200M
select continent, max(population) as maxpopulation
from country
group by Continent
having maxpopulation <= 200000000;

-- 16 continentes dode la la expectativa de vida sea superior a x y  
-- que  hayan tres paises asi por lo menos
select Continent, count(*) as numero_paises
from country
where LifeExpectancy > 60
group by Continent
having numero_paises > 3;

-- encontrar promedio de exp de vida exl a lso que es menor a <70
select Continent, avg(LifeExpectancy) as avglife
from country
group by Continent
having avglife >=70; 