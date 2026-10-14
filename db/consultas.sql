USE negocio;

-- 1. Mostrar los productos con el nombre de su categoria,
-- ordenados por nombre.
SELECT p.nombre AS producto,
       c.nombre AS categoria
FROM productos p
JOIN categorias c ON p.categoria_id = c.id
ORDER BY p.nombre;

-- 2. Mostrar productos con menos de 5 unidades en stock.
SELECT nombre, stock
FROM productos
WHERE stock < 5;

-- 3. Calcular el precio promedio por categoria.
SELECT c.nombre AS categoria,
       AVG(p.precio) AS precio_promedio
FROM categorias c
JOIN productos p ON c.id = p.categoria_id
GROUP BY c.id, c.nombre;

-- 4. Mostrar los pedidos de un cliente con fecha y estado.
SELECT cl.nombre AS cliente,
       pe.fecha,
       pe.estado
FROM pedidos pe
JOIN clientes cl ON pe.cliente_id = cl.id
WHERE cl.nombre = 'Ana Lopez';

-- 5. Calcular el total en dinero de cada pedido.
SELECT pe.id AS pedido,
       SUM(dp.cantidad * dp.precio_unitario) AS total
FROM pedidos pe
JOIN detalle_pedido dp ON pe.id = dp.pedido_id
GROUP BY pe.id
ORDER BY pe.id;

-- 6. Mostrar clientes con mas de 2 pedidos.
SELECT cl.nombre AS cliente,
       COUNT(pe.id) AS cantidad_pedidos
FROM clientes cl
JOIN pedidos pe ON cl.id = pe.cliente_id
GROUP BY cl.id, cl.nombre
HAVING COUNT(pe.id) > 2;

-- 7. Eliminar un cliente que no tenga pedidos.
-- Pedro Ortiz tiene el ID 6 y no tiene pedidos.
DELETE FROM clientes
WHERE id = 6
AND NOT EXISTS (
    SELECT 1
    FROM pedidos
    WHERE pedidos.cliente_id = clientes.id
);