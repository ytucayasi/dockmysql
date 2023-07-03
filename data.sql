INSERT INTO
  categorias (nombre)
VALUES
  ('Procesadores'),
  ('Tarjetas gráficas'),
  ('Discos duros'),
  ('Monitores'),
  ('Teclados');

-- Primera categoría: Procesadores (20 productos)
INSERT INTO
  productos (
    nombre,
    marca,
    precio_inicial,
    stock,
    categoria_id
  )
VALUES
  (
    'Procesador Intel Core i5',
    'Intel',
    199.99,
    20,
    1
  ),
  (
    'Procesador Intel Core i7',
    'Intel',
    299.99,
    20,
    1
  ),
  (
    'Procesador Intel Core i9',
    'Intel',
    499.99,
    20,
    1
  ),
  ('Procesador AMD Ryzen 5', 'AMD', 179.99, 20, 1),
  ('Procesador AMD Ryzen 7', 'AMD', 249.99, 20, 1),
  ('Procesador AMD Ryzen 9', 'AMD', 599.99, 20, 1),
  (
    'Procesador Intel Pentium G6400',
    'Intel',
    79.99,
    20,
    1
  ),
  (
    'Procesador Intel Celeron G5900',
    'Intel',
    59.99,
    20,
    1
  ),
  (
    'Procesador AMD Athlon 3000G',
    'AMD',
    69.99,
    20,
    1
  ),
  (
    'Procesador AMD Ryzen 3 3200G',
    'AMD',
    109.99,
    20,
    1
  ),
  (
    'Procesador Intel Core i3-10100',
    'Intel',
    119.99,
    20,
    1
  ),
  (
    'Procesador Intel Core i7-10700K',
    'Intel',
    399.99,
    20,
    1
  ),
  (
    'Procesador AMD Ryzen 5 5600X',
    'AMD',
    279.99,
    20,
    1
  ),
  (
    'Procesador AMD Ryzen 7 5800X',
    'AMD',
    449.99,
    20,
    1
  ),
  (
    'Procesador Intel Core i9-10900K',
    'Intel',
    529.99,
    20,
    1
  ),
  (
    'Procesador Intel Core i9-11900K',
    'Intel',
    649.99,
    20,
    1
  ),
  (
    'Procesador AMD Ryzen 9 5900X',
    'AMD',
    599.99,
    20,
    1
  ),
  (
    'Procesador AMD Ryzen 9 5950X',
    'AMD',
    799.99,
    20,
    1
  ),
  (
    'Procesador Intel Core i5-11600K',
    'Intel',
    279.99,
    20,
    1
  ),
  (
    'Procesador AMD Ryzen Threadripper 3960X',
    'AMD',
    1299.99,
    20,
    1
  );

-- Segunda categoría: Tarjetas gráficas (20 productos)
INSERT INTO
  productos (
    nombre,
    marca,
    precio_inicial,
    stock,
    categoria_id
  )
VALUES
  (
    'Tarjeta gráfica NVIDIA GeForce RTX 3060',
    'NVIDIA',
    399.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica NVIDIA GeForce RTX 3070',
    'NVIDIA',
    499.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica NVIDIA GeForce RTX 3080',
    'NVIDIA',
    699.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica NVIDIA GeForce RTX 3090',
    'NVIDIA',
    1499.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica AMD Radeon RX 6600 XT',
    'AMD',
    449.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica AMD Radeon RX 6700 XT',
    'AMD',
    599.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica AMD Radeon RX 6800',
    'AMD',
    649.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica AMD Radeon RX 6800 XT',
    'AMD',
    699.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica NVIDIA GeForce GTX 1650',
    'NVIDIA',
    199.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica NVIDIA GeForce GTX 1660 Super',
    'NVIDIA',
    249.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica AMD Radeon RX 6900 XT',
    'AMD',
    999.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica AMD Radeon RX 6700',
    'AMD',
    499.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica NVIDIA GeForce RTX 3060 Ti',
    'NVIDIA',
    599.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica AMD Radeon RX 6800 XT',
    'AMD',
    699.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica AMD Radeon RX 6900 XT',
    'AMD',
    999.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica NVIDIA GeForce RTX 3070 Ti',
    'NVIDIA',
    649.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica NVIDIA GeForce RTX 3080 Ti',
    'NVIDIA',
    1199.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica AMD Radeon RX 6600',
    'AMD',
    349.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica AMD Radeon RX 6700 XT',
    'AMD',
    599.99,
    20,
    2
  ),
  (
    'Tarjeta gráfica NVIDIA GeForce RTX 3060',
    'NVIDIA',
    399.99,
    20,
    2
  );

