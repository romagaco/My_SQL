use world;
-- select * from country limit 50;

-- select Name from Country;

-- select Name, Continent, Population from country;

-- select Name as Nombre, Continent as Continente, Population as Poblacion from country;

select Name as Nombre, IndepYear AS "Año_Independencia", (2023 - IndepYear) AS "Años_Trans" from country;

select distinct Continent from country;

select	Name from country limit 5;