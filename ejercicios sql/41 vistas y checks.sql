use world;
create view VI as select * from country;
select * from VI;
select name, continent from VI;
select continent, count(*) from VI group by Continent;

create view vida60 as 
select * from country
where lifeexpectancy>=60;

select * from vida60;

select city.name from city join vida60 on countrycode = 
code where continent = "Europe";

-- ciedad y pais al que pertenecen columnas repetidas 
create view ciudad_pais as 
select country.name as countryName, city.name as CityName from city 
join country on countrycode = code;
select * from ciudad_pais;

drop view ciudad_pais;

create view ciudad_pais(Pais, CIudad) as 
select country.name, city.name from city 
join country on countrycode = code;
select * from ciudad_pais;

create or replace view ciudad_pais(Pais, CIudad) as 
select country.name, city.name from city 
join country on countrycode = code;
select * from ciudad_pais;

-- Updatables view 
-- permiten insertar datos que hay en las vistas
-- no podemos tener funciones max min etc.
-- no groupby no distinct, no joins, no subsconsultas 
create table tabla_lista(
Codigo INT  primary key,
Nombre varchar(100) not null
);

create or replace view vista as select * from tabla_lista;
-- insert en tabla
insert into tabla_lista values (1, "paco"), (2, "maria"), (3,"Juan");

-- insert en view
insert into vista values(4, "liss");
select * from vista;

-- no updatable list or views







