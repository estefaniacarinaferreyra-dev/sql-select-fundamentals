-- Consulta 1 Resumen Ejecutivo Mensual--

SELECT 
SUM (ventas.cantidad * ventas.precio_unitario) as total_facturado,
COUNT (id_venta) as cantidad_pedidos,
AVG (ventas.cantidad * ventas.precio_unitario) as ticket_promedio,
MONTH (fecha_venta) as mes_venta
FROM ventas
GROUP BY 
MONTH (fecha_venta);

-- Consulta 2 Ranking de productos--

SELECT TOP 5
id_producto,
SUM (ventas.cantidad) as unidades_vendidas,
SUM (ventas.cantidad * ventas.precio_unitario) as total_facturado
FROM ventas
GROUP BY 
id_producto
ORDER BY total_facturado DESC;

--Consulta 3 — Clientes recurrentes 

SELECT 
id_cliente,
COUNT (id_venta) as cantidad_pedidos,
SUM (ventas.cantidad * ventas.precio_unitario) as total_gastado
FROM ventas
GROUP BY 
id_cliente
HAVING COUNT(id_venta) > 1;

--Consulta 4 — Meses por encima/por debajo del promedio 

SELECT 
mes_venta,
total_facturado,
AVG (total_facturado)OVER () as promedio_mensual,
CASE 
WHEN (total_facturado > AVG (total_facturado) OVER ()) THEN 'Por encima' 
WHEN (total_facturado < AVG (total_facturado) OVER ()) THEN 'Por debajo' 
ELSE 'Igual al promedio' END AS versus_promedio
FROM (
SELECT MONTH (fecha_venta) as mes_venta,
SUM (ventas.cantidad * ventas.precio_unitario) as total_facturado
FROM ventas
GROUP BY 
MONTH (fecha_venta)
) AS ventas_mensuales
ORDER BY mes_venta


--CONCLUSIONES: 
-- el mes de marzo fue el único cuya facturación superó el promedio mensual
-- el cliente número 1 fue el que mayor monto gastó
-- el producto más vendido fue el producto 2, y el que mas facturó fué el producto 1
-- el mes 4 fué el que tuvo el ticket promedio mas alto

