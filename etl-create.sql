use dockdbetl;

CREATE TABLE dproducto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    monto_ideal DECIMAL(10, 2) NOT NULL,
    categoria_id INT NOT NULL,
    nombre_categoria VARCHAR(100) NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES dockdb.categorias(id)
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
    descuento_unidad DECIMAL(10, 2) NOT NULL,
    descuento_total DECIMAL(10, 2) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    monto_ideal DECIMAL(10, 2) NOT NULL,
    igv DECIMAL(10, 2) NOT NULL,
    ingreso_total DECIMAL(10, 2) NOT NULL,
    ganancia DECIMAL(10, 2) NOT NULL,
    cliente_id INT NOT NULL,
    nombre_cliente VARCHAR(100) NOT NULL,
    producto_id INT NOT NULL,
    nombre_producto VARCHAR(100),
    cantidad_clientes INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES dcliente(id),
    FOREIGN KEY (producto_id) REFERENCES dproducto(id)
);

CREATE TABLE hcompra (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha_compra DATE NOT NULL,
    cantidad INT NOT NULL,
    costo DECIMAL(10, 2) NOT NULL,
    monto_ideal DECIMAL(10, 2) NOT NULL,
    igv DECIMAL(10, 2) NOT NULL,
    estado CHAR(1) NOT NULL,
    salida_total DECIMAL(10, 2) NOT NULL,
    gasto DECIMAL(10, 2) NOT NULL,
    proveedor_id INT NOT NULL,
    nombre_proveedor VARCHAR(100) NOT NULL,
    producto_id INT NOT NULL,
    nombre_producto VARCHAR(100),
    cantidad_proveedores INT NOT NULL,
    FOREIGN KEY (proveedor_id) REFERENCES dproveedor(id),
    FOREIGN KEY (producto_id) REFERENCES dproducto(id)
);