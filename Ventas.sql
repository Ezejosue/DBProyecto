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
    Genero VARCHAR(1) NOT NULL,
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
    producto INT NOT NULL FOREIGN KEY REFERENCES Productos(id),
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
    Estado VARCHAR(50) NOT NULL

)


CREATE TABLE Venta
(   
    id INT NOT NULL PRIMARY KEY,
    empleado INT NOT NULL FOREIGN KEY REFERENCES Empleado(id),
    tipoPago INT NOT NULL FOREIGN KEY REFERENCES TipoPago(id),
    estadoVenta INT NOT NULL FOREIGN KEY REFERENCES EstadoVentas(id),
    Fecha DATETIME,
	sucursal_id INT FOREIGN KEY REFERENCES Sucursal(id)

)

CREATE TABLE DetalleVenta
(
    id INT NOT NULL PRIMARY KEY,
    producto INT NOT NULL FOREIGN KEY REFERENCES Productos(id),
    Cantidad INT NOT NULL,
	idVenta INT NOT NULL FOREIGN KEY REFERENCES Venta(id)
)
GO

INSERT INTO Tipo_Membresias
VALUES
    (1, 'Oro'),
    (2, 'Plata'),
    (3, 'Bronce');
GO

INSERT INTO Miembros
VALUES('1', 'Anais', 'Walsh', 1);
INSERT INTO Miembros
VALUES('2', 'Erick', 'John', 3);
INSERT INTO Miembros
VALUES('3', 'Gloria', 'Anderson', 2);
INSERT INTO Miembros
VALUES('4', 'Johnny', 'Oldfield', 2);
INSERT INTO Miembros
VALUES('5', 'Chuck', 'Devonport', 3);
INSERT INTO Miembros
VALUES('6', 'Denis', 'Newman', 3);
INSERT INTO Miembros
VALUES('7', 'Chris', 'Rogan', 3);
INSERT INTO Miembros
VALUES('8', 'Alba', 'James', 3);
INSERT INTO Miembros
VALUES('9', 'Bernadette', 'Ellis', 2);
INSERT INTO Miembros
VALUES('10', 'Robyn', 'Benson', 1);
INSERT INTO Miembros
VALUES('11', 'Jayden', 'Evans', 3);
INSERT INTO Miembros
VALUES('12', 'Leroy', 'Cann', 3);
INSERT INTO Miembros
VALUES('13', 'Ivette', 'Clarke', 3);
INSERT INTO Miembros
VALUES('14', 'Julian', 'Richardson', 1);
INSERT INTO Miembros
VALUES('15', 'Nathan', 'Kelly', 2);
INSERT INTO Miembros
VALUES('16', 'Jamie', 'Brennan', 3);
INSERT INTO Miembros
VALUES('17', 'Kendra', 'Redwood', 2);
INSERT INTO Miembros
VALUES('18', 'Dakota', 'Robinson', 2);
INSERT INTO Miembros
VALUES('19', 'Leroy', 'Jacobs', 3);
INSERT INTO Miembros
VALUES('20', 'Olivia', 'Silva', 2);
INSERT INTO Miembros
VALUES('21', 'Mark', 'Vernon', 1);
INSERT INTO Miembros
VALUES('22', 'Diane', 'Buckley', 2);
INSERT INTO Miembros
VALUES('23', 'Mary', 'Hunt', 2);
INSERT INTO Miembros
VALUES('24', 'Bob', 'Robinson', 2);
INSERT INTO Miembros
VALUES('25', 'Rufus', 'Oldfield', 2);
INSERT INTO Miembros
VALUES('26', 'Angelina', 'Stevenson', 2);
INSERT INTO Miembros
VALUES('27', 'Remy', 'Jones', 1);
INSERT INTO Miembros
VALUES('28', 'Liliana', 'Haines', 3);
INSERT INTO Miembros
VALUES('29', 'John', 'Wright', 2);
INSERT INTO Miembros
VALUES('30', 'Rachael', 'Wright', 1);
INSERT INTO Miembros
VALUES('31', 'Danny', 'Bell', 3);
INSERT INTO Miembros
VALUES('32', 'Estrella', 'Drake', 2);
INSERT INTO Miembros
VALUES('33', 'Bob', 'Trent', 3);
INSERT INTO Miembros
VALUES('34', 'Diane', 'Lee', 2);
INSERT INTO Miembros
VALUES('35', 'Hank', 'Oldfield', 3);
INSERT INTO Miembros
VALUES('36', 'Denny', 'Alexander', 1);
INSERT INTO Miembros
VALUES('37', 'Cedrick', 'Rothwell', 1);
INSERT INTO Miembros
VALUES('38', 'Marie', 'Vallory', 3);
INSERT INTO Miembros
VALUES('39', 'Livia', 'Utterson', 2);
INSERT INTO Miembros
VALUES('40', 'Jacob', 'Collins', 3);
INSERT INTO Miembros
VALUES('41', 'Jack', 'Turner', 1);
INSERT INTO Miembros
VALUES('42', 'Sydney', 'Gordon', 3);
INSERT INTO Miembros
VALUES('43', 'Harvey', 'Gibson', 2);
INSERT INTO Miembros
VALUES('44', 'Rita', 'Dillon', 1);
INSERT INTO Miembros
VALUES('45', 'Blake', 'Grady', 3);
INSERT INTO Miembros
VALUES('46', 'Greta', 'Dickson', 3);
INSERT INTO Miembros
VALUES('47', 'Enoch', 'Garner', 2);
INSERT INTO Miembros
VALUES('48', 'Kimberly', 'John', 2);
INSERT INTO Miembros
VALUES('49', 'Luke', 'Ellis', 1);
INSERT INTO Miembros
VALUES('50', 'Benny', 'Boden', 1);
INSERT INTO Miembros
VALUES('51', 'Martin', 'Carter', 2);
INSERT INTO Miembros
VALUES('52', 'Percy', 'Leslie', 1);
INSERT INTO Miembros
VALUES('53', 'Hailey', 'Carter', 2);
INSERT INTO Miembros
VALUES('54', 'Margaret', 'Gilmour', 3);
INSERT INTO Miembros
VALUES('55', 'Aiden', 'Jenkin', 1);
INSERT INTO Miembros
VALUES('56', 'Rylee', 'Allen', 1);
INSERT INTO Miembros
VALUES('57', 'Enoch', 'Quinton', 2);
INSERT INTO Miembros
VALUES('58', 'Barry', 'Watson', 2);
INSERT INTO Miembros
VALUES('59', 'Rocco', 'Higgs', 1);
INSERT INTO Miembros
VALUES('60', 'Jules', 'Tennant', 3);
INSERT INTO Miembros
VALUES('61', 'Brad', 'Groves', 3);
INSERT INTO Miembros
VALUES('62', 'Barney', 'Farrant', 3);
INSERT INTO Miembros
VALUES('63', 'Destiny', 'Mcgee', 2);
INSERT INTO Miembros
VALUES('64', 'Gina', 'Howard', 1);
INSERT INTO Miembros
VALUES('65', 'Davina', 'Forth', 3);
INSERT INTO Miembros
VALUES('66', 'Gemma', 'Whitehouse', 2);
INSERT INTO Miembros
VALUES('67', 'Bart', 'Windsor', 2);
INSERT INTO Miembros
VALUES('68', 'Ronald', 'Mann', 2);
INSERT INTO Miembros
VALUES('69', 'Vivian', 'Ashwell', 3);
INSERT INTO Miembros
VALUES('70', 'Jasmine', 'Roscoe', 1);
INSERT INTO Miembros
VALUES('71', 'Tony', 'Nobbs', 1);
INSERT INTO Miembros
VALUES('72', 'Carmella', 'Smith', 1);
INSERT INTO Miembros
VALUES('73', 'Denny', 'Fisher', 3);
INSERT INTO Miembros
VALUES('74', 'Christine', 'Wright', 1);
INSERT INTO Miembros
VALUES('75', 'Alan', 'Hepburn', 2);
INSERT INTO Miembros
VALUES('76', 'Mason', 'Reid', 1);
INSERT INTO Miembros
VALUES('77', 'Russel', 'Skinner', 2);
INSERT INTO Miembros
VALUES('78', 'Bart', 'Whitmore', 1);
INSERT INTO Miembros
VALUES('79', 'Denis', 'Clarke', 3);
INSERT INTO Miembros
VALUES('80', 'Harmony', 'Ianson', 3);
INSERT INTO Miembros
VALUES('81', 'Caydence', 'Clifton', 3);
INSERT INTO Miembros
VALUES('82', 'Andie', 'Clayton', 3);
INSERT INTO Miembros
VALUES('83', 'Laila', 'Jordan', 1);
INSERT INTO Miembros
VALUES('84', 'Sarah', 'Tailor', 3);
INSERT INTO Miembros
VALUES('85', 'Susan', 'Andrews', 3);
INSERT INTO Miembros
VALUES('86', 'Harry', 'Funnell', 3);
INSERT INTO Miembros
VALUES('87', 'Aiden', 'Stanley', 3);
INSERT INTO Miembros
VALUES('88', 'Danny', 'Veale', 2);
INSERT INTO Miembros
VALUES('89', 'Peyton', 'King', 2);
INSERT INTO Miembros
VALUES('90', 'Ethan', 'Tutton', 2);
INSERT INTO Miembros
VALUES('91', 'Chelsea', 'Stanton', 2);
INSERT INTO Miembros
VALUES('92', 'Amelia', 'Addis', 3);
INSERT INTO Miembros
VALUES('93', 'Makena', 'Appleton', 2);
INSERT INTO Miembros
VALUES('94', 'Jack', 'Butler', 1);
INSERT INTO Miembros
VALUES('95', 'Celia', 'Farrow', 3);
INSERT INTO Miembros
VALUES('96', 'Aeris', 'Stone', 1);
INSERT INTO Miembros
VALUES('97', 'Miriam', 'Tennant', 1);
INSERT INTO Miembros
VALUES('98', 'Danny', 'Morris', 1);
INSERT INTO Miembros
VALUES('99', 'Tom', 'Ventura', 3);
INSERT INTO Miembros
VALUES('100', 'Ethan', 'Mann', 1);
INSERT INTO Miembros
VALUES('101', 'Mavis', 'Pierce', 3);
INSERT INTO Miembros
VALUES('102', 'Barry', 'Waterhouse', 2);
INSERT INTO Miembros
VALUES('103', 'Analise', 'Woods', 1);
INSERT INTO Miembros
VALUES('104', 'Kate', 'Farrant', 2);
INSERT INTO Miembros
VALUES('105', 'Daron', 'Anderson', 1);
INSERT INTO Miembros
VALUES('106', 'Jane', 'London', 1);
INSERT INTO Miembros
VALUES('107', 'Benny', 'Weston', 3);
INSERT INTO Miembros
VALUES('108', 'Carrie', 'Blackburn', 3);
INSERT INTO Miembros
VALUES('109', 'Tyler', 'Dunbar', 2);
INSERT INTO Miembros
VALUES('110', 'Henry', 'Taylor', 1);
INSERT INTO Miembros
VALUES('111', 'Evelynn', 'Hunt', 2);
INSERT INTO Miembros
VALUES('112', 'Irene', 'Farmer', 3);
INSERT INTO Miembros
VALUES('113', 'Amy', 'Thorpe', 3);
INSERT INTO Miembros
VALUES('114', 'Margaret', 'Stewart', 3);
INSERT INTO Miembros
VALUES('115', 'Valentina', 'Patel', 2);
INSERT INTO Miembros
VALUES('116', 'Roger', 'Jarvis', 1);
INSERT INTO Miembros
VALUES('117', 'Logan', 'Shelton', 1);
INSERT INTO Miembros
VALUES('118', 'Rose', 'Lynn', 2);
INSERT INTO Miembros
VALUES('119', 'Piper', 'Osmond', 2);
INSERT INTO Miembros
VALUES('120', 'Luke', 'Roscoe', 2);
INSERT INTO Miembros
VALUES('121', 'Joseph', 'Yarlett', 2);
INSERT INTO Miembros
VALUES('122', 'Maribel', 'Osman', 2);
INSERT INTO Miembros
VALUES('123', 'Rowan', 'Eyres', 3);
INSERT INTO Miembros
VALUES('124', 'Cristal', 'James', 3);
INSERT INTO Miembros
VALUES('125', 'Macy', 'Burnley', 3);
INSERT INTO Miembros
VALUES('126', 'Rosalie', 'Hepburn', 1);
INSERT INTO Miembros
VALUES('127', 'Anne', 'Scott', 1);
INSERT INTO Miembros
VALUES('128', 'Lucy', 'Snow', 1);
INSERT INTO Miembros
VALUES('129', 'Rose', 'Bishop', 3);
INSERT INTO Miembros
VALUES('130', 'Lindsay', 'Jones', 2);
INSERT INTO Miembros
VALUES('131', 'Evelynn', 'Connor', 1);
INSERT INTO Miembros
VALUES('132', 'Sadie', 'Clifton', 1);
INSERT INTO Miembros
VALUES('133', 'Stephanie', 'Yoman', 2);
INSERT INTO Miembros
VALUES('134', 'Andie', 'Connor', 2);
INSERT INTO Miembros
VALUES('135', 'Iris', 'Bloom', 2);
INSERT INTO Miembros
VALUES('136', 'Benny', 'Craig', 1);
INSERT INTO Miembros
VALUES('137', 'Gemma', 'Kelly', 1);
INSERT INTO Miembros
VALUES('138', 'Morgan', 'Wellington', 2);
INSERT INTO Miembros
VALUES('139', 'Carmen', 'Radcliffe', 1);
INSERT INTO Miembros
VALUES('140', 'Jackeline', 'Rycroft', 3);
INSERT INTO Miembros
VALUES('141', 'Dani', 'Reyes', 2);
INSERT INTO Miembros
VALUES('142', 'Candace', 'Olson', 1);
INSERT INTO Miembros
VALUES('143', 'Peter', 'Mullins', 1);
INSERT INTO Miembros
VALUES('144', 'Bryon', 'Brown', 1);
INSERT INTO Miembros
VALUES('145', 'Adeline', 'Owen', 1);
INSERT INTO Miembros
VALUES('146', 'Rosalyn', 'Kent', 2);
INSERT INTO Miembros
VALUES('147', 'Anthony', 'Hamilton', 2);
INSERT INTO Miembros
VALUES('148', 'Melinda', 'Burge', 3);
INSERT INTO Miembros
VALUES('149', 'Valerie', 'Khan', 2);
INSERT INTO Miembros
VALUES('150', 'Rocco', 'Gavin', 2);
INSERT INTO Miembros
VALUES('151', 'Aisha', 'Stone ', 1);
INSERT INTO Miembros
VALUES('152', 'Bob', 'Cameron', 3);
INSERT INTO Miembros
VALUES('153', 'Cameron', 'Bell', 3);
INSERT INTO Miembros
VALUES('154', 'Maxwell', 'Lindsay', 2);
INSERT INTO Miembros
VALUES('155', 'Domenic', 'Torres', 3);
INSERT INTO Miembros
VALUES('156', 'Gwenyth', 'Herbert', 2);
INSERT INTO Miembros
VALUES('157', 'Rufus', 'Simpson', 2);
INSERT INTO Miembros
VALUES('158', 'Jenna', 'Cooper', 2);
INSERT INTO Miembros
VALUES('159', 'Liliana', 'Martin', 2);
INSERT INTO Miembros
VALUES('160', 'Rihanna', 'Cartwright', 2);
INSERT INTO Miembros
VALUES('161', 'Henry', 'Patel', 2);
INSERT INTO Miembros
VALUES('162', 'Chadwick', 'Calderwood', 2);
INSERT INTO Miembros
VALUES('163', 'Ronald', 'Boyle', 1);
INSERT INTO Miembros
VALUES('164', 'Bob', 'Bryant', 3);
INSERT INTO Miembros
VALUES('165', 'Iris', 'Grady', 1);
INSERT INTO Miembros
VALUES('166', 'Carter', 'Nicholls', 1);
INSERT INTO Miembros
VALUES('167', 'Marvin', 'Uttridge', 1);
INSERT INTO Miembros
VALUES('168', 'Jazmin', 'Sanchez', 2);
INSERT INTO Miembros
VALUES('169', 'Mason', 'Shields', 3);
INSERT INTO Miembros
VALUES('170', 'Renee', 'Stevens', 3);
INSERT INTO Miembros
VALUES('171', 'Ethan', 'Edwards', 3);
INSERT INTO Miembros
VALUES('172', 'Sloane', 'Mccall', 2);
INSERT INTO Miembros
VALUES('173', 'Tania', 'Holt', 1);
INSERT INTO Miembros
VALUES('174', 'Belinda', 'Baker', 2);
INSERT INTO Miembros
VALUES('175', 'John', 'Ryan', 2);
INSERT INTO Miembros
VALUES('176', 'Michael', 'Franks', 2);
INSERT INTO Miembros
VALUES('177', 'Mark', 'Wise', 3);
INSERT INTO Miembros
VALUES('178', 'Clarissa', 'Lyon', 2);
INSERT INTO Miembros
VALUES('179', 'Gabriel', 'Wilton', 3);
INSERT INTO Miembros
VALUES('180', 'Taylor', 'Stewart', 3);
INSERT INTO Miembros
VALUES('181', 'Ramon', 'Willson', 2);
INSERT INTO Miembros
VALUES('182', 'Alan', 'Rycroft', 2);
INSERT INTO Miembros
VALUES('183', 'Tom', 'Wild', 2);
INSERT INTO Miembros
VALUES('184', 'David', 'Everett', 1);
INSERT INTO Miembros
VALUES('185', 'Cedrick', 'Gilbert', 2);
INSERT INTO Miembros
VALUES('186', 'Marvin', 'Sinclair', 1);
INSERT INTO Miembros
VALUES('187', 'Mason', 'Kelly', 1);
INSERT INTO Miembros
VALUES('188', 'Kurt', 'Hamilton', 2);
INSERT INTO Miembros
VALUES('189', 'Harvey', 'Gordon', 3);
INSERT INTO Miembros
VALUES('190', 'Abdul', 'Jenkin', 2);
INSERT INTO Miembros
VALUES('191', 'Tony', 'Hunt', 1);
INSERT INTO Miembros
VALUES('192', 'Boris', 'Scott', 1);
INSERT INTO Miembros
VALUES('193', 'Brad', 'Wade', 2);
INSERT INTO Miembros
VALUES('194', 'Kurt', 'Bullock', 3);
INSERT INTO Miembros
VALUES('195', 'Gabriel', 'Stewart', 2);
INSERT INTO Miembros
VALUES('196', 'Ethan', 'Willson', 1);
INSERT INTO Miembros
VALUES('197', 'Nathan', 'John', 1);
INSERT INTO Miembros
VALUES('198', 'Nick', 'Calderwood', 1);
INSERT INTO Miembros
VALUES('199', 'Denis', 'Collins', 2);
INSERT INTO Miembros
VALUES('200', 'Nate', 'Parr', 2);
GO



