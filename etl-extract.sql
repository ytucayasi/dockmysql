use dockdbetl;

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
    monto_ideal,
    categoria_id,
    nombre_categoria
  )
SELECT
  p.nombre,
  p.marca,
  p.monto_ideal,
  p.categoria_id,
  c.nombre AS nombre_categoria
FROM
  dockdb.productos p
  JOIN dockdb.categorias c ON p.categoria_id = c.id;

INSERT INTO hventa (
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
  nombre_producto,
  cantidad_clientes
)
SELECT
  v.id AS id,
  v.fecha_venta AS fecha_venta,
  SUM(dv.cantidad) AS cantidad,
  MAX(dv.descuento) AS descuento_unidad,
  SUM(dv.descuento * dv.cantidad) AS descuento_total,
  MAX(dv.precio) AS precio,
  MAX(p.monto_ideal) AS monto_ideal,
  SUM(dv.precio * dv.cantidad * dv.igv) AS igv,
  SUM((dv.precio - dv.descuento) * dv.cantidad) AS ingreso_total,
  MAX(p.monto_ideal - dv.precio) AS ganancia,
  v.cliente_id,
  c.nombre,
  dv.producto_id,
  p.nombre,
  COUNT(DISTINCT v.cliente_id) AS cantidad_clientes
FROM
  dockdb.ventas v
  JOIN dockdb.det_ventas dv ON v.id = dv.venta_id
  JOIN dockdb.clientes c ON v.cliente_id = c.id
  JOIN dockdb.productos p ON dv.producto_id = p.id
GROUP BY v.id, v.fecha_venta, v.cliente_id, c.nombre, dv.producto_id, p.nombre;

INSERT INTO hcompra (
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
  nombre_producto,
  cantidad_proveedores
)
SELECT
  c.id AS id,
  c.fecha_compra AS fecha_compra,
  SUM(dc.cantidad) AS cantidad,
  MAX(dc.costo) AS costo,
  MAX(p.monto_ideal) AS monto_ideal,
  SUM(dc.costo * dc.cantidad * dc.igv) AS igv,
  CASE
    WHEN MAX(dc.estado) = 'M' THEN 1
    WHEN MAX(dc.estado) = 'N' THEN 2
    WHEN MAX(dc.estado) = 'B' THEN 3
    ELSE 0
  END AS estado,
  SUM(dc.costo * dc.cantidad) AS salida_total,
  MAX(p.monto_ideal - dc.costo) AS gasto,
  c.proveedor_id,
  pr.nombre,
  dc.producto_id,
  p.nombre,
  COUNT(DISTINCT c.proveedor_id) AS cantidad_proveedores
FROM
  dockdb.compras c
  JOIN dockdb.det_compras dc ON dc.compra_id = c.id
  JOIN dockdb.proveedores pr ON c.proveedor_id = pr.id
  JOIN dockdb.productos p ON dc.producto_id = p.id
GROUP BY c.id, c.fecha_compra, c.proveedor_id, pr.nombre, dc.producto_id, p.nombre;