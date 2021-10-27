CREATE DATABASE Ventas;
GO

USE Ventas;
GO

CREATE TABLE Tipo_Membresias
(
    id INT NOT NULL PRIMARY KEY,
    membresia VARCHAR(100) NOT NULL
)


CREATE TABLE Miembros
(
    id INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Tipo INT NOT NULL FOREIGN KEY REFERENCES Tipo_Membresias(id)
)

CREATE TABLE Paises
(
    id INT NOT NULL PRIMARY KEY,
    Pais VARCHAR(MAX)
)

CREATE TABLE Categorias
(
    id INT NOT NULL PRIMARY KEY,
    nombreCategoria VARCHAR(MAX) NOT NULL
)

CREATE TABLE Proveedor
(
    id INT NOT NULL PRIMARY KEY,
    nombreProveedor VARCHAR(MAX) NOT NULL,
    direccion VARCHAR(MAX) NOT NULL,
    telefono VARCHAR(MAX) NOT NULL,
    pais INT NOT NULL FOREIGN KEY REFERENCES Paises(id)
)


CREATE TABLE Sucursal
(
    id INT NOT NULL PRIMARY KEY,
    nombreSucursal VARCHAR(MAX) NOT NULL,
    direccion VARCHAR(MAX) NOT NULL,
    telefono VARCHAR(MAX) NOT NULL,
    email VARCHAR(MAX) NOT NULL,
    pais INT NOT NULL FOREIGN KEY REFERENCES Paises(id)
)

CREATE TABLE Empleado
(
    id INT NOT NULL PRIMARY KEY,
    nombreEmpleado VARCHAR(MAX) NOT NULL,
    direccion VARCHAR(MAX) NOT NULL,
    telefono VARCHAR(MAX) NOT NULL,
    email VARCHAR(MAX) NOT NULL,
    Documento VARCHAR(MAX) NOT NULL,
    Genero VARCHAR(2) NOT NULL,
    fechaNacimieno DATE,
    pais INT NOT NULL FOREIGN KEY REFERENCES Paises(id),
    sucursal INT NOT NULL FOREIGN key REFERENCES Sucursal(id)

)


CREATE TABLE Productos
(
    id INT NOT NULL PRIMARY KEY,
    nombreProducto VARCHAR(MAX) NOT NULL,
    precioUnitario FLOAT NOT NULL,
    nombreCategoria INT NOT NULL FOREIGN KEY REFERENCES Categorias(id),
    proveedor INT NOT NULL FOREIGN KEY REFERENCES Proveedor(id),

)

CREATE TABLE Stock
(
    id INT NOT NULL PRIMARY KEY,
    sucursal INT NOT NULL FOREIGN KEY REFERENCES Sucursal(id),
    proveedor INT NOT NULL FOREIGN KEY REFERENCES Proveedor(id),
    cantidad INT NOT NULL,
    fechaEntrada DATETIME,

)

CREATE TABLE TipoPago
(
    id INT NOT NULL PRIMARY KEY,
    nombreTipo VARCHAR(MAX) NOT NULL

)

CREATE TABLE EstadoVentas
(
    id INT NOT NULL PRIMARY KEY,
    Estado INT NOT NULL

)


CREATE TABLE DetalleVenta
(
    id INT NOT NULL PRIMARY KEY,
    producto INT NOT NULL FOREIGN KEY REFERENCES Productos(id),
    Cantidad INT NOT NULL

)

CREATE TABLE Venta
(
    producto INT NOT NULL FOREIGN KEY REFERENCES Productos(id),
    id INT NOT NULL PRIMARY KEY,
    empleado INT NOT NULL FOREIGN KEY REFERENCES Empleado(id),
    tipoPago INT NOT NULL FOREIGN KEY REFERENCES TipoPago(id),
    estadoVenta INT NOT NULL FOREIGN KEY REFERENCES EstadoVentas(id),
    Fecha DATETIME,

)