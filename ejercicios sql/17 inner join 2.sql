use world;

-- extrayendo nombre y lenguage de cada pais con when 
select country .name, countrylanguage.language
from country, countrylanguage
where country.Code=countrylanguage.CountryCode
and countrylanguage.IsOfficial="T";

-- extrayendo nombre y lenguage de cada pais con inner join  
select country.name, countrylanguage.Language
from country inner join countrylanguage
on country.code=countrylanguage.CountryCode
where countrylanguage.IsOfficial="T";
