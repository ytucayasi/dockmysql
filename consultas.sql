-- Ventas por mes
SELECT vps.mes_venta AS fecha_por_mes, SUM(vps.total_venta) AS total_venta_mes
FROM (
SELECT MONTH(v.fecha_venta) AS mes_venta, p.precio * vp.cantidad AS total_venta
FROM ventas v 
JOIN ventas_productos vp ON v.id = vp.venta_id
JOIN productos p ON vp.producto_id = p.id
) vps 
GROUP BY vps.mes_venta;
