--Mostrar todos los clientes
SELECT * FROM clientes;

--Mostrar solo nombre y ciudad de los clientes
SELECT nombre,ciudad FROM clientes;

--Clientes cuyo nombre comienza por 'Tienda'
SELECT * FROM clientes
WHERE nombre LIKE 'Tienda%';

--Mostrar todos los productos
SELECT * FROM productos;

--Productos que sean de la categoria Granos o Aceites
SELECT * FROM productos
WHERE categoria IN('Granos','Aceites');

--Productos(nombre, precio unitario) cuyo precio sea > 5000
SELECT nombre, precio_unitario
FROM productos
WHERE precio_unitario > 5000;