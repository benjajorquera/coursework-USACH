-- RELLENO TABLA PRODUCTO (Tienda comercial tipo super - de todo un poco):
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (1, 'kilo de Palta', 2500, 'Palta chilena', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (2, 'Kilo de Papa', 1000, 'Papa sureña', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (3, 'Leche Calo 1 lt', 800, 'Soprole', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (4, 'Kilo posta', 7000, 'Posta rosada', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (5, 'Polera Marvel', 10000, 'Diseño marvel', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (6, 'Falda roxy', 12000, 'Minifalda jeans', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (7, 'flipflops Reef', 10000, 'Diseño urbano', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (8, 'Pantene Floral', 4000, 'Shampoo de cuidado capital', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (9, 'Torobayo 500cc', 2000, 'Cerveza', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (10, 'CocaCola 2.5 lt', 2500, 'Bebida sin azucar', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (11, 'Galletas Mantequilla', 700, 'Galletas Costa 135 g', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (12, 'Cafe Tradicional', 4500, 'Cafe Nescafe Tarro 170 g', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (13, 'Vino purgatori', 25000, 'Vino Miguel Torres 14.5° 750 cc', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (14, 'Mermelada frambuesa sin azucar', 1000, 'Mermelada Watts 200 g', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (15, 'Te Indian Chai', 2500, 'Te Twings caja 10 unidaddes', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (16, 'Milo', 4000, 'Saborizante para leche 500 g', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (17, 'Oreo', 650, 'Galletas de chocolate crema vainilla 154 g', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (18, 'Cafe Juan Valdez', 10000, 'Cafe grano molido 250 g', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (19, 'Chocolate blanco', 1600, 'Chocolate Costa 115 g', '2010-10-10', '2010-10-15');
INSERT INTO Producto (id, nombre, precio, descripción, createDate, updateDate) VALUES (20, 'Endulzante sucralosa liquido', 2000, 'Endulzante Daily 180 ml', '2010-10-10', '2010-10-15');



-- RELLENO TABLA TIPO-DOCUMENTO:
INSERT INTO Tipo_documento (id, nombre, createDate, updateDate) VALUES (1, 'Boleta', '2010-10-10', '2010-10-15');
INSERT INTO Tipo_documento (id, nombre, createDate, updateDate) VALUES (2, 'Factura', '2010-10-10', '2010-10-15');


--RELLENO TABLA CARGO:
INSERT INTO Cargo (id, nombre, createDate, updateDate) VALUES (1, 'Jefe de local', '2010-10-10', '2010-10-15');
INSERT INTO Cargo (id, nombre, createDate, updateDate) VALUES (2, 'Vendedor', '2010-10-10', '2010-10-15');
INSERT INTO Cargo (id, nombre, createDate, updateDate) VALUES (3, 'Conserje', '2010-10-10', '2010-10-15');
INSERT INTO Cargo (id, nombre, createDate, updateDate) VALUES (4, 'Guardia', '2010-10-10', '2010-10-15');


-- RELLENO TABLA PAIS:
INSERT INTO Pais (id, nombre, codpostal, createDate, updateDate) VALUES (1, 'Chile', 1231, '2010-10-10', '2010-10-15');
INSERT INTO Pais (id, nombre, codpostal, createDate, updateDate) VALUES (2, 'Argentina', 1232, '2010-10-10', '2010-10-15');
INSERT INTO Pais (id, nombre, codpostal, createDate, updateDate) VALUES (3, 'Peru', 1233, '2010-10-10', '2010-10-15');


-- RELLENO TABLA REGION:
INSERT INTO Region (id, nombre, codpostal, createDate, updateDate, pais_id) VALUES (1, 'Metropolitana', 9876, '2010-10-10', '2010-10-15', 1);
INSERT INTO Region (id, nombre, codpostal, createDate, updateDate, pais_id) VALUES (2, 'Antofagasta', 9875, '2010-10-10', '2010-10-15', 1);
INSERT INTO Region (id, nombre, codpostal, createDate, updateDate, pais_id) VALUES (3, 'Valparaiso', 9874, '2010-10-10', '2010-10-15', 1);

-- RELLENO TABLA COMUNA:
INSERT INTO Comuna (id, nombre, codpostal, createDate, updateDate, region_id) VALUES (1, 'EstaciónCentral', 3456, '2010-10-10', '2010-10-15', 1);
INSERT INTO Comuna (id, nombre, codpostal, createDate, updateDate, region_id) VALUES (2, 'Santiago', 3457, '2010-10-10', '2010-10-15', 1);
INSERT INTO Comuna (id, nombre, codpostal, createDate, updateDate, region_id) VALUES (3, 'Maipu', 3458, '2010-10-10', '2010-10-15', 1);
INSERT INTO Comuna (id, nombre, codpostal, createDate, updateDate, region_id) VALUES (4, 'Providencia', 3459, '2010-10-10', '2010-10-15', 1);
INSERT INTO Comuna (id, nombre, codpostal, createDate, updateDate, region_id) VALUES (5, 'Calama', 3451, '2010-10-10', '2010-10-15', 2);
INSERT INTO Comuna (id, nombre, codpostal, createDate, updateDate, region_id) VALUES (6, 'Valparaiso', 3453, '2010-10-10', '2010-10-15', 3);

-- RELLENO TABLA TIENDA:
INSERT INTO Tienda (id, nombre, createDate, updateDate, comuna_id) VALUES (1, 'Tienda 1', '2010-10-10', '2010-10-15', 1);
INSERT INTO Tienda (id, nombre, createDate, updateDate, comuna_id) VALUES (2, 'Tienda 2', '2010-10-10', '2010-10-15', 1);
INSERT INTO Tienda (id, nombre, createDate, updateDate, comuna_id) VALUES (3, 'Tienda 3', '2010-10-10', '2010-10-15', 2);
INSERT INTO Tienda (id, nombre, createDate, updateDate, comuna_id) VALUES (4, 'Tienda 4', '2010-10-10', '2010-10-15', 3);
INSERT INTO Tienda (id, nombre, createDate, updateDate, comuna_id) VALUES (5, 'Tienda 5', '2010-10-10', '2010-10-15', 4);
INSERT INTO Tienda (id, nombre, createDate, updateDate, comuna_id) VALUES (6, 'Tienda 6', '2010-10-10', '2010-10-15', 6);


-- RELLENO TABLA EMPLEADO:
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (1, 1234567, 'Pedro', '2010-10-10', '2010-10-15', 2, 1, 1);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (2, 1634598, 'Juan', '2010-10-10', '2010-10-15', 2, 2, 2);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (3, 1984567, 'Carlos', '2010-10-10', '2010-10-15', 2, 1, 3);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (4, 5674567, 'Maria', '2010-10-10', '2010-10-15', 2, 3, 4);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (5, 1232347, 'Ana', '2010-10-10', '2010-10-15', 2, 1, 5);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (6, 8288993, 'Lucas', '2010-10-10', '2010-10-15', 2, 1, 6);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (7, 1811725, 'Francisco', '2010-10-10', '2010-10-15', 3, 5, 1);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (8, 7985284, 'Maite', '2010-10-10', '2010-10-15', 2, 2, 2);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (9, 2129644, 'Alfredo', '2010-10-10', '2010-10-15', 1, 2, 3);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (10, 3361792, 'Esperanza', '2010-10-10', '2010-10-15', 1, 3, 4);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (11, 5197497, 'Martin', '2010-10-10', '2010-10-15', 3, 4, 5);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (12, 1388112, 'Eduardo', '2010-10-10', '2010-10-15', 2, 6, 6);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (13, 3076498, 'Diego', '2010-10-10', '2010-10-15', 1, 1, 1);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (14, 3483678, 'Isidora', '2010-10-10', '2010-10-15', 2, 4, 2);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (15, 2792373, 'Camila', '2010-10-10', '2010-10-15', 4, 6, 3);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (16, 3133106, 'Darling', '2010-10-10', '2010-10-15', 2, 2, 4);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (17, 2323354, 'Mario', '2010-10-10', '2010-10-15', 3, 3, 5);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (18, 1352032, 'Alonso', '2010-10-10', '2010-10-15', 4, 1, 6);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (19, 7216800, 'Nicolas', '2010-10-10', '2010-10-15', 3, 3, 1);
INSERT INTO Empleado (id, rut, nombre, createDate, updateDate, cargo_id, comuna_id, tienda_id) 
VALUES (20, 8067793, 'Benjamin', '2010-10-10', '2010-10-15', 2, 2, 2);


-- RELLENO TABLA SUELDO:
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (1, 350000, '2020-01-01', '2020-01-01', '2020-01-01', 1);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (2, 370000, '2020-02-01', '2020-02-01', '2020-02-01', 1);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (3, 380000, '2020-03-01', '2020-03-01', '2020-03-01', 1);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (4, 350000, '2020-04-01', '2020-04-01', '2020-04-01', 1);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (5, 420000, '2020-05-01', '2020-05-01', '2020-05-01', 1);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (6, 550000, '2020-06-01', '2020-06-01', '2020-06-01', 1);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (7, 410000, '2020-07-01', '2020-07-01', '2020-07-01', 1);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (8, 600000, '2020-08-01', '2020-08-01', '2020-08-01', 1);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (9, 550000, '2020-09-01', '2020-09-01', '2020-09-01', 1);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (10, 850000, '2020-10-01', '2020-10-01', '2020-10-01', 1);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (11, 750000, '2020-11-01', '2020-11-01', '2020-11-01', 1);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (12, 950000, '2020-12-01', '2020-12-01', '2020-12-01', 1);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (13, 750000, '2020-01-01', '2020-01-01', '2020-01-01', 2);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (14, 470000, '2020-02-01', '2020-02-01', '2020-02-01', 2);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (15, 480000, '2020-03-01', '2020-03-01', '2020-03-01', 2);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (16, 330000, '2020-04-01', '2020-04-01', '2020-04-01', 2);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (17, 430000, '2020-05-01', '2020-05-01', '2020-05-01', 2);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (18, 500000, '2020-06-01', '2020-06-01', '2020-06-01', 2);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (19, 430000, '2020-07-01', '2020-07-01', '2020-07-01', 2);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (20, 650000, '2020-08-01', '2020-08-01', '2020-08-01', 2);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (21, 755000, '2020-09-01', '2020-09-01', '2020-09-01', 2);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (22, 750000, '2020-10-01', '2020-10-01', '2020-10-01', 2);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (23, 850000, '2020-11-01', '2020-11-01', '2020-11-01', 2);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (24, 955000, '2020-12-01', '2020-12-01', '2020-12-01', 2);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (25, 452361, '2020-01-01', '2020-01-01', '2020-01-01', 3);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (26, 355468, '2020-02-01', '2020-02-01', '2020-02-01', 3);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (27, 688150, '2020-03-01', '2020-03-01', '2020-03-01', 3);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (28, 758207, '2020-04-01', '2020-04-01', '2020-04-01', 3);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (29, 846397, '2020-05-01', '2020-05-01', '2020-05-01', 3);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (30, 693603, '2020-06-01', '2020-06-01', '2020-06-01', 3);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (31, 649248, '2020-07-01', '2020-07-01', '2020-07-01', 3);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (32, 385131, '2020-08-01', '2020-08-01', '2020-08-01', 3);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (33, 964722, '2020-09-01', '2020-09-01', '2020-09-01', 3);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (34, 939967, '2020-10-01', '2020-10-01', '2020-10-01', 3);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (35, 960114, '2020-11-01', '2020-11-01', '2020-11-01', 3);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (36, 583525, '2020-12-01', '2020-12-01', '2020-12-01', 3);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (37, 915500, '2020-01-01', '2020-01-01', '2020-01-01', 4);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (38, 747647, '2020-02-01', '2020-02-01', '2020-02-01', 4);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (39, 835317, '2020-03-01', '2020-03-01', '2020-03-01', 4);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (40, 630403, '2020-04-01', '2020-04-01', '2020-04-01', 4);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (41, 356983, '2020-05-01', '2020-05-01', '2020-05-01', 4);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (42, 769936, '2020-06-01', '2020-06-01', '2020-06-01', 4);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (43, 616788, '2020-07-01', '2020-07-01', '2020-07-01', 4);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (44, 671715, '2020-08-01', '2020-08-01', '2020-08-01', 4);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (45, 801849, '2020-09-01', '2020-09-01', '2020-09-01', 4);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (46, 447481, '2020-10-01', '2020-10-01', '2020-10-01', 4);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (47, 378208, '2020-11-01', '2020-11-01', '2020-11-01', 4);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (48, 831107, '2020-12-01', '2020-12-01', '2020-12-01', 4);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (49, 539178, '2020-01-01', '2020-01-01', '2020-01-01', 5);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (50, 771947, '2020-02-01', '2020-02-01', '2020-02-01', 5);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (51, 372362, '2020-03-01', '2020-03-01', '2020-03-01', 5);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (52, 417807, '2020-04-01', '2020-04-01', '2020-04-01', 5);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (53, 864908, '2020-05-01', '2020-05-01', '2020-05-01', 5);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (54, 587605, '2020-06-01', '2020-06-01', '2020-06-01', 5);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (55, 502518, '2020-07-01', '2020-07-01', '2020-07-01', 5);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (56, 525733, '2020-08-01', '2020-08-01', '2020-08-01', 5);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (57, 591577, '2020-09-01', '2020-09-01', '2020-09-01', 5);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (58, 598018, '2020-10-01', '2020-10-01', '2020-10-01', 5);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (59, 543168, '2020-11-01', '2020-11-01', '2020-11-01', 5);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (60, 486298, '2020-12-01', '2020-12-01', '2020-12-01', 5);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (61, 558184, '2020-01-01', '2020-01-01', '2020-01-01', 6);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (62, 914510, '2020-02-01', '2020-02-01', '2020-02-01', 6);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (63, 541646, '2020-03-01', '2020-03-01', '2020-03-01', 6);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (64, 586718, '2020-04-01', '2020-04-01', '2020-04-01', 6);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (65, 701141, '2020-05-01', '2020-05-01', '2020-05-01', 6);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (66, 593547, '2020-06-01', '2020-06-01', '2020-06-01', 6);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (67, 960762, '2020-07-01', '2020-07-01', '2020-07-01', 6);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (68, 982308, '2020-08-01', '2020-08-01', '2020-08-01', 6);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (69, 363465, '2020-09-01', '2020-09-01', '2020-09-01', 6);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (70, 702249, '2020-10-01', '2020-10-01', '2020-10-01', 6);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (71, 839521, '2020-11-01', '2020-11-01', '2020-11-01', 6);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (72, 590529, '2020-12-01', '2020-12-01', '2020-12-01', 6);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (73, 714934, '2020-01-01', '2020-01-01', '2020-01-01', 7);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (74, 856643, '2020-02-01', '2020-02-01', '2020-02-01', 7);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (75, 419195, '2020-03-01', '2020-03-01', '2020-03-01', 7);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (76, 495020, '2020-04-01', '2020-04-01', '2020-04-01', 7);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (77, 814444, '2020-05-01', '2020-05-01', '2020-05-01', 7);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (78, 870759, '2020-06-01', '2020-06-01', '2020-06-01', 7);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (79, 892871, '2020-07-01', '2020-07-01', '2020-07-01', 7);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (80, 602051, '2020-08-01', '2020-08-01', '2020-08-01', 7);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (81, 535871, '2020-09-01', '2020-09-01', '2020-09-01', 7);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (82, 408757, '2020-10-01', '2020-10-01', '2020-10-01', 7);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (83, 473279, '2020-11-01', '2020-11-01', '2020-11-01', 7);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (84, 791301, '2020-12-01', '2020-12-01', '2020-12-01', 7);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (85, 460539, '2020-01-01', '2020-01-01', '2020-01-01', 8);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (86, 529743, '2020-02-01', '2020-02-01', '2020-02-01', 8);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (87, 415727, '2020-03-01', '2020-03-01', '2020-03-01', 8);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (88, 820960, '2020-04-01', '2020-04-01', '2020-04-01', 8);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (89, 737162, '2020-05-01', '2020-05-01', '2020-05-01', 8);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (90, 404708, '2020-06-01', '2020-06-01', '2020-06-01', 8);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (91, 694708, '2020-07-01', '2020-07-01', '2020-07-01', 8);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (92, 720287, '2020-08-01', '2020-08-01', '2020-08-01', 8);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (93, 661038, '2020-09-01', '2020-09-01', '2020-09-01', 8);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (94, 624711, '2020-10-01', '2020-10-01', '2020-10-01', 8);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (95, 603261, '2020-11-01', '2020-11-01', '2020-11-01', 8);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (96, 607223, '2020-12-01', '2020-12-01', '2020-12-01', 8);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (97, 508428, '2020-01-01', '2020-01-01', '2020-01-01', 9);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (98, 400525, '2020-02-01', '2020-02-01', '2020-02-01', 9);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (99, 796703, '2020-03-01', '2020-03-01', '2020-03-01', 9);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (100, 699202, '2020-04-01', '2020-04-01', '2020-04-01', 9);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (101, 997252, '2020-05-01', '2020-05-01', '2020-05-01', 9);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (102, 918048, '2020-06-01', '2020-06-01', '2020-06-01', 9);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (103, 890055, '2020-07-01', '2020-07-01', '2020-07-01', 9);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (104, 994724, '2020-08-01', '2020-08-01', '2020-08-01', 9);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (105, 580648, '2020-09-01', '2020-09-01', '2020-09-01', 9);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (106, 847264, '2020-10-01', '2020-10-01', '2020-10-01', 9);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (107, 965118, '2020-11-01', '2020-11-01', '2020-11-01', 9);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (108, 838075, '2020-12-01', '2020-12-01', '2020-12-01', 9);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (109, 809814, '2020-01-01', '2020-01-01', '2020-01-01', 10);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (110, 911769, '2020-02-01', '2020-02-01', '2020-02-01', 10);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (111, 856696, '2020-03-01', '2020-03-01', '2020-03-01', 10);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (112, 660946, '2020-04-01', '2020-04-01', '2020-04-01', 10);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (113, 453846, '2020-05-01', '2020-05-01', '2020-05-01', 10);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (114, 753662, '2020-06-01', '2020-06-01', '2020-06-01', 10);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (115, 733051, '2020-07-01', '2020-07-01', '2020-07-01', 10);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (116, 622111, '2020-08-01', '2020-08-01', '2020-08-01', 10);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (117, 400693, '2020-09-01', '2020-09-01', '2020-09-01', 10);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (118, 760087, '2020-10-01', '2020-10-01', '2020-10-01', 10);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (119, 990499, '2020-11-01', '2020-11-01', '2020-11-01', 10);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (120, 839078, '2020-12-01', '2020-12-01', '2020-12-01', 10);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (121, 361806, '2020-01-01', '2020-01-01', '2020-01-01', 11);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (122, 612287, '2020-02-01', '2020-02-01', '2020-02-01', 11);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (123, 376527, '2020-03-01', '2020-03-01', '2020-03-01', 11);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (124, 959034, '2020-04-01', '2020-04-01', '2020-04-01', 11);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (125, 500544, '2020-05-01', '2020-05-01', '2020-05-01', 11);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (126, 545687, '2020-06-01', '2020-06-01', '2020-06-01', 11);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (127, 417416, '2020-07-01', '2020-07-01', '2020-07-01', 11);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (128, 577401, '2020-08-01', '2020-08-01', '2020-08-01', 11);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (129, 863739, '2020-09-01', '2020-09-01', '2020-09-01', 11);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (130, 511404, '2020-10-01', '2020-10-01', '2020-10-01', 11);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (131, 556900, '2020-11-01', '2020-11-01', '2020-11-01', 11);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (132, 832450, '2020-12-01', '2020-12-01', '2020-12-01', 11);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (133, 855174, '2020-01-01', '2020-01-01', '2020-01-01', 12);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (134, 961344, '2020-02-01', '2020-02-01', '2020-02-01', 12);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (135, 672218, '2020-03-01', '2020-03-01', '2020-03-01', 12);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (136, 819861, '2020-04-01', '2020-04-01', '2020-04-01', 12);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (137, 499942, '2020-05-01', '2020-05-01', '2020-05-01', 12);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (138, 476685, '2020-06-01', '2020-06-01', '2020-06-01', 12);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (139, 611794, '2020-07-01', '2020-07-01', '2020-07-01', 12);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (140, 915387, '2020-08-01', '2020-08-01', '2020-08-01', 12);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (141, 453778, '2020-09-01', '2020-09-01', '2020-09-01', 12);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (142, 642766, '2020-10-01', '2020-10-01', '2020-10-01', 12);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (143, 720134, '2020-11-01', '2020-11-01', '2020-11-01', 12);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (144, 408940, '2020-12-01', '2020-12-01', '2020-12-01', 12);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (145, 376768, '2020-01-01', '2020-01-01', '2020-01-01', 13);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (146, 859137, '2020-02-01', '2020-02-01', '2020-02-01', 13);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (147, 657045, '2020-03-01', '2020-03-01', '2020-03-01', 13);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (148, 626586, '2020-04-01', '2020-04-01', '2020-04-01', 13);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (149, 712567, '2020-05-01', '2020-05-01', '2020-05-01', 13);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (150, 947302, '2020-06-01', '2020-06-01', '2020-06-01', 13);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (151, 953807, '2020-07-01', '2020-07-01', '2020-07-01', 13);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (152, 620549, '2020-08-01', '2020-08-01', '2020-08-01', 13);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (153, 499776, '2020-09-01', '2020-09-01', '2020-09-01', 13);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (154, 589778, '2020-10-01', '2020-10-01', '2020-10-01', 13);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (155, 875457, '2020-11-01', '2020-11-01', '2020-11-01', 13);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (156, 667343, '2020-12-01', '2020-12-01', '2020-12-01', 13);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (157, 650655, '2020-01-01', '2020-01-01', '2020-01-01', 14);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (158, 733868, '2020-02-01', '2020-02-01', '2020-02-01', 14);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (159, 461711, '2020-03-01', '2020-03-01', '2020-03-01', 14);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (160, 599936, '2020-04-01', '2020-04-01', '2020-04-01', 14);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (161, 990389, '2020-05-01', '2020-05-01', '2020-05-01', 14);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (162, 779364, '2020-06-01', '2020-06-01', '2020-06-01', 14);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (163, 979123, '2020-07-01', '2020-07-01', '2020-07-01', 14);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (164, 430361, '2020-08-01', '2020-08-01', '2020-08-01', 14);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (165, 446763, '2020-09-01', '2020-09-01', '2020-09-01', 14);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (166, 622102, '2020-10-01', '2020-10-01', '2020-10-01', 14);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (167, 715585, '2020-11-01', '2020-11-01', '2020-11-01', 14);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (168, 728278, '2020-12-01', '2020-12-01', '2020-12-01', 14);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (169, 692482, '2020-01-01', '2020-01-01', '2020-01-01', 15);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (170, 677142, '2020-02-01', '2020-02-01', '2020-02-01', 15);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (171, 398798, '2020-03-01', '2020-03-01', '2020-03-01', 15);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (172, 830870, '2020-04-01', '2020-04-01', '2020-04-01', 15);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (173, 781307, '2020-05-01', '2020-05-01', '2020-05-01', 15);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (174, 723707, '2020-06-01', '2020-06-01', '2020-06-01', 15);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (175, 436173, '2020-07-01', '2020-07-01', '2020-07-01', 15);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (176, 881931, '2020-08-01', '2020-08-01', '2020-08-01', 15);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (177, 842935, '2020-09-01', '2020-09-01', '2020-09-01', 15);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (178, 913919, '2020-10-01', '2020-10-01', '2020-10-01', 15);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (179, 810940, '2020-11-01', '2020-11-01', '2020-11-01', 15);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (180, 750490, '2020-12-01', '2020-12-01', '2020-12-01', 15);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (181, 698998, '2020-01-01', '2020-01-01', '2020-01-01', 16);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (182, 452223, '2020-02-01', '2020-02-01', '2020-02-01', 16);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (183, 937370, '2020-03-01', '2020-03-01', '2020-03-01', 16);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (184, 656873, '2020-04-01', '2020-04-01', '2020-04-01', 16);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (185, 600384, '2020-05-01', '2020-05-01', '2020-05-01', 16);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (186, 869506, '2020-06-01', '2020-06-01', '2020-06-01', 16);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (187, 407174, '2020-07-01', '2020-07-01', '2020-07-01', 16);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (188, 557968, '2020-08-01', '2020-08-01', '2020-08-01', 16);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (189, 827782, '2020-09-01', '2020-09-01', '2020-09-01', 16);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (190, 895425, '2020-10-01', '2020-10-01', '2020-10-01', 16);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (191, 568674, '2020-11-01', '2020-11-01', '2020-11-01', 16);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (192, 982520, '2020-12-01', '2020-12-01', '2020-12-01', 16);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (193, 807876, '2020-01-01', '2020-01-01', '2020-01-01', 17);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (194, 470782, '2020-02-01', '2020-02-01', '2020-02-01', 17);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (195, 409919, '2020-03-01', '2020-03-01', '2020-03-01', 17);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (196, 863034, '2020-04-01', '2020-04-01', '2020-04-01', 17);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (197, 918593, '2020-05-01', '2020-05-01', '2020-05-01', 17);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (198, 898824, '2020-06-01', '2020-06-01', '2020-06-01', 17);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (199, 500135, '2020-07-01', '2020-07-01', '2020-07-01', 17);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (200, 810210, '2020-08-01', '2020-08-01', '2020-08-01', 17);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (201, 934822, '2020-09-01', '2020-09-01', '2020-09-01', 17);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (202, 446663, '2020-10-01', '2020-10-01', '2020-10-01', 17);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (203, 855073, '2020-11-01', '2020-11-01', '2020-11-01', 17);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (204, 875867, '2020-12-01', '2020-12-01', '2020-12-01', 17);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (205, 771546, '2020-01-01', '2020-01-01', '2020-01-01', 18);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (206, 671144, '2020-02-01', '2020-02-01', '2020-02-01', 18);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (207, 741132, '2020-03-01', '2020-03-01', '2020-03-01', 18);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (208, 873868, '2020-04-01', '2020-04-01', '2020-04-01', 18);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (209, 454131, '2020-05-01', '2020-05-01', '2020-05-01', 18);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (210, 888274, '2020-06-01', '2020-06-01', '2020-06-01', 18);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (211, 795417, '2020-07-01', '2020-07-01', '2020-07-01', 18);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (212, 567172, '2020-08-01', '2020-08-01', '2020-08-01', 18);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (213, 787010, '2020-09-01', '2020-09-01', '2020-09-01', 18);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (214, 658710, '2020-10-01', '2020-10-01', '2020-10-01', 18);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (215, 441360, '2020-11-01', '2020-11-01', '2020-11-01', 18);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (216, 871626, '2020-12-01', '2020-12-01', '2020-12-01', 18);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (217, 548588, '2020-01-01', '2020-01-01', '2020-01-01', 19);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (218, 722944, '2020-02-01', '2020-02-01', '2020-02-01', 19);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (219, 362671, '2020-03-01', '2020-03-01', '2020-03-01', 19);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (220, 976706, '2020-04-01', '2020-04-01', '2020-04-01', 19);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (221, 910392, '2020-05-01', '2020-05-01', '2020-05-01', 19);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (222, 420615, '2020-06-01', '2020-06-01', '2020-06-01', 19);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (223, 456331, '2020-07-01', '2020-07-01', '2020-07-01', 19);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (224, 475182, '2020-08-01', '2020-08-01', '2020-08-01', 19);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (225, 887345, '2020-09-01', '2020-09-01', '2020-09-01', 19);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (226, 413860, '2020-10-01', '2020-10-01', '2020-10-01', 19);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (227, 870207, '2020-11-01', '2020-11-01', '2020-11-01', 19);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (228, 985972, '2020-12-01', '2020-12-01', '2020-12-01', 19);

INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (229, 521463, '2020-01-01', '2020-01-01', '2020-01-01', 20);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (230, 391459, '2020-02-01', '2020-02-01', '2020-02-01', 20);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (231, 699515, '2020-03-01', '2020-03-01', '2020-03-01', 20);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (232, 640839, '2020-04-01', '2020-04-01', '2020-04-01', 20);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (233, 688856, '2020-05-01', '2020-05-01', '2020-05-01', 20);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (234, 371027, '2020-06-01', '2020-06-01', '2020-06-01', 20);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (235, 564223, '2020-07-01', '2020-07-01', '2020-07-01', 20);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (236, 488934, '2020-08-01', '2020-08-01', '2020-08-01', 20);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (237, 381224, '2020-09-01', '2020-09-01', '2020-09-01', 20);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (238, 584273, '2020-10-01', '2020-10-01', '2020-10-01', 20);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (239, 920464, '2020-11-01', '2020-11-01', '2020-11-01', 20);
INSERT INTO Sueldo (id, valor, fecha, createDate, updateDate, empleado_id) VALUES (240, 485412, '2020-12-01', '2020-12-01', '2020-12-01', 20);


-- RELLENO TABLA TIENDA_PRODUCTO:
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (1, '2010-10-10', '2010-10-15', 1, 1);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (2, '2010-10-10', '2010-10-15', 2, 1);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (3, '2010-10-10', '2010-10-15', 3, 1);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (4, '2010-10-10', '2010-10-15', 4, 1);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (5, '2010-10-10', '2010-10-15', 5, 1);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (6, '2010-10-10', '2010-10-15', 9, 1);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (7, '2010-10-10', '2010-10-15', 10, 1);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (8, '2010-10-10', '2010-10-15', 1, 2);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (9, '2010-10-10', '2010-10-15', 2, 2);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (10, '2010-10-10', '2010-10-15', 3, 2);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (11, '2010-10-10', '2010-10-15', 5, 3);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (12, '2010-10-10', '2010-10-15', 6, 3);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (13, '2010-10-10', '2010-10-15', 7, 3);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (14, '2010-10-10', '2010-10-15', 8, 3);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (15, '2010-10-10', '2010-10-15', 9, 3);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (16, '2010-10-10', '2010-10-15', 1, 4);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (17, '2010-10-10', '2010-10-15', 2, 4);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (18, '2010-10-10', '2010-10-15', 3, 4);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (19, '2010-10-10', '2010-10-15', 5, 4);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (20, '2010-10-10', '2010-10-15', 6, 4);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (21, '2010-10-10', '2010-10-15', 7, 4);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (22, '2010-10-10', '2010-10-15', 8, 4);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (23, '2010-10-10', '2010-10-15', 9, 4);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (24, '2010-10-10', '2010-10-15', 10, 5);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (25, '2010-10-10', '2010-10-15', 11, 5);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (26, '2010-10-10', '2010-10-15', 12, 5);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (27, '2010-10-10', '2010-10-15', 13, 5);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (28, '2010-10-10', '2010-10-15', 15, 5);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (29, '2010-10-10', '2010-10-15', 20, 5);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (30, '2010-10-10', '2010-10-15', 18, 5);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (31, '2010-10-10', '2010-10-15', 5, 5);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (32, '2010-10-10', '2010-10-15', 2, 5);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (33, '2010-10-10', '2010-10-15', 1, 5);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (34, '2010-10-10', '2010-10-15', 14, 6);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (35, '2010-10-10', '2010-10-15', 16, 6);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (36, '2010-10-10', '2010-10-15', 17, 6);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (37, '2010-10-10', '2010-10-15', 19, 6);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (38, '2010-10-10', '2010-10-15', 4, 6);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (39, '2010-10-10', '2010-10-15', 7, 6);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (40, '2010-10-10', '2010-10-15', 3, 6);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (41, '2010-10-10', '2010-10-15', 8, 6);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (42, '2010-10-10', '2010-10-15', 1, 6);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (43, '2010-10-10', '2010-10-15', 2, 6);
INSERT INTO Tienda_producto (id, createDate, updateDate, producto_id, tienda_id) VALUES (44, '2010-10-10', '2010-10-15', 11, 6);

-- RELLENO TABLA VENTA:
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(1, 4100, '2021-01-21', '2010-10-10', '2010-10-15', 2, 1);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(2, 12400, '2021-03-21', '2010-10-10', '2010-10-15', 1, 2);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(3, 7000, '2021-07-21', '2010-10-10', '2010-10-15', 2, 3);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(4, 10800, '2021-08-21', '2010-10-10', '2010-10-15', 2, 4);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(5, 7000, '2021-01-21', '2010-10-10', '2010-10-15', 2, 5);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(6, 7000, '2021-11-21', '2010-10-10', '2010-10-15', 1, 6);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(7, 17700, '2021-01-21', '2010-10-10', '2010-10-15', 1, 1);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(8, 50000, '2021-01-21', '2010-10-10', '2010-10-15', 2, 2);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(9, 9500, '2021-01-21', '2010-10-10', '2010-10-15', 1, 3);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(10, 165000, '2021-01-21', '2010-10-10', '2010-10-15', 2, 4);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(11, 20000, '2021-02-21', '2010-10-10', '2010-10-15', 2, 5);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(12, 16700, '2011-01-21', '2010-10-10', '2010-10-15', 1, 6);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(13, 85000, '2021-01-21', '2010-10-10', '2010-10-15', 2, 1);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(14, 17600, '2021-01-21', '2010-10-10', '2010-10-15', 1, 2);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(15, 26600, '2021-01-21', '2010-10-10', '2010-10-15', 2, 3);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(16, 97000, '2019-01-21', '2010-10-10', '2010-10-15', 2, 4);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(17, 80000, '2020-01-21', '2010-10-10', '2010-10-15', 1, 5);
INSERT INTO Venta (id, total, fecha, createDate, updateDate, tipoDoc_id, empleado_id)
VALUES(18, 363000, '2021-05-21', '2010-10-10', '2010-10-15', 2, 6);

-- RELLENO TABLA PRODUCTO VENTA: 
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (20, 1, '2010-10-10', '2010-10-15', 1, 1);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (21, 2, '2010-10-10', '2010-10-15', 3, 1);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (22, 1, '2010-10-10', '2010-10-15', 5, 2);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (23, 1, '2010-10-10', '2010-10-15', 8, 2);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (24, 1, '2010-10-10', '2010-10-15', 9, 2);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (25, 1, '2010-10-10', '2010-10-15', 10, 3);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (26, 1, '2010-10-10', '2010-10-15', 12, 3);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (27, 3, '2010-10-10', '2010-10-15', 19, 4);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (28, 3, '2010-10-10', '2010-10-15', 20, 4);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (29, 2, '2010-10-10', '2010-10-15', 2, 5);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (30, 2, '2010-10-10', '2010-10-15', 17, 5);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (31, 2, '2010-10-10', '2010-10-15', 3, 5);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (32, 3, '2010-10-10', '2010-10-15', 11, 5);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (33, 1, '2010-10-10', '2010-10-15', 4, 6);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (34, 1, '2010-10-10', '2010-10-15', 5, 7);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (35, 1, '2010-10-10', '2010-10-15', 10, 7);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (36, 1, '2010-10-10', '2010-10-15', 11, 7);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (37, 1, '2010-10-10', '2010-10-15', 12, 7);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (38, 2, '2010-10-10', '2010-10-15', 13, 8);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (39, 2, '2010-10-10', '2010-10-15', 14, 9);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (40, 3, '2010-10-10', '2010-10-15', 15, 9);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (1, 10,'2010-10-10', '2010-10-15', 6, 10);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (2, 9, '2010-10-10', '2010-10-15', 12, 10);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (3, 8, '2010-10-10', '2010-10-15', 15, 11);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (4, 2, '2010-10-10', '2010-10-15', 19, 12);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (5, 1, '2010-10-10', '2010-10-15', 2, 12);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (6, 5, '2010-10-10', '2010-10-15', 1, 12);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (7, 4, '2010-10-10', '2010-10-15', 15, 13);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (8, 3, '2010-10-10', '2010-10-15', 13, 13);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (9, 2, '2010-10-10', '2010-10-15', 3, 14);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (10, 1, '2010-10-10', '2010-10-15', 7, 14);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (11, 3, '2010-10-10', '2010-10-15', 20, 14);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (12, 10, '2010-10-10', '2010-10-15', 19, 15);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (13, 10, '2010-10-10', '2010-10-15', 1, 15);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (14, 5, '2010-10-10', '2010-10-15', 18, 16);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (15, 8, '2010-10-10', '2010-10-15', 16, 16);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (16, 15, '2010-10-10', '2010-10-15', 2, 16);

INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (17, 20, '2010-10-10', '2010-10-15', 1, 17);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (18, 30, '2010-10-10', '2010-10-15', 14, 17);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (19, 14, '2010-10-10', '2010-10-15', 13, 18);
INSERT INTO Producto_venta (id, cantidad, createDate, updateDate, producto_id, venta_id) VALUES (41, 13, '2010-10-10', '2010-10-15', 2, 18);
