
--Total de ventas por producto
SELECT p.nombre AS producto, SUM(v.total) AS total_ventas
FROM ventas v
JOIN productos P on V.id_producto=P.id_producto
GROUP BY p.nombre;

--Promedio del total de ventas por cliente
SELECT c.nombre AS cliente, AVG(v.total)AS promedio_venta
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.nombre;

--Conteo de ventas por ciudad
SELECT c.ciudad , COUNT(v.id_venta)AS cantidad_ventas
FROM ventas v
JOIN clientes c ON v.id_cliente=c.id_cliente
GROUP BY c.ciudad;

--Productos con más de 2 ventas (uso de HAVING)
SELECT p.nombre AS producto,COUNT(v.id_venta)AS veces_vendido
FROM ventas v
JOIN productos p ON v.id_producto=p.id_producto
GROUP BY p.nombre
HAVING COUNT(v.id_venta)>= 2;

-- Precio mínimo y máximo por categoría de producto
SELECT categoria, MIN(precio_unitario)AS precio_minimo,MAX(precio_unitario)AS precio_maximo
FROM productos
GROUP BY categoria;