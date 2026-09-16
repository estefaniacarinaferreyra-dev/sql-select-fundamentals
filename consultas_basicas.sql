-- ══════════════════════════════════════════
-- TechStore — Consultas Básicas SELECT
-- Autor: [Ferreyra Estefania]
-- Fecha: [19-09-2026]
-- ══════════════════════════════════════════

----Consulta 1 — Exploración general
SELECT *
FROM sales

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