INSERT INTO Paises
VALUES('1', 'Laos');
INSERT INTO Paises
VALUES('2', 'Micronesia');
INSERT INTO Paises
VALUES('3', 'Peru');
INSERT INTO Paises
VALUES('4', 'Kenya');
INSERT INTO Paises
VALUES('5', 'Iran');
INSERT INTO Paises
VALUES('6', 'Netherlands');
INSERT INTO Paises
VALUES('7', 'Peru');
INSERT INTO Paises
VALUES('8', 'Malawi');
INSERT INTO Paises
VALUES('9', 'Solomon Islands');
INSERT INTO Paises
VALUES('10', 'Liechtenstein');
INSERT INTO Paises
VALUES('11', 'Micronesia');
INSERT INTO Paises
VALUES('12', 'Germany');
INSERT INTO Paises
VALUES('13', 'Kosovo');
INSERT INTO Paises
VALUES('14', 'Cuba');
INSERT INTO Paises
VALUES('15', 'Cabo Verde');
INSERT INTO Paises
VALUES('16', 'Rwanda');
INSERT INTO Paises
VALUES('17', 'Uruguay');
INSERT INTO Paises
VALUES('18', 'Czech Republic');
INSERT INTO Paises
VALUES('19', 'Libya');
INSERT INTO Paises
VALUES('20', 'Kiribati');
INSERT INTO Paises
VALUES('21', 'Dominican Republic');
INSERT INTO Paises
VALUES('22', 'Zambia');
INSERT INTO Paises
VALUES('23', 'Seychelles');
INSERT INTO Paises
VALUES('24', 'Gabon');
INSERT INTO Paises
VALUES('25', 'Honduras');
INSERT INTO Paises
VALUES('26', 'Jordan');
INSERT INTO Paises
VALUES('27', 'Zimbabwe');
INSERT INTO Paises
VALUES('28', 'Macedonia');
INSERT INTO Paises
VALUES('29', 'Mexico');
INSERT INTO Paises
VALUES('30', 'Brazil');
INSERT INTO Paises
VALUES('31', 'Tunisia');
INSERT INTO Paises
VALUES('32', 'Mali');
INSERT INTO Paises
VALUES('33', 'Denmark');
INSERT INTO Paises
VALUES('34', 'Finland');
INSERT INTO Paises
VALUES('35', 'Moldova');
INSERT INTO Paises
VALUES('36', 'Cabo Verde');
INSERT INTO Paises
VALUES('37', 'Eritrea');
INSERT INTO Paises
VALUES('38', 'Luxembourg');
INSERT INTO Paises
VALUES('39', 'Zimbabwe');
INSERT INTO Paises
VALUES('40', 'Tunisia');
INSERT INTO Paises
VALUES('41', 'Somalia');
INSERT INTO Paises
VALUES('42', 'Namibia');
INSERT INTO Paises
VALUES('43', 'Georgia');
INSERT INTO Paises
VALUES('44', 'Swaziland');
INSERT INTO Paises
VALUES('45', 'Russia');
INSERT INTO Paises
VALUES('46', 'Thailand');
INSERT INTO Paises
VALUES('47', 'Mozambique');
INSERT INTO Paises
VALUES('48', 'Spain');
INSERT INTO Paises
VALUES('49', 'Guinea-Bissau');
INSERT INTO Paises
VALUES('50', 'Paraguay');
INSERT INTO Paises
VALUES('51', 'Serbia');
INSERT INTO Paises
VALUES('52', 'Morocco');
INSERT INTO Paises
VALUES('53', 'Madagascar');
INSERT INTO Paises
VALUES('54', 'Congo');
INSERT INTO Paises
VALUES('55', 'Liberia');
INSERT INTO Paises
VALUES('56', 'Mauritania');
INSERT INTO Paises
VALUES('57', 'Cuba');
INSERT INTO Paises
VALUES('58', 'Turkmenistan');
INSERT INTO Paises
VALUES('59', 'Chad');
INSERT INTO Paises
VALUES('60', 'Paraguay');
INSERT INTO Paises
VALUES('61', 'Argentina');
INSERT INTO Paises
VALUES('62', 'Burkina Faso');
INSERT INTO Paises
VALUES('63', 'Germany');
INSERT INTO Paises
VALUES('64', 'Mexico');
INSERT INTO Paises
VALUES('65', 'Saint Lucia');
INSERT INTO Paises
VALUES('66', 'Italy');
INSERT INTO Paises
VALUES('67', 'Burundi');
INSERT INTO Paises
VALUES('68', 'Cambodia');
INSERT INTO Paises
VALUES('69', 'Iceland');
INSERT INTO Paises
VALUES('70', 'Bahrain');
INSERT INTO Paises
VALUES('71', 'El Salvador');
INSERT INTO Paises
VALUES('72', 'El Salvador');
INSERT INTO Paises
VALUES('73', 'Iran');
INSERT INTO Paises
VALUES('74', 'Korea, South');
INSERT INTO Paises
VALUES('75', 'Latvia');
INSERT INTO Paises
VALUES('76', 'Laos');
INSERT INTO Paises
VALUES('77', 'Jordan');
INSERT INTO Paises
VALUES('78', 'Cabo Verde');
INSERT INTO Paises
VALUES('79', 'Australia');
INSERT INTO Paises
VALUES('80', 'Yemen');
INSERT INTO Paises
VALUES('81', 'Mozambique');
INSERT INTO Paises
VALUES('82', 'Malaysia');
INSERT INTO Paises
VALUES('83', 'Swaziland');
INSERT INTO Paises
VALUES('84', 'Kenya');
INSERT INTO Paises
VALUES('85', 'Armenia');
INSERT INTO Paises
VALUES('86', 'Benin');
INSERT INTO Paises
VALUES('87', 'Pakistan');
INSERT INTO Paises
VALUES('88', 'Zambia');
INSERT INTO Paises
VALUES('89', 'Vatican City');
INSERT INTO Paises
VALUES('90', 'Sao Tome and Principe');
INSERT INTO Paises
VALUES('91', 'Switzerland');
INSERT INTO Paises
VALUES('92', 'Slovenia');
INSERT INTO Paises
VALUES('93', 'Fiji');
INSERT INTO Paises
VALUES('94', 'Germany');
INSERT INTO Paises
VALUES('95', 'San Marino');
INSERT INTO Paises
VALUES('96', 'Montenegro');
INSERT INTO Paises
VALUES('97', 'Solomon Islands');
INSERT INTO Paises
VALUES('98', 'Bhutan');
INSERT INTO Paises
VALUES('99', 'Venezuela');
INSERT INTO Paises
VALUES('100', 'Colombia');
INSERT INTO Paises
VALUES('101', 'Senegal');
INSERT INTO Paises
VALUES('102', 'Bulgaria');
INSERT INTO Paises
VALUES('103', 'Yemen');
INSERT INTO Paises
VALUES('104', 'Guinea-Bissau');
INSERT INTO Paises
VALUES('105', 'Austria');
INSERT INTO Paises
VALUES('106', 'Liechtenstein');
INSERT INTO Paises
VALUES('107', 'Equatorial Guinea');
INSERT INTO Paises
VALUES('108', 'Argentina');
INSERT INTO Paises
VALUES('109', 'Burundi');
INSERT INTO Paises
VALUES('110', 'Japan');
INSERT INTO Paises
VALUES('111', 'United Kingdom');
INSERT INTO Paises
VALUES('112', 'United Arab Emirates');
INSERT INTO Paises
VALUES('113', 'Mali');
INSERT INTO Paises
VALUES('114', 'Azerbaijan');
INSERT INTO Paises
VALUES('115', 'Egypt');
INSERT INTO Paises
VALUES('116', 'Tunisia');
INSERT INTO Paises
VALUES('117', 'Côte d’Ivoire');
INSERT INTO Paises
VALUES('118', 'Eritrea');
INSERT INTO Paises
VALUES('119', 'Vatican City');
INSERT INTO Paises
VALUES('120', 'Bangladesh');
INSERT INTO Paises
VALUES('121', 'Austria');
INSERT INTO Paises
VALUES('122', 'Philippines');
INSERT INTO Paises
VALUES('123', 'Netherlands');
INSERT INTO Paises
VALUES('124', 'Maldives');
INSERT INTO Paises
VALUES('125', 'Cambodia');
INSERT INTO Paises
VALUES('126', 'Costa Rica');
INSERT INTO Paises
VALUES('127', 'Denmark');
INSERT INTO Paises
VALUES('128', 'Canada');
INSERT INTO Paises
VALUES('129', 'Cuba');
INSERT INTO Paises
VALUES('130', 'Philippines');
INSERT INTO Paises
VALUES('131', 'Central African Republic');
INSERT INTO Paises
VALUES('132', 'Montenegro');
INSERT INTO Paises
VALUES('133', 'Iceland');
INSERT INTO Paises
VALUES('134', 'Somalia');
INSERT INTO Paises
VALUES('135', 'Niger');
INSERT INTO Paises
VALUES('136', 'Cambodia');
INSERT INTO Paises
VALUES('137', 'Slovenia');
INSERT INTO Paises
VALUES('138', 'Finland');
INSERT INTO Paises
VALUES('139', 'Indonesia');
INSERT INTO Paises
VALUES('140', 'Nicaragua');
INSERT INTO Paises
VALUES('141', 'Afghanistan');
INSERT INTO Paises
VALUES('142', 'The Gambia');
INSERT INTO Paises
VALUES('143', 'Vatican City');
INSERT INTO Paises
VALUES('144', 'Kosovo');
INSERT INTO Paises
VALUES('145', 'Sudan, South');
INSERT INTO Paises
VALUES('146', 'Guyana');
INSERT INTO Paises
VALUES('147', 'Cyprus');
INSERT INTO Paises
VALUES('148', 'Namibia');
INSERT INTO Paises
VALUES('149', 'Zimbabwe');
INSERT INTO Paises
VALUES('150', 'Uzbekistan');
INSERT INTO Paises
VALUES('151', 'Haiti');
INSERT INTO Paises
VALUES('152', 'Somalia');
INSERT INTO Paises
VALUES('153', 'El Salvador');
INSERT INTO Paises
VALUES('154', 'Dominican Republic');
INSERT INTO Paises
VALUES('155', 'Germany');
INSERT INTO Paises
VALUES('156', 'Latvia');
INSERT INTO Paises
VALUES('157', 'Trinidad and Tobago');
INSERT INTO Paises
VALUES('158', 'Morocco');
INSERT INTO Paises
VALUES('159', 'Korea, South');
INSERT INTO Paises
VALUES('160', 'Congo');
INSERT INTO Paises
VALUES('161', 'Serbia');
INSERT INTO Paises
VALUES('162', 'Eritrea');
INSERT INTO Paises
VALUES('163', 'Italy');
INSERT INTO Paises
VALUES('164', 'Zambia');
INSERT INTO Paises
VALUES('165', 'South Africa');
INSERT INTO Paises
VALUES('166', 'India');
INSERT INTO Paises
VALUES('167', 'Ghana');
INSERT INTO Paises
VALUES('168', 'Thailand');
INSERT INTO Paises
VALUES('169', 'Slovakia');
INSERT INTO Paises
VALUES('170', 'Oman');
INSERT INTO Paises
VALUES('171', 'Singapore');
INSERT INTO Paises
VALUES('172', 'Saudi Arabia');
INSERT INTO Paises
VALUES('173', 'Kazakhstan');
INSERT INTO Paises
VALUES('174', 'Vatican City');
INSERT INTO Paises
VALUES('175', 'Malta');
INSERT INTO Paises
VALUES('176', 'Uganda');
INSERT INTO Paises
VALUES('177', 'Romania');
INSERT INTO Paises
VALUES('178', 'Latvia');
INSERT INTO Paises
VALUES('179', 'Kyrgyzstan');
INSERT INTO Paises
VALUES('180', 'Dominica');
INSERT INTO Paises
VALUES('181', 'Bosnia and Herzegovina');
INSERT INTO Paises
VALUES('182', 'Central African Republic');
INSERT INTO Paises
VALUES('183', 'Bulgaria');
INSERT INTO Paises
VALUES('184', 'Lesotho');
INSERT INTO Paises
VALUES('185', 'Australia');
INSERT INTO Paises
VALUES('186', 'Cabo Verde');
INSERT INTO Paises
VALUES('187', 'San Marino');
INSERT INTO Paises
VALUES('188', 'France');
INSERT INTO Paises
VALUES('189', 'Laos');
INSERT INTO Paises
VALUES('190', 'Kiribati');
INSERT INTO Paises
VALUES('191', 'Russia');
INSERT INTO Paises
VALUES('192', 'Guinea');
INSERT INTO Paises
VALUES('193', 'Tonga');
INSERT INTO Paises
VALUES('194', 'France');
INSERT INTO Paises
VALUES('195', 'Afghanistan');
INSERT INTO Paises
VALUES('196', 'Saudi Arabia');
INSERT INTO Paises
VALUES('197', 'Namibia');
INSERT INTO Paises
VALUES('198', 'Laos');
INSERT INTO Paises
VALUES('199', 'United States');
INSERT INTO Paises
VALUES('200', 'Philippines');
GO

INSERT INTO Categorias
VALUES(1, 'Alimento'),
    (2, 'Electronico'),
    (3, 'Electrodomestico'),
    (4, 'Salud'),
    (5, 'Cuidado Personal'),
    (6, 'Ropa');

GO

