use dockdb;

CREATE TABLE tiendas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(200) NOT NULL,
  telefono VARCHAR(15) NOT NULL
);

CREATE TABLE categorias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE productos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  marca VARCHAR(100) NOT NULL,
  categoria_id INT NOT NULL,
  FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

CREATE TABLE clientes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(200) NOT NULL,
  telefono VARCHAR(15) NOT NULL
);

CREATE TABLE proveedores (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  ruc VARCHAR(100) NOT NULL,
  direccion VARCHAR(200) NOT NULL,
  telefono VARCHAR(15) NOT NULL
);

CREATE TABLE ventas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  fecha_venta DATE NOT NULL,
  cliente_id INT NOT NULL,
  tienda_id INT NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id),
  FOREIGN KEY (tienda_id) REFERENCES tiendas(id)
);

CREATE TABLE venta_productos (
  cantidad INT NOT NULL,
  descuento DECIMAL(10, 2) NOT NULL,
  costo DECIMAL(10, 2) NOT NULL,
  precio DECIMAL(10, 2) NOT NULL,
  igv DECIMAL(10, 2) NOT NULL,
  venta_id INT NOT NULL,
  producto_id INT NOT NULL,
  FOREIGN KEY (venta_id) REFERENCES ventas(id),
  FOREIGN KEY (producto_id) REFERENCES productos(id)
);

CREATE TABLE compras (
  id INT PRIMARY KEY AUTO_INCREMENT,
  fecha_compra DATE NOT NULL,
  proveedor_id INT NOT NULL,
  tienda_id INT NOT NULL,
  FOREIGN KEY (proveedor_id) REFERENCES proveedores(id),
  FOREIGN KEY (tienda_id) REFERENCES tiendas(id)
);

CREATE TABLE compra_productos (
  cantidad INT NOT NULL,
  costo INT NOT NULL,
  compra_id INT NOT NULL,
  producto_id INT NOT NULL,
  FOREIGN KEY (compra_id) REFERENCES compras(id),
  FOREIGN KEY (producto_id) REFERENCES productos(id)
);