-- Tercera categoría: Discos duros (20 productos)
INSERT INTO
  productos (
    nombre,
    marca,
    precio_inicial,
    stock,
    categoria_id
  )
VALUES
  (
    'Disco duro SSD Kingston A2000',
    'Kingston',
    99.99,
    20,
    3
  ),
  (
    'Disco duro SSD Samsung 970 EVO',
    'Samsung',
    149.99,
    20,
    3
  ),
  (
    'Disco duro HDD Seagate Barracuda',
    'Seagate',
    79.99,
    20,
    3
  ),
  (
    'Disco duro SSD Crucial MX500',
    'Crucial',
    89.99,
    20,
    3
  ),
  (
    'Disco duro HDD Western Digital Blue',
    'Western Digital',
    69.99,
    20,
    3
  ),
  (
    'Disco duro SSD WD Black SN750',
    'Western Digital',
    199.99,
    20,
    3
  ),
  (
    'Disco duro HDD Toshiba P300',
    'Toshiba',
    59.99,
    20,
    3
  ),
  (
    'Disco duro SSD SanDisk Ultra 3D',
    'SanDisk',
    79.99,
    20,
    3
  ),
  (
    'Disco duro SSD Samsung 860 EVO',
    'Samsung',
    129.99,
    20,
    3
  ),
  (
    'Disco duro HDD WD Red',
    'Western Digital',
    99.99,
    20,
    3
  ),
  (
    'Disco duro SSD Crucial P2',
    'Crucial',
    79.99,
    20,
    3
  ),
  (
    'Disco duro HDD Seagate IronWolf',
    'Seagate',
    119.99,
    20,
    3
  ),
  (
    'Disco duro SSD Kingston KC2000',
    'Kingston',
    149.99,
    20,
    3
  ),
  (
    'Disco duro HDD Toshiba X300',
    'Toshiba',
    89.99,
    20,
    3
  ),
  (
    'Disco duro SSD SanDisk Extreme Pro',
    'SanDisk',
    179.99,
    20,
    3
  ),
  (
    'Disco duro HDD WD Blue',
    'Western Digital',
    69.99,
    20,
    3
  ),
  (
    'Disco duro SSD Samsung 980 PRO',
    'Samsung',
    249.99,
    20,
    3
  ),
  (
    'Disco duro HDD Seagate SkyHawk',
    'Seagate',
    119.99,
    20,
    3
  ),
  (
    'Disco duro SSD Kingston KC2500',
    'Kingston',
    199.99,
    20,
    3
  ),
  (
    'Disco duro HDD Toshiba N300',
    'Toshiba',
    99.99,
    20,
    3
  );

-- Cuarta categoría: Monitores (20 productos)
INSERT INTO
  productos (
    nombre,
    marca,
    precio_inicial,
    stock,
    categoria_id
  )
VALUES
  ('Monitor ASUS VP228HE', 'ASUS', 129.99, 20, 4),
  ('Monitor Dell P2419H', 'Dell', 199.99, 20, 4),
  ('Monitor LG 27GL850', 'LG', 499.99, 20, 4),
  ('Monitor BenQ GW2270', 'BenQ', 99.99, 20, 4),
  (
    'Monitor Samsung LC24F390',
    'Samsung',
    149.99,
    20,
    4
  ),
  ('Monitor Acer R240HY', 'Acer', 129.99, 20, 4),
  ('Monitor ASUS VG245H', 'ASUS', 199.99, 20, 4),
  ('Monitor Dell S2419H', 'Dell', 229.99, 20, 4),
  ('Monitor LG 32GK850F', 'LG', 599.99, 20, 4),
  ('Monitor BenQ PD2700U', 'BenQ', 399.99, 20, 4),
  (
    'Monitor Samsung U28E590D',
    'Samsung',
    249.99,
    20,
    4
  ),
  ('Monitor Acer XFA240', 'Acer', 199.99, 20, 4),
  (
    'Monitor ASUS ROG Swift PG279Q',
    'ASUS',
    699.99,
    20,
    4
  ),
  ('Monitor Dell U2415', 'Dell', 299.99, 20, 4),
  ('Monitor LG 34UC79G-B', 'LG', 449.99, 20, 4),
  ('Monitor BenQ EX2780Q', 'BenQ', 499.99, 20, 4),
  (
    'Monitor Samsung C27HG70',
    'Samsung',
    399.99,
    20,
    4
  ),
  (
    'Monitor Acer Predator X27',
    'Acer',
    1499.99,
    20,
    4
  ),
  (
    'Monitor ASUS TUF Gaming VG27AQL1A',
    'ASUS',
    699.99,
    20,
    4
  ),
  (
    'Monitor Dell Alienware AW3418DW',
    'Dell',
    899.99,
    20,
    4
  );

