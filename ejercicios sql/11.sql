/*
order by  funcion que nor permite organizar segun caracteristica
select first_name, last_name from sakila.actor where last_updte
> "2006-02-02" order by first_name

desc  es para ordernar de manera descendiente 
*/
select first_name, last_name from sakila.actor where last_update
> "2006-02-02" order by first_name;

select * from sakila.actor
order by first_name desc, last_name desc;

-- cast nos permite cambiar el tipo de dato
-- la columna continent es una tupla por ende cada elemento es considerado un numero
-- utilizamos cast para comvertir los elementos a caracteres

select Name, Continent, Region from world.country
order by Continent;  -- los continentes se ordenaron por su num segun la tupla

select Name, Continent, Region from world.country
order by cast(Continent as char); -- los elementos se convirtieron en cadenas de caracteres

/*
funciones de strings
upper			convierte en mayuscula
lower			convierte en minuscula
length			Devuelte la longitud de una cadena en bytes
concat			nos permite unir cadenas de caracteres
ltrim			elimina los espacios en blanco al principio
rtrim			elimina los espacios en blanco al final
locate			posicion de una cadena dentro de otra cadena
substr			extraer una cadena
repeat			repite una cadena de caracteres por una cantidad indicada
*/

select upper(Name) as Nombre from world.country;
select lower(Continent) as Continente from world.country;
select length(Region) as "longitud de region" from world.country;
select concat(first_name," ",last_name) as "Nombre completo" from sakila.actor;
select Name from world.country where locate("kong", Name)  !=0; 















