  use dockdb;

  -- Tabla para almacenar las tiendas
  CREATE TABLE tiendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    telefono VARCHAR(15) NOT NULL
  );

  -- Tabla para almacenar las categorías de productos
  CREATE TABLE categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
  );

  -- Tabla para almacenar los productos
  CREATE TABLE productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
  );

  -- Tabla para almacenar el inventario de productos en cada tienda
  CREATE TABLE inventarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    stock INT NOT NULL,
    tienda_id INT NOT NULL,
    producto_id INT NOT NULL,
    fecha_actualizacion DATE NOT NULL,
    FOREIGN KEY (tienda_id) REFERENCES tiendas(id),
    FOREIGN KEY (producto_id) REFERENCES productos(id)
  );

  -- Tabla para almacenar los clientes
  CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    telefono VARCHAR(15) NOT NULL
  );

  -- Tabla para almacenar los proveedores
  CREATE TABLE proveedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    telefono VARCHAR(15) NOT NULL
  );

  -- Tabla para almacenar las ventas
  CREATE TABLE ventas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha_venta DATE NOT NULL,
    cliente_id INT NOT NULL,
    tienda_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (tienda_id) REFERENCES tiendas(id)
  );

  -- Tabla para almacenar los productos vendidos en cada venta
  CREATE TABLE ventas_productos (
    cantidad INT NOT NULL,
    venta_id INT NOT NULL,
    producto_id INT NOT NULL,
    FOREIGN KEY (venta_id) REFERENCES ventas(id),
    FOREIGN KEY (producto_id) REFERENCES productos(id)
  );

  -- Tabla para almacenar las compras
  CREATE TABLE compras (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha_compra DATE NOT NULL,
    proveedor_id INT NOT NULL,
    tienda_id INT NOT NULL,
    FOREIGN KEY (proveedor_id) REFERENCES proveedores(id),
    FOREIGN KEY (tienda_id) REFERENCES tiendas(id)
  );

  -- Tabla para almacenar los productos comprados en cada compra
  CREATE TABLE compras_productos (
    cantidad INT NOT NULL,
    compra_id INT NOT NULL,
    producto_id INT NOT NULL,
    FOREIGN KEY (compra_id) REFERENCES compras(id),
    FOREIGN KEY (producto_id) REFERENCES productos(id)
  );