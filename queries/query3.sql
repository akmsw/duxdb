/* Cantidad de ventas por producto */
select
	p.nombre as nombre_producto,
	count(id_venta) as cantidad_ventas
from
	producto as p
left join
	venta as v
	on codigo = codigo_producto
group by
	nombre_producto;
