use dml;

CREATE TABLE `DML`.`coches` ( `matricula` VARCHAR(8) NOT NULL, `modelo` VARCHAR(45) NOT NULL, `marca` VARCHAR(45) NOT NULL, `precio` DECIMAL NULL, `fecha_compra` DATE NULL, PRIMARY KEY (`matricula`));

insert into coches (matricula, modelo, marca, precio, fecha_compra) 
values("12123", "GT", "ford", 10000, curdate()), ("121244", "serue s", "tesla", 20000, curdate());
select * from dml.coches;


insert into coches values
("789789", "jetta", "bmw", 15000, curdate()), 
("8996", "todoterreno", "ford", 45000, curdate()), 
("4558", "civic", "Honda", 35000, curdate());
select * from dml.coches;

insert into coches (matricula, modelo, marca)
values("333669", "fiesta", "Ford");
select * from dml.coches;

insert into coches values
("798798", "corolla", "toyota", 1200, curdate()), 
("798541", "corolla", "toyota", 1500, curdate()), 
("789523", "chevy", "chevrollet", 35000, curdate());
select * from dml.coches;

CREATE TABLE `DML`.`coches2` ( `matricula` VARCHAR(8) NOT NULL, `modelo` VARCHAR(45) NOT NULL, `marca` VARCHAR(45) NOT NULL, `precio` DECIMAL NULL, `fecha_compra` DATE NULL, PRIMARY KEY (`matricula`));

insert into coches2 select * from coches;
select * from coches2;

update coches set precio = precio+1000 where precio>10000;
select * from coches;

update coches set marca= lower(marca);
select * from coches;
update coches set marca= upper(marca);
select * from coches;

delete from coches where marca = "BMW";
select * from coches;

replace into coches (matricula, modelo, marca, precio, fecha_compra) 
values("12321", "siroco", "vocho", 17000, "2002-01-05");
select * from coches;