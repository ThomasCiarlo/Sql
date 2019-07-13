create table productos(
idProducto int auto_increment primary key,
Nombre varchar(25),
Precio float,
Marca varchar(25),
Categoria varchar(25),
Presentacion varchar(25),
Stock int,
Disponible boolean
);

insert into productos (Nombre ,Precio ,Marca, Categoria ,Presentacion ,Stock ,Disponible)values('iPhone 6', 499.99, 'Apple', 'Smartphone', '16GB', 500, true),
('iPad Pro', 599.99, 'Apple', 'Smartphone', '128GB',300,true),
('Nexus 7', 299.99, 'LG', 'Smartphone', '32GB', 250 ,false),
('Galaxy S7', 459.99, 'Samsung', 'Smartphone', '64GB', 200,true),
('Prime J4', 359.99, 'Samsung', 'Smartphone', '2GB', 80,true),
('Impresora T23', 489.99, 'Epson' ,'Impresoras', 'Color', 180, true),
('Impresora T33', 399 ,'Epson' ,'Impresoras', 'Color' ,200 ,false),
('Lavarropa 7000', 1679 ,'LG', 'Lavarropas', 'Automático' ,100, true),
('Camara Digital 760' ,649, 'Kodak', 'Fotografía', 'Sin detalle', 150,false),
('Escaner Digital 1150' ,1459, 'Kodak', 'Multifunción', 'Sin detalle', 50,false),
('Notebook CQ40-300', 2999 ,'HP' ,'Notebooks', 'Intel Core i3', 100, true),
('Notebook Pavillion ', 4999 ,'HP' ,'Notebooks', 'Intel Core i7', 90, true);