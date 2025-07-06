/*
agrupaciones yt funciones de grupo  Group by "
sum() suma los valores de las columans que se estan agrupando
count() cuenta el total de veces que el elmento se agrupo
min() el valor mas pequeño de la agrupacion
max() el valor mas grande de la agrupacion
avg() el valor promedio de la agrupacion
*/
use wporld;

-- poblacion de cada continente
select Continent, sum(Population)
from world.country
group by Continent
order by Continent;

-- Maximo y minims de vida por continente y region 

select Continent, Region, max(LifeExpectancy), min(LifeExpectancy)
from world.country
group by Continent, Region
order by Continent, Region;

-- clausula having  -- condiciones alas agrupaciones

select Continent, Region, max(LifeExpectancy), min(LifeExpectancy)
from world.country
group by Continent, Region having min(LifeExpectancy) > 70
order by Continent, Region; 