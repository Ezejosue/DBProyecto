--CREANDO BASE DE DATOS
use master
create database Control_Ligas
go
use master
--CREANDO TABLAS
use Control_Ligas

--TABLA FechaNoPermitida
create table FechaNoPermitida
(
	IdFechaNoPermitida varchar(20) not null,
	FechaNoPermitida date not null,
	DescripcionFecha VARCHAR(MAX)
		--LLAVE PRIMARIA
		constraint pk_FechaNoPermitida primary key (IdFechaNoPermitida)
);

--TABLA PA�S
create table Pais
(
	IdPais varchar(20) not null,
	NombrePais varchar(100) not null unique,
	--LLAVE PRIMARIA
	constraint pk_IdPais primary key (IdPais)
);

--TABLA TIPO EMPLEADO
create table TipoEmpleado
(
	IdTipoEmpleado varchar(20) not null,
	NombreTipoEmpleado varchar(100) not null unique,
	--LLAVE PRIMARIA
	constraint pk_IdTipoEmpleado primary key (IdTipoEmpleado)
);

--TABLA ESTADIO
create table Estadio
(
	IdEstadio varchar(20) not null,
	NombreEstadio varchar(100) not null unique,
	CapacidadEstadio int not null,
	DireccionEstado varchar(MAX)
		--LLAVE PRIMARIA
		constraint pk_IdEstadio primary key (IdEstadio)
);


--TABLA D�A FAVORITO
create table DiaFavorito
(
	IdDiaFavorito varchar(20) not null,
	NombreDia varchar(50) not null unique,
	--LLAVE PRIMARIA
	constraint pk_IdDiaFavorito primary key (IdDiaFavorito)
);


--TABLA DIVISI�N
create table Division
(
	IdDivision varchar(20) not null,
	NombreDivision varchar(100) not null unique,
	--LLAVE PRIMARIA
	constraint pk_IdDivision primary key (IdDivision)
);

--TABLA LIGA
create table Liga
(
	IdLiga varchar(20) not null,
	NombreLiga varchar(100) not null unique,
	FechaInicioLiga date not null,
	FechaFinalLiga date not null,
	IdPais varchar(20) not null,
	IdDivision varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdLiga primary key (IdLiga),
	--LLAVE SECUNDARIA
	constraint fk_Liga_Division foreign key (IdDivision) references Division (IdDivision)
);

--TABLA EQUIPO
create table Equipo
(
	IdEquipo varchar(20) not null,
	NombreEquipo varchar(100) not null unique,
	NombreOficinasEquipo varchar (100) not null,
	HoraFavoritaEquipo time not null,
	IdDiaFavorito varchar(20) not null,
	IdEstadio varchar(20) not null,
	IdPais varchar(20) not null,
	IdLiga varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdEquipo primary key (IdEquipo),
	--LLAVE SECUNDARIA
	constraint fk_Equipo_DiaFavorito foreign key (IdDiaFavorito) references DiaFavorito (IdDiaFavorito),
	constraint fk_Equipo_Estadio foreign key (IdEstadio) references Estadio (IdEstadio),
	constraint fk_Equipo_Pais foreign key (IdPais) references Pais (IdPais),
	constraint fk_Equipo_Liga foreign key (IdLiga) references Liga (IdLiga),
);

--TABLA CAMPA�A
create table Campania
(
	IdCampania varchar(20) not null,
	NombreCampania varchar(100) not null unique,
	EquipoGanador varchar(20) not null,
	IdLiga varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdCampania primary key (IdCampania),
	--LLAVE SECUNDARIA
	constraint fk_Campania_EquipoGanador foreign key (EquipoGanador) references Equipo (IdEquipo),
	constraint fk_Campania_Liga foreign key (IdLiga) references Liga (IdLiga)
);