INSERT INTO Proveedor
VALUES('1', 'Inglot', 'Cable    Tunnel, 7544', '1-088-360-0786', 68);
INSERT INTO Proveedor
VALUES('2', 'NARS Cosmetics', 'Canning  Tunnel, 4148', '1-052-163-4666', 167);
INSERT INTO Proveedor
VALUES('3', 'Bobbi Brown', 'Linden Street, 2471', '7-816-027-5372', 155);
INSERT INTO Proveedor
VALUES('4', 'Sephora', 'Fairview Grove, 4076', '4-278-385-4532', 130);
INSERT INTO Proveedor
VALUES('5', 'Revolution Makeup London', 'Dunstable   Lane, 5664', '7-442-353-8188', 55);
INSERT INTO Proveedor
VALUES('6', 'Avon', 'Virginia Boulevard, 3538', '2-327-428-7260', 139);
INSERT INTO Proveedor
VALUES('7', 'L:A Bruket', 'Chamberlain  Way, 2081', '8-686-718-8876', 83);
INSERT INTO Proveedor
VALUES('8', 'The Body Shop', 'Lincoln Vale, 9840', '0-735-700-4568', 147);
INSERT INTO Proveedor
VALUES('9', 'Chanel', 'Victoria  Lane, 536', '2-625-554-0337', 118);
INSERT INTO Proveedor
VALUES('10', 'Oriflame', 'Lake Walk, 21', '4-061-683-7540', 30);
INSERT INTO Proveedor
VALUES('11', 'Cheetos', 'Bacon  Walk, 1950', '7-524-700-0175', 110);
INSERT INTO Proveedor
VALUES('12', 'Betty Crocker', 'Fairbairn  Tunnel, 7148', '2-657-557-7752', 132);
INSERT INTO Proveedor
VALUES('13', 'Knorr', 'Parkfield  Rue, 54', '7-441-310-7854', 161);
INSERT INTO Proveedor
VALUES('14', 'Cheetos', 'Battersea   Walk, 2110', '1-446-085-2645', 33);
INSERT INTO Proveedor
VALUES('15', 'Heinz', 'Baynes  Tunnel, 6899', '1-562-203-0667', 5);
INSERT INTO Proveedor
VALUES('16', 'Carib Brewery', 'Dutton   Route, 7521', '7-042-888-7824', 169);
INSERT INTO Proveedor
VALUES('17', 'Papadopoulos', 'Falconberg   Road, 5982', '3-757-248-1130', 51);
INSERT INTO Proveedor
VALUES('18', 'Olymel', 'Clyde Vale, 7296', '1-826-886-2682', 192);
INSERT INTO Proveedor
VALUES('19', 'M&M Food Market', 'Bellenden   Hill, 8058', '6-162-343-2021', 117);
INSERT INTO Proveedor
VALUES('20', 'Nutella', 'Betton  Way, 4221', '1-665-525-3131', 68);
INSERT INTO Proveedor
VALUES('21', 'Kool-Aid', 'Glenwood Tunnel, 7080', '0-263-685-1761', 173);
INSERT INTO Proveedor
VALUES('22', 'Heineken', 'Cardinal Road, 2609', '1-504-480-7200', 18);
INSERT INTO Proveedor
VALUES('23', 'Evolution Fresh', 'Thomas More   Road, 7873', '1-874-121-6638', 154);
INSERT INTO Proveedor
VALUES('24', 'Budweiser', 'Commercial  Rue, 1743', '1-346-272-0280', 145);
INSERT INTO Proveedor
VALUES('25', 'Aquafina', 'Beechen  Drive, 5534', '5-361-750-7326', 19);
INSERT INTO Proveedor
VALUES('26', 'Absolut', 'Chartham  Hill, 5348', '3-876-624-3661', 46);
INSERT INTO Proveedor
VALUES('27', 'Edelweiss', 'St. Pauls  Crossroad, 2598', '3-317-043-5363', 7);
INSERT INTO Proveedor
VALUES('28', 'Stella Artois', 'Coal Wharf  Vale, 109', '3-438-527-2824', 3);
INSERT INTO Proveedor
VALUES('29', 'Chivas Regal', 'Aspen Hill, 9163', '3-464-064-7423', 7);
INSERT INTO Proveedor
VALUES('30', 'Smirnoff', 'Blackheath   Tunnel, 5907', '5-176-085-1577', 149);
INSERT INTO Proveedor
VALUES('31', 'Abilify', 'Chester      Road, 8227', '3-466-156-3585', 79);
INSERT INTO Proveedor
VALUES('32', 'Benadryl', 'Lexington Vale, 4864', '8-405-476-7468', 44);
INSERT INTO Proveedor
VALUES('33', 'Gravol', 'Tisbury  Tunnel, 911', '1-435-662-1238', 198);
INSERT INTO Proveedor
VALUES('34', 'Maxalt', 'College  Hill, 2530', '5-076-832-4782', 90);
INSERT INTO Proveedor
VALUES('35', 'Femibion', 'Victoria Rise Avenue, 7200', '5-425-556-1183', 32);
INSERT INTO Proveedor
VALUES('36', 'Zetril', 'Calverley  Road, 6268', '1-657-841-6186', 167);
INSERT INTO Proveedor
VALUES('37', 'Zetia', 'Bigland  Grove, 7611', '7-132-585-0265', 1);
INSERT INTO Proveedor
VALUES('38', 'Aspirin', 'Camley   Hill, 477', '7-538-856-0244', 143);
INSERT INTO Proveedor
VALUES('39', 'Pepcid', 'Fairholt   Way, 2788', '4-527-360-1145', 60);
INSERT INTO Proveedor
VALUES('40', 'Symbicort', 'Clarks  Pass, 9983', '3-688-447-2428', 4);
INSERT INTO Proveedor
VALUES('41', 'Max Studio', 'Adelaide  Tunnel, 4122', '7-287-775-0670', 8);
INSERT INTO Proveedor
VALUES('42', 'Hamilton Shirts', 'Glenwood Tunnel, 4594', '5-700-127-5454', 175);
INSERT INTO Proveedor
VALUES('43', 'Izod', 'Elgood   Road, 1929', '2-180-545-4811', 60);
INSERT INTO Proveedor
VALUES('44', 'Old Navy', 'Andrews  Crossroad, 21', '3-543-312-4423', 41);
INSERT INTO Proveedor
VALUES('45', 'SABA', 'Berry  Drive, 3011', '7-763-317-1150', 192);
INSERT INTO Proveedor
VALUES('46', 'Rip Curl', 'St. Johs  Vale, 548', '6-444-857-1835', 65);
INSERT INTO Proveedor
VALUES('47', 'Brooks Brothers', 'Angela   Vale, 1904', '1-745-635-2721', 157);
INSERT INTO Proveedor
VALUES('48', 'Acorn Stores', 'Emily  Boulevard, 9153', '1-336-242-1054', 12);
INSERT INTO Proveedor
VALUES('49', 'EMEL Fashion', 'Andsell    Alley, 7634', '3-863-043-3816', 132);
INSERT INTO Proveedor
VALUES('50', 'Koalapop', 'Bishop   Road, 6208', '0-616-037-6425', 19);
GO


