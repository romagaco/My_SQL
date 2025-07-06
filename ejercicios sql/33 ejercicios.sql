-- 1.Quitar el autocommit. Comprobar que ha funcionado
	show variables;
	show variables like "autocommit";
	set autocommit = 0;
	show variables like "autocommit";

-- 2. Vemos las filas existentes
	select * from academia.cursos;

-- 3. Insertamos un par de filas usando las columnas completas
		insert into academia.cursos(cod_curso, nombre, precio) values 
			(11, "CURSO11", 120),
			(12, "CURSO12", 123);

-- 4. Comprobamos que están
	select * from academia.cursos; 

--  5. Hacemos un ROLLBACK y comprobamos de nuevo
	rollback;
	select * from academia.cursos; 

-- 6. Volvemos a insertarlas y hacemos un COMMIT
	start transaction;
		insert into academia.cursos(cod_curso, nombre, precio) values 
		(11, "CURSO11", 120),
		(12, "CURSO12", 123);
		select * from academia.cursos; 
	commit;

-- 7. Intentar hacer un ROLLBACK. ¿funciona?
	rollback;
	select * from academia.cursos; -- NO

/*
8. Ahora vamos a hacer una transacción con START TRANSACTION.
	a. Insertamos una fila
	b. Borramos otra
	c. Modificamos otra
*/
start transaction;
	insert into academia.cursos(cod_curso, nombre, precio) values  (13, "CURSO13", 140);
    replace into academia.cursos(cod_curso, nombre, precio) values 
		(1, "CURSO1", 350);
    update academia.cursos 
		set precio=465 where cod_curso=12;
commit;
select * from academia.cursos; 

-- 9. Hacemos un Rollback y comprobamos que se ha deshecho la transacción
	rollback;
	select * from academia.cursos; 

-- 10. Volvemos a lanzar la transacción pero con COMMIT y comprobamos que ha funcionado
 -- xx 
/*
11. Vamos a hacer ahora un Rollback parcial
	a. Insertamos una fila
	b. Ponemos un SAVEPOINT
	c. Borramos otra
	d. Modificamos otra
*/

start transaction;
	insert into academia.cursos(cod_curso, nombre, precio) values  
		(14, "CURSO14", 120), (15, "CURSO15", 125);
	select * from academia.cursos; 
    savepoint paso1;
    
    update academia.cursos 
		set precio=105 where cod_curso=14;
	select * from academia.cursos; 
    
rollback to paso1;
select * from academia.cursos; 

-- 12. Truncamos la tabla coches para que quede vacía
	use dml;
	select * from dml.estudiantes;

	truncate dml.estudiantes;
	select * from dml.estudiantes;

-- 13. Volvemos a poner el autocommit
	set autocommit = 1;
	show variables like "autocommit";