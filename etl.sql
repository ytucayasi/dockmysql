CREATE TABLE dcategoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE dproducto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    precio_inicial DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    categoria_id INT NOT NULL,
    nombre_categoria VARCHAR(100) NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES dcategoria(id)
);

CREATE TABLE dcliente (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(200) NOT NULL,
  telefono VARCHAR(15) NOT NULL
);

CREATE TABLE dproveedor (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(200) NOT NULL,
  telefono VARCHAR(15) NOT NULL
);

CREATE TABLE hventa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha_venta DATE NOT NULL,
    cantidad INT NOT NULL,
    descuento DECIMAL(10, 2) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    igv DECIMAL(10, 2) NOT NULL,
    ingreso_total DECIMAL(10, 2) NOT NULL,
    cliente_id INT NOT NULL,
    producto_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES dcliente(id),
    FOREIGN KEY (producto_id) REFERENCES dproducto(id)
);

-- Transformación de los datos de productos para la tabla dproducto
INSERT INTO dproducto (nombre, marca, precio_inicial, stock, categoria_id, nombre_categoria)
SELECT nombre, marca, stock, categoria_id
FROM productos JOIN dockdb.det_ventas dv ON v.id = dv.venta_id;

-- Transformación de los datos de clientes para la tabla dcliente
INSERT INTO dcliente (nombre, direccion, telefono)
SELECT nombre, direccion, telefono
FROM clientes;

INSERT INTO
    hventa (
        id,
        fecha_venta,
        cantidad,
        descuento,
        precio,
        igv,
        ingreso_total,
        cliente_id,
        producto_id
    )
SELECT
    v.id AS venta_id,
    v.fecha_venta,
    dv.cantidad,
    dv.descuento,
    p.precio_inicial AS precio,
    (p.precio_inicial * dv.cantidad * dv.igv) AS igv,
    ((p.precio_inicial - dv.descuento) * dv.cantidad) AS ingreso_total,
    v.cliente_id,
    dv.producto_id
FROM
    dockdb.ventas v
    JOIN dockdb.det_ventas dv ON v.id = dv.venta_id
    JOIN dockdb.productos p ON dv.producto_id = p.id;