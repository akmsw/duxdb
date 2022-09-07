/* Todos los productos del rubro "librería" creados hoy */
select distinct
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
