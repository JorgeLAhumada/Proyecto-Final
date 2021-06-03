--create database ProyectoAltaCostura
--use AltaCostura

-- 1 tabla de Encargados
/*create table Encargados 
(
Id_Encargado char(4) not null,
NombreE varchar(30)not null,
primary key(Id_Encargado)
)*/

-- 2 tabla Clientes
/*create table Clientes
(Id_Cliente char(4) not null primary key,
NombreC varchar(30) not null,
Ap varchar(20),
Am char(20),
Calle varchar(30),
Numero int,
Col varchar(20),
Ciudad varchar(20),
Telefono varchar(20)
)*/

--3 tabla de relacion medir 
/*create table Medir(
Id_Medida char(4) not null primary key,
Id_Encargado char(4) not null,
Id_Prenda char(4) not null,
Id_Cliente char (4)not null
--pendiente agregar
foreign key(Id_Encargado) references Encargados(Id_Encargado),
foreign key(Id_Prenda) references Prendas(Id_Prenda),
foreign key(Id_Cliente) references Clientes(Id_Cliente)
)*/

--4 Tabla Prendas
/*create table Prendas(
	Id_Prenda char(4) not null,
	TipoPrenda varchar(30) not null,
	Precio real not null,
	primary key(Id_Prenda)
)*/

--5. Tabla DetallePedido
/*create table DetallePedido(
	Id_Pedido char(4) not null,
	Id_Prenda char(4) not null,
	Id_Cliente char(4) not null,
	Cantidad int,
	primary key(Id_Pedido),
	foreign key(Id_Prenda) references Prendas(Id_Prenda),
	foreign key(Id_Cliente) references Clientes(Id_Cliente)
)*/

--6 Tabla Pedidos
/*create table Pedidos(
	Id_Pedido char(4) not null,
	Id_Cliente char(4) not null,
	Id_Prenda char(4) not null,
	FechaPed date not null,
	FechEnt date,
	Total real
	primary key(Id_Pedido),
	foreign key (Id_Cliente) references Clientes(Id_Cliente),
	foreign key (Id_Prenda) references Prendas(Id_Prenda)
)*/

--7 Tabla DescripcionPrendas
/*create table DescripcionPrendas
(
	Id_Descripcion char(4) not null,
	Id_Pedido char(4) not null,
	Tipo varchar(30),
	Tela varchar(30),
	Color varchar(20),
	Descripcion text,
	primary key(Id_Descripcion),
	foreign key (Id_Pedido) references Pedidos(Id_Pedido)	
)*/

--8 Tabla ReciboPagos
/*create table ReciboPagos
(
	Id_Abono char(4) not null,
	Id_Pedido char(4) not null,
	FechaAbono date not null,
	Cantidad real,
	CantRestante real,
	primary key(Id_Abono),
	foreign key(Id_Pedido) references Pedidos(Id_Pedido)
)*/



--consultas generales de las tablas

select*from Encargados
select*from Clientes
select*from Medir
select*from DescripcionPrendas
select*from Pedidos
select*from DetallePedido
select*from Prendas
select*from ReciboPagos