--TABLA EMPLEADO
create table Empleado
(
	IdEmpleado varchar(20) not null,
	NombreEmpleado varchar(100) not null unique,
	FechaNacimientoEmpleado date not null,
	IdTipoEmpleado varchar(20) not null,
	IdEquipo varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdEmpleado primary key (IdEmpleado),
	--LLAVE SECUNDARIA
	constraint fk_Empleado_TipoEmpleado foreign key (IdTipoEmpleado) references TipoEmpleado (IdTipoEmpleado),
	constraint fk_Empleado_Equipo foreign key (IdEquipo) references Equipo (IdEquipo)
);

--TABLA PATROCINADOR
create table Patrocinador
(
	IdPatrocinador varchar(20) not null,
	NombrePatrocinador varchar(100) not null unique,
	TelefonoPatrocinador varchar(20) unique,
	CorreoPatrocinador varchar(20) check(CorreoPatrocinador like '%[a-z, 0-9]%@[a-z]'),
	Logo IMAGE,
	--LLAVE PRIMARIA
	constraint pk_IdPatrocinador primary key (IdPatrocinador)
);

--Tabla Detalle_Equipo_Patrocinador
create table Detalle_Equipo_Patrocinador
(
	IdEquipo varchar(20) not null,
	IdPatrocinador varchar(20) not null,
	Estado int check(estado=1 or estado=0) default 1,
	FechaInicio DATE,
	FechaFin DATE CHECK(FechaFin>FechaInicio)
		--Llaves secundaria
		constraint fk_Detalle_Equipo_Patrocinador_IdEquipo foreign key (IdEquipo) references Equipo (IdEquipo),
	constraint fk_Detalle_Equipo_Patrocinador_IdPatrocinador foreign key (IdPatrocinador) references Patrocinador (IdPatrocinador)
);

--TABLA DUE�O
create table Duenio
(
	IdDuenio varchar(20) not null,
	NombreDuenio varchar(100) not null unique,
	DireccionDuenio varchar(200) not null,
	TelefonoDuenio varchar(20) not null unique,
	IdEquipo varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdDuenio primary key (IdDuenio)

);

--TABLA DetalleDUE�O
create table DetalleDuenio
(
	IdDuenio varchar(20) not null,
	IdEquipo varchar(20) not null,
	--LLAVE SECUNDARIA
	constraint fk_Detalle_Dueño foreign key (IdDuenio) references Duenio (IdDuenio),
	constraint fk_Dueño_Equipo foreign key (IdEquipo) references Equipo (IdEquipo)
);



--TABLA EQUIPACI�N
create table Equipacion
(
	IdEquipacion varchar(20) not null,
	DescripcionCamisa varchar(200) not null,
	DescripcionBotines varchar(200) not null,
	DescripcionShort varchar(200) not null,
	DescripcionMedias varchar(200) not null,
	IdEquipo varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdEquipacion primary key (IdEquipacion),
	--LLAVE SECUNDARIA
	constraint fk_Equipacio_Equipo foreign key (IdEquipo) references Equipo (IdEquipo)
);


--TABLA JUGADOR
create table Jugador
(
	IdJugador varchar(20) not null,
	NombreJugador varchar(100) not null,
	AlturaJugador varchar(20) not null,
	PesoJugador varchar(20) not null,
	FechaNacimientoJugador date not null,
	IdPais varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdJugador primary key (IdJugador),
	--LLAVE SECUNDARIA
	constraint fk_Jugador_Pais foreign key (IdPais) references Pais (IdPais)
);

-- TABLA PLANTILLA
create table Plantilla
(
	IdPlantilla varchar(4) not null,
	IdEquipo varchar(20) not null,
	IdJugador varchar(20) not null,
	RolJugador varchar(20) not null check(RolJugador='Titular' or RolJugador='Reserva')

	constraint pk_IdPlantilla primary key (IdPlantilla),
	constraint fk_IdEquipo foreign key (IdEquipo) references Equipo(IdEquipo),

);



