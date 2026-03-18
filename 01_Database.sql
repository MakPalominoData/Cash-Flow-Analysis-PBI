-- 1. Creación de la base de datos:

CREATE DATABASE	finanzas_empresa;
use finanzas_empresa;

-- 2. Creación de tabla de transacciones:

CREATE TABLE transacciones(
id int auto_increment PRIMARY KEY,
fecha DATE,
categoria VARCHAR(50),
descripcion VARCHAR(50),
monto DECIMAL(10,2),
tipo ENUM('Ingreso', 'Egreso'),
entidad VARCHAR (50) -- nombre cliente proveedor.as
);

-- 3. Llenado de información a la tabla (simulación de 1 año)

INSERT INTO transacciones (fecha, categoria, descripcion, monto, tipo, entidad) VALUES
('2025-01-05', 'Ventas', 'Servicio de Consultoría', 5000.00, 'Ingreso', 'Cliente Alpha'),
('2025-01-10', 'Gastos Fijos', 'Alquiler Oficina', 1200.00, 'Egreso', 'Inmobiliaria Central'),
('2025-01-15', 'Ventas', 'Venta de Licencias', 3000.00, 'Ingreso', 'Cliente Beta'),
('2025-01-20', 'Servicios', 'Pago de Electricidad', 200.00, 'Egreso', 'Enel'),
('2025-01-25', 'Proveedores', 'Compra de Equipos', 2500.00, 'Egreso', 'Tech Solutions SAC'),
('2025-02-05', 'Ventas', 'Mantenimiento Mensual', 4500.00, 'Ingreso', 'Cliente Gamma'),
('2025-02-12', 'Gastos Fijos', 'Alquiler Oficina', 1200.00, 'Egreso', 'Inmobiliaria Central'),
('2025-02-18', 'Proveedores', 'Insumos de Oficina', 800.00, 'Egreso', 'Distribuidora Global'),
('2025-02-25', 'Ventas', 'Venta de Licencias', 3500.00, 'Ingreso', 'Cliente Alpha'),
('2025-03-05', 'Ventas', 'Servicio de Consultoría', 5200.00, 'Ingreso', 'Cliente Beta'),
('2025-03-10', 'Proveedores', 'Servicios Cloud', 1500.00, 'Egreso', 'Tech Solutions SAC'),
('2025-03-15', 'Gastos Fijos', 'Alquiler Oficina', 1200.00, 'Egreso', 'Inmobiliaria Central'),
('2025-03-20', 'Marketing', 'Campaña Redes', 600.00, 'Egreso', 'Agencia Creativa');

select * from transacciones;
