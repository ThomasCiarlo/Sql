create database cursomysql;
show databases;
use cursomysql;
create table clientes (
codigo integer auto_increment primary key,
nombre varchar(20) not null,
apellido varchar(20) not null,
cuit varchar(13),
direccion varchar(50),
comentarios varchar(120)
);
show tables;
describe clientes;
insert into clientes (nombre,apellido,cuit,direccion) 
values ('juan','perez','xxxxx','peru 323'),
('diego','torres','xxxxx','chile 320'),
('laura','gomez','xxxxx','san juan 420'),
('mario','lopez','xxxxx','lavalle 770'),
('dario','sanchez','xxxxx','mexico 150');
select * from clientes;
insert into clientes (codigo,nombre,apellido,cuit,direccion) 
values (66,'juan','perez','xxxxx','peru 323');
select * from clientes;
set sql_safe_updates=0;
-- set sql_safe_updates=false;
delete from clientes;
truncate clientes;
select * from clientes;
create table clientes2 select * from clientes;
select * from clientes2;
CREATE TABLE `clientes3` (
  `codigo` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `cuit` varchar(13) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `comentarios` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into clientes3 select * from clientes2;
-- insert into clientes3 (nombre, apellido) 
-- select nombre, apellido from clientes2;
select * from clientes3;
create table test.persona(dni int, nombre varchar(10),
apellido varchar(10));
insert into test.persona select codigo, nombre, apellido
from clientes;
select * from test.persona;
create table facturas(
letra char(1),
numero integer,
fecha date,
monto double,
primary key (letra,numero)
);
create table articulos(
codigo integer,
nombre varchar(50),
precio double,
stock integer,
primary key (codigo)
);
insert into facturas values ('a',0001,'2011/09/18',500),('a',0002,'2012/10/18',2500),
('b',0003,'2015/07/11',320),('b',0004,'2016/05/22',120),('b',0005,'2012/03/17',560),('a',25,curdate(),1800.54);

insert into articulos values (1,'destornillador',25,50),(2,'pinza',35,22),
(3,'martillo',15,28),(4,'maza',35,18),(5,'balde',55,13);

select * from facturas;

create table productos1
select *, precio * 1.35 as 'precio promocion','China' as origen 
from articulos; -- muestro el precio con aumento

select * from productos1;

select * from clientes where nombre='Juan';
select * from clientes where nombre!='Juan';
select * from clientes where nombre='Juan' or nombre='diego' or nombre='laura';
select * from clientes where nombre not in('Juan','diego','laura');-- me trae todos los que no se llamen asi, si no pongo el not me trae esos nombres


select codigo,upper(concat(nombre,' ',apellido)) as 'nombre y apellido' from clientes;

select * from clientes where apellido like 'P%'; -- me trae apellidos que empiezen con P

select * from clientes where nombre like '__ri_'; -- me trae los nombre que tengan en este caso rio

select * from clientes where substring(apellido,2,1)='o'; -- 3 argumento el primero texto, apartir de que caracter, el tercero cuantas letras con ese caracter quiero

select * from articulos where precio >= 100; -- a
select * from articulos where precio > 20 or precio < 40; -- b
select * from articulos where precio between 40 and 60 ;-- c
select * from articulos where precio = 20 and stock>30; -- d
select * from articulos where precio=12 or precio=20 or precio = 30; -- e
select * from articulos where precio in(12,20,30);-- f
select * from articulos where precio not in(12,20,30); -- g

select *,1.21*precio as 'Precio con Iva' from articulos;-- 4

select * from articulos order by precio desc, nombre asc; -- desc desendente ejercicio 3

select *,round((precio/3)* 1.05,2) as 'Precio de la cuota', 3 as 'Cuotas' from articulos;-- 5 round resive dos argumento un numero y la cantidad de decimales


select * from productos;


create table backupProductos select * from productos;

update tabla set campo = valor, campo1=valor1;


select * from productos;

update productos set stock = 600;
truncate productos;
insert into productos select  * from backupproductos;

start transaction;-- dentro de lo que se ejecuta en una transaction se puede confirmar o rechazar
update productos set stock = 600;
-- commit elemina la ultima operacion que hice
-- rollback elemina todas las operaciones
rollback;

start transaction;
update productos set stock = 600 where marca = 'apple';
rollback;

update productos set precio = round(precio * 1.48,2);

alter table productos add column precio_promocion 
double(7,2); -- Modifico la tabla y agrego un campo mas
select * from productos;

update productos set precio_promocion = round(precio*0.95,2);
alter table productos add column Origen 
varchar(10) default 'China' first;

delete from tabla;

delete from productos where idproducto in(10,11);

select * from clientes;
update clientes set nombre = 'jose' where codigo = 1; -- 3
update clientes set nombre = 'pablo', apellido = 'fuentes', cuit='20-21053119-0' where codigo =3; 
update clientes set comentarios='';
delete from clientes where apellido = 'perez';
delete from clientes where cuit like '%0';
select * from clientes where cuit like '%0';

update articulos set precio = round(precio*1.20,2) where precio <= 50;
select * from articulos;
update articulos set precio = round(precio*1.15,2) where precio > 50;
select precio,precio*0.85 'descuento' from articulos; 
update articulos set precio=round(precio*0.85,2)  where precio >= 200;
update articulos set precio=round(precio,2);
delete from articulos where stock < 0; 

-- count() contar
-- max()
-- sum() 
-- min()
-- avg() promedio

select count(*) as 'cantidad de productos' from productos;
select count(marca) as 'cantidad de marcas' from productos;
select count(distinct marca) as 'cantidad de marcas' from productos; -- contara la cantidad de marcas distintas

update productos set marca = '' where marca='hp'; 
update productos set marca = null where marca='kodak'; 
select * from productos;
select distinct marca from productos;


























