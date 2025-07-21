SELECT * FROM productos;
SELECT * FROM proveedores;
SELECT * FROM ventas

-- Crear tabla auxiliar de prueba
CREATE TABLE proveedores (
  id_proveedor INT PRIMARY KEY,
  nombre VARCHAR(100),
  ciudad VARCHAR(50)
);

--Agregar columna a productos
ALTER TABLE productos
ADD stock INT;

--Eliminar columna stock (si necesitas revertir)
ALTER TABLE productos
DROP COLUMN stock;

--Eliminar tabla de prueba proveedores
DROP TABLE proveedores;

--Crear una copia de seguridad de ventas
SELECT * INTO ventas_backup FROM ventas;

--verificar que se cre� correctamente
SELECT * FROM ventas_backup;

SELECT * FROM ventas
--Truncar la tabla original ventas
TRUNCATE TABLE ventas;

-- Restaurar datos desde el respaldo (si deseas volver atr�s)
INSERT INTO ventas
SELECT * FROM ventas_backup;

--La tabla ventas tiene una columna id_venta definida como IDENTITY, es decir
--SQL Server la genera autom�ticamente (1, 2, 3...)
--No puedes insertar valores manualmente en esa columna, a menos que actives algo especial.

--Soluci�n paso a paso: usar IDENTITY_INSERT ON
--Activar IDENTITY_INSERT
SET IDENTITY_INSERT ventas ON;

--Insertar con columnas expl�citas
INSERT INTO ventas (id_venta, id_cliente, id_producto, fecha, cantidad, total)
SELECT id_venta, id_cliente, id_producto, fecha, cantidad, total
FROM ventas_backup;

-- Desactivar IDENTITY_INSERT
SET IDENTITY_INSERT ventas OFF;

--eliminar la tabla ventas_backup
DROP TABLE ventas_backup;