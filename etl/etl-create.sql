use dockdbetl;

CREATE TABLE dproducto (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cod_producto INT NOT NULL,
  nom_producto VARCHAR(100) NOT NULL,
  marca_producto VARCHAR(100) NOT NULL,
  precio_producto DECIMAL(10, 2) NOT NULL,
  nom_categoria VARCHAR(20) NOT NULL
);

CREATE TABLE dtienda (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(200) NOT NULL
);

CREATE TABLE hinventario (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom_producto VARCHAR(100) NOT NULL,
  nom_tienda VARCHAR(100) NOT NULL,
  stock_actual INT NOT NULL,
  fecha_actualizacion DATE NOT NULL
);

CREATE TABLE dtiempo (
  id INT PRIMARY KEY AUTO_INCREMENT,
  fecha date DEFAULT NULL,
  mes_cod varchar(2) NULL,
  trim_cod varchar(1) NULL,
  anio varchar(4) NULL
);

CREATE TABLE dcliente (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE dproveedor (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE hpedido (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cantidad_ventas DECIMAL(9,2) DEFAULT NULL,
  cantidad_unidades DECIMAL(9,2) DEFAULT NULL,
  ingreso_total DECIMAL(9,2) DEFAULT NULL,
  cantidad_clientes DECIMAL(9,2) DEFAULT NULL
);

CREATE TABLE hcompra (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cantidad_compras DECIMAL(9, 2) DEFAULT NULL,
  cantidad_unidades DECIMAL(9, 2) DEFAULT NULL,
  gasto_total DECIMAL(9, 2) DEFAULT NULL,
  cantidad_proveedores DECIMAL(9, 2) DEFAULT NULL
);