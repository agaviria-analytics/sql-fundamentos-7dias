
--Buscar clientes sin ciudad(IS NULL)
SELECT * FROM clientes
WHERE ciudad IS NULL;

--Insertar nuevo cliente de prueba
INSERT INTO clientes (nombre,ciudad,segmento)
VALUES('Cliente Demo',NULL,'Retail');

--Verificar que se inserto
SELECT * FROM clientes
WHERE id_cliente=12;

--Actualizar la ciudad del cliente 12
UPDATE clientes
SET ciudad ='Cartagena'
WHERE id_cliente=12;

--Eliminar el cliente 12
DELETE FROM clientes
WHERE id_cliente=12;