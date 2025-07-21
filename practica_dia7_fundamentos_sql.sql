
SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM ventas;

--Insertar y confirmar (COMMIT)
BEGIN TRANSACTION;

INSERT INTO clientes (nombre, ciudad, segmento)
VALUES ('Cliente Transacci�n', 'Cali', 'Corporativo');

-- Si todo est� bien:
COMMIT;


--Insertar y deshacer (ROLLBACK)
BEGIN TRANSACTION;

INSERT INTO clientes (nombre, ciudad, segmento)
VALUES ('Cliente Error', 'Bogot�', 'Retail');

-- Ups... decidimos cancelar
ROLLBACK;

--Producto m�s caro
SELECT * 
FROM productos 
WHERE precio_unitario = (
  SELECT MAX(precio_unitario) FROM productos
);

-- Clientes con ventas superiores al promedio
SELECT c.nombre, v.total 
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
WHERE v.total > (
  SELECT AVG(total) FROM ventas
);

-- Productos vendidos m�s de una vez
SELECT * 
FROM productos 
WHERE id_producto IN (
  SELECT id_producto 
  FROM ventas 
  GROUP BY id_producto 
  HAVING COUNT(*) > 1
);

--Clientes sin ventas registradas
SELECT * 
FROM clientes 
WHERE id_cliente NOT IN (
  SELECT id_cliente FROM ventas
);


--Promedio y m�ximo de ventas
SELECT 
  AVG(total) AS promedio_total,
  MAX(total) AS venta_mayor
FROM ventas;
