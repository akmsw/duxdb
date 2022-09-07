/* Ventas que tienen al menos un producto del rubro "bazar" */
select
	id_venta,
	rubro
from
	(
		select
			v.id_venta as id_venta,
			r.rubro as rubro
		from
			venta as v
		join
			producto as p
		on
			codigo_producto = codigo
		join
			rubro as r
			using(id_rubro)
  ) ventas_por_rubro
where
	rubro = "bazar";
