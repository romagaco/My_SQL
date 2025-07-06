use academia;

drop procedure if exists backup_cursos;



create table cursos_backup(
codigo int,
nombre varchar(50),
precio decimal
);

DELIMITER //
CREATE PROCEDURE backup_cursos()
BEGIN
  DECLARE fin BOOL DEFAULT FALSE;
  DECLARE cod_curso INT;
  DECLARE nombre_curso VARCHAR(50);
  DECLARE precio_curso DECIMAL;
  DECLARE cursor_curso CURSOR FOR SELECT * FROM cursos;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin = TRUE;

  TRUNCATE TABLE cursos_backup;

  OPEN cursor_curso;

  bucle: LOOP
    FETCH cursor_curso INTO cod_curso, nombre_curso, precio_curso;
    IF fin THEN
      LEAVE bucle;
    END IF;
    INSERT INTO cursos_backup VALUES (cod_curso, nombre_curso, precio_curso);
  END LOOP;

  CLOSE cursor_curso;

  COMMIT;
END//
DELIMITER ;

call backup_cursos;

select * from cursos_backup;









