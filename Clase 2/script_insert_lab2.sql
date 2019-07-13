insert into clientes (nombre,apellido,cuit,direccion) values ('jose','benuto','20364749354','Loria 940'),
('gladys','acosta','27248959092','Belaustegui 2755'),('axel','garcia','20347985412','Cramer 1653'),
('emilia','baudino','27389983584','Santa Fe 1548'),('diego','iogna','20255788292','Paraguay 1657'),
('ariel','ortega','20229725481','Av. de Mayo 151'),('pablo','antico','20206547814','Varela 75'),
('silvia','palavecino','27347978412','Culpina 253'),('gabriela','cora','27199124584','Rivadavia 11548'),
('julio','bossero','20167848292','San Martin 546');

insert into facturas (letra,numero,fecha,monto) values ('a',1001,'2012/10/25',350),('a',1002,curdate(),540),
('c',0001,'2012/08/15',2500),('b',0001,'2013/08/14',950),('b',0006,'2014/07/16',1500),('a',0011,'2016/09/01',650),
('a',0012,'2017/01/18',575),('a',0013,curdate(),520),('c',0002,'2017/01/31',2100),('c',0008,curdate(),1100);

insert into articulos (codigo,nombre,precio,stock) values (110,'destornillador phillips',30,100),(6,'cemento gris',125,50),
(7,'llave francesa',160,68),(8,'amoladora angular',950,42),(9,'lijadora orbital',30,18),(10,'sierra manual',12,30),
(11,'cal hidrofuga',125,46),(12,'interruptor termomagnético',1150,8),(13,'lámpara led 8w',30,130),(111,'martillo de goma',40*1.21,50);