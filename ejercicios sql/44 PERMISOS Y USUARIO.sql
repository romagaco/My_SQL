use world;

-- 1. crear usuario
create user "usuarioprueba"@"%" identified by "contraseña123"; 

-- 2. visualizamos el usuario
select * from mysql.user;

-- 3. creamos un usuario sin host / por defecto coloca "%"
create user "usu2" identified by "pass";

-- 4. cambiamos contraseña dl usuario
ALTER USER "usuarioprueba"@"%" IDENTIFIED BY 'RobertoSouth';
set password for "usu2"@"%" = "Prueba1";

-- 5. borramos usuario
drop user "usu2"@"%";
select * from mysql.user;
-- PERMISOSO


-- . otorgamos permisos sobre una tabla
grant select on world.country to "usuarioprueba"@"%";

-- . permisos sobre una base de datos en general
grant all on world.* to "usuarioprueba"@"%";


show processlist; 
