-- SINTAXIS
-- SELECT COLUMNA/S FROM TABLA
SELECT	* FROM CITY
LIMIT 10; -- NOS PERMITE COLOCAR UN LIMITE A LAS TABLAS QUE PODEMOS VISUALIZAR
SELECT	District, CountryCode from city;
select Name, Population*2 AS DoublePopulation from city
LIMIT 10;
-- operacioenes matematicas, nivel uno * / %
-- nivel dos - + 
-- select 4+5*10;
-- select (4+5)*10;
select distinct CountryCode from city;