INSERT INTO Sucursal
VALUES(1, 'Ideasale Los Ángeles', '11301 W Pico Blvd
Los Angeles, CA 90064', '(310) 268-9190', 'IdeasaleLA@Ideasale.com', 199),
    (2, 'Ideasale El Salvador', ' Km. 12, Carr. Troncal Del Nte.', '(503) 22131584', 'IdeasaleSA@Ideasale.com', 71),
    (3, 'Ideasale España', ' C/ Eduard Maristany, 19708912 Badalona (Barcelona)', '936247963', 'IdeasaleES@Ideasale.com', 48);
GO


INSERT INTO Empleado VALUES('1','Chester Carson','Union  Way, 9851','8-865-777-2533','Chester_Carson143@typill.biz','352-87-4818','M','6/29/1980',89,2);
INSERT INTO Empleado VALUES('2','Ada Ellwood','King Drive, 5227','4-042-014-8503','Ada_Ellwood114@brety.org','341-08-6702','F','3/30/1980',172,3);
INSERT INTO Empleado VALUES('3','Anthony Griffiths','Mariner   Walk, 674','2-343-750-8813','Anthony_Griffiths143@famism.biz','832-43-0413','M','11/6/1990',180,2);
INSERT INTO Empleado VALUES('4','Lauren Hunter','Littlebury  Boulevard, 2353','6-548-283-6745','Lauren_Hunter57@zorer.org','564-26-2778','F','10/19/1997',66,3);
INSERT INTO Empleado VALUES('5','Carla Clark','Arline    Pass, 6050','6-847-466-6004','Carla_Clark160@jiman.org','754-85-3375','F','8/21/2001',187,2);
INSERT INTO Empleado VALUES('6','Rocco Simpson','Aylward   Road, 794','5-787-012-0631','Rocco_Simpson170@cispeto.com','186-12-2711','M','12/6/1991',61,1);
INSERT INTO Empleado VALUES('7','Ramon Stewart','Boldero   Pass, 650','6-072-244-0410','Ramon_Stewart114@sheye.org','305-27-2832','M','4/11/1983',162,2);
INSERT INTO Empleado VALUES('8','Jack Stanton','West Alley, 3034','6-380-251-0251','Jack_Stanton193@bulaffy.com','056-70-7535','M','10/20/2000',108,1);
INSERT INTO Empleado VALUES('9','Faith Wise','Bingham   Alley, 4137','2-278-322-0423','Faith_Wise11@nimogy.biz','864-48-4706','F','3/25/1981',191,2);
INSERT INTO Empleado VALUES('10','Johnny Emmott','Woodland Rue, 3547','4-004-314-1544','Johnny_Emmott7@iatim.tech','327-72-1341','M','5/29/1986',113,1);
INSERT INTO Empleado VALUES('11','Kendra Booth','Rosewood Hill, 2286','4-441-644-4417','Kendra_Booth188@mafthy.com','234-05-2723','F','6/29/2002',178,2);
INSERT INTO Empleado VALUES('12','Jayden Rodgers','Cavaye  Vale, 7598','3-214-886-2057','Jayden_Rodgers138@jiman.org','840-56-6816','M','7/2/1991',169,1);
INSERT INTO Empleado VALUES('13','Drew Tanner','Thurloe   Hill, 9807','1-813-740-6271','Drew_Tanner145@infotech44.tech','136-33-1566','F','2/17/1995',29,1);
INSERT INTO Empleado VALUES('14','Helen Farrant','Aspen Lane, 2726','1-327-300-1656','Helen_Farrant137@nimogy.biz','614-42-8232','F','6/12/1980',97,2);
INSERT INTO Empleado VALUES('15','Cassandra Roberts','Caedmon  Crossroad, 2293','2-047-554-8055','Cassandra_Roberts36@joiniaa.com','034-87-5778','F','4/17/1986',149,3);
INSERT INTO Empleado VALUES('16','Enoch Lakey','Bacton   Avenue, 8999','3-842-583-4384','Enoch_Lakey109@irrepsy.com','030-13-0337','M','5/14/1981',32,2);
INSERT INTO Empleado VALUES('17','Chuck Thornton','Fairholt   Vale, 376','4-448-834-7224','Chuck_Thornton14@nickia.com','355-26-0446','M','9/14/1998',21,2);
INSERT INTO Empleado VALUES('18','Charlize Griffiths','Longmoore   Road, 9170','4-631-888-8780','Charlize_Griffiths24@typill.biz','626-57-5470','F','9/1/1990',67,2);
INSERT INTO Empleado VALUES('19','Vicky Reese','Liverpool  Grove, 1211','8-750-546-5748','Vicky_Reese81@supunk.biz','214-76-4048','F','9/4/1986',117,3);
INSERT INTO Empleado VALUES('20','Bryon Ripley','Charnwood   Hill, 3436','8-868-803-7077','Bryon_Ripley192@dionrab.com','140-81-3587','M','3/11/1987',175,3);
INSERT INTO Empleado VALUES('21','Clint Rust','Bendmore  Lane, 2591','5-074-801-8385','Clint_Rust115@kideod.biz','103-30-8314','M','3/27/1999',18,3);
INSERT INTO Empleado VALUES('22','Courtney Saunders','Elystan  Crossroad, 9155','8-153-467-8342','Courtney_Saunders141@nimogy.biz','661-07-4106','F','3/1/1991',16,1);
INSERT INTO Empleado VALUES('23','Havana Tate','Hickory   Tunnel, 402','1-663-525-0261','Havana_Tate171@acrit.org','116-25-6721','F','7/4/1986',163,1);
INSERT INTO Empleado VALUES('24','Karen King','Elgood   Rue, 5445','3-237-745-6675','Karen_King143@ovock.tech','831-67-3605','F','7/16/1988',185,1);
INSERT INTO Empleado VALUES('25','Barney Overson','Abourne   Hill, 7423','4-778-364-3338','Barney_Overson165@zorer.org','681-20-8468','M','7/25/2000',89,3);
INSERT INTO Empleado VALUES('26','Sonya Glass','Charnwood   Street, 9694','2-880-052-8886','Sonya_Glass187@tonsy.org','267-36-0847','F','6/17/1993',91,3);
INSERT INTO Empleado VALUES('27','Lindsay Weatcroft','Beatty  Pass, 7561','1-388-848-0856','Lindsay_Weatcroft95@gembat.biz','187-32-1430','F','4/11/1986',56,3);
INSERT INTO Empleado VALUES('28','Alan Vinton','Monroe Avenue, 5062','3-371-446-8804','Alan_Vinton167@eirey.tech','634-14-2310','M','1/27/2000',47,3);
INSERT INTO Empleado VALUES('29','Tyson Gates','Kilner   Rue, 5417','3-506-850-3146','Tyson_Gates120@grannar.com','440-71-1336','M','1/30/1998',20,2);
INSERT INTO Empleado VALUES('30','Martha Alldridge','Comet House  Street, 9557','8-063-615-4368','Martha_Alldridge27@brety.org','335-85-3156','F','4/27/1997',177,2);
INSERT INTO Empleado VALUES('31','Carrie Vaughn','Charnwood   Hill, 5706','0-063-162-4086','Carrie_Vaughn158@deavo.com','105-41-8226','F','3/10/1987',183,2);
INSERT INTO Empleado VALUES('32','Carolyn Oakley','Westbourne Walk, 3423','4-111-431-2732','Carolyn_Oakley44@brety.org','430-73-2220','F','9/6/1998',29,3);
INSERT INTO Empleado VALUES('33','Anthony Varley','Eldon  Walk, 4763','3-304-804-1828','Anthony_Varley9@gmail.com','801-38-4046','M','2/5/1983',58,3);
INSERT INTO Empleado VALUES('34','Mya Richardson','Beaconsfield  Alley, 9514','6-782-277-4407','Mya_Richardson190@atink.com','775-53-6868','F','10/15/2000',72,2);
INSERT INTO Empleado VALUES('35','Mason Rogan','East Road, 4170','2-452-252-7061','Mason_Rogan172@elnee.tech','870-81-0267','M','2/18/1991',191,3);
INSERT INTO Empleado VALUES('36','Joseph Turner','Angel  Grove, 5374','0-014-241-7161','Joseph_Turner153@supunk.biz','646-81-7644','M','7/9/1982',165,3);
INSERT INTO Empleado VALUES('37','Peter Davies','Besson  Grove, 7396','0-667-640-7687','Peter_Davies21@jiman.org','457-32-6057','M','3/16/1998',23,1);
INSERT INTO Empleado VALUES('38','Peter Oakley','Timber   Drive, 4067','0-230-136-3170','Peter_Oakley2@twipet.com','010-42-3116','M','6/30/1994',118,2);
INSERT INTO Empleado VALUES('39','Gina Jordan','Beaumont  Vale, 5738','5-014-584-7801','Gina_Jordan8@fuliss.net','010-45-7132','F','3/1/1993',165,3);
INSERT INTO Empleado VALUES('40','Noah Rose','Byland  Avenue, 5690','0-266-167-8421','Noah_Rose184@womeona.net','335-44-8122','M','9/3/1992',30,1);
INSERT INTO Empleado VALUES('41','Rufus Addis','South Avenue, 1821','7-685-443-2275','Rufus_Addis115@irrepsy.com','213-12-2265','M','12/17/1991',172,2);
INSERT INTO Empleado VALUES('42','Mark Hogg','Dutton   Vale, 6430','8-573-688-3652','Mark_Hogg37@zorer.org','872-51-1314','M','9/25/1984',182,2);
INSERT INTO Empleado VALUES('43','Britney Amstead','Underwood  Way, 3123','6-275-371-4817','Britney_Amstead159@ovock.tech','446-27-6332','F','9/24/2001',175,1);
INSERT INTO Empleado VALUES('44','Danny Chapman','Chestnut Rise Way, 964','8-647-580-4050','Danny_Chapman105@supunk.biz','877-64-1845','M','5/13/1999',52,2);
INSERT INTO Empleado VALUES('45','Chuck Norton','Glenwood Grove, 5317','8-601-436-5368','Chuck_Norton136@guentu.biz','350-30-6527','M','7/29/1998',11,2);
INSERT INTO Empleado VALUES('46','Rufus Furnell','Becher  Grove, 8921','1-536-460-5100','Rufus_Furnell91@zorer.org','735-55-7200','M','2/17/1986',3,3);
INSERT INTO Empleado VALUES('47','Boris Vernon','Arbutus   Avenue, 5013','3-821-822-5671','Boris_Vernon176@eirey.tech','188-41-2703','M','12/28/2001',170,3);
INSERT INTO Empleado VALUES('48','Noemi Gates','Charnwood   Boulevard, 654','6-248-874-4356','Noemi_Gates94@qater.org','621-41-6307','F','12/19/1986',126,2);
INSERT INTO Empleado VALUES('49','Chester Robertson','Canal  Alley, 3010','5-022-857-6314','Chester_Robertson34@twace.org','617-76-7070','M','5/24/2002',22,3);
INSERT INTO Empleado VALUES('50','Harmony Lomax','Cave   Grove, 6200','1-286-711-8130','Harmony_Lomax59@ovock.tech','262-70-0357','F','8/13/1993',153,3);
INSERT INTO Empleado VALUES('51','Liv Lynn','Timothy  Road, 9385','4-880-860-8550','Liv_Lynn177@typill.biz','113-46-8820','F','3/31/1982',12,1);
INSERT INTO Empleado VALUES('52','Marla Roman','Fairholt   Boulevard, 2370','2-781-657-6847','Marla_Roman184@gompie.com','635-66-0546','F','7/16/1981',132,1);
INSERT INTO Empleado VALUES('53','Rufus Willis','Abbotswell  Drive, 8427','5-442-342-2514','Rufus_Willis160@ubusive.com','878-77-6658','M','9/11/1995',110,1);
INSERT INTO Empleado VALUES('54','Noah Dillon','Dunton  Lane, 8173','0-146-113-2885','Noah_Dillon134@bauros.biz','285-16-1155','M','3/18/2001',56,2);
INSERT INTO Empleado VALUES('55','Robyn Martin','Union  Alley, 7553','7-315-525-8678','Robyn_Martin90@liret.org','036-63-6142','F','1/4/2000',144,3);
INSERT INTO Empleado VALUES('56','Chadwick Nayler','Victoria  Hill, 2143','2-815-885-1177','Chadwick_Nayler103@liret.org','142-76-8247','M','4/20/1995',59,3);
INSERT INTO Empleado VALUES('57','Isla Dubois','Blendon    Crossroad, 1375','6-566-181-3808','Isla_Dubois169@cispeto.com','155-46-3636','F','8/11/1992',73,3);
INSERT INTO Empleado VALUES('58','Agnes Radcliffe','Rivervalley Alley, 7263','6-086-234-2513','Agnes_Radcliffe84@deons.tech','171-02-0700','F','3/20/1981',135,3);
INSERT INTO Empleado VALUES('59','Henry Ellwood','Monroe Avenue, 8568','4-480-373-8335','Henry_Ellwood37@nanoff.biz','708-52-2557','M','3/18/1995',100,2);
INSERT INTO Empleado VALUES('60','Celia Jobson','Fawn Boulevard, 3656','5-026-861-7644','Celia_Jobson120@typill.biz','704-11-7155','F','3/17/1990',91,1);
INSERT INTO Empleado VALUES('61','Ivy Pearson','Aspen Avenue, 3575','8-253-840-2118','Ivy_Pearson198@deavo.com','357-77-1606','F','6/30/2000',98,1);
INSERT INTO Empleado VALUES('62','Candice Osman','Cato   Grove, 1789','1-477-643-0270','Candice_Osman39@deons.tech','667-66-6214','F','12/16/1990',1,2);
INSERT INTO Empleado VALUES('63','Jocelyn Paterson','Apostle  Street, 3447','2-084-155-4075','Jocelyn_Paterson123@brety.org','581-05-0867','F','2/8/1994',133,1);
INSERT INTO Empleado VALUES('64','Tania Santos','Falconberg   Route, 4028','7-625-650-6551','Tania_Santos168@kideod.biz','401-01-1546','F','9/22/1993',82,2);
INSERT INTO Empleado VALUES('65','Carla Maxwell','Cato   Vale, 1039','3-703-361-6851','Carla_Maxwell190@atink.com','042-66-6813','F','1/25/1988',55,1);
INSERT INTO Empleado VALUES('66','Peter Rogers','Cleaver Route, 6262','3-066-820-3802','Peter_Rogers162@gmail.com','818-05-1801','M','12/3/2001',91,1);
INSERT INTO Empleado VALUES('67','Miriam Jackson','Thrale   Grove, 805','2-087-508-6217','Miriam_Jackson48@acrit.org','003-80-3523','F','10/21/2001',74,3);
INSERT INTO Empleado VALUES('68','Benjamin Pierce','Lincoln Crossroad, 9124','8-165-803-3707','Benjamin_Pierce104@gmail.com','866-52-7771','M','8/9/2002',191,3);
INSERT INTO Empleado VALUES('69','Danny Lewis','Bolton  Vale, 1546','2-244-470-0888','Danny_Lewis41@joiniaa.com','070-61-0061','M','3/10/1988',111,1);
INSERT INTO Empleado VALUES('70','Renee Rust','Hamilton  Walk, 4206','3-062-871-0822','Renee_Rust43@bungar.biz','048-14-0414','F','7/8/1983',154,2);
INSERT INTO Empleado VALUES('71','Josh Robe','Bacon  Way, 3397','8-870-240-6001','Josh_Robe104@cispeto.com','633-51-3288','M','3/10/1983',98,2);
INSERT INTO Empleado VALUES('72','Dani Cadman','Buttonwood Pass, 5566','8-346-806-0087','Dani_Cadman191@famism.biz','102-72-2303','F','4/23/1989',37,3);
INSERT INTO Empleado VALUES('73','Harry Mason','Black Swan  Vale, 4457','0-133-227-4163','Harry_Mason74@bretoux.com','403-30-2455','M','4/5/1998',83,1);
INSERT INTO Empleado VALUES('74','Carmella Redwood','Bennett  Pass, 43','1-470-127-4556','Carmella_Redwood61@nickia.com','522-14-5730','F','3/31/1994',47,3);
INSERT INTO Empleado VALUES('75','Barry Owen','Carlton  Avenue, 8456','8-481-261-3101','Barry_Owen177@naiker.biz','804-61-7518','M','10/2/1986',125,2);
INSERT INTO Empleado VALUES('76','Sebastian Oliver','Camley   Walk, 3817','6-223-126-3467','Sebastian_Oliver121@eirey.tech','654-26-8603','M','7/21/1995',173,3);
INSERT INTO Empleado VALUES('77','Lucas Collingwood','Adams  Way, 4168','1-376-244-5561','Lucas_Collingwood68@zorer.org','878-82-0336','M','3/8/2001',115,3);
INSERT INTO Empleado VALUES('78','Tyler Saunders','Liverpool  Boulevard, 4122','1-485-246-0827','Tyler_Saunders129@ovock.tech','873-48-2046','M','12/19/1997',184,1);
INSERT INTO Empleado VALUES('79','Martin Shields','Bagford   Avenue, 7283','4-057-755-5610','Martin_Shields171@iatim.tech','774-53-2735','M','2/18/1980',137,1);
INSERT INTO Empleado VALUES('80','Carl Ross','Thorndike   Street, 3764','3-713-470-2547','Carl_Ross67@dionrab.com','300-22-5387','M','10/22/1986',65,1);
INSERT INTO Empleado VALUES('81','Grace Gordon','Boadicea   Avenue, 4678','6-407-022-5461','Grace_Gordon143@eirey.tech','257-77-7351','F','6/9/2002',34,2);
INSERT INTO Empleado VALUES('82','Lorraine Cartwright','Carlton  Drive, 4106','4-135-052-0511','Lorraine_Cartwright146@deons.tech','410-55-0746','F','12/7/1984',188,1);
INSERT INTO Empleado VALUES('83','Brad Robertson','Apostle  Walk, 541','5-417-730-2641','Brad_Robertson136@nimogy.biz','437-34-1871','M','10/16/1991',15,1);
INSERT INTO Empleado VALUES('84','Julia Farrell','Burton  Grove, 5333','5-361-433-2687','Julia_Farrell94@corti.com','548-51-7142','F','4/23/1985',4,3);
INSERT INTO Empleado VALUES('85','Tess York','Boldero   Lane, 7620','3-535-547-4568','Tess_York161@kideod.biz','603-23-2036','F','12/9/1998',94,1);
INSERT INTO Empleado VALUES('86','Makena Johnson','Viscount   Crossroad, 1593','3-242-656-0432','Makena_Johnson119@bretoux.com','703-00-7350','F','1/16/1985',41,1);
INSERT INTO Empleado VALUES('87','Mavis Reynolds','Clifton  Hill, 6595','1-604-355-0316','Mavis_Reynolds18@iatim.tech','173-16-4426','F','4/29/1981',159,1);
INSERT INTO Empleado VALUES('88','Lynn Moore','Ashley Vale, 8667','5-844-688-0048','Lynn_Moore143@extex.org','485-50-0344','F','12/11/1997',179,3);
INSERT INTO Empleado VALUES('89','Fred Middleton','Vintners  Route, 2350','4-517-525-2465','Fred_Middleton113@ubusive.com','204-86-7317','M','3/24/1990',63,3);
INSERT INTO Empleado VALUES('90','Adina Reynolds','Cockspur  Street, 4244','8-324-072-4044','Adina_Reynolds101@nickia.com','656-55-8057','F','7/11/1985',50,3);
INSERT INTO Empleado VALUES('91','Penny Strong','Chestnut  Walk, 796','0-626-483-6805','Penny_Strong85@gompie.com','200-56-1706','F','6/24/1980',149,3);
INSERT INTO Empleado VALUES('92','Cameron Chappell','Mariner   Rue, 6340','0-273-121-6177','Cameron_Chappell146@bungar.biz','606-28-0826','F','10/27/2001',161,3);
INSERT INTO Empleado VALUES('93','Alan Rosenbloom','Fairholt   Rue, 105','6-628-588-7107','Alan_Rosenbloom12@yahoo.com','733-37-6228','M','9/20/1989',182,3);
INSERT INTO Empleado VALUES('94','Wade Ingram','Balfe   Rue, 2863','0-083-038-0817','Wade_Ingram121@ovock.tech','307-61-3667','M','4/16/1997',10,2);
INSERT INTO Empleado VALUES('95','Kieth Pond','Collins  Hill, 3714','3-336-838-0238','Kieth_Pond76@irrepsy.com','564-57-8421','M','8/9/1990',82,1);
INSERT INTO Empleado VALUES('96','Alba Dunbar','Apothecary   Alley, 7651','3-244-377-5382','Alba_Dunbar114@joiniaa.com','823-83-0111','F','7/11/1987',181,1);
INSERT INTO Empleado VALUES('97','Jenna Baker','Argyle  Crossroad, 3501','2-035-645-7406','Jenna_Baker97@cispeto.com','771-82-8512','F','9/13/1999',102,1);
INSERT INTO Empleado VALUES('98','Harmony Varndell','English   Hill, 438','2-463-653-4278','Harmony_Varndell6@deons.tech','217-64-2187','F','8/4/1996',149,1);
INSERT INTO Empleado VALUES('99','Harry Roth','Lincoln Walk, 5040','5-182-877-8082','Harry_Roth158@liret.org','834-62-3138','M','12/10/1980',52,2);
INSERT INTO Empleado VALUES('100','Matt Anderson','Underwood  Walk, 4800','5-722-208-4707','Matt_Anderson167@naiker.biz','728-64-5061','M','7/19/1982',109,3);
INSERT INTO Empleado VALUES('101','Elijah Patel','Thurloe   Avenue, 7641','6-481-043-1836','Elijah_Patel161@irrepsy.com','122-55-6648','M','10/16/1999',146,3);
INSERT INTO Empleado VALUES('102','Adalind Ashley','Blackwall  Road, 5623','3-735-538-8664','Adalind_Ashley21@joiniaa.com','455-76-6262','F','7/19/1982',63,1);
INSERT INTO Empleado VALUES('103','Aisha Ingham','Udall   Hill, 8810','4-101-350-3153','Aisha_Ingham189@eirey.tech','224-55-7716','F','3/4/1983',158,3);
INSERT INTO Empleado VALUES('104','Nancy Lane','College  Way, 1433','4-753-568-8401','Nancy_Lane77@yahoo.com','756-85-6667','F','7/20/1995',124,3);
INSERT INTO Empleado VALUES('105','Matthew Lewis','Chatfield  Vale, 7383','5-811-017-6023','Matthew_Lewis115@bungar.biz','160-00-7358','M','6/14/1998',51,3);
INSERT INTO Empleado VALUES('106','Barney Warden','Falconberg   Vale, 9592','7-746-581-7323','Barney_Warden72@irrepsy.com','856-07-6158','M','2/28/1992',159,3);
INSERT INTO Empleado VALUES('107','Rick Cork','Bicknell  Street, 9180','2-431-441-4510','Rick_Cork177@eirey.tech','350-81-0273','M','11/1/2002',17,1);
INSERT INTO Empleado VALUES('108','Boris Andrews','Apostle  Alley, 3411','1-552-543-7258','Boris_Andrews58@elnee.tech','106-46-8075','M','10/19/1988',53,3);
INSERT INTO Empleado VALUES('109','Shannon Uttridge','Elizabeth  Road, 4332','4-383-735-5380','Shannon_Uttridge179@infotech44.tech','181-73-8451','F','9/27/1982',170,3);
INSERT INTO Empleado VALUES('110','Jayden Drummond','Marischal  Rue, 5987','3-530-618-0402','Jayden_Drummond23@famism.biz','026-21-4721','M','7/29/2001',156,1);
INSERT INTO Empleado VALUES('111','Chuck Ogilvy','Badric  Way, 6054','5-322-251-6012','Chuck_Ogilvy20@qater.org','530-88-7216','M','6/21/1996',156,3);
INSERT INTO Empleado VALUES('112','Mike Hooper','Union  Route, 6334','2-881-213-6601','Mike_Hooper186@tonsy.org','750-53-2378','M','7/30/1999',189,1);
INSERT INTO Empleado VALUES('113','Peter Appleton','Queen Caroline   Drive, 1457','0-865-170-6524','Peter_Appleton197@ovock.tech','181-31-8723','M','2/9/1986',133,2);
INSERT INTO Empleado VALUES('114','Aiden Weasley','Canon Rue, 5010','0-770-572-8534','Aiden_Weasley84@brety.org','010-44-1768','M','3/7/1998',69,1);
INSERT INTO Empleado VALUES('115','Ronald Yates','Belmore  Pass, 9030','3-503-804-4733','Ronald_Yates141@mafthy.com','148-00-7713','M','3/25/1995',169,3);
INSERT INTO Empleado VALUES('116','Adelaide Saunders','Maple Vale, 7994','4-401-724-5305','Adelaide_Saunders161@tonsy.org','478-63-8604','F','8/10/1983',134,2);
INSERT INTO Empleado VALUES('117','Hank Stewart','Arbutus   Route, 35','4-888-466-5555','Hank_Stewart153@twipet.com','030-60-3601','M','1/22/1993',41,3);
INSERT INTO Empleado VALUES('118','Ramon Villiger','Chancellor  Hill, 3264','0-733-027-7502','Ramon_Villiger66@muall.tech','854-50-5830','M','1/28/1985',169,2);
INSERT INTO Empleado VALUES('119','Elijah Tait','Arline    Rue, 3991','1-263-412-2442','Elijah_Tait24@gembat.biz','143-32-4804','M','4/24/1991',36,1);
INSERT INTO Empleado VALUES('120','Karla Roman','Lake Way, 4459','1-751-706-6657','Karla_Roman61@brety.org','117-61-6360','F','6/29/1984',64,3);
INSERT INTO Empleado VALUES('121','Winnie Burge','Fawn Rue, 3266','4-606-826-4834','Winnie_Burge61@fuliss.net','785-32-1606','F','3/8/1990',7,2);
INSERT INTO Empleado VALUES('122','Owen Button','Rivervalley Crossroad, 6881','0-546-005-2717','Owen_Button24@cispeto.com','642-73-8272','M','6/13/2000',172,1);
INSERT INTO Empleado VALUES('123','Kurt Rees','Coley  Vale, 9010','0-840-633-5207','Kurt_Rees175@twipet.com','156-20-4778','M','8/20/1996',61,1);
INSERT INTO Empleado VALUES('124','Meredith Morris','Anns  Crossroad, 4690','3-322-745-3720','Meredith_Morris76@bauros.biz','384-15-2002','F','6/6/2001',97,3);
INSERT INTO Empleado VALUES('125','Juliet Owen','Queen Caroline   Way, 1536','3-876-314-6418','Juliet_Owen5@zorer.org','173-21-6315','F','6/9/2002',119,2);
INSERT INTO Empleado VALUES('126','Michael Archer','Enderby   Tunnel, 5655','5-287-744-2725','Michael_Archer39@twipet.com','804-36-2064','M','12/6/1990',67,1);
INSERT INTO Empleado VALUES('127','Deborah Tutton','Castle Way, 2604','0-328-752-5552','Deborah_Tutton171@iatim.tech','271-27-2704','F','11/26/2000',48,1);
INSERT INTO Empleado VALUES('128','Hanna Gosling','Victoria  Rue, 92','1-163-348-1761','Hanna_Gosling58@fuliss.net','137-02-7158','F','10/22/1981',79,2);
INSERT INTO Empleado VALUES('129','Oliver Harrison','Lincoln Boulevard, 6670','0-447-312-5152','Oliver_Harrison39@yahoo.com','645-27-4327','M','1/9/1984',163,3);
INSERT INTO Empleado VALUES('130','Aileen Devonport','Longman   Hill, 4235','2-544-022-1381','Aileen_Devonport8@iatim.tech','722-33-8317','F','11/30/1998',116,1);
INSERT INTO Empleado VALUES('131','Ramon Morris','Wager   Boulevard, 1937','0-733-185-2273','Ramon_Morris185@bungar.biz','675-87-1242','M','12/31/1992',28,3);
INSERT INTO Empleado VALUES('132','Adelaide Fox','Arthur  Rue, 1740','3-006-345-0855','Adelaide_Fox110@typill.biz','100-62-0662','F','4/22/2000',92,2);
INSERT INTO Empleado VALUES('133','Drew Matthews','Canon Way, 4188','5-706-682-5882','Drew_Matthews188@ovock.tech','778-21-8312','F','1/12/1990',128,3);
INSERT INTO Empleado VALUES('134','Priscilla Flett','Westcott  Pass, 3925','1-553-735-6802','Priscilla_Flett112@nickia.com','414-42-1236','F','9/25/1990',157,1);
INSERT INTO Empleado VALUES('135','Tom Thorne','Addison  Route, 6322','3-561-054-1384','Tom_Thorne84@sveldo.biz','624-00-4040','M','1/26/1997',110,1);
INSERT INTO Empleado VALUES('136','Cassidy Fields','Vincent  Lane, 7920','7-601-585-2413','Cassidy_Fields113@dionrab.com','837-65-3124','F','12/21/1985',25,1);
INSERT INTO Empleado VALUES('137','Barney Robertson','Clavell   Lane, 3393','7-088-087-5441','Barney_Robertson148@grannar.com','527-68-6436','M','1/20/2000',192,3);
INSERT INTO Empleado VALUES('138','Jayden Janes','Camley   Rue, 5910','7-762-247-4600','Jayden_Janes73@corti.com','053-14-3812','M','12/22/1980',135,2);
INSERT INTO Empleado VALUES('139','Clarissa Mason','Queen Road, 3714','0-854-841-0775','Clarissa_Mason192@bungar.biz','360-76-6456','F','9/22/1983',20,2);
INSERT INTO Empleado VALUES('140','Victoria Rixon','Union  Rue, 6019','4-503-481-2244','Victoria_Rixon184@ubusive.com','518-71-5621','F','10/23/1995',119,2);
INSERT INTO Empleado VALUES('141','Javier Eaton','Bales  Pass, 2897','4-721-434-4626','Javier_Eaton169@kideod.biz','225-27-8220','M','12/18/1981',146,3);
INSERT INTO Empleado VALUES('142','Chuck Appleton','Bacon  Route, 6701','0-580-276-7354','Chuck_Appleton129@bretoux.com','178-63-3045','M','7/27/1981',126,2);
INSERT INTO Empleado VALUES('143','Tyler Rees','Carltoun   Way, 2163','8-265-442-8461','Tyler_Rees55@cispeto.com','032-21-2243','M','5/31/1989',84,1);
INSERT INTO Empleado VALUES('144','Peyton Andrews','Timothy  Road, 8040','5-868-415-6345','Peyton_Andrews51@grannar.com','806-06-3653','F','11/1/1981',163,3);
INSERT INTO Empleado VALUES('145','Martin Fox','Blake  Tunnel, 7881','3-417-075-4887','Martin_Fox108@kideod.biz','071-72-2225','M','2/14/1992',170,3);
INSERT INTO Empleado VALUES('146','Kieth Dale','Badric  Street, 6524','1-783-787-3157','Kieth_Dale81@bauros.biz','027-21-0477','M','7/6/1995',117,1);
INSERT INTO Empleado VALUES('147','Angelique Vinton','Belmore  Grove, 6265','2-784-231-4818','Angelique_Vinton18@naiker.biz','586-51-5731','F','6/18/1994',56,1);
INSERT INTO Empleado VALUES('148','Chloe Fall','Bletchley   Grove, 11','0-266-052-7478','Chloe_Fall5@bungar.biz','114-05-5204','F','2/25/1997',68,1);
INSERT INTO Empleado VALUES('149','Samara Moran','Cheltenham  Rue, 9689','4-845-103-7770','Samara_Moran62@twace.org','015-46-1848','F','5/17/1992',97,3);
INSERT INTO Empleado VALUES('150','Elijah Jackson','Cleaver Vale, 7134','5-503-265-4818','Elijah_Jackson148@ubusive.com','102-01-6458','M','11/18/1995',198,3);
INSERT INTO Empleado VALUES('151','Phoebe Stevens','Church Boulevard, 5308','0-438-173-8380','Phoebe_Stevens127@twipet.com','761-44-6155','F','8/14/2001',135,2);
INSERT INTO Empleado VALUES('152','Hayden Lucas','Maple Rue, 256','6-525-518-4634','Hayden_Lucas121@nanoff.biz','038-42-1831','M','4/30/1998',126,3);
INSERT INTO Empleado VALUES('153','Elisabeth Myatt','Cobden  Walk, 339','4-181-050-5461','Elisabeth_Myatt99@vetan.org','873-47-6541','F','7/3/1985',168,2);
INSERT INTO Empleado VALUES('154','Susan Alcroft','Glenwood Road, 8532','6-511-224-8116','Susan_Alcroft28@nimogy.biz','866-67-1436','F','9/7/1996',16,2);
INSERT INTO Empleado VALUES('155','Elisabeth Johnson','Parkgate  Alley, 476','7-364-302-3062','Elisabeth_Johnson131@bungar.biz','740-01-4487','F','2/7/1992',105,1);
INSERT INTO Empleado VALUES('156','Eden Norton','Bekesbourne   Crossroad, 9686','2-836-403-5035','Eden_Norton64@jiman.org','861-80-5080','F','6/29/1993',20,1);
INSERT INTO Empleado VALUES('157','Johnathan Latham','Antrobus   Crossroad, 1421','0-640-352-3126','Johnathan_Latham38@mafthy.com','465-58-7027','M','2/13/1988',78,3);
INSERT INTO Empleado VALUES('158','Harry Victor','Bocking   Walk, 6553','4-481-355-0263','Harry_Victor34@mafthy.com','441-02-7728','M','11/17/1982',89,2);
INSERT INTO Empleado VALUES('159','Isabel Warden','Cecilia  Crossroad, 2574','1-573-356-4551','Isabel_Warden139@bulaffy.com','344-85-8343','F','12/19/1980',99,2);
INSERT INTO Empleado VALUES('160','Blake Cox','Arline    Street, 3557','4-283-154-4485','Blake_Cox197@yahoo.com','014-07-4667','F','8/3/1986',165,2);
INSERT INTO Empleado VALUES('161','Enoch Downing','Blue Anchor  Alley, 291','2-026-608-2046','Enoch_Downing36@corti.com','474-42-4564','M','10/14/1995',22,2);
INSERT INTO Empleado VALUES('162','Cadence Swan','Timber   Drive, 9073','3-616-574-6782','Cadence_Swan155@acrit.org','542-61-4374','F','6/20/1980',148,3);
INSERT INTO Empleado VALUES('163','Chad Ianson','Vine  Hill, 3869','6-348-616-6644','Chad_Ianson55@grannar.com','088-14-5181','M','11/8/1986',179,1);
INSERT INTO Empleado VALUES('164','Moira Attwood','Bermondsey    Vale, 7056','8-226-106-7581','Moira_Attwood52@muall.tech','872-67-3352','F','10/18/1997',139,1);
INSERT INTO Empleado VALUES('165','Sasha Owen','Durnford  Route, 220','6-774-022-4386','Sasha_Owen27@extex.org','212-33-6150','F','4/25/2002',114,1);
INSERT INTO Empleado VALUES('166','Danny Faulkner','Badric  Crossroad, 1033','3-833-126-7782','Danny_Faulkner171@elnee.tech','107-15-2353','M','11/14/1994',71,3);
INSERT INTO Empleado VALUES('167','Cedrick Carson','Arlington  Vale, 7202','3-085-772-5053','Cedrick_Carson112@kideod.biz','074-20-4401','M','5/23/1990',11,2);
INSERT INTO Empleado VALUES('168','Eryn Dixon','Balfe   Route, 6683','7-103-426-7056','Eryn_Dixon57@eirey.tech','865-75-6522','F','7/29/1996',8,3);
INSERT INTO Empleado VALUES('169','Maribel Dyson','Endsleigh  Grove, 9614','3-158-122-6712','Maribel_Dyson32@sveldo.biz','834-15-6355','F','11/9/1983',175,3);
INSERT INTO Empleado VALUES('170','Havana Taylor','Cecilia  Drive, 3292','4-264-385-5502','Havana_Taylor25@sveldo.biz','454-62-0367','F','4/1/1999',159,3);
INSERT INTO Empleado VALUES('171','Zoe Watt','Carlisle  Way, 9522','2-303-300-6178','Zoe_Watt118@gmail.com','146-86-5558','F','11/17/1990',148,3);
INSERT INTO Empleado VALUES('172','Adalie Saunders','Lexington Hill, 4304','0-685-360-2000','Adalie_Saunders15@gompie.com','300-54-8334','F','7/24/1995',174,1);
INSERT INTO Empleado VALUES('173','Aleksandra Latham','Camera  Walk, 4393','8-012-845-7364','Aleksandra_Latham41@acrit.org','773-44-2041','F','1/19/1996',11,1);
INSERT INTO Empleado VALUES('174','Doug Marshall','Bicknell  Drive, 272','0-320-766-1840','Doug_Marshall184@fuliss.net','244-45-6877','M','1/12/1982',130,1);
INSERT INTO Empleado VALUES('175','Hank Redden','Charnwood   Crossroad, 7929','8-143-378-2214','Hank_Redden43@bauros.biz','653-60-0128','M','2/8/1993',180,1);
INSERT INTO Empleado VALUES('176','Rick Lloyd','Biggerstaff   Avenue, 5471','3-012-184-1880','Rick_Lloyd172@infotech44.tech','624-23-5488','M','4/21/1999',197,3);
INSERT INTO Empleado VALUES('177','Maggie Stevens','Fieldstone Vale, 1628','3-478-266-2541','Maggie_Stevens22@tonsy.org','872-14-0540','F','7/29/2002',49,2);
INSERT INTO Empleado VALUES('178','William Lee','Caslon   Hill, 8722','8-443-626-2305','William_Lee172@fuliss.net','116-41-5621','M','8/17/1990',153,2);
INSERT INTO Empleado VALUES('179','Madelyn Palmer','Cadogan  Alley, 8037','6-612-277-8778','Madelyn_Palmer107@famism.biz','224-32-7576','F','10/17/2002',144,3);
INSERT INTO Empleado VALUES('180','Nicholas Brooks','Ensign   Route, 4676','0-382-741-8536','Nicholas_Brooks90@corti.com','381-06-4806','M','10/26/1997',22,2);
INSERT INTO Empleado VALUES('181','Abdul Kelly','Cardinal Walk, 2212','1-480-057-3572','Abdul_Kelly81@acrit.org','832-43-3421','M','2/3/1996',114,1);
INSERT INTO Empleado VALUES('182','Regina Irwin','Longman   Vale, 7261','5-064-313-5824','Regina_Irwin140@twace.org','822-22-3883','F','3/9/1982',46,3);
INSERT INTO Empleado VALUES('183','Erica Vernon','Clavell   Tunnel, 7624','2-670-275-1336','Erica_Vernon186@mafthy.com','837-43-1626','F','3/7/2002',128,1);
INSERT INTO Empleado VALUES('184','Kurt Whitehouse','Wadham  Street, 9914','5-320-121-7665','Kurt_Whitehouse129@ubusive.com','588-30-4440','M','9/28/1985',12,3);
INSERT INTO Empleado VALUES('185','Adela Hamilton','Chalcot  Lane, 7889','3-220-308-8112','Adela_Hamilton169@dionrab.com','163-43-6444','F','12/9/1996',32,1);
INSERT INTO Empleado VALUES('186','Harry Brennan','Ayres   Walk, 6099','6-080-441-6007','Harry_Brennan187@bulaffy.com','817-56-3272','M','9/23/1993',181,3);
INSERT INTO Empleado VALUES('187','William Hammond','Chelsea Manor  Hill, 725','3-421-837-7653','William_Hammond43@liret.org','758-40-4634','M','5/18/2001',198,2);
INSERT INTO Empleado VALUES('188','Domenic Wright','Charnwood   Crossroad, 7984','3-243-804-7866','Domenic_Wright104@yahoo.com','054-37-7670','M','7/29/1994',63,3);
INSERT INTO Empleado VALUES('189','Jules Coll','Camdenhurst   Alley, 2827','5-054-685-3172','Jules_Coll41@bungar.biz','840-75-1828','F','7/1/1985',26,3);
INSERT INTO Empleado VALUES('190','Michaela Vass','Sherwood  Walk, 207','4-631-615-1688','Michaela_Vass178@gmail.com','128-22-1861','F','7/27/1993',139,1);
INSERT INTO Empleado VALUES('191','Tony Lee','Garfield Lane, 581','2-443-656-0383','Tony_Lee152@bulaffy.com','405-87-6323','M','10/7/1995',11,3);
INSERT INTO Empleado VALUES('192','Owen Benfield','Chester  Vale, 9820','4-773-380-0500','Owen_Benfield124@tonsy.org','032-43-5776','M','5/11/1989',62,2);
INSERT INTO Empleado VALUES('193','Rick Ellis','Commercial  Avenue, 6422','7-033-313-1580','Rick_Ellis154@extex.org','341-37-3160','M','8/21/1988',94,1);
INSERT INTO Empleado VALUES('194','Sara Radcliffe','Bendall   Grove, 5805','1-081-544-1487','Sara_Radcliffe133@guentu.biz','012-33-3765','F','10/5/1995',174,1);
INSERT INTO Empleado VALUES('195','Laila Corbett','Charterhouse  Crossroad, 3523','0-367-527-8375','Laila_Corbett172@elnee.tech','112-42-4750','F','1/16/1982',12,1);
INSERT INTO Empleado VALUES('196','Remy Uttley','Rivervalley Rue, 378','8-657-575-5745','Remy_Uttley90@brety.org','886-70-0700','F','3/18/1996',146,2);
INSERT INTO Empleado VALUES('197','Bob Gallacher','Champion  Alley, 3190','5-848-884-3541','Bob_Gallacher187@nanoff.biz','218-00-8070','M','7/22/1999',11,3);
INSERT INTO Empleado VALUES('198','Kurt Eddison','Fawn Hill, 3376','6-310-745-8165','Kurt_Eddison130@joiniaa.com','404-67-0440','M','4/6/1998',127,3);
INSERT INTO Empleado VALUES('199','Peter Plumb','Dyott   Drive, 3394','5-880-411-6043','Peter_Plumb101@mafthy.com','640-84-0766','M','3/15/1984',48,2);
INSERT INTO Empleado VALUES('200','Ciara Duvall','Jackson Alley, 5069','4-675-233-4244','Ciara_Duvall166@bungar.biz','265-64-1575','F','2/22/1984',41,3);
GO

INSERT INTO TipoPago VALUES('1', 'Efectivo')
INSERT INTO TipoPago VALUES('2', 'Tarjeta de crédito')
INSERT INTO TipoPago VALUES('3', 'Tarjeta de Débito')
INSERT INTO TipoPago VALUES('4', 'Cheque')
GO

INSERT INTO EstadoVentas VALUES('1', 'Finalizado')
INSERT INTO EstadoVentas VALUES('2', 'Pendiente')
INSERT INTO EstadoVentas VALUES('3', 'En proceso')
INSERT INTO EstadoVentas VALUES('4', 'Cancelado')
GO

INSERT INTO Productos VALUES ('1', 'Marsala - Sperone, Fine, D.o.c.', 2.18, 1, 5);
INSERT INTO Productos VALUES ('2', 'Southern Comfort', 1.63, 1, 19);
INSERT INTO Productos VALUES ('3', 'Poppy Seed', 5.88, 1, 10);
INSERT INTO Productos VALUES ('4', 'Chevril', 2.19, 1, 1);
INSERT INTO Productos VALUES ('5', 'Kellogs All Bran Bars', 9.79, 1, 6);
INSERT INTO Productos VALUES ('6', 'Snapple - Iced Tea Peach', 4.8, 1, 11);
INSERT INTO Productos VALUES ('7', 'Crackers - Soda / Saltins', 9.0, 1, 19);
INSERT INTO Productos VALUES ('8', 'Veal - Nuckle', 6.85, 1, 21);
INSERT INTO Productos VALUES ('9', 'Yogurt - Banana, 175 Gr', 1.95, 1, 3);
INSERT INTO Productos VALUES ('10', 'Country Roll', 8.13, 1, 10);
INSERT INTO Productos VALUES ('11', 'Bag Clear 10 Lb', 9.89, 1, 24);
INSERT INTO Productos VALUES ('12', 'Sauce - Mint', 2.3, 1, 16);
INSERT INTO Productos VALUES ('13', 'Cake - French Pear Tart', 8.85, 1, 1);
INSERT INTO Productos VALUES ('14', 'Ice Cream Bar - Rolo Cone', 4.4, 1, 6);
INSERT INTO Productos VALUES ('15', 'Milk - Homo', 1.82, 1, 30);
INSERT INTO Productos VALUES ('16', 'Cornflakes', 7.31, 1, 8);
INSERT INTO Productos VALUES ('17', 'Pepper - Green, Chili', 9.8, 1, 5);
INSERT INTO Productos VALUES ('18', 'Alize Red Passion', 4.42, 1, 20);
INSERT INTO Productos VALUES ('19', 'Wine - Sauvignon Blanc Oyster', 2.84, 1, 2);
INSERT INTO Productos VALUES ('20', 'Pepper - Jalapeno', 2.16, 1, 18);
INSERT INTO Productos VALUES ('21', 'Soup - Campbells Bean Medley', 1.45, 1, 26);
INSERT INTO Productos VALUES ('22', 'Bread - Calabrese Baguette', 1.74, 1, 25);
INSERT INTO Productos VALUES ('23', 'Wine - Shiraz Wolf Blass Premium', 8.85, 1, 22);
INSERT INTO Productos VALUES ('24', 'Nut - Chestnuts, Whole', 8.71, 1, 3);
INSERT INTO Productos VALUES ('25', 'Icecream - Dstk Strw Chseck', 7.32, 1, 28);
INSERT INTO Productos VALUES ('26', 'Cinnamon - Stick', 8.2, 1, 14);
INSERT INTO Productos VALUES ('27', 'Quail - Eggs, Fresh', 5.41, 1, 9);
INSERT INTO Productos VALUES ('28', 'Wine - Red, Marechal Foch', 9.87, 1, 13);
INSERT INTO Productos VALUES ('29', 'Grouper - Fresh', 7.31, 1, 28);
INSERT INTO Productos VALUES ('30', 'Sorrel - Fresh', 9.87, 1, 11);
INSERT INTO Productos VALUES ('31', 'Chicken - Ground', 2.96, 1, 16);
INSERT INTO Productos VALUES ('32', 'Beef - Prime Rib Aaa', 6.1, 1, 11);
INSERT INTO Productos VALUES ('33', 'Shiratamako - Rice Flour', 1.25, 1, 19);
INSERT INTO Productos VALUES ('34', 'Danishes - Mini Raspberry', 9.82, 1, 2);
INSERT INTO Productos VALUES ('35', 'Tomatoes - Hot House', 1.32, 1, 29);
INSERT INTO Productos VALUES ('36', 'The Pop Shoppe Pinapple', 5.5, 1, 25);
INSERT INTO Productos VALUES ('37', 'Quiche Assorted', 6.65, 1, 22);
INSERT INTO Productos VALUES ('38', 'Capon - Breast, Double, Wing On', 4.8, 1, 4);
INSERT INTO Productos VALUES ('39', 'Capon - Breast, Double, Wing On', 5.16, 1, 5);
INSERT INTO Productos VALUES ('40', 'Cleaner - Comet', 8.88, 1, 25);
INSERT INTO Productos VALUES ('41', 'Numi - Assorted Teas', 5.87, 1, 1);
INSERT INTO Productos VALUES ('42', 'Scallops - U - 10', 6.4, 1, 20);
INSERT INTO Productos VALUES ('43', 'Energy - Boo - Koo', 5.08, 1, 12);
INSERT INTO Productos VALUES ('44', 'Pepper - Pablano', 3.79, 1, 8);
INSERT INTO Productos VALUES ('45', 'Capon - Whole', 5.14, 1, 22);
INSERT INTO Productos VALUES ('46', 'Cake - Cheese Cake 9 Inch', 3.33, 1, 24);
INSERT INTO Productos VALUES ('47', 'Ranchero - Primerba, Paste', 5.24, 1, 1);
INSERT INTO Productos VALUES ('48', 'Pork - Hock And Feet Attached', 3.61, 1, 3);
INSERT INTO Productos VALUES ('49', 'Jack Daniels', 6.13, 1, 9);
INSERT INTO Productos VALUES ('50', 'Cheese - Havarti, Roasted Garlic', 9.77, 1, 21);
INSERT INTO Productos VALUES('51','Special Edition Airwrap Styler Complete',599.99,5,39);
INSERT INTO Productos VALUES('52','Airwrap Small Soft Smoothing Brush Attachment',39.99,5,38);
INSERT INTO Productos VALUES('53','Lip & Cheek Stain and Tint',18.00,5,37);
INSERT INTO Productos VALUES('54','Sonic Blooms Glossy Lip Stain',8.00,5,36);
INSERT INTO Productos VALUES('55','Rouge Signature Lightweight Matte Lip Stain',11.99,5,35);
INSERT INTO Productos VALUES('56','Bitten Lip Stain',9.99,5,34);
INSERT INTO Productos VALUES('57','BURTS BEES',5.49,5,33);
INSERT INTO Productos VALUES('58','Just Kissed Lip and Cheek Stain',5.46,5,32);
INSERT INTO Productos VALUES('59','Water Drop Tint Bomb',10.20,5,31);
INSERT INTO Productos VALUES('60','Melting Lip Clicks Lip Balm',85.92,5,3);
INSERT INTO Productos VALUES('61','Gloss Bomb Universal Lip Luminizer',85.92,5,3);
INSERT INTO Productos VALUES('62','Maracuja Juicy Lip',39.94,5,8);
INSERT INTO Productos VALUES('63','Colorful Eyeshadow',54.77,5,5);
INSERT INTO Productos VALUES('64','Holiday Vibes Advent Calendar',84.38,5,9);
INSERT INTO Productos VALUES('65','Retractable Rouge Gel Lip Liner',55.60,5,9);
INSERT INTO Productos VALUES('66','Vegan False Eyelashes',88.83,5,2);
INSERT INTO Productos VALUES('67','Wonderful Wishes Eyeshadow Palette',31.23,5,7);
INSERT INTO Productos VALUES('68','#Eyestories Eyeshadow Palette',69.58,5,8);
INSERT INTO Productos VALUES('69','Best Skin Ever Liquid Foundation',49.98,5,7);
INSERT INTO Productos VALUES('70','Mini Holiday Vibes Makeup Brush Set',23.21,5,9);
INSERT INTO Productos VALUES('71','Essential Eye Brush Set',51.09,5,4);
INSERT INTO Productos VALUES('72','Makeup Setting Spray',43.21,5,9);
INSERT INTO Productos VALUES('73','Long Lasting Eyeliner High Precision Brush',51.48,5,8);
INSERT INTO Productos VALUES('74','Waterproof Eye Makeup Remover',37.23,5,5);
INSERT INTO Productos VALUES('75','Clear Makeup Organizer Set',43.15,5,4);
INSERT INTO Productos VALUES('76','Brush-tip Lash Adhesive',56.01,5,6);
INSERT INTO Productos VALUES('77','Lip Blush Blotted Matte Lipstick',73.24,5,1);
INSERT INTO Productos VALUES('78','Daily Brush Cleaner',25.76,5,1);
INSERT INTO Productos VALUES('79','House of Lashes x Patrick Ta',53.81,5,2);
INSERT INTO Productos VALUES('80','Lip Balm & Scrub',85.95,5,2);
INSERT INTO Productos VALUES('81','Melting Lip Clicks Lip Balm',77.59,5,8);
INSERT INTO Productos VALUES('82','Silicone Scalp Massager',40.07,5,4);
INSERT INTO Productos VALUES('83','Elixir Ultime Oil Serum',42.26,5,6);
INSERT INTO Productos VALUES('84','Honey Infused Leave-In Conditioner',34.01,5,4);
INSERT INTO Productos VALUES('85','Strength Cure Shampoo',53.08,5,9);
INSERT INTO Productos VALUES('86','Hair Cleansing Scrub',56.83,5,4);
INSERT INTO Productos VALUES('87','Strengthening Hair Serum',59.29,5,5);
INSERT INTO Productos VALUES('88','Clean Face Mask',31.19,5,2);
INSERT INTO Productos VALUES('89','Multi-Purpose Oil',20.72,5,8);
INSERT INTO Productos VALUES('90','4 Piece Facial Razor Set',35.64,5,3);
INSERT INTO Productos VALUES('91','Hydrate + Glow Set',84.94,5,7);
INSERT INTO Productos VALUES('92','Serum Discovery Set',71.04,5,3);
INSERT INTO Productos VALUES('93','Crystal Facial Roller Set',51.20,5,3);
INSERT INTO Productos VALUES('94','Rose Quartz Facial Roller',21.548,5,1);
INSERT INTO Productos VALUES('95','Nécessaire With Niacinamide',20.42,5,2);
INSERT INTO Productos VALUES('96','Color & Care Hydrating Lip Value Set',73.27,5,6);
INSERT INTO Productos VALUES('97','Jet Lag Mask',81.09,5,5);
INSERT INTO Productos VALUES('98','Sugar Hydrating Lip Value Set',63.96,5,8);
INSERT INTO Productos VALUES('99','Retinol Eye Cream',28.06,5,9);
INSERT INTO Productos VALUES('100','Cleanse, Hydrate & Smooth Trio',75.05,5,3);
INSERT INTO Productos VALUES('101','Duo for Dry, Sensitive Skin & Discoloration',69.93,5,5);
INSERT INTO Productos VALUES('102','Mineral 89',54.12,5,3);
INSERT INTO Productos VALUES('103','Pure Skin Face Cleanser',52.37,5,8);
INSERT INTO Productos VALUES('104','Pink Cloud Rosewater + Squalane Makeup Removing Face Wash',44.56,5,1);
INSERT INTO Productos VALUES('105','Salicylic Acid Acne + Pore Cleanser',24.47,5,3);
INSERT INTO Productos VALUES('106','Melting Cleansing Balm Cleanse + Balance',86.10,5,5);
INSERT INTO Productos VALUES('107','Firming Sleeping Cream',69.71,5,4);
INSERT INTO Productos VALUES('108','Farmacy HONEYMOON GLOW AHA Resurfacing Night Serum with Hydrating Honey + Gentle Flower Acids',85.40,5,7);
INSERT INTO Productos VALUES('109','NightWear Plus Anti-Oxidant Night Detox Moisturizer Creme',54.83,5,9);
INSERT INTO Productos VALUES('110','Niacinamide 10% + Zinc 1% Oil Control Serum ',72.56,5,5);
INSERT INTO Productos VALUES('111','Short Jersey Top',9.99,6,3);
INSERT INTO Productos VALUES('112','Rib-knit Top',24.99,6,8);
INSERT INTO Productos VALUES('113','Thong Bodysuit',12.99,6,5);
INSERT INTO Productos VALUES('114','Oversized T-shirt',17.99,6,9);
INSERT INTO Productos VALUES('115','2-pack Jersey Tops',17.99,6,9);
INSERT INTO Productos VALUES('116','Rib-knit Crop Top',12.99,6,2);
INSERT INTO Productos VALUES('117','Ribbed Turtleneck Top',12.99,6,7);
INSERT INTO Productos VALUES('118','Cashmere Turtleneck Sweater',149.00,6,8);
INSERT INTO Productos VALUES('119','Long-sleeved Jersey Top',12.99,6,7);
INSERT INTO Productos VALUES('120','Ribbed Bodysuit',17.99,6,9);
INSERT INTO Productos VALUES('121','Oversized Graphic T-shirt',17.99,6,4);
INSERT INTO Productos VALUES('122','Tie-belt Puffer Vest',34.99,6,9);
INSERT INTO Productos VALUES('123','Leather Chelsea Boots',119.00,6,8);
INSERT INTO Productos VALUES('124','Platform Chelsea-style Boots',49.99,6,5);
INSERT INTO Productos VALUES('125','Hooded Coat',39.99,6,4);
INSERT INTO Productos VALUES('126','Beaded Cable-knit Sweater',28.99,6,6);
INSERT INTO Productos VALUES('127','Embrace High Ankle Jeans',19.99,6,1);
INSERT INTO Productos VALUES('128','Puff-sleeved Dress',22.99,6,1);
INSERT INTO Productos VALUES('129','Faux Fur Jacket',53.99,6,2);
INSERT INTO Productos VALUES('130','Off-the-shoulder Sweater',20.99,6,2);
INSERT INTO Productos VALUES('131','Flounce-trimmed Sequined Dress',28.99,6,8);
INSERT INTO Productos VALUES('132','Linen Jumpsuit',40.99,6,4);
INSERT INTO Productos VALUES('133','Linen Joggers',16.99,6,6);
INSERT INTO Productos VALUES('134','Sleeveless Shirt Jacket',15.99,6,4);
INSERT INTO Productos VALUES('135','Flounce-trimmed Crop Top',6.99,6,9);
INSERT INTO Productos VALUES('136','Textured Shorts',12.99,6,4);
INSERT INTO Productos VALUES('137','Crop Top',9.99,6,5);
INSERT INTO Productos VALUES('138','Ribbed Cardigan',12.99,2,24);
INSERT INTO Productos VALUES('139','Faux Leather Cell Phone Bag',9.99,6,8);
INSERT INTO Productos VALUES('140','Flannel Shirt',9.99,6,3);
INSERT INTO Productos VALUES('141','Formal Set',29.99,6,7);
INSERT INTO Productos VALUES('142','3-pack Cotton Sweatshirts',24.99,5,3);
INSERT INTO Productos VALUES('143','3-pack Sweatpants',24.99,6,3);
INSERT INTO Productos VALUES('144','2-piece Cotton Set',19.99,6,1);
INSERT INTO Productos VALUES('145','3-pack Skinny Fit Jeans',34.99,6,2);
INSERT INTO Productos VALUES('146','Tie-dye Cotton Sweatshirt',39.99,6,6);
INSERT INTO Productos VALUES('147','Printed Cotton Hoodie',49.99,6,5);
INSERT INTO Productos VALUES('148','Regular Fit Cargo Pants',34.99,6,8);
INSERT INTO Productos VALUES('149','Regular Fit Hoodie',34.99,6,9);
INSERT INTO Productos VALUES('150','Regular Fit Cargo Pants',34.99,6,3);
INSERT INTO Productos VALUES('151','VESTIDO MIDI LA GRECA',140.00,6,39);
INSERT INTO Productos VALUES('152','Open-Front Cardigan Sweater',24.49,6,38);
INSERT INTO Productos VALUES('153','Fleece Pullover Hoodie',19.49,6,37);
INSERT INTO Productos VALUES('154','Reversible Faux Shearling Hooded Coat',39.99,6,36);
INSERT INTO Productos VALUES('155','Basic Organically Grown Cotton Leggings',7.99,6,35);
INSERT INTO Productos VALUES('156','Transparent Vinyl Lucite Heels',32.99,6,34);
INSERT INTO Productos VALUES('157','Basic Fleece Drawstring Joggers',19.99,6,33);
INSERT INTO Productos VALUES('158','Lug-Sole Combat Boots',34.99,5,32);
INSERT INTO Productos VALUES('159','Basic Fleece Zip-Up Hoodie',22.99,6,31);
INSERT INTO Productos VALUES('160','Basic Fleece Drawstring Joggers',19.99,6,31);
INSERT INTO Productos VALUES('161','Hybrid Regular Denim Joggers',39.99,6,5);
INSERT INTO Productos VALUES('162','Relaxed-fit Hoodie',24.99,6,3);
INSERT INTO Productos VALUES('163','Regular Fit Patterned Joggers',34.99,6,8);
INSERT INTO Productos VALUES('164','Regular Fit Flannel Shirt',24.99,6,1);
INSERT INTO Productos VALUES('165','Slim Jeans',19.99,6,3);
INSERT INTO Productos VALUES('166','Relaxed Fit Sweatshirt',14.99,6,5);
INSERT INTO Productos VALUES('167','Water-repellent Puffer Jacket',69.99,6,4);
INSERT INTO Productos VALUES('168','10-pack Regular Fit T-shirts',54.99,6,7);
INSERT INTO Productos VALUES('169','Faux Leather Sneakers',34.99,6,9);
INSERT INTO Productos VALUES('170','Cotton Canvas Sneakers',24.99,5,5);
INSERT INTO Productos VALUES('171','Laptop de 15" ideapad gaming 3i intel i7-10750h 8gb - 256ssd gtx - 4gb',1299.00,2,14);
INSERT INTO Productos VALUES('172','Lector universal de tarjetas de memoria usb 3.0',7.99,2,19);
INSERT INTO Productos VALUES('173','Webcam HD 720P con micrófono negra',19.00,2,25);
INSERT INTO Productos VALUES('174','Cable trenzado lightning a usb-c 1mt negro',20.99,2,23);
INSERT INTO Productos VALUES('175','Laptop de 14" ideapad amd r5-3500u 8gb - 128ssd + 1tb hdd fhd',789.00,2,20);
INSERT INTO Productos VALUES('176','Laptop Asus Intel Celeron n400 de 15"',379.00,2,21);
INSERT INTO Productos VALUES('177','Audifonos Samsung Galaxy Buds Live Blanco',149.00,2,32);
INSERT INTO Productos VALUES('178','Audífonos sennheiser hd 206 negros',25.00,2,17);
INSERT INTO Productos VALUES('179','Impresora de cartucho unifuncional HP 1275',19.90,2,39);
INSERT INTO Productos VALUES('180','Cafetera mini me negra',91.99,3,45);
INSERT INTO Productos VALUES('181','Cafetera 12 tazas oster color roja',44.90,3,48);
INSERT INTO Productos VALUES('182','Licuadora black + decker',39.99,3,49);
INSERT INTO Productos VALUES('183','Licuadora personal con capacidad de 530ml',75.00,3,42);
INSERT INTO Productos VALUES('184','Mini wafflera animales',22.90,3,45);
INSERT INTO Productos VALUES('185','Waflera hamilton beach de 2 unidades',35.99,3,44);
INSERT INTO Productos VALUES('186','Limpiadora de vapor SC2',186.95,3,47);
INSERT INTO Productos VALUES('187','Aspiradora black + decker',67.99,3,50);
INSERT INTO Productos VALUES('188','Mopa robotica braava 380t',349.90,3,46);
INSERT INTO Productos VALUES('189','Aspiradora 2 en 1 con extensión para el piso',209.99,3,2);
INSERT INTO Productos VALUES('190','SERUM UNIFICADOR DE TONO IQUALOGY 30ML BABE',34.12,4,40);
INSERT INTO Productos VALUES('191','ALERSIL X 20 TABLETAS',5.87,4,39);
INSERT INTO Productos VALUES('192','BABYSIL CREMA PROTECTORA DISNEY BABY 120 GRAMOS',7.82,4,38);
INSERT INTO Productos VALUES('193','CLINDAMED CREMA VAGINAL TUBO X 40 GRAMOS',12.73,4,37);
INSERT INTO Productos VALUES('194','SANABOCA SOLUCION ORAL FRASCO 30ML',8.07,4,36);
INSERT INTO Productos VALUES('195','BRONCOHELIX (Hedera Helix) JARABE FRASCO 120 ML',8.44,4,35);
INSERT INTO Productos VALUES('196','CIPROXIL LS 500MG X 1 TABLETA',1.06,4,34);
INSERT INTO Productos VALUES('197','DICLOSIL POTASICO 50MGX 1 GRAGEA(Diclofenaco )',0.54,4,33);
INSERT INTO Productos VALUES('198','ACETAMINOFEN BEBE MK 100MG/1ML GOTAS X 30ML',5.46,4,32);
INSERT INTO Productos VALUES('199','ACIDO FUSIDICO GENFAR 2% CREMA TUBO X 15 GRAMOS',10.20,4,31);
INSERT INTO Productos VALUES('200','CICATRIL CREMA 25000UI 0.05G 25G TUBO X 20 GRAMOS',4.79,4,30);
GO


INSERT INTO Stock VALUES('1',2,29,141,'9/7/2021');
INSERT INTO Stock VALUES('2',1,39,71,'10/12/2021');
INSERT INTO Stock VALUES('3',1,49,68,'9/7/2021');
INSERT INTO Stock VALUES('4',2,29,70,'10/13/2021');
INSERT INTO Stock VALUES('5',2,22,79,'9/2/2021');
INSERT INTO Stock VALUES('6',2,33,97,'9/16/2021');
INSERT INTO Stock VALUES('7',1,13,158,'10/4/2021');
INSERT INTO Stock VALUES('8',2,22,50,'10/18/2021');
INSERT INTO Stock VALUES('9',2,18,72,'9/28/2021');
INSERT INTO Stock VALUES('10',1,47,141,'9/7/2021');
INSERT INTO Stock VALUES('11',1,42,170,'10/18/2021');
INSERT INTO Stock VALUES('12',1,28,33,'9/24/2021');
INSERT INTO Stock VALUES('13',2,7,39,'9/28/2021');
INSERT INTO Stock VALUES('14',1,7,154,'9/24/2021');
INSERT INTO Stock VALUES('15',1,5,94,'9/22/2021');
INSERT INTO Stock VALUES('16',2,20,199,'9/18/2021');
INSERT INTO Stock VALUES('17',2,10,17,'9/21/2021');
INSERT INTO Stock VALUES('18',2,26,127,'10/22/2021');
INSERT INTO Stock VALUES('19',2,4,86,'10/24/2021');
INSERT INTO Stock VALUES('20',1,34,8,'9/19/2021');
INSERT INTO Stock VALUES('21',2,10,35,'10/17/2021');
INSERT INTO Stock VALUES('22',2,34,10,'9/6/2021');
INSERT INTO Stock VALUES('23',2,41,91,'10/14/2021');
INSERT INTO Stock VALUES('24',1,28,72,'9/27/2021');
INSERT INTO Stock VALUES('25',2,3,6,'10/2/2021');
INSERT INTO Stock VALUES('26',1,23,20,'10/5/2021');
INSERT INTO Stock VALUES('27',1,19,171,'10/6/2021');
INSERT INTO Stock VALUES('28',2,29,114,'9/6/2021');
INSERT INTO Stock VALUES('29',2,40,70,'10/24/2021');
INSERT INTO Stock VALUES('30',2,1,105,'9/24/2021');
INSERT INTO Stock VALUES('31',1,18,30,'10/11/2021');
INSERT INTO Stock VALUES('32',1,25,168,'10/2/2021');
INSERT INTO Stock VALUES('33',1,23,93,'9/11/2021');
INSERT INTO Stock VALUES('34',2,37,133,'9/11/2021');
INSERT INTO Stock VALUES('35',1,17,44,'10/13/2021');
INSERT INTO Stock VALUES('36',1,21,74,'9/9/2021');
INSERT INTO Stock VALUES('37',1,25,79,'9/12/2021');
INSERT INTO Stock VALUES('38',2,3,46,'9/24/2021');
INSERT INTO Stock VALUES('39',2,24,108,'9/22/2021');
INSERT INTO Stock VALUES('40',1,31,160,'10/22/2021');
INSERT INTO Stock VALUES('41',1,5,10,'10/23/2021');
INSERT INTO Stock VALUES('42',1,14,198,'10/2/2021');
INSERT INTO Stock VALUES('43',1,49,69,'9/23/2021');
INSERT INTO Stock VALUES('44',2,41,152,'10/12/2021');
INSERT INTO Stock VALUES('45',2,30,56,'10/25/2021');
INSERT INTO Stock VALUES('46',2,9,97,'10/4/2021');
INSERT INTO Stock VALUES('47',1,27,165,'9/8/2021');
INSERT INTO Stock VALUES('48',2,23,106,'10/10/2021');
INSERT INTO Stock VALUES('49',1,15,39,'10/19/2021');
INSERT INTO Stock VALUES('50',2,35,117,'10/25/2021');
INSERT INTO Stock VALUES('51',2,102,127,'9/24/2021');
INSERT INTO Stock VALUES('52',1,109,10,'10/11/2021');
INSERT INTO Stock VALUES('53',2,68,181,'10/26/2021');
INSERT INTO Stock VALUES('54',2,104,197,'10/22/2021');
INSERT INTO Stock VALUES('55',2,65,38,'9/30/2021');
INSERT INTO Stock VALUES('56',1,77,135,'9/1/2021');
INSERT INTO Stock VALUES('57',1,100,177,'9/21/2021');
INSERT INTO Stock VALUES('58',1,76,38,'10/3/2021');
INSERT INTO Stock VALUES('59',2,92,103,'9/29/2021');
INSERT INTO Stock VALUES('60',2,103,38,'10/20/2021');
INSERT INTO Stock VALUES('61',2,71,199,'10/22/2021');
INSERT INTO Stock VALUES('62',1,65,108,'9/10/2021');
INSERT INTO Stock VALUES('63',2,109,190,'10/21/2021');
INSERT INTO Stock VALUES('64',2,68,98,'10/2/2021');
INSERT INTO Stock VALUES('65',2,94,99,'9/17/2021');
INSERT INTO Stock VALUES('66',1,69,130,'10/13/2021');
INSERT INTO Stock VALUES('67',2,108,69,'9/15/2021');
INSERT INTO Stock VALUES('68',2,71,194,'9/25/2021');
INSERT INTO Stock VALUES('69',1,85,72,'10/3/2021');
INSERT INTO Stock VALUES('70',1,62,173,'10/3/2021');
INSERT INTO Stock VALUES('71',2,75,29,'10/26/2021');
INSERT INTO Stock VALUES('72',1,67,62,'9/11/2021');
INSERT INTO Stock VALUES('73',1,86,171,'9/11/2021');
INSERT INTO Stock VALUES('74',2,74,37,'9/17/2021');
INSERT INTO Stock VALUES('75',2,83,136,'10/26/2021');
INSERT INTO Stock VALUES('76',2,101,90,'9/6/2021');
INSERT INTO Stock VALUES('77',1,62,79,'10/2/2021');
INSERT INTO Stock VALUES('78',2,60,78,'9/16/2021');
INSERT INTO Stock VALUES('79',1,107,140,'10/21/2021');
INSERT INTO Stock VALUES('80',2,91,38,'10/21/2021');
INSERT INTO Stock VALUES('81',2,80,17,'9/13/2021');
INSERT INTO Stock VALUES('82',1,99,145,'10/3/2021');
INSERT INTO Stock VALUES('83',1,74,144,'9/6/2021');
INSERT INTO Stock VALUES('84',2,97,40,'9/1/2021');
INSERT INTO Stock VALUES('85',1,70,133,'10/17/2021');
INSERT INTO Stock VALUES('86',2,75,10,'9/6/2021');
INSERT INTO Stock VALUES('87',1,108,65,'9/7/2021');
INSERT INTO Stock VALUES('88',1,83,159,'9/10/2021');
INSERT INTO Stock VALUES('89',2,104,45,'9/13/2021');
INSERT INTO Stock VALUES('90',2,63,150,'9/29/2021');
INSERT INTO Stock VALUES('91',2,93,3,'9/14/2021');
INSERT INTO Stock VALUES('92',2,103,175,'9/8/2021');
INSERT INTO Stock VALUES('93',2,103,133,'9/2/2021');
INSERT INTO Stock VALUES('94',1,101,172,'9/2/2021');
INSERT INTO Stock VALUES('95',2,88,122,'9/2/2021');
INSERT INTO Stock VALUES('96',2,99,187,'10/20/2021');
INSERT INTO Stock VALUES('97',1,77,18,'10/9/2021');
INSERT INTO Stock VALUES('98',1,64,96,'10/25/2021');
INSERT INTO Stock VALUES('99',2,67,43,'9/2/2021');
INSERT INTO Stock VALUES('100',1,73,22,'10/3/2021');
INSERT INTO Stock VALUES('101',1,96,29,'9/20/2021');
INSERT INTO Stock VALUES('102',1,98,67,'10/24/2021');
INSERT INTO Stock VALUES('103',1,66,12,'10/6/2021');
INSERT INTO Stock VALUES('104',2,96,170,'9/14/2021');
INSERT INTO Stock VALUES('105',1,109,23,'9/3/2021');
INSERT INTO Stock VALUES('106',1,76,124,'10/11/2021');
INSERT INTO Stock VALUES('107',1,104,17,'10/26/2021');
INSERT INTO Stock VALUES('108',1,62,188,'10/10/2021');
INSERT INTO Stock VALUES('109',1,74,23,'10/19/2021');
INSERT INTO Stock VALUES('110',2,71,180,'9/13/2021');
INSERT INTO Stock VALUES('111',2,81,180,'10/3/2021');
INSERT INTO Stock VALUES('112',2,98,49,'10/4/2021');
INSERT INTO Stock VALUES('113',2,68,71,'9/3/2021');
INSERT INTO Stock VALUES('114',1,85,172,'10/15/2021');
INSERT INTO Stock VALUES('115',2,68,155,'10/3/2021');
INSERT INTO Stock VALUES('116',2,61,23,'9/17/2021');
INSERT INTO Stock VALUES('117',2,103,54,'9/11/2021');
INSERT INTO Stock VALUES('118',1,87,35,'10/20/2021');
INSERT INTO Stock VALUES('119',2,62,158,'9/11/2021');
INSERT INTO Stock VALUES('120',2,83,3,'9/18/2021');
INSERT INTO Stock VALUES('121',1,72,151,'9/30/2021');
INSERT INTO Stock VALUES('122',2,89,123,'10/9/2021');
INSERT INTO Stock VALUES('123',2,90,140,'10/6/2021');
INSERT INTO Stock VALUES('124',2,76,22,'10/13/2021');
INSERT INTO Stock VALUES('125',1,72,173,'9/29/2021');
GO

INSERT INTO Venta VALUES ('1', 139, 1, 4, '3/28/2020',1);
INSERT INTO Venta VALUES ('2', 185, 3, 1, '9/7/2020',3);
INSERT INTO Venta VALUES ('3', 104, 4, 1, '10/11/2019',2);
INSERT INTO Venta VALUES ('4', 155, 3, 3, '8/21/2020',1);
INSERT INTO Venta VALUES ('5', 8, 1, 1, '9/27/2021',2);
INSERT INTO Venta VALUES ('6', 85, 4, 2, '5/5/2021',3);
INSERT INTO Venta VALUES ('7', 177, 1, 2, '12/17/2019',2);
INSERT INTO Venta VALUES ('8', 110, 1, 2, '11/30/2020',1);
INSERT INTO Venta VALUES ('9', 98, 1, 3, '11/12/2020',3);
INSERT INTO Venta VALUES ('10', 76, 2, 3, '8/25/2021',3);
INSERT INTO Venta VALUES ('11', 56, 4, 4, '3/11/2021',3);
INSERT INTO Venta VALUES ('12', 50, 3, 3, '4/14/2020',2);
INSERT INTO Venta VALUES ('13', 119, 2, 4, '2/5/2021',1);
INSERT INTO Venta VALUES ('14', 60, 2, 3, '1/7/2020',1);
INSERT INTO Venta VALUES ('15', 185, 3, 1, '5/15/2020',1);
INSERT INTO Venta VALUES ('16', 24, 2, 2, '6/25/2021',2);
INSERT INTO Venta VALUES ('17', 153, 1, 1, '5/4/2020',3);
INSERT INTO Venta VALUES ('18', 15, 3, 3, '10/2/2021',2);
INSERT INTO Venta VALUES ('19', 179, 3, 3, '3/10/2020',1);
INSERT INTO Venta VALUES ('20', 47, 4, 2, '2/11/2021',1);
INSERT INTO Venta VALUES ('21', 181, 3, 4, '12/18/2020',2);
INSERT INTO Venta VALUES ('22', 89, 3, 4, '11/20/2019',3);
INSERT INTO Venta VALUES ('23', 158, 4, 3, '4/22/2020',1);
INSERT INTO Venta VALUES ('24', 12, 4, 1, '12/20/2020',1);
INSERT INTO Venta VALUES ('25', 142, 2, 4, '3/14/2021',1);
INSERT INTO Venta VALUES ('26', 121, 3, 4, '5/15/2021',1);
INSERT INTO Venta VALUES ('27', 192, 1, 4, '10/29/2019',2);
INSERT INTO Venta VALUES ('28', 102, 4, 3, '12/8/2020',2);
INSERT INTO Venta VALUES ('29', 98, 4, 4, '11/1/2020',3);
INSERT INTO Venta VALUES ('30', 82, 3, 1, '6/30/2021',2);
INSERT INTO Venta VALUES ('31', 71, 1, 3, '8/2/2020',2);
INSERT INTO Venta VALUES ('32', 112, 2, 1, '1/10/2021',2);
INSERT INTO Venta VALUES ('33', 28, 3, 4, '11/30/2019',2);
INSERT INTO Venta VALUES ('34', 1, 2, 4, '5/14/2021',2);
INSERT INTO Venta VALUES ('35', 17, 3, 2, '7/13/2021',3);
INSERT INTO Venta VALUES ('36', 140, 1, 3, '1/20/2020',3);
INSERT INTO Venta VALUES ('37', 70, 3, 2, '12/19/2019',2);
INSERT INTO Venta VALUES ('38', 167, 3, 3, '1/13/2021',2);
INSERT INTO Venta VALUES ('39', 43, 2, 4, '8/25/2020',2);
INSERT INTO Venta VALUES ('40', 81, 4, 1, '7/23/2021',1);
INSERT INTO Venta VALUES ('41', 11, 2, 2, '1/16/2021',2);
INSERT INTO Venta VALUES ('42', 117, 3, 4, '2/23/2021',2);
INSERT INTO Venta VALUES ('43', 179, 1, 3, '1/21/2020',3);
INSERT INTO Venta VALUES ('44', 186, 4, 2, '9/3/2020',1);
INSERT INTO Venta VALUES ('45', 80, 3, 1, '11/30/2019',2);
INSERT INTO Venta VALUES ('46', 8, 1, 3, '9/12/2020',3);
INSERT INTO Venta VALUES ('47', 74, 3, 3, '9/4/2020',2);
INSERT INTO Venta VALUES ('48', 80, 1, 3, '5/31/2020',1);
INSERT INTO Venta VALUES ('49', 144, 2, 3, '5/29/2021',1);
INSERT INTO Venta VALUES ('50', 27, 2, 1, '9/26/2021',1);
INSERT INTO Venta VALUES ('51', 5, 1, 3, '10/24/2019',2);
INSERT INTO Venta VALUES ('52', 17, 1, 4, '8/26/2021',3);
INSERT INTO Venta VALUES ('53', 28, 2, 4, '12/21/2020',3);
INSERT INTO Venta VALUES ('54', 26, 2, 1, '7/23/2021',3);
INSERT INTO Venta VALUES ('55', 161, 3, 2, '5/26/2021',2);
INSERT INTO Venta VALUES ('56', 156, 3, 3, '4/2/2021',2);
INSERT INTO Venta VALUES ('57', 167, 3, 2, '2/25/2020',1);
INSERT INTO Venta VALUES ('58', 167, 2, 1, '7/16/2020',1);
INSERT INTO Venta VALUES ('59', 131, 3, 4, '3/1/2021',2);
INSERT INTO Venta VALUES ('60', 35, 3, 3, '10/12/2021',3);
INSERT INTO Venta VALUES ('61', 190, 4, 4, '3/28/2021',3);
INSERT INTO Venta VALUES ('62', 86, 4, 2, '11/23/2020',2);
INSERT INTO Venta VALUES ('63', 109, 4, 3, '7/29/2021',2);
INSERT INTO Venta VALUES ('64', 172, 1, 1, '1/4/2020',1);
INSERT INTO Venta VALUES ('65', 65, 3, 4, '12/3/2020',1);
INSERT INTO Venta VALUES ('66', 95, 4, 1, '12/5/2020',3);
INSERT INTO Venta VALUES ('67', 60, 3, 3, '10/19/2020',3);
INSERT INTO Venta VALUES ('68', 154, 1, 3, '12/13/2020',3);
INSERT INTO Venta VALUES ('69', 184, 2, 3, '10/19/2021',2);
INSERT INTO Venta VALUES ('70', 1, 1, 4, '10/16/2021',2);
INSERT INTO Venta VALUES ('71', 195, 4, 4, '8/9/2021',1);
INSERT INTO Venta VALUES ('72', 27, 1, 2, '6/17/2020',1);
INSERT INTO Venta VALUES ('73', 16, 1, 4, '9/6/2021',2);
INSERT INTO Venta VALUES ('74', 199, 2, 2, '7/15/2021',3);
INSERT INTO Venta VALUES ('75', 125, 3, 1, '11/21/2019',3);
INSERT INTO Venta VALUES ('76', 151, 1, 3, '12/6/2020',3);
INSERT INTO Venta VALUES ('77', 27, 2, 2, '2/28/2021',2);
INSERT INTO Venta VALUES ('78', 42, 4, 3, '9/29/2020',1);
INSERT INTO Venta VALUES ('79', 63, 4, 1, '3/22/2021',2);
INSERT INTO Venta VALUES ('80', 164, 4, 1, '9/9/2021',2);
INSERT INTO Venta VALUES ('81', 150, 4, 3, '6/18/2020',2);
INSERT INTO Venta VALUES ('82', 27, 1, 2, '7/27/2021',1);
INSERT INTO Venta VALUES ('83', 138, 4, 3, '3/5/2021',3);
INSERT INTO Venta VALUES ('84', 98, 2, 3, '10/31/2020',2);
INSERT INTO Venta VALUES ('85', 9, 3, 4, '2/22/2020',1);
INSERT INTO Venta VALUES ('86', 193, 1, 4, '1/31/2021',1);
INSERT INTO Venta VALUES ('87', 123, 4, 3, '9/22/2020',2);
INSERT INTO Venta VALUES ('88', 188, 4, 4, '10/6/2019',3);
INSERT INTO Venta VALUES ('89', 178, 1, 2, '9/17/2020',3);
INSERT INTO Venta VALUES ('90', 101, 1, 1, '7/11/2020',2);
INSERT INTO Venta VALUES ('91', 109, 2, 1, '8/30/2020',2);
INSERT INTO Venta VALUES ('92', 142, 4, 1, '4/3/2021',1);
INSERT INTO Venta VALUES ('93', 110, 1, 4, '12/4/2020',3);
INSERT INTO Venta VALUES ('94', 34, 3, 2, '9/24/2021',3);
INSERT INTO Venta VALUES ('95', 69, 4, 4, '10/5/2021',3);
INSERT INTO Venta VALUES ('96', 128, 2, 4, '8/16/2020',2);
INSERT INTO Venta VALUES ('97', 125, 4, 4, '4/13/2020',2);
INSERT INTO Venta VALUES ('98', 116, 1, 2, '3/3/2020',3);
INSERT INTO Venta VALUES ('99', 17, 2, 4, '2/10/2021',2);
INSERT INTO Venta VALUES ('100', 12, 3, 2, '2/20/2021',2);
INSERT INTO Venta VALUES ('101', 197, 1, 4, '11/19/2019',1);
INSERT INTO Venta VALUES ('102', 165, 4, 3, '12/4/2020',2);
INSERT INTO Venta VALUES ('103', 171, 4, 1, '11/24/2019',3);
INSERT INTO Venta VALUES ('104', 119, 1, 3, '7/6/2021',1);
INSERT INTO Venta VALUES ('105', 111, 4, 3, '9/8/2021',2);
INSERT INTO Venta VALUES ('106', 116, 2, 4, '11/7/2020',2);
INSERT INTO Venta VALUES ('107', 132, 1, 4, '12/5/2019',3);
INSERT INTO Venta VALUES ('108', 85, 1, 2, '4/1/2020',3);
INSERT INTO Venta VALUES ('109', 152, 2, 2, '2/4/2021',1);
INSERT INTO Venta VALUES ('110', 146, 4, 3, '10/15/2020',1);
INSERT INTO Venta VALUES ('111', 152, 2, 1, '4/2/2021',1);
INSERT INTO Venta VALUES ('112', 155, 1, 2, '9/13/2020',2);
INSERT INTO Venta VALUES ('113', 6, 1, 3, '12/8/2020',3);
INSERT INTO Venta VALUES ('114', 141, 1, 4, '10/30/2020',3);
INSERT INTO Venta VALUES ('115', 132, 4, 2, '10/30/2019',2);
INSERT INTO Venta VALUES ('116', 157, 4, 4, '9/2/2021',2);
INSERT INTO Venta VALUES ('117', 79, 4, 4, '3/29/2020',1);
INSERT INTO Venta VALUES ('118', 195, 4, 1, '11/21/2019',1);
INSERT INTO Venta VALUES ('119', 95, 4, 1, '7/4/2021',1);
INSERT INTO Venta VALUES ('120', 50, 4, 2, '8/7/2020',1);
INSERT INTO Venta VALUES ('121', 25, 4, 4, '12/15/2019',2);
INSERT INTO Venta VALUES ('122', 1, 3, 4, '10/20/2021',2);
INSERT INTO Venta VALUES ('123', 152, 4, 4, '2/26/2021',3);
INSERT INTO Venta VALUES ('124', 108, 3, 3, '8/27/2020',1);
INSERT INTO Venta VALUES ('125', 66, 4, 3, '12/7/2019',2);
INSERT INTO Venta VALUES ('126', 135, 4, 2, '5/22/2020',3);
INSERT INTO Venta VALUES ('127', 94, 3, 4, '9/19/2020',2);
INSERT INTO Venta VALUES ('128', 148, 1, 4, '7/5/2020',1);
INSERT INTO Venta VALUES ('129', 114, 1, 4, '12/24/2020',3);
INSERT INTO Venta VALUES ('130', 199, 2, 3, '11/18/2019',3);
INSERT INTO Venta VALUES ('131', 121, 3, 2, '2/17/2020',2);
INSERT INTO Venta VALUES ('132', 199, 1, 4, '5/26/2020',1);
INSERT INTO Venta VALUES ('133', 66, 3, 4, '7/19/2020',2);
INSERT INTO Venta VALUES ('134', 116, 4, 2, '8/15/2021',3);
INSERT INTO Venta VALUES ('135', 113, 3, 4, '11/21/2020',2);
INSERT INTO Venta VALUES ('136', 146, 1, 1, '5/2/2021',3);
INSERT INTO Venta VALUES ('137', 78, 2, 3, '6/4/2021',2);
INSERT INTO Venta VALUES ('138', 18, 2, 4, '7/15/2020',1);
INSERT INTO Venta VALUES ('139', 95, 2, 3, '10/23/2021',1);
INSERT INTO Venta VALUES ('140', 24, 4, 4, '5/24/2021',1);
INSERT INTO Venta VALUES ('141', 179, 1, 3, '6/14/2020',2);
INSERT INTO Venta VALUES ('142', 85, 1, 3, '9/21/2021',3);
INSERT INTO Venta VALUES ('143', 2, 1, 3, '8/22/2021',2);
INSERT INTO Venta VALUES ('144', 106, 4, 3, '4/27/2021',1);
INSERT INTO Venta VALUES ('145', 24, 1, 2, '10/31/2020',2);
INSERT INTO Venta VALUES ('146', 98, 4, 4, '3/14/2021',3);
INSERT INTO Venta VALUES ('147', 117, 2, 2, '5/27/2021',2);
INSERT INTO Venta VALUES ('148', 22, 3, 1, '6/7/2021',3);
INSERT INTO Venta VALUES ('149', 121, 3, 4, '4/7/2021',2);
INSERT INTO Venta VALUES ('150', 84, 4, 3, '5/4/2021',1);
GO

INSERT INTO DetalleVenta VALUES ('1', 100, 1,2);
INSERT INTO DetalleVenta VALUES ('2', 82, 1,1);
INSERT INTO DetalleVenta VALUES ('3', 53, 3,1);
INSERT INTO DetalleVenta VALUES ('4', 5, 2,2);
INSERT INTO DetalleVenta VALUES ('5', 2, 3,3);
INSERT INTO DetalleVenta VALUES ('6', 65, 1,4);
INSERT INTO DetalleVenta VALUES ('7', 35, 3,2);
INSERT INTO DetalleVenta VALUES ('8', 39, 2,3);
INSERT INTO DetalleVenta VALUES ('9', 37, 2,3);
INSERT INTO DetalleVenta VALUES ('10', 70, 3,1);
INSERT INTO DetalleVenta VALUES ('11', 8, 3,2);
INSERT INTO DetalleVenta VALUES ('12', 97, 1,5);
INSERT INTO DetalleVenta VALUES ('13', 6, 3,5);
INSERT INTO DetalleVenta VALUES ('14', 47, 2,10);
INSERT INTO DetalleVenta VALUES ('15', 88, 3,10);
INSERT INTO DetalleVenta VALUES ('16', 76, 1,11);
INSERT INTO DetalleVenta VALUES ('17', 78, 2,14);
INSERT INTO DetalleVenta VALUES ('18', 110, 1,13);
INSERT INTO DetalleVenta VALUES ('19', 34, 1,4);
INSERT INTO DetalleVenta VALUES ('20', 18, 1,4);
INSERT INTO DetalleVenta VALUES ('21', 15, 1,7);
INSERT INTO DetalleVenta VALUES ('22', 63, 1,8);
INSERT INTO DetalleVenta VALUES ('23', 75, 2,20);
INSERT INTO DetalleVenta VALUES ('24', 79, 1,21);
INSERT INTO DetalleVenta VALUES ('25', 94, 2,50);
INSERT INTO DetalleVenta VALUES ('26', 55, 2,60);
INSERT INTO DetalleVenta VALUES ('27', 48, 3,70);
INSERT INTO DetalleVenta VALUES ('28', 22, 2,75);
INSERT INTO DetalleVenta VALUES ('29', 69, 2,61);
INSERT INTO DetalleVenta VALUES ('30', 90, 1,45);
INSERT INTO DetalleVenta VALUES ('31', 56, 2,1);
INSERT INTO DetalleVenta VALUES ('32', 77, 3,6);
INSERT INTO DetalleVenta VALUES ('33', 108, 1,27);
INSERT INTO DetalleVenta VALUES ('34', 89, 2,54);
INSERT INTO DetalleVenta VALUES ('35', 40, 2,87);
INSERT INTO DetalleVenta VALUES ('36', 57, 3,74);
INSERT INTO DetalleVenta VALUES ('37', 70, 3,21);
INSERT INTO DetalleVenta VALUES ('38', 12, 3,99);
INSERT INTO DetalleVenta VALUES ('39', 104, 2,100);
INSERT INTO DetalleVenta VALUES ('40', 59, 1,1);
INSERT INTO DetalleVenta VALUES ('41', 28, 2,3);
INSERT INTO DetalleVenta VALUES ('42', 17, 3,7);
INSERT INTO DetalleVenta VALUES ('43', 104, 2,5);
INSERT INTO DetalleVenta VALUES ('44', 45, 2,32);
INSERT INTO DetalleVenta VALUES ('45', 13, 3,33);
INSERT INTO DetalleVenta VALUES ('46', 47, 2,37);
INSERT INTO DetalleVenta VALUES ('47', 55, 3,39);
INSERT INTO DetalleVenta VALUES ('48', 28, 2,98);
INSERT INTO DetalleVenta VALUES ('49', 92, 1,110);
INSERT INTO DetalleVenta VALUES ('50', 14, 1,74);
INSERT INTO DetalleVenta VALUES ('51', 80, 3,67);
INSERT INTO DetalleVenta VALUES ('52', 82, 1,96);
INSERT INTO DetalleVenta VALUES ('53', 76, 2,23);
INSERT INTO DetalleVenta VALUES ('54', 24, 2,12);
INSERT INTO DetalleVenta VALUES ('55', 57, 1,11);
INSERT INTO DetalleVenta VALUES ('56', 13, 2,3);
INSERT INTO DetalleVenta VALUES ('57', 20, 2,7);
INSERT INTO DetalleVenta VALUES ('58', 102, 3,7);
INSERT INTO DetalleVenta VALUES ('59', 47, 3,9);
INSERT INTO DetalleVenta VALUES ('60', 74, 2,68);
INSERT INTO DetalleVenta VALUES ('61', 12, 1,12);
INSERT INTO DetalleVenta VALUES ('62', 48, 3,74);
INSERT INTO DetalleVenta VALUES ('63', 41, 1,85);
INSERT INTO DetalleVenta VALUES ('64', 9, 1,95);
INSERT INTO DetalleVenta VALUES ('65', 49, 3,12);
INSERT INTO DetalleVenta VALUES ('66', 62, 2,18);
INSERT INTO DetalleVenta VALUES ('67', 108, 1,17);
INSERT INTO DetalleVenta VALUES ('68', 61, 3,72);
INSERT INTO DetalleVenta VALUES ('69', 15, 1,83);
INSERT INTO DetalleVenta VALUES ('70', 58, 2,22);
INSERT INTO DetalleVenta VALUES ('71', 23, 1,15);
INSERT INTO DetalleVenta VALUES ('72', 57, 1,23);
INSERT INTO DetalleVenta VALUES ('73', 110, 2,27);
INSERT INTO DetalleVenta VALUES ('74', 74, 2,25);
INSERT INTO DetalleVenta VALUES ('75', 23, 2,74);
INSERT INTO DetalleVenta VALUES ('76', 54, 3,85);
INSERT INTO DetalleVenta VALUES ('77', 99, 1,62);
INSERT INTO DetalleVenta VALUES ('78', 49, 1,1);
INSERT INTO DetalleVenta VALUES ('79', 20, 3,1);
INSERT INTO DetalleVenta VALUES ('80', 71, 1,2);
INSERT INTO DetalleVenta VALUES ('81', 39, 2,3);
INSERT INTO DetalleVenta VALUES ('82', 31, 3,117);
INSERT INTO DetalleVenta VALUES ('83', 79, 3,120);
INSERT INTO DetalleVenta VALUES ('84', 75, 3,121);
INSERT INTO DetalleVenta VALUES ('85', 61, 3,124);
INSERT INTO DetalleVenta VALUES ('86', 61, 3,145);
INSERT INTO DetalleVenta VALUES ('87', 28, 1,12);
INSERT INTO DetalleVenta VALUES ('88', 84, 2,96);
INSERT INTO DetalleVenta VALUES ('89', 2, 2,7);
INSERT INTO DetalleVenta VALUES ('90', 60, 3,41);
INSERT INTO DetalleVenta VALUES ('91', 86, 3,45);
INSERT INTO DetalleVenta VALUES ('92', 23, 3,63);
INSERT INTO DetalleVenta VALUES ('93', 17, 1,96);
INSERT INTO DetalleVenta VALUES ('94', 68, 1,100);
INSERT INTO DetalleVenta VALUES ('95', 66, 3,101);
INSERT INTO DetalleVenta VALUES ('96', 74, 3,102);
INSERT INTO DetalleVenta VALUES ('97', 84, 3,103);
INSERT INTO DetalleVenta VALUES ('98', 81, 2,104);
INSERT INTO DetalleVenta VALUES ('99', 97, 2,105);
INSERT INTO DetalleVenta VALUES ('100', 5, 2,106);
INSERT INTO DetalleVenta VALUES ('101', 95, 3,110);
INSERT INTO DetalleVenta VALUES ('102', 77, 3,77);
INSERT INTO DetalleVenta VALUES ('103', 4, 2,72);
INSERT INTO DetalleVenta VALUES ('104', 91, 1,78);
INSERT INTO DetalleVenta VALUES ('105', 108, 2,96);
INSERT INTO DetalleVenta VALUES ('106', 40, 1,63);
INSERT INTO DetalleVenta VALUES ('107', 106, 1,61);
INSERT INTO DetalleVenta VALUES ('108', 97, 1,26);
INSERT INTO DetalleVenta VALUES ('109', 13, 3,37);
INSERT INTO DetalleVenta VALUES ('110', 65, 3,37);
INSERT INTO DetalleVenta VALUES ('111', 8, 2,37);
INSERT INTO DetalleVenta VALUES ('112', 94, 2,27);
INSERT INTO DetalleVenta VALUES ('113', 110, 2,39);
INSERT INTO DetalleVenta VALUES ('114', 6, 1,40);
INSERT INTO DetalleVenta VALUES ('115', 27, 1,40);
INSERT INTO DetalleVenta VALUES ('116', 60, 3,74);
INSERT INTO DetalleVenta VALUES ('117', 7, 3,9);
INSERT INTO DetalleVenta VALUES ('118', 25, 2,74);
INSERT INTO DetalleVenta VALUES ('119', 3, 1,1);
INSERT INTO DetalleVenta VALUES ('120', 93, 2,87);
INSERT INTO DetalleVenta VALUES ('121', 4, 3,9);
INSERT INTO DetalleVenta VALUES ('122', 36, 2,114);
INSERT INTO DetalleVenta VALUES ('123', 63, 3,116);
INSERT INTO DetalleVenta VALUES ('124', 62, 2,117);
INSERT INTO DetalleVenta VALUES ('125', 84, 3,118);
INSERT INTO DetalleVenta VALUES ('126', 28, 1,119);
INSERT INTO DetalleVenta VALUES ('127', 59, 2,120);
INSERT INTO DetalleVenta VALUES ('128', 100, 3,90);
INSERT INTO DetalleVenta VALUES ('129', 6, 3,91);
INSERT INTO DetalleVenta VALUES ('130', 18, 2,92);
INSERT INTO DetalleVenta VALUES ('131', 5, 3,93);
INSERT INTO DetalleVenta VALUES ('132', 72, 1,94);
INSERT INTO DetalleVenta VALUES ('133', 93, 1,95);
INSERT INTO DetalleVenta VALUES ('134', 27, 1,96);
INSERT INTO DetalleVenta VALUES ('135', 1, 3,97);
INSERT INTO DetalleVenta VALUES ('136', 74, 3,98);
INSERT INTO DetalleVenta VALUES ('137', 98, 1,99);
INSERT INTO DetalleVenta VALUES ('138', 35, 2,78);
INSERT INTO DetalleVenta VALUES ('139', 53, 1,6);
INSERT INTO DetalleVenta VALUES ('140', 80, 2,7);
INSERT INTO DetalleVenta VALUES ('141', 97, 1,8);
INSERT INTO DetalleVenta VALUES ('142', 5, 2,9);
INSERT INTO DetalleVenta VALUES ('143', 72, 3,10);
INSERT INTO DetalleVenta VALUES ('144', 62, 2,11);
INSERT INTO DetalleVenta VALUES ('145', 106, 3,12);
INSERT INTO DetalleVenta VALUES ('146', 37, 1,13);
INSERT INTO DetalleVenta VALUES ('147', 102, 3,14);
INSERT INTO DetalleVenta VALUES ('148', 65, 2,15);
INSERT INTO DetalleVenta VALUES ('149', 106, 2,16);
INSERT INTO DetalleVenta VALUES ('150', 63, 2,17);
GO

select * from Venta
--Tabla productos vendidos por categoria
IF OBJECT_ID('ProductosVendidos') IS NOT NULL DROP TABLE ProductosVendidos

SELECT c.nombreCategoria, COUNT(d.producto) AS N_Ventas
INTO ProductosVendidos
FROM DetalleVenta d
     INNER JOIN Categorias c
    ON d.id = c.id INNER JOIN Productos p ON p.nombreCategoria = c.id
GROUP BY c.nombreCategoria;
GO

SELECT * FROM ProductosVendidos

--Tabla ventas por sucursal
IF OBJECT_ID('SucursalVenta') IS NOT NULL DROP TABLE SucursalVenta

SELECT s.nombreSucursal, COUNT(v.id) AS N_ventas
INTO SucursalVenta
FROM  Venta v
INNER JOIN Empleado e ON V.empleado = e.id INNER JOIN Sucursal s ON s.id = e.sucursal GROUP BY s.nombreSucursal
GO

SELECT * FROM SucursalVenta

--Empleados con más ventas
IF OBJECT_ID('EmpleadoVenta') IS NOT NULL DROP TABLE EmpleadoVenta

SELECT TOP 10
    e.nombreEmpleado, COUNT(v.id) AS Ventas 
INTO EmpleadoVenta
FROM Empleado e
INNER JOIN Venta V ON e.id = v.empleado GROUP BY e.nombreEmpleado ORDER by Ventas DESC;

GO

SELECT * FROM EmpleadoVenta


--Productos mas vendidos
IF OBJECT_ID('ProductosVenta') IS NOT NULL DROP TABLE ProductosVenta

SELECT TOP 10 p.nombreProducto, COUNT(v.producto) AS Ventas 
INTO ProductosVenta
FROM Productos p
INNER JOIN DetalleVenta v ON p.id = v.producto GROUP BY p.nombreProducto ORDER BY Ventas DESC 

GO

SELECT * FROM ProductosVenta


--Canitdad de miebros por membresia

IF OBJECT_ID('MiembrosTipo') IS NOT NULL DROP TABLE MiembrosTipo
SELECT membresia as [Membresias], COUNT(t.id) as [Total]
INTO MiembrosTipo
FROM Tipo_Membresias t INNER JOIN Miembros m ON t.id = m.Tipo
GROUP BY (membresia)

SELECT * FROM MiembrosTipo