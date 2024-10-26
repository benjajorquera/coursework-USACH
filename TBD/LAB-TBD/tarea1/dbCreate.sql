CREATE TABLE Producto (
	id serial NOT NULL UNIQUE PRIMARY KEY,
	nombre varchar(50), 
	precio int, 
	descripción varchar(200),
	createDate date,
	updateDate date
);

CREATE TABLE Tipo_documento  (
	id serial NOT NULL UNIQUE PRIMARY KEY, 
	nombre varchar(30),
	createDate date,
	updateDate date
);

CREATE TABLE Cargo (
	id serial NOT NULL UNIQUE PRIMARY KEY, 
	nombre varchar(25),
	createDate date,
	updateDate date
);

CREATE TABLE Pais (
	id serial NOT NULL UNIQUE PRIMARY KEY, 
	nombre varchar(25), 
	codPostal int,
	createDate date,
	updateDate date
);

CREATE TABLE Region (
	id serial NOT NULL UNIQUE PRIMARY KEY, 
	nombre varchar(25), 
	codPostal int,
	createDate date,
	updateDate date,
	pais_id int, FOREIGN KEY (pais_id) REFERENCES Pais(id)
);

CREATE TABLE Comuna (
	id serial NOT NULL UNIQUE PRIMARY KEY, 
	nombre varchar(25), 
	codPostal int,
	createDate date,
	updateDate date,
	region_id int, FOREIGN KEY (region_id) REFERENCES Region(id)
);

CREATE TABLE Tienda (
	id serial NOT NULL UNIQUE PRIMARY KEY, 
	nombre varchar(25),
	createDate date,
	updateDate date,
	comuna_id int, FOREIGN KEY (comuna_id) REFERENCES Comuna(id)
);

CREATE TABLE Empleado (
	id serial NOT NULL UNIQUE PRIMARY KEY, 
	rut integer,
	nombre varchar(25), 
	createDate date,
	updateDate date,
	cargo_id int, FOREIGN KEY (cargo_id) REFERENCES Cargo(id),
	comuna_id int, FOREIGN KEY (comuna_id) REFERENCES Comuna(id),
	tienda_id int, FOREIGN KEY (tienda_id) REFERENCES Tienda(id)
);

CREATE TABLE Sueldo (
	id serial NOT NULL UNIQUE PRIMARY KEY, 
	valor int,
	fecha date,
	createDate date,
	updateDate date,
	empleado_id int, FOREIGN KEY (empleado_id) REFERENCES Empleado(id)
);

CREATE TABLE Tienda_producto (
	id serial NOT NULL UNIQUE PRIMARY KEY,
	createDate date,
	updateDate date,
	producto_id int, FOREIGN KEY (producto_id) REFERENCES Producto(id),
	tienda_id int, FOREIGN KEY (tienda_id) REFERENCES Tienda(id)
);

CREATE TABLE Venta (
	id serial NOT NULL UNIQUE PRIMARY KEY, 
	total int,
	fecha date,
	createDate date,
	updateDate date,
	tipoDoc_id int, FOREIGN KEY (tipoDoc_id) REFERENCES Tipo_documento(id),
	empleado_id int, FOREIGN KEY (empleado_id) REFERENCES Empleado(id)
);

CREATE TABLE Producto_venta (
	id serial NOT NULL UNIQUE PRIMARY KEY,
	cantidad int NOT NULL,
	createDate date,
	updateDate date,
	producto_id int, FOREIGN KEY (producto_id) REFERENCES Producto(id),
	venta_id int, FOREIGN KEY (venta_id) REFERENCES Venta(id)
);
