/* Monto total vendido por cliente */
select
	c.nombre as nombre_cliente,
	c.apellido as apellido_cliente,
	ifnull(v.cantidad * v.precio_unitario, 0) as monto_total
from
	cliente as c
left join
	venta as v
	using(id_cliente)
group by
	id_cliente;
