/* Rubros que no tienen ventas en los últimos 2 meses */
select
	r.rubro
from
	rubro as r
left join
	producto as p
	using(id_rubro)
left join
	venta as v
	on codigo = codigo_producto
where
	v.fecha < date(now() - interval 2 month)
    and r.rubro not in
    (
      select
        r.rubro
      from
        rubro as r
      left join
        producto as p
        using(id_rubro)
      left join
        venta as v
        on codigo = codigo_producto
      where
        v.fecha >= date(now() - interval 2 month)
      group by
        id_rubro
    )
group by
	id_rubro
