-- 1. Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.
select id, ciudad from oficina;

-- 2. Devuelve un listado con la ciudad y el teléfono de las oficinas de España (otra ciudad 'steszew'.)
select ciudad, telefono from oficina
where ciudad = 'steszew';

-- 3. Devuelve un listado con el nombre, apellidos y email de los empleados cuyo 
-- jefe tiene un código de jefe igual a 7
select nombre , apellido1, apellido2, email from empleado
where id_jefe = 1;


-- 4.  Devuelve un listado con el código de cliente de aquellos clientes que 
-- realizaron algún pago en 2008/(2023). Tenga en cuenta que deberá eliminar 
-- aquellos códigos de cliente que aparezcan repetidos. Resuelva la consulta:
-- • Utilizando la función YEAR de MySQL.
-- • Utilizando la función DATE_FORMAT de MySQL
select  distinct
id_cliente  from pagos_cliente
where year(fecha_pago)=2023
 ;
 select * from pagos_cliente;
 
 select  distinct
id_cliente  from pagos_cliente
where date_format(fecha_pago,'%Y') = 2023;

-- 5. ¿Cuántos empleados hay en la compañía?
select count(*) from empleado;

-- 6. ¿Cuántos clientes tiene cada país?
select count(*), pais from cliente
where pais = "colombia";

select count(*) from cliente
where pais="france";


select count(*) from cliente
where pais="russia";

select count(*) from cliente
where pais="afghanistan";

select * from cliente;

-- 7. ¿Cuál fue el pago medio en 2009(2023)
select avg(total_pago) as pago_medio from pagos_cliente
where year(fecha_pago)= 2023;

-- 8. ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma 
-- descendente por el número de pedidos
select estado,count(*) from pedido
group by estado
order by estado desc;

-- 9. Calcula el precio de venta del producto más caro y barato en una misma 
-- consulta
select  max(precio_venta) as mas_caro from producto;
select  min(precio_venta) from producto;

select nombre, precio_venta as mas_caro from producto 
order by precio_venta desc
limit 1;

select nombre, precio_venta as mas_barato from producto 
order by precio_venta asc
limit 1;

-- 10. Devuelve el nombre del cliente con mayor límite de crédito.
select nombre_cliente, limite_credito as mayor_credito from cliente
order by limite_credito desc
limit 1;

-- 11. Devuelve el nombre del producto que tenga el precio de venta más caro.
select nombre,precio_venta as mas_caro from producto
order by precio_venta desc
limit 1;

-- 12. Devuelve el nombre del producto del que se han vendido más unidades. 
-- (Tenga en cuenta que tendrá que calcular cuál es el número total de 
-- unidades que se han vendido de cada producto a partir de los datos de la 
-- tabla detalle_pedido)

select p.nombre,dp.cantidad as unidades_vendidas, dp.precio_unidad from producto p
inner join detalles_pedido dp on dp.id_producto= p.id
order by dp.cantidad desc
limit 1;

-- 13. Los clientes cuyo límite de crédito sea mayor que los pagos que haya 
-- realizado. (Sin utilizar INNER JOIN).

select c.id,c.nombre_cliente, c.limite_credito, p.total_pago from cliente c, pagos_cliente p
where c.id= p.id_cliente and c.limite_credito > p.total_pago
;
select * from cliente;
select * from pagos_cliente;

-- 14. Devuelve el listado de clientes indicando el nombre del cliente y cuantos 
-- pedidos ha realizado. Tenga en cuenta que pueden existir clientes que no 
-- han realizado ningún pedido.
select c.id,c.nombre_cliente, count(p.id_cliente) from cliente c
left join pedido p on c.id = p.id_cliente
group by c.id;

-- 15. Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos 
-- empleados que no sean representante de ventas de ningún cliente.

select e.id, e.nombre, e.apellido1,e.apellido2, e.id_oficina,o.telefono from empleado e  
inner join oficina o on e.id_oficina = o.id
where (select count(c.id_empleado) from cliente c
where c.id_empleado= e.id) = 0 
order by e.id;


-- 16. Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido 
-- los representantes de ventas de algún cliente que haya realizado la compra de algún 
-- producto de la gama Frutales.

select * from oficina where id not in (select  distinct o.id  from producto p 
inner join gama g on g.id =p.id_gama
inner join  detalles_pedido dp on dp.id_producto = p.id	
inner join  pedido pd on pd.id = dp.id_pedido
inner join  cliente c on c.id = pd.id_cliente
inner join  empleado e on e.id = c.id_empleado
inner join  oficina o on o.id = e.id_oficina
where g.descripcion = "frutales");


-- 17. Devuelve el listado de clientes indicando el nombre del cliente y cuantos pedidos ha realizado. 
-- Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido.

select c.nombre_cliente,  count(p.id ) as Pedido_total from cliente c 
left join pedido p on c.id = p.id_cliente
group by  c.nombre_cliente;

-- 18. Devuelve un listado con los nombres de los clientes y el total pagado por cada uno de ellos. 
-- Tenga en cuenta que pueden existir clientes que no han realizado ningún pago.

select  c.id, c.nombre_cliente, sum(pc.total_pago) from cliente c 
left join pagos_cliente pc on c.id =  pc.id_cliente
group by c.id;


select * from pagos_cliente;




