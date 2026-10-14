USE negocio;

-- 1. Insertar 3 categorias
INSERT INTO categorias (nombre) VALUES
('Electronica'),
('Hogar'),
('Oficina');

-- 2. Insertar 12 productos
INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES
('Laptop', 1, 4500.00, 8),
('Mouse', 1, 85.00, 20),
('Teclado', 1, 150.00, 4),
('Monitor', 1, 1200.00, 6),
('Auriculares', 1, 220.00, 3),
('Parlante', 1, 350.00, 10),
('Silla', 2, 650.00, 5),
('Mesa', 2, 900.00, 2),
('Lampara', 2, 120.00, 15),
('Cuaderno', 3, 25.00, 50),
('Impresora', 3, 1100.00, 4),
('Boligrafo', 3, 5.00, 100);

-- 3. Insertar 6 clientes
INSERT INTO clientes (nombre, telefono, email) VALUES
('Ana Lopez', '70111111', 'ana@example.com'),
('Luis Perez', '70222222', 'luis@example.com'),
('Maria Rojas', '70333333', 'maria@example.com'),
('Carlos Flores', '70444444', 'carlos@example.com'),
('Sofia Vargas', '70555555', 'sofia@example.com'),
('Pedro Ortiz', '70666666', 'pedro@example.com');

-- 4. Insertar 10 pedidos
INSERT INTO pedidos (cliente_id, fecha, estado) VALUES
(1, '2026-10-01', 'Entregado'),
(1, '2026-10-03', 'Entregado'),
(1, '2026-10-05', 'Pendiente'),
(2, '2026-10-02', 'Entregado'),
(2, '2026-10-06', 'Enviado'),
(3, '2026-10-04', 'Pendiente'),
(3, '2026-10-07', 'Entregado'),
(4, '2026-10-08', 'Enviado'),
(4, '2026-10-09', 'Pendiente'),
(5, '2026-10-10', 'Entregado');

-- 5. Insertar 25 detalles de pedidos
INSERT INTO detalle_pedido
(pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 4500.00),
(1, 2, 2, 85.00),
(1, 10, 5, 25.00),
(2, 3, 1, 150.00),
(2, 4, 1, 1200.00),
(2, 12, 10, 5.00),
(3, 5, 2, 220.00),
(3, 6, 1, 350.00),
(4, 7, 1, 650.00),
(4, 9, 2, 120.00),
(4, 10, 10, 25.00),
(5, 8, 1, 900.00),
(5, 11, 1, 1100.00),
(6, 2, 3, 85.00),
(6, 3, 2, 150.00),
(7, 1, 1, 4500.00),
(7, 5, 1, 220.00),
(7, 12, 20, 5.00),
(8, 4, 2, 1200.00),
(8, 6, 2, 350.00),
(9, 7, 2, 650.00),
(9, 9, 3, 120.00),
(10, 10, 15, 25.00),
(10, 11, 1, 1100.00),
(10, 12, 30, 5.00);