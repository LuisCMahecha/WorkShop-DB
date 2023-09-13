insert into cliente (id,nombre_cliente, nombre_contacto, apellido_contacto, telefono, fax, direccion1, direccion2, ciudad, region, pais, codigo_posta, limite_credito, id_empleado) values 
 (1,'Enoch', 'Gary', 'Bream',909922719, 8597107, '7616 Mitchell Terrace', '5807 Farmco Place', 'Majagual', 'US-CA', 'Colombia', 167, 1348, 1),
 (2,'Jayne', 'Tania', 'Mc Coughan', 459566039, 3587865, '8939 Waubesa Drive', '30 Talmadge Court', 'Annecy', 'NC-U-A', 'France', 732, 2404, 2),
 (3,'Maurie', 'Vaughn', 'Tongs', 657189564, 8447533, '61454 Steensland Drive', '2296 Norway Maple Trail', 'Kafarati', 'HN-GD', 'Colombia', 104, 595, 2),
 (4,'Rebbecca', 'Domini', 'Visco', 491773512, 3273290, '1865 Westridge Terrace', '1561 Barnett Trail', 'Zheleznogorsk', 'LS-A', 'Russia', 835, 3377, 4),
 (5,'Aggy', 'Leora', 'Marc', 141359417, 1928153, '3643 Kipling Lane', '25425 Kingsford Hill', 'Wuṯahpūr', 'MX-BCN', 'Afghanistan', 102, 3290, 1);
select * from cliente;
delete from cliente
where id>0;
insert into jefe (id, nombre, apellido1, apellido2) values 
 (1, 'Isiahi', 'Chelley', 'Tedahl'),
 (2, 'Valerye', 'Ball', 'Andreia'),
 (3, 'Vilma', 'Philippou', 'Shankster'),
 (4, 'Marcela', 'Lally', 'Stares'),
 (5, 'Georgeanne', 'Torres', 'Britner');
select * from jefe;

insert into oficina (id, ciudad, pais, region, codigo_postal, telefono, direccion) values 
 (1, 'Anjō', 'Japan', 'KZ-VOS', 106, 585581152, '74 Rigney Trail'),
 (2, 'Krasnoshchekovo', 'Russia', 'TL-BA', 156, 748693426, '7826 Dawn Drive'),
 (3, 'Stęszew', 'Poland', 'DE-RP', 787, 581830282, '4 Almo Junction'),
 (4, 'Huangjiakou', 'China', 'PF-U-A', 271, 973504095, '58549 Eggendart Court'),
 (5, 'Otradnoye', 'Russia', 'US-NJ', 544, 586448876, '13 Schurz Drive');
 select * from oficina;
 
 insert into empleado (id, nombre, apellido1, apellido2, extension, email, id_oficina, id_jefe) values 
 (1, 'Anabal', 'Chaffin', 'Perche', '07118', 'aperche0@walmart.com', 1, 1),
 (2, 'Alexi', 'McGaugan', 'Brisard', '8377', 'abrisard1@geocities.jp', 2, 1),
 (3, 'Sauveur', 'Troughton', 'McGivena', '3048', 'smcgivena2@rakuten.co.jp', 3, 3),
 (4, 'Casper', 'Woolatt', 'Milward', '7657', 'cmilward3@fotki.com', 5, 4),
 (5, 'Neille', 'Cowen', 'Bridgstock', '5537', 'nbridgstock4@dmoz.org', 5, 5);
 select * from empleado;
 
insert into pedido (id, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, id_cliente) values 
 (1, '2021-11-21', '2022-08-20', '2021-11-14', 'en espera', 'comentario', 1),
 (2, '2023-03-08', '2022-12-31', '2022-01-30', 'enviado', 'comentario', 2),
 (3, '2022-08-11', '2022-11-23', '2023-07-17', 'enviado', null, 2),
 (4, '2022-03-01', '2022-02-25', '2022-12-08', 'enviado', null, 4),
 (5, '2022-09-05', '2021-10-07', '2022-04-25', 'en espera', 'comentario', 5);
 select * from pedido;

insert into pagos_cliente (id, id_cliente, forma_pago, num_transaccion, fecha_pago, total_pago) values 
 (1, 1, 'efectivo', 20, '2021-03-02', 1484),
 (2, 2, 'efectivo', 4, '2023-05-05', 2926),
 (3, 2, 'credito', 11, '2023-06-13', 4086),
 (4, 4, 'credito', 15, '2022-04-25', 1471),
 (5, 5, 'efectivo', 10, '2023-01-31', 2220);
 select * from pagos_cliente;
 delete from pagos_cliente
where id>0;

insert into detalles_pedido ( id_pedido, id_producto, cantidad, precio_unidad) values 
(5, 5, 10, 70),
(5, 4, 7, 48),
(1, 3, 15, 39),
(3, 5, 17, 49),
(3, 5, 14, 53);
select * from detalles_pedido;

insert into producto (id, nombre, id_gama, dimensiones, proveedor, descripcion, cantidad_stock, precio_venta, precio_proveedor) values 
 (1, 'Ecolab ', 4, 7.44, 'NYSE', 'descripcion', 43, 427, 214),
 (2, 'Mangoes', 3, 4.78, 'NYSE', null, 14, 213, 261),
 (3, 'Napkin ', 1, 9.31, 'NASDAQ', null, 25, 458, 104),
 (4, 'Beef  Pickled', 1, 5.42, 'NASDAQ', 'descripcion', 26, 167, 53),
 (5, 'Ice Cream Bar ', 5, 3.42, 'NYSE', 'descripcion', 13, 320, 337);
select * from producto;

insert into gama (id, descripcion, imagen, detalle_pedido) values
(1, 'descripcion 1', 'imagen 1', 'detalle 1'),
(2, 'descripcion 2', 'imagen 2', 'detalle 2'),
(3, 'descripcion 3', 'imagen 3', 'detalle 3'),
(4, 'descripcion 4', 'imagen 4', 'detalle 4'),
(5, 'descripcion 5', 'imagen 5', 'detalle 5');
select * from gama;
