/* Selección de la base de datos para trabajar */
use duxdb;

/* Carga de datos en tabla de rubros */
insert into
	rubro (rubro)
values
	("librería"),
	("electro"),
	("bazar");

/* Carga de datos en tabla de productos */
insert into
	producto (codigo, nombre, fecha_creacion, id_rubro)
values
	("001", "lapicera", '2022-09-07', 1),
	("002", "hojas A4", '2022-09-07', 1),
	("003", "lápiz", '2022-09-07', 1);

/* Carga de datos en tabla de clientes */
insert into
	cliente (nombre, apellido, cuit)
values
	("Francisco", "Bonino", '1998-06-04'),
	("Sonia", "Ordoñez", '1971-02-28'),
	("Leonel", "Rodríguez", '1971-11-14');

/* Carga de datos en tabla de ventas */
insert into
	venta (codigo_producto, fecha, cantidad, precio_unitario, id_cliente)
values
	("001", '2022-09-07', 3, 15, 1),
	("002", '2022-09-07', 48, 10, 2),
	("003", '2022-09-07', 5, 7, 3);
