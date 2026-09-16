-- ══════════════════════════════════════════
-- TechStore — Consultas Básicas SELECT
-- Autor: Ferreyra Estefania
-- Fecha: 19-09-2026
-- ══════════════════════════════════════════

----Consulta 1 — Exploración general
SELECT *
FROM sales
--utilizar el select * es útil cuando necesitamos saber que información tiene una tabla,
--para conocer la estructura de la misma y pocibles vínculos con otras tablas, pero la desventaja
-- es que si la tabla tiene muchos registros puede ser poco eficiente y demorar mas de lo deseado.

---Consulta 2 — Selección específica
SELECT 
customer_id AS Cliente, 
product_id AS Producto,
total_amount AS Monto
FROM sales

--Consulta 3 — Nombres amigables con alias
SELECT
order_date AS fecha_pedido,
product_name AS nombre_producto,
quantity AS cantidad_unidades
FROM sales