-- 1. Producto mas vendido por mes el 2021
Select tabDos.mes as "Mes", p.nombre as "Producto más vendido", tabDos.max_veces_comprado as "Veces vendido" From Producto p
INNER JOIN(
	Select p.nombre, EXTRACT(MONTH FROM v.fecha) as mes, sum(pv.cantidad) as veces_comprado
	From Producto p, Venta v, Producto_venta pv
	Where p.id = pv.producto_id and  v.id = pv.venta_id
	and EXTRACT(YEAR FROM v.fecha) = 2021
	Group by p.nombre, EXTRACT(MONTH FROM v.fecha)
	) tabUno on p.nombre = tabUno.nombre
	
	INNER JOIN(
		Select tabIn.mes, max(veces_comprado) as max_veces_comprado
		From ( 
		Select p.nombre, EXTRACT(MONTH FROM v.fecha) as mes, sum(pv.cantidad) as veces_comprado
		From Producto p, Venta v, Producto_venta pv
		Where p.id = pv.producto_id and  v.id = pv.venta_id
		and EXTRACT(YEAR FROM v.fecha) = 2021
		Group by p.nombre, EXTRACT(MONTH FROM v.fecha)
		) tabIn Group by tabIn.mes
	) tabDos on tabUno.mes = tabDos.mes and tabUno.veces_comprado = tabDos.max_veces_comprado
	Order by tabDos.mes;


-- 2. producto más económico por tienda
 SELECT distinct a.nombre as "Nombre Tienda", Producto.nombre as "Nombre Producto",  Mas_Economico as "Precio"
FROM producto, Tienda_producto, Tienda, (SELECT Tienda.nombre, MIN(Producto.precio) AS Mas_Economico
    FROM Tienda, Tienda_producto, Producto
        WHERE Tienda.id = Tienda_producto.tienda_id
         AND Tienda_producto.producto_id = Producto.id
    GROUP BY Tienda.nombre) AS a
WHERE Tienda.id = Tienda_producto.tienda_id
  AND Tienda_producto.producto_id = Producto.id
  AND Tienda.nombre = a.nombre
  AND Producto.precio = Mas_Economico
order by a.nombre ASC; 


-- 3. Ventas por mes, separadas entre boletas y facturas: 
Select EXTRACT(YEAR FROM v.fecha) as "Año", EXTRACT(MONTH FROM v.fecha) as "Mes", count(*) as "Nº de ventas", td.nombre "Tipo de documento"
From  Venta v, Tipo_documento td
Where td.id = v.tipodoc_id
Group by EXTRACT(YEAR FROM v.fecha), EXTRACT(MONTH FROM v.fecha), td.nombre
Order by EXTRACT(YEAR FROM v.fecha), EXTRACT(MONTH FROM v.fecha);


-- 4. Empleado que ganó más por tienda 2020, indicando la comuna donde vive y el cargo que tiene en la empresa
select distinct on (q1.tienda_id) 
q1.nombre, q1.sueldo, co.nombre as comuna, ti.nombre as tienda, ca.nombre as cargo
from (
	select e.id, e.nombre, e.cargo_id, e.tienda_id, sum(s.valor) as sueldo, comuna_id
	from empleado e
	inner join sueldo s on e.id = s.empleado_id
	where EXTRACT(YEAR FROM s.fecha) = 2020
	group by e.id
) q1
inner join tienda ti on q1.tienda_id = ti.id
inner join comuna co on q1.comuna_id = co.id
inner join cargo ca on q1.cargo_id = ca.id
order by q1.tienda_id, q1.sueldo desc;


-- 5. La tienda que tiene menos empleados
select nombre from tienda
where id = (select n1.tienda_id from (select count(id) as empleados, tienda_id from empleado
group by tienda_id order by empleados asc FETCH FIRST ROW ONLY) n1);


-- 6. El vendedor con más ventas por mes
select distinct on (q1.mes)
e.id, e.nombre, e.rut, q1.mes, q1.ventas
from (
	select empleado_id, EXTRACT(MONTH FROM fecha) as mes, count(id) as ventas
	from venta
	group by empleado_id, mes
	order by ventas desc
) q1
inner join empleado e on e.id = q1.empleado_id
order by q1.mes, q1.ventas desc;


-- 7. el vendedor que ha recaudado más dinero para la tienda por año
select	empleado.nombre, mxanio.anio, mxanio.total from empleado
inner join(
	select sum(total) total, EXTRACT(YEAR FROM fecha) as anio, empleado_id from venta
	group by anio, empleado_id) ia on empleado.id= ia.empleado_id
	inner join(
		select anio, max(total) total from(
			select sum(total) total, EXTRACT(YEAR FROM fecha) as anio, empleado_id from venta
			group by anio, empleado_id) d
		group by anio
		) mxanio on ia.anio = mxanio.anio and ia.total = mxanio.total;


