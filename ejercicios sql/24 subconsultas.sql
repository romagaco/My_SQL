-- subconsultas y consultas 
-- --- select """
use world;
select * from world.country;
select name, continent, region, (select now()) from world.country;
select name, continent, region, now() from world.country;
select name, Population, (select sum(Population) from world.country) as "poblatio",
(Population*100/(select sum(Population) from world.country)) as "pobaltio_percent" from country;

-- --- from """
select * from (select name, continent, population from country) as tabla;

select continent, total_population from
(select continent, sum(population) as Total_population from country 
group by continent) as poblacion;






