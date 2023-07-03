-- dcliente
INSERT INTO
  dcliente (nombre, direccion, telefono)
SELECT
  nombre,
  direccion,
  telefono
FROM
  dockdb.clientes;

-- dproveedor
INSERT INTO
  dproveedor (nombre, direccion, telefono)
SELECT
  nombre,
  direccion,
  telefono
FROM
  dockdb.proveedores;

-- dproducto
INSERT INTO
  dproducto (
    nombre,
    marca,
    precio_inicial,
    categoria_id,
    nombre_categoria
  )
SELECT
  nombre,
  marca,
  precio_inicial,
  categoria_id,
  c.nombre
FROM
  dockdb.productos p
  JOIN dockdb.categorias c ON p.categoria_id = c.id;

-- hventa
INSERT INTO
  hventa (
    id,
    fecha_venta,
    cantidad,
    descuento_unidad,
    descuento_total,
    precio,
    monto_ideal,
    igv,
    ingreso_total,
    ganancia,
    cliente_id,
    nombre_cliente,
    producto_id,
    nombre_producto
  )
SELECT
  v.id AS id,
  v.fecha_venta AS fecha_venta,
  dv.cantidad AS cantidad,
  dv.descuento AS descuento_unidad,
  (dv.descuento * dv.cantidad) AS descuento_total,
  dv.precio AS precio,
  p.monto_ideal AS monto_ideal,
  (dv.precio * dv.cantidad * dv.igv) AS igv,
  ((dv.precio - dv.descuento) * dv.cantidad) AS ingreso_total,
  (p.monto_ideal - dv.precio) AS ganancia,
  v.cliente_id,
  c.nombre,
  dv.producto_id,
  p.nombre
FROM
  dockdb.ventas v
  JOIN dockdb.det_ventas dv ON v.id = dv.venta_id
  JOIN dockdb.clientes c ON v.cliente_id = c.id
  JOIN dockdb.productos p ON dv.producto_id = p.id;

-- hcompra
INSERT INTO
  hcompra (
    id,
    fecha_compra,
    cantidad,
    costo,
    monto_ideal,
    igv,
    estado,
    salida_total,
    gasto,
    proveedor_id,
    nombre_proveedor,
    producto_id,
    nombre_producto
  )
SELECT
  c.id AS id,
  c.fecha_compra AS fecha_compra,
  dc.cantidad AS cantidad,
  dc.costo AS costo,
  p.monto_ideal AS monto_ideal,
  (dc.costo * dc.cantidad * dc.igv) AS igv,
  CASE
    WHEN dc.estado = 'M' THEN 1
    WHEN dc.estado = 'N' THEN 2
    WHEN dc.estado = 'B' THEN 3
    ELSE 0
  END AS estado,
  (dc.costo * dc.cantidad) AS salida_total,
  (p.monto_ideal - dc.costo) AS gasto,
  c.proveedor_id,
  pr.nombre,
  dv.producto_id,
  p.nombre
FROM
  dockdb.compras c
  JOIN dockdb.det_compras dc ON dc.compra_id = c.id
  JOIN dockdb.proveedores pr ON c.proveedor_id = pr.id
  JOIN dockdb.productos p ON dc.producto_id = p.id;