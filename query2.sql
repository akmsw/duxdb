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
