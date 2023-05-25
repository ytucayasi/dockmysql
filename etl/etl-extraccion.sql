-- Extracción de datos de la tabla "tiendas"
CREATE TABLE tiendas_extracted AS
SELECT id, nombre, direccion, telefono FROM tiendas;

-- Extracción de datos de la tabla "categorias"
CREATE TABLE categorias_extracted AS
SELECT id, nombre FROM categorias;

-- Extracción de datos de la tabla "productos"
CREATE TABLE productos_extracted AS
SELECT id, nombre, marca, precio, categoria_id FROM productos;

-- Extracción de datos de la tabla "inventarios"
CREATE TABLE inventarios_extracted AS
SELECT id, stock, tienda_id, producto_id FROM inventarios;

-- Extracción de datos de la tabla "clientes"
CREATE TABLE clientes_extracted AS
SELECT id, nombre, direccion, telefono FROM clientes;

-- Extracción de datos de la tabla "proveedores"
CREATE TABLE proveedores_extracted AS
SELECT id, nombre, direccion, telefono FROM proveedores;

-- Extracción de datos de la tabla "ventas"
CREATE TABLE ventas_extracted AS
SELECT id, fecha_venta, cliente_id, tienda_id FROM ventas;

-- Extracción de datos de la tabla "ventas_productos"
CREATE TABLE ventas_productos_extracted AS
SELECT cantidad, venta_id, producto_id FROM ventas_productos;

-- Extracción de datos de la tabla "compras"
CREATE TABLE compras_extracted AS
SELECT id, fecha_compra, proveedor_id, tienda_id FROM compras;

-- Extracción de datos de la tabla "compras_productos"
CREATE TABLE compras_productos_extracted AS
SELECT cantidad, compra_id, producto_id FROM compras_productos;