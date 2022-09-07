/* Todos los productos del rubro "librería" creados hoy */
select
	p.nombre as nombre_producto,
	p.fecha_creacion,
	r.rubro
from
	producto as p
join
	rubro as r
where
	rubro = "librería"
and
	fecha_creacion = date(now());





/* Monto total vendido por cliente */
select
	c.nombre as nombre_cliente,
	c.apellido as apellido_cliente,
	v.cantidad * v.precio_unitario as monto_total
from
	venta as v
join
	cliente as c
	using(id_cliente)
group by
	id_cliente;





/* Cantidad de ventas por producto */
select
	p.nombre as nombre_producto,
    count(id_venta) as cantidad_ventas
from
	venta as v
join
	producto as p
on
	codigo_producto = codigo
group by
	id_venta;
