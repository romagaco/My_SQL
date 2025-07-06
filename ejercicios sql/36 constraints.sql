-- foreing keys
/* 
permiten enlazar tablas que comparten una clave,
la clave ajena se encuentra en dos tabals 
y esta en una de las tabals es una clave principal
*/
use restricciones;

create table clientes
(Codigo INT primary key,
Nombre varchar(100));

create table pedidos
(cod_pedido int primary key,
precio decimal,
fecha date,
cod_cliente int,
foreign key(cod_cliente) references clientes(Codigo));

insert into restricciones.clientes values(1, "Juan");
insert into restricciones.clientes values(2, "alex");
insert into restricciones.clientes values(3, "Luna");
insert into restricciones.clientes values(4, "Noah");
insert into restricciones.clientes values(5, "Dana");

select * from restricciones.clientes;
-- este insert no funciona ya que no tenemos un cliente 7
insert into restricciones.pedidos values(1,3, "2024-01-01",7);
-- estos si funcionan 
insert into restricciones.pedidos values(1,3, "2024-01-01",1);
insert into restricciones.pedidos values(2,20, "2024-01-01",1);
-- ahora que tenemos valores en la tabal referencial
-- no podremos borrar a Juan de la tabal principal
delete from clientes where codigo=1;
-- por otro caso "Dana" no tiene pedido entonces si se puede borrar
delete from clientes where codigo=5;
select * from restricciones.clientes;