-- 8. el vendedor con mas productos vendidos por tienda
SELECT p.nombre, p.tienda, MAX(p.total_productos) AS Total_productos
FROM (SELECT Empleado.nombre, b.total_productos, Tienda.nombre AS tienda
    FROM Tienda, Empleado, Venta,
        (SELECT Producto_venta.venta_id, SUM(Producto_venta.cantidad) AS total_productos
        FROM Producto_venta,
             (SELECT a.venta_id
              FROM Producto_venta,
                   (SELECT Empleado.nombre, Producto_venta.venta_id, Producto_venta.cantidad
                    FROM Cargo,Empleado, Venta, Producto_venta
                      WHERE Cargo.nombre = 'Vendedor'
                      AND Cargo.id = Empleado.cargo_id
                      AND Venta.empleado_id = empleado.id
                      AND Venta.id = Producto_venta.venta_id) AS a
              GROUP BY a.venta_id) AS e
        WHERE e.venta_id = Producto_venta.venta_id
        GROUP BY Producto_venta.venta_id) AS b
    WHERE Venta.id = b.venta_id
    AND Venta.empleado_id = Empleado.id
    AND Tienda.id = Empleado.tienda_id) AS p
GROUP BY p.tienda, p.nombre;


-- 9. El empleado con mayor sueldo por mes
SELECT distinct e.nombre as Nombre, e.rut as Rut, Mayor_Sueldo, EXTRACT(MONTH FROM s.fecha) mes, EXTRACT(YEAR FROM s.fecha) an
FROM Empleado e, Sueldo s, (SELECT EXTRACT(MONTH FROM Sueldo.fecha) mes, EXTRACT(YEAR FROM Sueldo.fecha) an, MAX(Sueldo.valor) AS Mayor_Sueldo
    FROM Empleado, Sueldo
        WHERE Sueldo.empleado_id = Empleado.id
    GROUP BY EXTRACT(YEAR FROM Sueldo.fecha), EXTRACT(MONTH FROM Sueldo.fecha)) AS a
WHERE s.empleado_id = e.id
  AND EXTRACT(YEAR FROM s.fecha) = a.an
  AND EXTRACT(MONTH FROM s.fecha) = a.mes
  AND s.valor = Mayor_Sueldo
Order by EXTRACT(YEAR FROM s.fecha), EXTRACT(MONTH FROM s.fecha);


-- 10. Tienda con menor recaudacion por mes
Select tabDos.anio as "Año", tabDos.mes as "Mes", t.nombre as "Tienda con menor recaudación", tabDos.min_total_mes as "Recaudación" From Tienda t
INNER JOIN(
		Select tabIn.anio, tabIn.mes, tabIn.tienda, sum(tabIn.total) as total_mes
		From ( 	
			Select EXTRACT(YEAR FROM v.fecha) as anio, EXTRACT(MONTH FROM v.fecha) as mes, t.nombre as tienda, v.total as total
			From Venta v, Empleado e, Tienda t
			Where t.id = e.tienda_id and  e.tienda_id = v.empleado_id
			Group by EXTRACT(YEAR FROM v.fecha), EXTRACT(MONTH FROM v.fecha), t.nombre, v.total
		) tabIn
		Group by tabIn.anio, tabIn.mes, tabIn.tienda
	) tabUno on t.nombre = tabUno.tienda
	
	INNER JOIN(
		Select tab_tMinTotal.anio, tab_tMinTotal.mes, min(total_mes) as min_total_mes
		From(
			Select tabIn.anio, tabIn.mes, tabIn.tienda, sum(tabIn.total) as total_mes
			From ( 	
				Select EXTRACT(YEAR FROM v.fecha) as anio, EXTRACT(MONTH FROM v.fecha) as mes, t.nombre as tienda, v.total as total
				From Venta v, Empleado e, Tienda t
				Where t.id = e.tienda_id and  e.tienda_id = v.empleado_id
				Group by EXTRACT(YEAR FROM v.fecha), EXTRACT(MONTH FROM v.fecha), t.nombre, v.total
			) tabIn
			Group by tabIn.anio, tabIn.mes, tabIn.tienda
		) tab_tMinTotal
		Group by tab_tMinTotal.anio, tab_tMinTotal.mes
	) tabDos on tabUno.anio = tabDos.anio and tabUno.mes = tabDos.mes and tabUno.total_mes = tabDos.min_total_mes
	Order by tabDos.anio, tabDos.mes;