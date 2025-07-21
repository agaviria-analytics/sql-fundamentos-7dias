
--Productos ordenadOs por precio(mayor a menor)
SELECT * FROM productos
ORDER BY precio_unitario DESC;

--Clientes ordenados por ciudad(A-Z)
SELECT * FROM clientes
ORDER BY ciudad ASC;

--Mostrar los 3 productos mas baratos
SELECT TOP 3 *
FROM productos
ORDER BY precio_unitario ASC;

--Alias personalizado en columnas
SELECT nombre AS cliente, ciudad AS ubicacion
FROM clientes;

SELECT * FROM ventas
--Ventas ordenadas por total(de mayor a menor)
SELECT * FROM ventas
ORDER BY total DESC;