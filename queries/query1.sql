/* Todos los productos del rubro "librería" creados hoy */
select
	p.nombre as nombre_producto,
	p.fecha_creacion,
	r.rubro
from
	producto as p
join
	rubro as r
	using(id_rubro)
where
	rubro = "librería"
and
	fecha_creacion = date(now());
