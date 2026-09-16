# sql-select-fundamentals
TechStore - SQL SELECT Fundamentals
Autor: Estefania Ferreyra  
Fecha: 19-09-2026
Descripción
Este repositorio contiene tres consultas SQL básicas realizadas sobre la tabla `sales`. El objetivo es practicar la instrucción `SELECT`, la selección de columnas específicas y el uso de alias para presentar los datos de forma clara.
---
Consulta 1 - Exploración general
¿Qué hace?
La consulta devuelve todas las columnas y todos los registros de la tabla `sales`.
Es útil para una exploración inicial de la estructura y del contenido de una tabla, especialmente cuando se está conociendo un conjunto de datos.
---
Consulta 2 - Selección específica
```
¿Qué hace?
La consulta selecciona únicamente tres columnas de la tabla `sales`:
`customer_id` → `Cliente`
`product_id` → `Producto`
`total_amount` → `Monto`
El uso de `AS` permite mostrar nombres más fáciles de interpretar para una persona que consulta los resultados.
---
Consulta 3 - Nombres amigables con alias
```
¿Qué hace?
La consulta selecciona tres columnas y utiliza `AS` para renombrarlas en español utilizando `snake_case`:
`order_date` → `fecha_pedido`
`product_name` → `nombre_producto`
`quantity` → `cantidad_unidades`
Esto facilita la lectura de los resultados y permite que los nombres de las columnas sean más claros para los usuarios.
---
¿Por qué es mala práctica usar `SELECT *` en producción?
Aunque `SELECT *` puede ser útil durante una exploración inicial, no suele ser recomendable en consultas de producción por varias razones:
Rendimiento: puede recuperar columnas que no son necesarias, aumentando la cantidad de datos procesados y transferidos.
Mantenibilidad: si se agregan nuevas columnas a la tabla, el resultado de la consulta puede cambiar inesperadamente.
Claridad: indicar explícitamente las columnas permite saber exactamente qué información utiliza la consulta.
Seguridad: seleccionar solo las columnas necesarias reduce el riesgo de exponer información que no debería formar parte del resultado.
Por estas razones, en producción es preferible especificar las columnas requeridas.
---
¿Por qué son importantes los alias para un stakeholder no técnico?
Los alias permiten transformar nombres técnicos de bases de datos en nombres que resultan más fáciles de interpretar.
Por ejemplo:
```
Una persona del área de Finanzas puede interpretar directamente `Monto` como el importe de la operación, sin necesidad de conocer el nombre técnico.
Los alias mejoran la comunicación entre los equipos técnicos y los usuarios de negocio, y hacen que los resultados sean más fáciles de leer y utilizar en reportes o análisis.
---
