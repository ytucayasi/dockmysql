-- Crear una tabla final para almacenar los datos transformados
CREATE TABLE datos_transformados AS
SELECT v.id AS venta_id, v.fecha_venta AS fecha_venta, c.id AS cliente_id, c.nombre AS nombre_cliente, t.id AS tienda_id,
       t.nombre AS nombre_tienda, vp.cantidad AS cantidad_productos, p.id AS producto_id, p.nombre AS nombre_producto,
       p.marca AS marca_producto, p.precio AS precio_producto, categ.nombre AS nombre_categoria
FROM ventas_extracted v
JOIN clientes_extracted c ON v.cliente_id = c.id
JOIN tiendas_extracted t ON v.tienda_id = t.id
JOIN ventas_productos_extracted vp ON v.id = vp.venta_id
JOIN productos_extracted p ON vp.producto_id = p.id
JOIN categorias_extracted categ ON p.categoria_id = categ.id;
