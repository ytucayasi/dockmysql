CREATE TABLE dproducto (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cod_producto INT NOT NULL,
  nom_producto VARCHAR(100) NOT NULL,
  marca_producto VARCHAR(100) NOT NULL,
  precio_producto DECIMAL(10, 2) NOT NULL,
  nom_categoria VARCHAR(20) NOT NULL
);

insert into dproducto (
  cod_producto,
  nom_producto,
  precio_producto,
  nom_categoria
) select from productos as p
inner join categorias as c on c.id = p.categoria_id;

CREATE TABLE dtienda (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(200) NOT NULL,
);

insert into dtienda (
  nombre,
  direccion
) select t.nombre, t.direccion from tiendas as t;

CREATE TABLE dtiempo (
  id INT PRIMARY KEY AUTO_INCREMENT,
  fecha date DEFAULT NULL,
  mes_cod varchar(2) NULL,
  trim_cod varchar(1) NULL,
  anio varchar(4) NULL,
);

insert into dtiempo (
  fecha,
  mes_cod,
  trim_cod,
  anio
) select 
date_format(v.fecha_venta, '%Y-%m-%d') as fecha,
month(v.fecha_venta) as mes_cod,
quarter(v.fecha_venta) as trim_cod,
year(v.fecha_venta) as anio
from ventas as v where v.fecha_venta is not null
group by date_format(v.fecha_venta, '%Y-%m-%d')
order by date_format(v.fecha_venta, '%Y-%m-%d');

CREATE TABLE dcliente (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
);

insert into dcliente (
  nombre,
) select c.nombre from clientes as c;

CREATE TABLE dproveedor (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
);

insert into dproveedor (
  nombre,
) select p.nombre from proveedores as p;

CREATE TABLE dpedido (
  id INT PRIMARY KEY AUTO_INCREMENT,
  dtiempo_id INT NOT NULL,
  dproducto_id INT NOT NULL,
  dcliente_id INT NOT NULL,
  cantidad_ventas DECIMAL(9,2) DEFAULT NULL,
  cantidad_unidades DECIMAL(9,2) DEFAULT NULL,
  ingreso_total DECIMAL(9,2) DEFAULT NULL,
  cantidad_clientes DECIMAL(9,2) DEFAULT NULL
);

insert into dpedido (
  dtiempo_id,
  dproducto_id,
  dcliente_id,
  cantidad_ventas,
  cantidad_unidades,
  ingreso_total,
  cantidad_clientes
) select
dpp.id,
dti.id,
dcli.id,
count(g.venta) as ventas, 
sum(g.cantidad) as cant_unid, 
sum(g.ingreso_total) as ingreso_total, 
count(distinct g.cod_cliente) as cantidad_usuarios 
from (
  select 
  p.id as producto
  v.id as venta,
  v.fecha_venta as fecha_venta,
  vp.cantidad as cantidad, 
  (vp.cantidad * vp.precio) as ingreso_total,
  c.id as cod_cliente,
  c.nombre as nom_cliente
  from ventas as v
  inner join clientes as c on c.id = v.cliente_id
  inner join ventas_productos as vp on v.id = vp.venta_id
  inner join productos as p on p.id = vp.producto_id
) as g
inner join dproducto as dpp on g.producto = dpp.cod_producto
inner join dtiempo as dti on g.fecha_venta = dti.fecha_venta
inner join dcliente as dcli on g.nom_cliente = dcli.nombre
group by dpp.id, dti.id, dcli.id;