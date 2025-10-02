
-- INSERTAR DATOS
-- 1. PRIMERO: Insertar Clientes (las facturas dependen de ellos)
INSERT INTO Cliente_3FN (codigo_cliente, nombre_cliente) VALUES
('01', 'ALVAREZ'),
('107', 'CASTRO'),
('110', 'LIZ');

-- 2. SEGUNDO: Insertar Artículos (los detalles dependen de ellos)
INSERT INTO Articulo_3FN (codigo_articulo, nombre_articulo) VALUES
('01', 'LÁPIZ'),
('02', 'GOMA'),
('08', 'COMPÁS'),
('10', 'HOJAS'),
('20', 'REGLA');

-- 3. TERCERO: Insertar Facturas (dependen de clientes)
INSERT INTO Factura_3FN (sucursal, numero_factura, fecha_factura, forma_pago, codigo_cliente, total_factura) VALUES
('01', '500', '2006-01-01', 'E', '01', 48.20),
('01', '501', '2006-01-02', 'CC', '107', 16.00),
('02', '500', '2006-01-03', 'E', '110', 14.90);

-- 4. CUARTO: Insertar Detalles de Factura (dependen de facturas y artículos)
INSERT INTO Detalle_Factura_3FN (sucursal, numero_factura, codigo_articulo, cantidad_articulo, precio_unitario, subtotal_articulo) VALUES
-- Factura 01-500
('01', '500', '01', 3, 1.25, 3.75),
('01', '500', '02', 6, 0.75, 4.50),
('01', '500', '10', 8, 5.00, 40.00),
-- Factura 01-501
('01', '501', '08', 4, 4.00, 16.00),
-- Factura 02-500
('02', '500', '20', 2, 2.45, 4.90),
('02', '500', '10', 2, 5.00, 10.00);
