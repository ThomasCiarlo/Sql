create database clase2;
show databases;

use clase2; -- activar base 

create table clientes(
codigo integer auto_increment primary key,
Nombre varchar (20) not null,
Apellido varchar (20) not null,
Cuit varchar(13),
Direccion varchar (50),
comentario varchar (120)
);

show tables; -- muestra las tablas

describe clientes; -- Muestra la definicion de la tabla

insert into clientes2(nombre,apellido,cuit,direccion)
 values ('diego','torres','xxxxx','peru 232'),
('labura','gomes','xxxxx','chile 320'),
('mario','lopez','xxxxx','lavalle 770'),
('dario','sanchez','xxxxx','mexico 150'),
('juan','perez','xxxxx','san juan 320');

select * from clientes2;

set sql_safe_updates = false; -- Desactiva el modo seguro de la base, dejando borrar una tabla por completo 

delete from clientes2;

truncate clientes; -- reinicia el auto incrementar de la tabla, eleminando toda la tabla

create table clientes2 select * from clientes; -- Realiza un backup de la tabla clientes

CREATE TABLE `clientes3` (
  `codigo` int(11) NOT NULL DEFAULT '0',
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Cuit` varchar(13) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `comentario` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into clientes3 select * from clientes2; -- Inserta en clientes3 todo el contenido de clientes2  
-- insert into clientes3 (nombre,apellido) select * from clientes2; Copia los nombres y apellidos nomas

select * from clientes3;

create table test.persona(dni int,nombre varchar(10), apellido varchar(10)); -- Creo una tabla, dentro de la base de datos test


insert into test.persona select codigo, nombre, apellido from clientes;

select * from test.persona;

create table factura(

Letra char(1),
Numero integer,
Fecha date,
Monto double,
primary key(letra,numero)

);



create table articulos(

Codigo integer primary key,
Nombre varchar (50),
Precio double,
Stock integer

);


insert into factura (letra,numero,fecha,monto) values ('b',003,'2016-11-11',18.20);

insert into factura (letra,numero,fecha,monto) values ('d',003,curdate(),19.20);

insert into factura (letra,numero,fecha,monto) values ('c',003,curtime(),19.20);

select * from factura;





