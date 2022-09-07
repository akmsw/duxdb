use duxdb;

insert into
	rubro (rubro)
values
	("librería"),
	("electro"),
	("bazar");

insert into
	producto (codigo, nombre, fecha_creacion, id_rubro)
values
	("001", "lapicera", '2022-09-07', 1),
	("002", "hojas A4", '2022-09-07', 1),
	("003", "lápiz", '2022-09-07', 1),
	("004", "goma", '2022-07-07', 1),
	("005", "compás", '2022-04-12', 1),
	("006", "tenedor", '2022-05-16', 3),
	("007", "mantel", '2022-02-22', 3),
	("008", "taza", '2022-01-17', 3),
	("009", "espejo", '2021-08-08', 3),
	("010", "tostadora", '2021-11-23', 2),
	("011", "lámpara", '2022-05-01', 2),
	("012", "licuadora", '2022-01-01', 3);

insert into
	cliente (nombre, apellido, cuit)
values
	("Francisco", "Bonino", '1998-06-04'),
	("Micaela", "Donati", '1998-09-27'),
	("Sonia", "Ordoñez", '1971-02-28'),
	("Leonel", "Rodríguez", '1985-11-14'),
	("Agustín", "Gutiérrez", '2001-08-21');

insert into
	venta (codigo_producto, fecha, cantidad, precio_unitario, id_cliente)
values
	("001", '2022-09-07', 3, 15, 1),
	("001", '2022-09-07', 5, 15, 3),
	("002", '2022-09-07', 48, 10, 3),
	("003", '2022-09-07', 5, 7, 4),
	("003", '2022-05-23', 5, 7, 4),
	("007", '2021-06-04', 1, 20, 2),
	("010", '2021-12-07', 1, 78, 1),
	("012", '2022-01-05', 1, 95, 2),
	("009", '2021-10-10', 2, 150, 2);