--TABLA CONTRATO
create table Contrato
(
	IdContrato varchar(20) not null,
	FechaInicioContrato date not null,
	FechaFinalContrato date not null,
	IdEquipo varchar(20) not null,
	IdJugador varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdContrato primary key (IdContrato),
	--LLAVE SECUNDARIA
	constraint fk_Contrato_Equipo foreign key (IdEquipo) references Equipo (IdEquipo),
	constraint fk_Contrato_Jugador foreign key (IdJugador) references Jugador (IdJugador)
);

--TABLA GOLEADOR
create table Goleador
(
	IdJugador varchar(20) not null,
	IdCampania varchar(20) not null,
	--LLAVE SECUNDARIA
	constraint fk_Goleador_Jugador foreign key (IdJugador) references Jugador (IdJugador),
	constraint fk_Goleador_Campania foreign key (IdCampania) references Campania (IdCampania),
);

--TABLA DETALLE_DESCENSO
create table Detalle_Descenso
(
	IdEquipo varchar(20) not null,
	IdCampania varchar(20) not null,
	--LLAVE SECUNDARIA
	constraint fk_Detalle_Descenso_IdEquipo foreign key (IdEquipo) references Equipo (IdEquipo),
	constraint fk_Detalle_Descenso_IdCampania foreign key (IdCampania) references Campania (IdCampania)
);


--TABLA PARTIDO
create table Partido
(
	IdPartido varchar(20) not null,
	EquipoVisitante varchar(20) not null,
	EquipoLocal varchar(20) not null,
	PlantillaLocal varchar(4) not null,
	PlantillaVisitante varchar(4) not null,
	FechaPartido date not null,
	HoraPartido time not null,
	--LLAVE PRIMARIA
	constraint pk_IdPartido primary key (IdPartido),
	--LLAVE SECUNDARIA
	constraint fk_Partido_EquipoVisitante foreign key (EquipoVisitante) references Equipo (IdEquipo),
	constraint fk_Partido_EquipoPerdedor foreign key (EquipoLocal) references Equipo (IdEquipo),
	constraint fk_Equipo_Plantilla foreign key (PlantillaLocal) references Plantilla (IdPlantilla),
	constraint fk_Equipo_Plantilla foreign key (PlantillaVisitante) references Plantilla (IdPlantilla),
);

--TABLA GOLES
create table Goles
(
	idGol int not null,
	IdPartido varchar(20) not null,
	IdJugador varchar(20) not null,

	--LLAVE PRIMARIA
	constraint pk_IdGol primary key(idGol),

	--LLAVE SECUNDARIA
	constraint fk_idpartido foreign key(IdPartido) references Partido(IdPartido),
	constraint fk_Goleador_Jugador foreign key (IdJugador) references Jugador (IdJugador),

);



--TABLA TIPO TARJETA
create table TipoTarjeta
(
	IdTipoTajerta varchar(20) not null,
	NombreTipoTarjeta varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdTipoTajerta primary key (IdTipoTajerta),
);

--TABLA TARJETA
create table Tarjeta
(
	IdTarjeta varchar(20) not null,
	IdTipoTajerta varchar(20) not null,
	IdJugador varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdTarjeta primary key (IdTarjeta),
	--LLAVE SECUNDARIA
	constraint fk_Tarjeta_TipoTarjeta foreign key (IdTipoTajerta) references TipoTarjeta (IdTipoTajerta),
	constraint fk_Tarjeta_Jugador foreign key (IdJugador) references Jugador (IdJugador),
);


--TABLA POSICI�N
create table Posicion
(
	IdPosicion varchar(20) not null,
	GolesFavor int not null,
	GolesContra int not null,
	PartidosGanados int not null,
	PartidosPerdidos int not null,
	PartidosEmpatados int not null,
	PartidosJugados int not null,
	Puntaje int not null,
	DiferenciaGoles int not null,
	JuegoLimpio int not null,
	IdEquipo varchar(20) not null,
	IdCampania varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdPosicion primary key (IdPosicion),
	--LLAVE SECUNDARIA
	constraint fk_Posicion_Equipo foreign key (IdEquipo) references Equipo (IdEquipo),
	constraint fk_Posicion_Campania foreign key (IdCampania) references Campania (IdCampania)
);

