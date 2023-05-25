use dockdbetl;

INSERT INTO dproducto (
  cod_producto,
  nom_producto,
  marca_producto,
  precio_producto,
  nom_categoria
) select p.id, p.nombre, p.marca, p.precio, c.nombre from dockdb.productos as p
inner join dockdb.categorias as c on c.id = p.categoria_id;

INSERT INTO dtienda (
  nombre,
  direccion
) select t.nombre, t.direccion from dockdb.tiendas as t;

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

INSERT INTO dcliente (
  nombre
) select c.nombre from dockdb.clientes as c;


INSERT INTO dproveedor (
  nombre
) select p.nombre from dockdb.proveedores as p;


INSERT INTO dpedido (
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