-- Quinta categoría: Teclados (20 productos)
INSERT INTO
  productos (
    nombre,
    marca,
    precio_inicial,
    stock,
    categoria_id
  )
VALUES
  (
    'Teclado Logitech K120',
    'Logitech',
    19.99,
    20,
    5
  ),
  ('Teclado Razer Cynosa V2', 'Razer', 59.99, 20, 5),
  ('Teclado Corsair K55', 'Corsair', 49.99, 20, 5),
  (
    'Teclado HyperX Alloy FPS Pro',
    'HyperX',
    79.99,
    20,
    5
  ),
  (
    'Teclado Redragon K552',
    'Redragon',
    39.99,
    20,
    5
  ),
  (
    'Teclado SteelSeries Apex Pro',
    'SteelSeries',
    199.99,
    20,
    5
  ),
  (
    'Teclado HP Pavilion Gaming 500',
    'HP',
    29.99,
    20,
    5
  ),
  (
    'Teclado Razer Huntsman Elite',
    'Razer',
    169.99,
    20,
    5
  ),
  (
    'Teclado Corsair K95 RGB Platinum',
    'Corsair',
    179.99,
    20,
    5
  ),
  (
    'Teclado HyperX Alloy Origins Core',
    'HyperX',
    99.99,
    20,
    5
  ),
  (
    'Teclado Logitech G413',
    'Logitech',
    69.99,
    20,
    5
  ),
  (
    'Teclado Redragon K552-RGB',
    'Redragon',
    44.99,
    20,
    5
  ),
  (
    'Teclado SteelSeries Apex 7',
    'SteelSeries',
    159.99,
    20,
    5
  ),
  ('Teclado HP Omen Sequencer', 'HP', 129.99, 20, 5),
  (
    'Teclado Razer BlackWidow Elite',
    'Razer',
    129.99,
    20,
    5
  ),
  (
    'Teclado Corsair K70 RGB MK.2',
    'Corsair',
    159.99,
    20,
    5
  ),
  (
    'Teclado HyperX Alloy Origins',
    'HyperX',
    109.99,
    20,
    5
  ),
  (
    'Teclado Logitech G Pro',
    'Logitech',
    129.99,
    20,
    5
  ),
  (
    'Teclado Redragon K582',
    'Redragon',
    49.99,
    20,
    5
  ),
  (
    'Teclado SteelSeries Apex 3',
    'SteelSeries',
    69.99,
    20,
    5
  );

INSERT INTO
  clientes (nombre, direccion, telefono)
