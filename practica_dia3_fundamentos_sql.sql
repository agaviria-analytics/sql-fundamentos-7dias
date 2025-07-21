
--Mostrar las ventas junto con nombre del cliente y nombre del producto
SELECT v.id_venta, c.nombre AS cliente,p.nombre AS producto,v.fecha,v.total
FROM ventas v
JOIN clientes c ON v.id_cliente=c.id_cliente
JOIN productos p ON v.id_producto=p.id_producto;

--Unir ventas con clientes
SELECT v.id_venta,c.nombre AS cliente, v.total
FROM ventas v
JOIN clientes c ON v.id_cliente=c.id_cliente

--Unir ventas con productos
SELECT v.id_venta,p.nombre AS producto, v.total
FROM ventas v
JOIN productos p ON v.id_producto=p.id_producto

--Unir las tres tablsa ventas,clientes,productos
SELECT v.id_venta,c.nombre AS cliente,p.nombre AS producto,v.total
FROM ventas v
JOIN clientes c ON V.id_cliente=c.id_cliente
JOIN productos p ON V.id_producto=P.id_producto

SELECT * FROM clientes
--Clientes que seand e Bogota y tengan segmento corporativo
SELECT * FROM clientes
WHERE ciudad = 'Bogotá' AND segmento='Corporativo'

SELECT * FROM productos
--Productos que sean granos o tengas precio >8000
SELECT * FROM productos
WHERE categoria='Granos' OR precio_unitario>8000;

--Clasificar productos por precio(CASE)
SELECT nombre,
	CASE
	 WHEN precio_unitario>=8000 THEN 'Alta'
	 WHEN precio_unitario>=3000 THEN 'Medio'
	 ELSE 'Baja'
	END AS rango_precio
FROM productos;

--Clasificar ventas por monto(CASE)
SELECT id_venta, total,
	CASE
		WHEN total>=20000 THEN 'Venta Alta'
		WHEN total>=10000 THEN 'Venta Media'
		ELSE 'Venta Baja'
	END AS Clasificacion_venta
FROM ventas;


--Trae el nombre del cliente, el nombre del producto y el total de la venta
SELECT v.id_venta,c.nombre AS cliente , p.nombre AS producto, v.total
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN productos P on v.id_producto = p.id_producto





