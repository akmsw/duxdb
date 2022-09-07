/* Cantidad de productos comprados por cliente en el mes actual */
select
	c.nombre as nombre_cliente,
	c.apellido as apellido_cliente,
	count(id_venta) as compras_este_mes
from
	cliente as c
left join
	(
		select
			id_cliente,
			id_venta,
			fecha
		from
			venta
		where
			month(fecha) = month(now())
	) ventas_mes_actual
	using(id_cliente)
group by
	id_cliente;
