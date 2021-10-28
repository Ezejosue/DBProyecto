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
VALUES('199', 'El Salvador');
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

INSERT INTO Proveedor VALUES('1','Inglot','Cable    Tunnel, 7544','1-088-360-0786',68);
INSERT INTO Proveedor VALUES('2','NARS Cosmetics','Canning  Tunnel, 4148','1-052-163-4666',167);
INSERT INTO Proveedor VALUES('3','Bobbi Brown','Linden Street, 2471','7-816-027-5372',155);
INSERT INTO Proveedor VALUES('4','Sephora','Fairview Grove, 4076','4-278-385-4532',130);
INSERT INTO Proveedor VALUES('5','Revolution Makeup London','Dunstable   Lane, 5664','7-442-353-8188',55);
INSERT INTO Proveedor VALUES('6','Avon','Virginia Boulevard, 3538','2-327-428-7260',139);
INSERT INTO Proveedor VALUES('7','L:A Bruket','Chamberlain  Way, 2081','8-686-718-8876',83);
INSERT INTO Proveedor VALUES('8','The Body Shop','Lincoln Vale, 9840','0-735-700-4568',147);
INSERT INTO Proveedor VALUES('9','Chanel','Victoria  Lane, 536','2-625-554-0337',118);
INSERT INTO Proveedor VALUES('10','Oriflame','Lake Walk, 21','4-061-683-7540',30);
INSERT INTO Proveedor VALUES('11','Cheetos','Bacon  Walk, 1950','7-524-700-0175',110);
INSERT INTO Proveedor VALUES('12','Betty Crocker','Fairbairn  Tunnel, 7148','2-657-557-7752',132);
INSERT INTO Proveedor VALUES('13','Knorr','Parkfield  Rue, 54','7-441-310-7854',161);
INSERT INTO Proveedor VALUES('14','Cheetos','Battersea   Walk, 2110','1-446-085-2645',33);
INSERT INTO Proveedor VALUES('15','Heinz','Baynes  Tunnel, 6899','1-562-203-0667',5);
INSERT INTO Proveedor VALUES('16','Carib Brewery','Dutton   Route, 7521','7-042-888-7824',169);
INSERT INTO Proveedor VALUES('17','Papadopoulos','Falconberg   Road, 5982','3-757-248-1130',51);
INSERT INTO Proveedor VALUES('18','Olymel','Clyde Vale, 7296','1-826-886-2682',192);
INSERT INTO Proveedor VALUES('19','M&M Food Market','Bellenden   Hill, 8058','6-162-343-2021',117);
INSERT INTO Proveedor VALUES('20','Nutella','Betton  Way, 4221','1-665-525-3131',68);
INSERT INTO Proveedor VALUES('21','Kool-Aid','Glenwood Tunnel, 7080','0-263-685-1761',173);
INSERT INTO Proveedor VALUES('22','Heineken','Cardinal Road, 2609','1-504-480-7200',18);
INSERT INTO Proveedor VALUES('23','Evolution Fresh','Thomas More   Road, 7873','1-874-121-6638',154);
INSERT INTO Proveedor VALUES('24','Budweiser','Commercial  Rue, 1743','1-346-272-0280',145);
INSERT INTO Proveedor VALUES('25','Aquafina','Beechen  Drive, 5534','5-361-750-7326',19);
INSERT INTO Proveedor VALUES('26','Absolut','Chartham  Hill, 5348','3-876-624-3661',46);
INSERT INTO Proveedor VALUES('27','Edelweiss','St. Pauls  Crossroad, 2598','3-317-043-5363',7);
INSERT INTO Proveedor VALUES('28','Stella Artois','Coal Wharf  Vale, 109','3-438-527-2824',3);
INSERT INTO Proveedor VALUES('29','Chivas Regal','Aspen Hill, 9163','3-464-064-7423',7);
INSERT INTO Proveedor VALUES('30','Smirnoff','Blackheath   Tunnel, 5907','5-176-085-1577',149);
INSERT INTO Proveedor VALUES('31','Abilify','Chester      Road, 8227','3-466-156-3585',79);
INSERT INTO Proveedor VALUES('32','Benadryl','Lexington Vale, 4864','8-405-476-7468',44);
INSERT INTO Proveedor VALUES('33','Gravol','Tisbury  Tunnel, 911','1-435-662-1238',198);
INSERT INTO Proveedor VALUES('34','Maxalt','College  Hill, 2530','5-076-832-4782',90);
INSERT INTO Proveedor VALUES('35','Femibion','Victoria Rise Avenue, 7200','5-425-556-1183',32);
INSERT INTO Proveedor VALUES('36','Zetril','Calverley  Road, 6268','1-657-841-6186',167);
INSERT INTO Proveedor VALUES('37','Zetia','Bigland  Grove, 7611','7-132-585-0265',1);
INSERT INTO Proveedor VALUES('38','Aspirin','Camley   Hill, 477','7-538-856-0244',143);
INSERT INTO Proveedor VALUES('39','Pepcid','Fairholt   Way, 2788','4-527-360-1145',60);
INSERT INTO Proveedor VALUES('40','Symbicort','Clarks  Pass, 9983','3-688-447-2428',4);
INSERT INTO Proveedor VALUES('41','Max Studio','Adelaide  Tunnel, 4122','7-287-775-0670',8);
INSERT INTO Proveedor VALUES('42','Hamilton Shirts','Glenwood Tunnel, 4594','5-700-127-5454',175);
INSERT INTO Proveedor VALUES('43','Izod','Elgood   Road, 1929','2-180-545-4811',60);
INSERT INTO Proveedor VALUES('44','Old Navy','Andrews  Crossroad, 21','3-543-312-4423',41);
INSERT INTO Proveedor VALUES('45','SABA','Berry  Drive, 3011','7-763-317-1150',192);
INSERT INTO Proveedor VALUES('46','Rip Curl','St. Johs  Vale, 548','6-444-857-1835',65);
INSERT INTO Proveedor VALUES('47','Brooks Brothers','Angela   Vale, 1904','1-745-635-2721',157);
INSERT INTO Proveedor VALUES('48','Acorn Stores','Emily  Boulevard, 9153','1-336-242-1054',12);
INSERT INTO Proveedor VALUES('49','EMEL Fashion','Andsell    Alley, 7634','3-863-043-3816',132);
INSERT INTO Proveedor VALUES('50','Koalapop','Bishop   Road, 6208','0-616-037-6425',19);
GO



