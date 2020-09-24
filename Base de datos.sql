--CREANDO BASE DE DATOS
use master
create database Control_Ligas
go
use master
--CREANDO TABLAS
use Control_Ligas

--TABLA FECHA FIFA
create table FechaFifa
(
	IdFechaFifa varchar(20) not null,
	FechaFifaInicio date not null,
	FechaFifaFinal date not null,
	--LLAVE PRIMARIA
	constraint pk_IdFechaFifa primary key (IdFechaFifa)
);

--TABLA PAÍS
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
	--LLAVE PRIMARIA
	constraint pk_IdEstadio primary key (IdEstadio)
);


--TABLA DÍA FAVORITO
create table DiaFavorito
(
	IdDiaFavorito varchar(20) not null,
	NombreDia varchar(50) not null unique,
	--LLAVE PRIMARIA
	constraint pk_IdDiaFavorito primary key (IdDiaFavorito)
);


--TABLA DIVISIÓN
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

--TABLA CAMPAÑA
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
	--LLAVE PRIMARIA
	constraint pk_IdPatrocinador primary key (IdPatrocinador)
);

--Tabla Detalle_Equipo_Patrocinador
create table Detalle_Equipo_Patrocinador
(
	IdEquipo varchar(20) not null,
	IdPatrocinador varchar(20) not null,
	--Llaves secundaria
	constraint fk_Detalle_Equipo_Patrocinador_IdEquipo foreign key (IdEquipo) references Equipo (IdEquipo),
	constraint fk_Detalle_Equipo_Patrocinador_IdPatrocinador foreign key (IdPatrocinador) references Patrocinador (IdPatrocinador)
);

--TABLA DUEÑO
create table Dueño
(
	IdDueño varchar(20) not null,
	NombreDueño varchar(100) not null unique,
	DireccionDueño varchar(200) not null,
	TelefonoDueño varchar(20) not null unique,
	IdEquipo varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdDueño primary key (IdDueño),
	--LLAVE SECUNDARIA
	constraint fk_Dueño_Equipo foreign key (IdEquipo) references Equipo (IdEquipo)
);

--TABLA EQUIPACIÓN
create table Equipación
(
	IdEquipacion varchar(20) not null,
	DescripcionEquipacion varchar(200) not null,
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
	IdCampaña varchar(20) not null,
	--LLAVE SECUNDARIA
	constraint fk_Detalle_Descenso_IdEquipo foreign key (IdEquipo) references Equipo (IdEquipo),
	constraint fk_Detalle_Descenso_IdCampania foreign key (IdCampaña) references Campania (IdCampania)
);

--TABLA JORNADA
create table Jornada
(
	IdJornada varchar(20) not null,
	FechaInicioJornada date not null,
	FechaFinalJornada date not null,
	--LLAVE PRIMARIA
	constraint pk_IdJornada primary key (IdJornada)
);

--TABLA PARTIDO
create table Partido
(
	IdPartido varchar(20) not null,
	EquipoVisitante varchar(20) not null,
	EquipoLocal varchar(20) not null,
	FechaPartido date not null,
	HoraPartido time not null,
	IdJornada varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdPartido primary key (IdPartido),
	--LLAVE SECUNDARIA
	constraint fk_Partido_EquipoVisitante foreign key (EquipoVisitante) references Equipo (IdEquipo),
	constraint fk_Partido_EquipoPerdedor foreign key (EquipoLocal) references Equipo (IdEquipo),
	constraint fk_Partido_Jornada foreign key (IdJornada) references Jornada (IdJornada)
);

--TABLA RESULTADO
create table Resultado
(
	IdResultado varchar(20) not null,
	IdPartido varchar(20) not null,
	EquipoGanador varchar(20) not null,
	EquipoPerdedor varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdResultado primary key (IdResultado),
	--LLAVE SECUNDARIA
	constraint fk_Resultado_Partido foreign key (IdPartido) references Partido (IdPartido),
	constraint fk_Resultado_EquipoGanador foreign key (EquipoGanador) references Equipo (IdEquipo),
	constraint fk_Resultado_EquipoPerdedor foreign key (EquipoPerdedor) references Equipo (IdEquipo)
);

--TABLA GOL
create table Gol
(
	IdGol varchar(20) not null,
	IdJugador varchar(20) not null,
	IdResultado varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdGol primary key (IdGol),
	--LLAVE SECUNDARIA
	constraint fk_Gol_Jugador foreign key (IdJugador) references Jugador (IdJugador),
	constraint fk_Gol_Resultado foreign key (IdResultado) references Resultado (IdResultado),
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
	IdResultado varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdTarjeta primary key (IdTarjeta),
	--LLAVE SECUNDARIA
	constraint fk_Tarjeta_TipoTarjeta foreign key (IdTipoTajerta) references TipoTarjeta (IdTipoTajerta),
	constraint fk_Tarjeta_Jugador foreign key (IdJugador) references Jugador (IdJugador),
	constraint fk_Tarjeta_Resultado foreign key (IdResultado) references Resultado (IdResultado),
);


--TABLA POSICIÓN
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