VALUES
  ('Juan Perez', 'Calle 123, Ciudad', '1234567890'),
  (
    'Maria Lopez',
    'Avenida 456, Ciudad',
    '0987654321'
  ),
  (
    'Carlos Ramirez',
    'Carrera 789, Ciudad',
    '1112223333'
  ),
  (
    'Laura Gonzalez',
    'Avenida Principal, Ciudad',
    '4445556666'
  ),
  (
    'Pedro Martinez',
    'Calle Secundaria, Ciudad',
    '7778889999'
  ),
  (
    'Ana Sanchez',
    'Avenida Central, Ciudad',
    '3332221111'
  ),
  (
    'Luis Rodriguez',
    'Calle 321, Ciudad',
    '9998887777'
  ),
  (
    'Julia Fernandez',
    'Avenida 654, Ciudad',
    '6665554444'
  ),
  (
    'Roberto Torres',
    'Carrera 987, Ciudad',
    '2221110000'
  ),
  (
    'Sofia Herrera',
    'Calle Principal, Ciudad',
    '5554443333'
  ),
  (
    'Daniel Castro',
    'Avenida Secundaria, Ciudad',
    '8889990000'
  ),
  (
    'Carmen Suarez',
    'Calle Central, Ciudad',
    '2223334444'
  ),
  (
    'Javier Reyes',
    'Avenida 987, Ciudad',
    '0001112222'
  ),
  (
    'Elena Morales',
    'Carrera 654, Ciudad',
    '4443332222'
  ),
  (
    'Fernando Diaz',
    'Calle 789, Ciudad',
    '7776665555'
  ),
  (
    'Paola Jimenez',
    'Avenida 321, Ciudad',
    '1110009999'
  ),
  (
    'Andres Herrera',
    'Carrera Principal, Ciudad',
    '3334445555'
  ),
  (
    'Valeria Sanchez',
    'Calle Secundaria, Ciudad',
    '6667778888'
  ),
  (
    'Hector Ramirez',
    'Avenida Central, Ciudad',
    '9990001111'
  ),
  (
    'Monica Garcia',
    'Calle 456, Ciudad',
    '5556667777'
  ),
  (
    'Ricardo Torres',
    'Avenida 654, Ciudad',
    '8889990000'
  ),
  (
    'Lorena Castro',
    'Carrera 987, Ciudad',
    '2223334444'
  ),
  (
    'Gabriel Suarez',
    'Calle Principal, Ciudad',
    '0001112222'
  ),
  (
    'Natalia Reyes',
    'Avenida Secundaria, Ciudad',
    '4445556666'
  ),
  (
    'Oscar Morales',
    'Calle Central, Ciudad',
    '7778889999'
  ),
  (
    'Isabel Jimenez',
    'Avenida 987, Ciudad',
    '1112223333'
  ),
  ('Hugo Diaz', 'Carrera 654, Ciudad', '4445556666'),
  (
    'Marcela Perez',
    'Calle 789, Ciudad',
    '7778889999'
  ),
  (
    'Raul Fernandez',
    'Avenida 321, Ciudad',
    '1112223333'
  );

INSERT INTO
  proveedores (nombre, direccion, telefono)
VALUES
  (
    'Innovación Tech',
    'Calle 123, Ciudad',
    '1234567890'
  ),
  (
    'ElectroTech',
    'Avenida 456, Ciudad',
    '0987654321'
  ),
  (
    'FuturoTech',
    'Carrera 789, Ciudad',
    '1112223333'
  ),
  (
    'TecnoVisión',
    'Avenida Principal, Ciudad',
    '4445556666'
  ),
  (
    'DigitalWizards',
    'Calle Secundaria, Ciudad',
    '7778889999'
  ),
  (
    'TechMaster',
    'Avenida Central, Ciudad',
    '3332221111'
  ),
  ('EvoTech', 'Calle 321, Ciudad', '9998887777'),
  (
    'VanguardiaTech',
    'Avenida 654, Ciudad',
    '6665554444'
  ),
  (
    'ProTech Solutions',
    'Carrera 987, Ciudad',
    '2221110000'
  ),
  (
    'TecnologíaXpress',
    'Calle Principal, Ciudad',
    '5554443333'
  );

INSERT INTO
  ventas (fecha_venta, cliente_id)
VALUES
  ('2023-01-01', 1),
  ('2023-02-15', 2),
  ('2023-03-10', 3);

INSERT INTO
  det_ventas (
    cantidad,
    descuento,
    precio,
    igv,
    venta_id,
    producto_id
  )
VALUES
  (2, 0.10, 45.00, 5.00, 1, 1),
  (1, 0.05, 22.50, 2.50, 1, 2),
  (3, 0.15, 9.00, 1.00, 1, 3),
  (1, 0.10, 36.00, 4.00, 2, 4),
  (2, 0.05, 16.88, 1.87, 2, 5),
  (3, 0.15, 4.50, 0.50, 2, 6),
  (4, 0.20, 24.40, 3.10, 3, 7),
  (2, 0.10, 41.67, 5.28, 3, 8),
  (1, 0.05, 17.00, 2.15, 3, 9);