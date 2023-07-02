use dockdbetl;

/* dproducto */
INSERT INTO dproducto (
  cod_producto,
  nom_producto,
  marca_producto,
  precio_producto,
  nom_categoria
) select p.id, p.nombre, p.marca, p.precio, c.nombre from dockdb.productos as p
inner join dockdb.categorias as c on c.id = p.categoria_id;

/* dtienda */
INSERT INTO dtienda (
  nombre,
  direccion
) select t.nombre, t.direccion from dockdb.tiendas as t;

/* dinventario */
INSERT INTO hinventario (nom_producto, nom_tienda, stock_actual, fecha_actualizacion)
SELECT producto_id, tienda_id, stock, NOW()
FROM dockdb.inventarios;

/* dtiempo */
INSERT INTO dtiempo (
  fecha,
  mes_cod,
  trim_cod,
  anio
) select 
date_format(v.fecha_venta, '%Y-%m-%d') as fecha,
month(v.fecha_venta) as mes_cod,
quarter(v.fecha_venta) as trim_cod,
year(v.fecha_venta) as anio
from dockdb.ventas as v where v.fecha_venta is not null;

/* dcliente */
INSERT INTO dcliente (
  nombre
) select c.nombre from dockdb.clientes as c;

/* dproveedor */
INSERT INTO dproveedor (
  nombre
) select p.nombre from dockdb.proveedores as p;

/* dpedido */
INSERT INTO hpedido (
  cantidad_ventas,
  cantidad_unidades,
  ingreso_total,
  cantidad_clientes
)
SELECT
  COUNT(v.id) AS venta_id,
  SUM(vp.cantidad) AS cantidades_vendidas,
  SUM(vp.cantidad * pr.precio) AS ingreso_total,
  COUNT(c.id) AS cantidad_clientes
FROM dockdb.ventas AS v
INNER JOIN dockdb.clientes AS c ON v.cliente_id  = c.id
INNER JOIN dockdb.ventas_productos AS vp ON v.id = vp.venta_id
INNER JOIN dockdb.productos AS pr ON vp.producto_id = pr.id
INNER JOIN dockdb.categorias AS cat ON cat.id = pr.categoria_id
GROUP BY v.id;

/* dcompra */
INSERT INTO hcompra (
  cantidad_compras,
  cantidad_unidades,
  gasto_total,
  cantidad_proveedores
)
SELECT
  COUNT(c.id) AS cantidad_compras,
  SUM(cp.cantidad) AS cantidad_unidades,
  SUM(cp.cantidad * pr.precio) AS gasto_total,
  COUNT(DISTINCT p.proveedor_id) AS cantidad_proveedores
FROM dockdb.compras AS c
INNER JOIN dockdb.compras_productos AS cp ON c.id = cp.compra_id
INNER JOIN dockdb.productos AS pr ON cp.producto_id = pr.id
INNER JOIN dockdb.proveedores AS p ON pr.proveedor_id = p.id
GROUP BY c.id;