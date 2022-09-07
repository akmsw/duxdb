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
