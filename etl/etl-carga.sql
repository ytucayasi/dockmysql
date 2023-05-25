-- Crear tabla para almacenar los datos transformados
CREATE TABLE datos_cargados (
  venta_id INT PRIMARY KEY,
  fecha_venta DATE,
  cliente_id INT,
  nombre_cliente VARCHAR(100),
  tienda_id INT,
  nombre_tienda VARCHAR(100),
  cantidad INT,
  producto_id INT,
  nombre_producto VARCHAR(100),
  marca VARCHAR(100),
  precio DECIMAL(10, 2),
  nombre_categoria VARCHAR(100)
);

-- Insertar los datos transformados en la tabla de destino
INSERT INTO datos_cargados (venta_id, fecha_venta, cliente_id, nombre_cliente, tienda_id,
                            nombre_tienda, cantidad_productos, producto_id, nombre_producto,
                            marca, precio, nombre_categoria)
SELECT venta_id, fecha_venta, cliente_id, nombre_cliente, tienda_id, nombre_tienda, cantidad_productos,
       producto_id, nombre_producto, marca_producto, precio_producto, nombre_categoria
FROM datos_transformados;