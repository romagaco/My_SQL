use academia;
-- 1. Crear un índice llamado i_nombre en la tabla cursos y columna “nombre”
	create index i_nombre1 on academia.cursos(nombre);
-- 2. Mostrar los índices de la tabla “cursos”
    show index from academia.cursos;
-- 3. ¿Por qué aparecen dos?
-- porque la tabla fue creada con ujhna primary key

-- 4. Comprobar que el índice se usa la consultar por “nombre”
	EXPLAIN SELECT * FROM cursos WHERE NOMBRE="CURSO10";

-- 5. Borrar el índice
	drop index i_nombre on academia.cursos;
    show index from academia.cursos;

-- 6. Volver a crearlo pero de tipo único y comprobar que se ha creado. La columna
-- “Non unique” debe ser de tipo 0 (único).

	create unique index i_nombre on academia.cursos(nombre);
    show index from academia.cursos;
    
-- 7. Crear la siguiente tabla. Debemos crear los índices en el momento de creación
-- de la tabla. Después, comprobar la creación de estos índices.

	create table indices7(
		Codigo INT,
		Nombre varchar(50),
		Apellidos varchar(50),
		constraint PRIMARY KEY (CODIGO),
		constraint unico1 UNIQUE(Nombre),
		INDEX i_nombre1 (nombre, Apellidos)
		);

show index from academia.indices7;









