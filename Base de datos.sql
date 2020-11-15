--CREANDO BASE DE DATOS
use master
create database Control_Ligas
go
use Control_Ligas
go

--PUNTO 4 APARTADO 3
--CREANDO ESQUEMA
GO
CREATE SCHEMA Administracion;
go
CREATE SCHEMA Vistas;
GO
CREATE SCHEMA ProcGoles;
GO

--CREANDO INICIOS DE SESION
CREATE LOGIN Usuario1
WITH PASSWORD = '123456'

CREATE LOGIN Usuario2
WITH PASSWORD = '123456'

CREATE LOGIN Usuario3
WITH PASSWORD = '123456'

CREATE LOGIN Usuario4
WITH PASSWORD = '123456'

CREATE LOGIN Usuario5
WITH PASSWORD = '123456'

CREATE LOGIN Usuario6
WITH PASSWORD = '12345'

CREATE LOGIN Usuario7
WITH PASSWORD = '12345'

CREATE LOGIN Usuario8
WITH PASSWORD = '12345'

CREATE LOGIN Usuario9
WITH PASSWORD = '12345'

CREATE LOGIN Usuario10
WITH PASSWORD = '12345'

CREATE LOGIN Usuario11
WITH PASSWORD = '12345'

CREATE LOGIN Usuario12
WITH PASSWORD = '12345'

--Esquema administración
CREATE USER Ezequiel FOR LOGIN Usuario1
WITH DEFAULT_SCHEMA = Administracion

CREATE USER Erick FOR LOGIN Usuario2
WITH DEFAULT_SCHEMA = Administracion

CREATE USER Fabiola FOR LOGIN Usuario3
WITH DEFAULT_SCHEMA = Administracion

CREATE USER Josue FOR LOGIN Usuario4
WITH DEFAULT_SCHEMA = Administracion

--Esquema Vistas
CREATE USER Ezequiel1 FOR LOGIN Usuario5
WITH DEFAULT_SCHEMA = Vistas

CREATE USER Erick1 FOR LOGIN Usuario6
WITH DEFAULT_SCHEMA = Vistas

CREATE USER Fabiola1 FOR LOGIN Usuario7
WITH DEFAULT_SCHEMA = Vistas

CREATE USER Josue1 FOR LOGIN Usuario8
WITH DEFAULT_SCHEMA = Vistas

CREATE USER Fabs FOR LOGIN Usuario9
WITH DEFAULT_SCHEMA = Vistas

--Esquema Procedemientos 

CREATE USER Fabiola2 FOR LOGIN Usuario10
WITH DEFAULT_SCHEMA = ProcGoles

CREATE USER Erick2 FOR LOGIN Usuario11
WITH DEFAULT_SCHEMA = ProcGoles

CREATE USER Fabs1 FOR LOGIN Usuario12
WITH DEFAULT_SCHEMA = ProcGoles

--Bridando permisos de consultar los datos
GRANT SELECT ON SCHEMA :: Administracion
TO Ezequiel WITH GRANT OPTION 
GO

GRANT SELECT ON SCHEMA :: Administracion
TO Erick WITH GRANT OPTION 
GO

GRANT SELECT ON SCHEMA :: Administracion
TO Fabiola WITH GRANT OPTION 
GO

GRANT SELECT ON SCHEMA :: Administracion
TO Josue WITH GRANT OPTION 
GO

--Permisos para esquema vistas
GRANT SELECT ON SCHEMA :: Vistas
TO Ezequiel1 WITH GRANT OPTION 
GO

GRANT SELECT ON SCHEMA :: Vistas
TO Erick1 WITH GRANT OPTION 
GO

GRANT SELECT ON SCHEMA :: Vistas
TO Fabiola1 WITH GRANT OPTION 
GO

GRANT SELECT ON SCHEMA :: Vistas
TO Josue1 WITH GRANT OPTION 
GO

GRANT SELECT ON SCHEMA :: Vistas
TO Fabs WITH GRANT OPTION 
GO

--Permisos esquema ProcGoles
GRANT INSERT ON SCHEMA :: ProcGoles
TO Fabiola2 WITH GRANT OPTION 
GO

GRANT INSERT ON SCHEMA :: ProcGoles
TO Erick2 WITH GRANT OPTION 
GO

GRANT INSERT ON SCHEMA :: ProcGoles
TO Fabs1 WITH GRANT OPTION 
GO


--Otorgando permisos de insersion 
GRANT INSERT ON SCHEMA :: Administracion
TO Ezequiel WITH GRANT OPTION 
GO

GRANT INSERT ON SCHEMA :: Administracion
TO Erick WITH GRANT OPTION 
GO

GRANT INSERT ON SCHEMA :: Administracion
TO Fabiola WITH GRANT OPTION 
GO

GRANT INSERT ON SCHEMA :: Administracion
TO Josue WITH GRANT OPTION 
GO

--Otorgando permisos de Actualización 
GRANT UPDATE ON SCHEMA :: Administracion
TO Ezequiel WITH GRANT OPTION 
GO

GRANT UPDATE ON SCHEMA :: Administracion
TO Erick WITH GRANT OPTION 
GO

GRANT UPDATE ON SCHEMA :: Administracion
TO Fabiola WITH GRANT OPTION 
GO

GRANT UPDATE ON SCHEMA :: Administracion
TO Josue WITH GRANT OPTION 
GO

--Otorgando permisos de eliminación 
GRANT DELETE ON SCHEMA :: Administracion
TO Ezequiel WITH GRANT OPTION 
GO

GRANT DELETE ON SCHEMA :: Administracion
TO Erick WITH GRANT OPTION 
GO

GRANT DELETE ON SCHEMA :: Administracion
TO Fabiola WITH GRANT OPTION 
GO

GRANT DELETE ON SCHEMA :: Administracion
TO Josue WITH GRANT OPTION 
GO


--CREANDO TABLAS
--TABLA FechaNoPermitida
create table FechaNoPermitida
(
	IdFechaNoPermitida varchar(5) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	FechaNoPermitida date not null,
	DescripcionFecha VARCHAR(MAX) not null,
	--LLAVE PRIMARIA
	constraint pk_FechaNoPermitida primary key (IdFechaNoPermitida),
	--RESTRICCIONES
	constraint u_FechaNoPermitida UNIQUE(FechaNoPermitida),
	constraint ck_IdFechaNoPermitida check(IdFechaNoPermitida like '[F][E][0-9][0-9][0-9]')
);
GO

--TABLA PAIS
create table Pais
(
	IdPais varchar(5) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	NombrePais varchar(100) not null unique,
	--LLAVE PRIMARIA 
	constraint pk_IdPais primary key (IdPais),
	--RESTRICCIONES
	constraint ck_NombrePais check(NombrePais like '%[a-zA-Z]%'),
	constraint ck_IdPais check(IdPais like '[A-Z][A-Z][A-Z]')
);


--TABLA TIPO EMPLEADO
create table TipoEmpleado
(
	IdTipoEmpleado varchar(4) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	NombreTipoEmpleado varchar(100) not null unique,
	--LLAVE PRIMARIA
	constraint pk_IdTipoEmpleado primary key (IdTipoEmpleado),
	--RESTRICCIONES
	constraint ck_IdTipoEmpleado check(IdTipoEmpleado like '[T][E][0-9][0-9]'),
	constraint ck_NombreTipoEmpleado check(NombreTipoEmpleado like '%[a-zA-Z]%') 
);

--TABLA ESTADIO
create table Estadio
(
	IdEstadio varchar(4) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	NombreEstadio varchar(100) not null unique,
	CapacidadEstadio int not null,
	DireccionEstado varchar(MAX),
	nombreRepresentante varchar(200) not null,
	telefonoRepresentante varchar(10) not null,
	correoRepresentante varchar(50) not null,
	--LLAVE PRIMARIA
	constraint pk_IdEstadio primary key (IdEstadio),
	--RESTRICCIONES
	constraint ck_IdEstadio check(IdEstadio like '[E][D][0-9][0-9]'),
	constraint ck_NombreEstadio check(NombreEstadio like '%[a-zA-Z]%'),
	constraint U_NombreEstadio unique(NombreEstadio),
	constraint ck_CapacidadEstadio check(CapacidadEstadio > 0 AND CapacidadEstadio < 200000),
	constraint ck_nombreRepresentante check(nombreRepresentante like '%[a-zA-Z]%'),
	constraint U_telefonoRepresentante unique(telefonoRepresentante),
	constraint U_correoRepresentante unique(correoRepresentante),
	constraint ck_correoRepresentante check(correoRepresentante like '%_@_%_._%'),
);


--TABLA DIA FAVORITO
create table DiaFavorito
(
	IdDiaFavorito varchar(5) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	NombreDia varchar(50) not null unique,
	--LLAVE PRIMARIA
	constraint pk_IdDiaFavorito primary key (IdDiaFavorito),
	--RESTRICCIONES
	constraint ck_IdDiaFavorito check(IdDiaFavorito like '[D][A][F][0-9][0-9]'),
	constraint ck_NombreDia check(NombreDia like '%[a-zA-Z]%')
);

--TABLA DIVISIÓN
create table Division
(
	IdDivision varchar(4) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	NombreDivision varchar(100) not null unique,
	--LLAVE PRIMARIA
	constraint pk_IdDivision primary key (IdDivision),
	--RESTRICCIONES
	constraint ck_IdDivision check(IdDivision like '[D][V][0-9][0-9]'),
	constraint ck_NombreDivision check(NombreDivision like '%[a-zA-Z0-9]%')
);

--TABLA LIGA
create table Liga
(
	IdLiga varchar(4) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	NombreLiga varchar(100) not null unique,
	FechaInicioLiga date not null,
	IdPais varchar(5) not null,
	IdDivision varchar(4) not null,
	--LLAVE PRIMARIA
	constraint pk_IdLiga primary key (IdLiga),
	--LLAVE SECUNDARIA
	constraint fk_Liga_Division foreign key (IdDivision) references Division (IdDivision),
	--RESTRICCIONES
	constraint ck_IdLiga check(IdLiga like '[L][G][0-9][0-9]'),
	constraint ck_NombreLiga check(NombreLiga like '%[a-zA-Z0-9]%')
);

--TABLA EQUIPO
create table Administracion.Equipo
(
	IdEquipo varchar(4) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	NombreEquipo varchar(100) not null unique,
	NombreOficinasEquipo varchar (100) not null,
	HoraFavoritaEquipo time not null,
	IdDiaFavorito varchar(5) not null,
	IdEstadio varchar(4) not null,
	IdPais varchar(5) not null,
	IdLiga varchar(4) not null,
	--LLAVE PRIMARIA
	constraint pk_IdEquipo primary key (IdEquipo),
	--LLAVE SECUNDARIA
	constraint fk_Equipo_DiaFavorito foreign key (IdDiaFavorito) references DiaFavorito (IdDiaFavorito),
	constraint fk_Equipo_Estadio foreign key (IdEstadio) references Estadio (IdEstadio),
	constraint fk_Equipo_Pais foreign key (IdPais) references Pais (IdPais),
	constraint fk_Equipo_Liga foreign key (IdLiga) references Liga (IdLiga),
	--RESTRICCIONES
	constraint ck_IdEquipo check(IdEquipo like '[E][Q][0-9][0-9]'),
	constraint ck_NombreEquipo check(NombreEquipo like '%[a-zA-Z0-9]%'),	
);

--TABLA CAMPAÑA
create table Campania
(
	IdCampania varchar(4) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	NombreCampania varchar(100) not null unique,
	EquipoGanador varchar(20),
	IdLiga varchar(4) not null,
	--LLAVE PRIMARIA
	constraint pk_IdCampania primary key (IdCampania),
	--LLAVE SECUNDARIA
	constraint fk_Campania_Liga foreign key (IdLiga) references Liga (IdLiga),
	--RESTRICCIONES
	constraint ck_IdCampania check(IdCampania like '[C][A][0-9][0-9]'),
	constraint ck_NombreCampania check(NombreCampania like '%[a-zA-Z0-9]%'),
	constraint ck_EquipoGanador check(EquipoGanador like '%[a-zA-Z0-9]%'),
);

--TABLA EMPLEADO
create table Empleado
(
	IdEmpleado varchar(5) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	NombreEmpleado varchar(100) not null unique,
	FechaNacimientoEmpleado date not null,
	IdTipoEmpleado varchar(4) not null,
	IdEquipo varchar(4) not null,
	correo varchar(50) not null,
	sexo varchar(20) not null,
	numIdentificacion varchar(50) not null,
	IdPais varchar(5) not null,
	--LLAVE PRIMARIA
	constraint pk_IdEmpleado primary key (IdEmpleado),
	--LLAVE SECUNDARIA
	constraint fk_Empleado_TipoEmpleado foreign key (IdTipoEmpleado) references TipoEmpleado (IdTipoEmpleado),
	constraint fk_Empleado_Equipo foreign key (IdEquipo) references Administracion.Equipo (IdEquipo),
	constraint fk_Empleado_pais foreign key (IdPais) references pais (IdPais),
	--RESTRICCIONES
	constraint ck_IdEmpleado check(IdEmpleado like '[E][M][P][0-9][0-9]'),
	constraint ck_NombreEmpleado check(NombreEmpleado like '%[a-zA-Z]%'),
	constraint ck_correoempleado check(correo like '%_@_%_._%'),
	constraint U_correoempleado unique(correo),
	constraint ck_generoempleado check(sexo='M' or sexo='F')
);

--TABLA PATROCINADOR
create table Patrocinador
(
	IdPatrocinador varchar(5) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	NombrePatrocinador varchar(100) not null unique,
	TelefonoPatrocinador varchar(20) unique,
	CorreoPatrocinador varchar(20),
	Logo IMAGE,
	--LLAVE PRIMARIA
	constraint pk_IdPatrocinador primary key (IdPatrocinador),
	--RESTRICCIONES 
	constraint ck_IdPatrocinador check(IdPatrocinador like '[P][T][R][0-9][0-9]'),
	constraint ck_NombrePatrocinador check(NombrePatrocinador like '%[a-zA-Z]%'),
	constraint u_TelefonoPatrocinador unique(TelefonoPatrocinador),
	constraint u_CorreoPatrocinador unique(CorreoPatrocinador)
);

--Tabla Detalle_Equipo_Patrocinador
create table Detalle_Equipo_Patrocinador
(
	IdEquipo varchar(4) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	IdPatrocinador varchar(5) not null,
	Estado int check(estado=1 or estado=0) default 1,
	FechaInicio DATE,
	FechaFin DATE,
	--Llaves secundaria
	constraint fk_Detalle_Equipo_Patrocinador_IdEquipo foreign key (IdEquipo) references Administracion.Equipo (IdEquipo),
	constraint fk_Detalle_Equipo_Patrocinador_IdPatrocinador foreign key (IdPatrocinador) references Patrocinador (IdPatrocinador),
	--RESTRICCIONES 
	constraint ck_FechasDetalleEquipoPatrocinador check(FechaFin>FechaInicio)
);

--TABLA DUEÑO
create table Duenio
(
	IdDuenio varchar(5) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	NombreDuenio varchar(100) not null unique,
	DireccionDuenio varchar(200) not null,
	TelefonoDuenio varchar(20) not null unique,
	IdEquipo varchar(4) not null,
	--LLAVE PRIMARIA
	constraint pk_IdDuenio primary key (IdDuenio),
	--RESTRICCIONES
	constraint ck_IdDuenio check(IdDuenio like '[D][U][E][0-9][0-9]'),
	constraint ck_NombreDuenio check(NombreDuenio like '%[a-zA-Z]%'),
	constraint u_TelefonoDuenio unique(TelefonoDuenio)
);

--TABLA DetalleDUEÑO
create table DetalleDuenio
(
	IdDuenio varchar(5) not null,
	IdEquipo varchar(4) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	--LLAVE SECUNDARIA
	constraint fk_Detalle_Dueño foreign key (IdDuenio) references Duenio (IdDuenio),
	constraint fk_Dueño_Equipo foreign key (IdEquipo) references Administracion.Equipo (IdEquipo)
);

--TABLA EQUIPACIÓN
create table Equipacion
(
	IdEquipacion varchar(6) not null,
	DescripcionCamisa varchar(200) not null,
	DescripcionBotines varchar(200) not null,
	DescripcionShort varchar(200) not null,
	DescripcionMedias varchar(200) not null,
	IdEquipo varchar(4) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	--LLAVE PRIMARIA
	constraint pk_IdEquipacion primary key (IdEquipacion),
	--LLAVE SECUNDARIA
	constraint fk_Equipacio_Equipo foreign key (IdEquipo) references Administracion.Equipo (IdEquipo),
	--RESTRICCIONES
	constraint ck_IdEquipacion check(IdEquipacion like '[E][Q][U][I][0-9][0-9]')
);

--TABLA JUGADOR
create table Administracion.Jugador
(
	IdJugador varchar(5) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	NombreJugador varchar(100) not null,
	AlturaJugador varchar(20) not null,
	PesoJugador varchar(20) not null,
	FechaNacimientoJugador date not null,
	posicion varchar(100),
	IdPais varchar(5) not null,
	--LLAVE PRIMARIA
	constraint pk_IdJugador primary key (IdJugador),
	--LLAVE SECUNDARIA
	constraint fk_Jugador_Pais foreign key (IdPais) references Pais (IdPais),
	--RESTRICCIONES
	constraint ck_IdJugador check(IdJugador like '[J][G][0-9][0-9][0-9]'),
	constraint ck_NombreJugador check(NombreJugador like '%[a-zA-Z]%'),
	constraint ck_Posicion check(posicion like '%[a-zA-Z]%')
);

--TABLA Detalle_Equipo_Jugador
create table Detalle_Equipo_Jugador
(
	IdPeriodo varchar(6) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	FechaInicioPeriodo date not null,
	FechaFinalPeriodo date not null,
	IdEquipo varchar(4) not null,
	IdJugador varchar(5) not null,
	--LLAVE PRIMARIA
	constraint pk_IdPeriodo primary key (IdPeriodo),
	--LLAVE SECUNDARIA
	constraint fk_Periodo_Equipo foreign key (IdEquipo) references Administracion.Equipo (IdEquipo),
	constraint fk_Periodo_Jugador foreign key (IdJugador) references Administracion.Jugador (IdJugador),

	--Restricciones
	constraint ck_idperiodo check(IdPeriodo like '[P][E][R][0-9][0-9][0-9]')
);

--TABLA GOLEADOR
create table Goleador
(
	IdJugador varchar(5) not null,
	IdCampania varchar(4) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	--LLAVE SECUNDARIA
	constraint fk_Goleador_Jugador foreign key (IdJugador) references Administracion.Jugador (IdJugador),
	constraint fk_Goleador_Campania foreign key (IdCampania) references Campania (IdCampania)
);

--TABLA DETALLE_DESCENSO
create table Detalle_Descenso
(
	IdEquipo varchar(4) not null,
	IdCampania varchar(4) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	--LLAVE SECUNDARIA
	constraint fk_Detalle_Descenso_IdEquipo foreign key (IdEquipo) references Administracion.Equipo (IdEquipo),
	constraint fk_Detalle_Descenso_IdCampania foreign key (IdCampania) references Campania (IdCampania)
);


--TABLA PARTIDO
create table Partido
(
	IdPartido int IDENTITY(1,1) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	EquipoVisitante varchar(20) not null,
	EquipoLocal varchar(20) not null,
	FechaPartido date,
	HoraPartido time not null,
	EquipoGanador varchar(20),
	EquipoPerdedor varchar(20),
	GolesLocal int default 0,
	GolesVisitante int default 0,
	estado varchar(100) null DEFAULT 'PROGRAMADO',
	--LLAVE PRIMARIA
	constraint pk_IdPartido primary key (IdPartido)
);

-- TABLA PLANTILLA
create table Plantilla
(
	IdPlantilla int IDENTITY(1,1) not null,
	IdEquipo varchar(4) not null,
	IdJugador varchar(5) not null,
	IdPartido int not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	--LLAVE PRIMARIA
	constraint pk_IdPlantilla primary key (IdPlantilla),
	--LLAVE SECUNDARIA
	constraint fk_plantilla_equipo foreign key (IdEquipo) references Administracion.Equipo(IdEquipo),
	constraint fk_plantilla_jugador foreign key (IdJugador) references Administracion.Jugador(IdJugador),
	constraint fk_plantilla_partido foreign key (IdPartido) references partido (IdPartido)
);


--TABLA GOLES
create table Goles
(
	idGol int IDENTITY(1,1) not null,
	IdPartido int not null,
	IdJugador varchar(5) not null,
	IdEquipo varchar(4),
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	--LLAVE PRIMARIA
	constraint pk_IdGol primary key(idGol),
	--LLAVE SECUNDARIA
	constraint fk_idpartido foreign key(IdPartido) references Partido(IdPartido),
	constraint fk_Goles_Jugador foreign key (IdJugador) references Administracion.Jugador (IdJugador)
);

--TABLA TIPO TARJETA
create table TipoTarjeta
(
	IdTipoTajerta varchar(8) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	NombreTipoTarjeta varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdTipoTajerta primary key (IdTipoTajerta),
	--RESTRICCIONES
	constraint ck_IdTipoTarjeta check(IdTipoTajerta like '[T][P][T][0-9][0-9]')
);

--TABLA TARJETA
create table Tarjeta
(
	IdTarjeta int IDENTITY (1,1) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	IdTipoTajerta varchar(8) not null,
	IdJugador varchar(5) not null,
	IdPartido int not null,
	--LLAVE PRIMARIA
	constraint pk_IdTarjeta primary key (IdTarjeta),
	--LLAVE SECUNDARIA
	constraint fk_Tarjeta_TipoTarjeta foreign key (IdTipoTajerta) references TipoTarjeta (IdTipoTajerta),
	constraint fk_Tarjeta_Jugador foreign key (IdJugador) references Administracion.Jugador (IdJugador),
	constraint fk_Tarjeta_partido foreign key (IdPartido) references partido (IdPartido)
);

--TABLA Tabla_De_Posicion
create table Tabla_De_Posicion
(
	IdPosicion varchar(5) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	GolesFavor int default 0,
	GolesContra int default 0,
	PartidosGanados int default 0,
	PartidosPerdidos int default 0,
	PartidosEmpatados int default 0,
	PartidosJugados int default 0,
	Puntaje int default 0,
	DiferenciaGoles int default 0,
	IdEquipo varchar(4),
	IdCampania varchar(4),
	--LLAVE PRIMARIA
	constraint pk_IdPosicion primary key (IdPosicion),
	--LLAVE SECUNDARIA
	constraint fk_Posicion_Equipo foreign key (IdEquipo) references Administracion.Equipo (IdEquipo),
	constraint fk_Posicion_Campania foreign key (IdCampania) references Campania (IdCampania),
	--RESTRICCIONES 
	constraint ck_IdPosicion check(IdPosicion like '[P][O][S][0-9][0-9]')
);
GO


--*******************************PROCEDIMIENTOS ALMACENADOS**************************

--Fecha no permitida
create procedure sp_insertarFechaNoPermitida
	@IdFechaNoPermitida varchar(20),
	@FechaNoPermitida date,
	@DescripcionFecha varchar(max)
as
begin try
begin tran
	if(select count(*) from FechaNoPermitida where IdFechaNoPermitida=@IdFechaNoPermitida)=0
	insert into FechaNoPermitida(IdFechaNoPermitida,FechaNoPermitida,DescripcionFecha)
	values (@IdFechaNoPermitida,@FechaNoPermitida,@DescripcionFecha)
	else
	print'Error ya existe'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--PROCEDIMIENTO TABLA PAIS
create procedure sp_Insertar_Pais
@IdPais varchar(5), 
@NombrePais varchar(100)
as 
begin try
begin tran
	if(select Count(*) from Pais
			where IdPais=@IdPais)=0
			insert into Pais(IdPais, NombrePais)
			values (@IdPais, @NombrePais)
	else
	print '¡Error!, este país ya existe'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO


--PROCEDIMIENTO TABLA TIPO EMPLEADO
create procedure sp_Insertar_TipoEmpleado
@IdTipoEmpleado varchar(4),
@NombreTipoEmpleado varchar(100)
as
begin try
begin tran
	if(select Count(*) from TipoEmpleado
			where IdTipoEmpleado=@IdTipoEmpleado)=0
			insert into TipoEmpleado(IdTipoEmpleado, NombreTipoEmpleado)
			values (@IdTipoEmpleado, @NombreTipoEmpleado)
	else
	print '¡Error!, este tipo de empleado ya existe'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO


--Estadio
create procedure sp_insertarestadio
	@IdEstadio varchar(4),
	@NombreEstadio varchar(100),
	@CapacidadEstadio int,
	@DireccionEstado varchar(max),
	@nombreRepresentante varchar(200),
	@telefonoRepresentante varchar(10),
	@correoRepresentante varchar(50)
as 
begin try
begin tran
	if(select count(*) from Estadio where IdEstadio=@IdEstadio)=0
	insert into Estadio(IdEstadio, NombreEstadio, CapacidadEstadio, DireccionEstado,
	nombreRepresentante, telefonoRepresentante, correoRepresentante)
	values (@IdEstadio, @NombreEstadio, @CapacidadEstadio, @DireccionEstado,
	@nombreRepresentante, @telefonoRepresentante, @correoRepresentante)
	else
	print'¡Error!, este estadio ya existe'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

 --Division
create procedure sp_insertardivison
@IdDivision varchar(4),
@NombreDivision varchar(100)
as
begin try
begin tran
	if(select count(*) from Division where IdDivision=@IdDivision)=0
	insert into Division(IdDivision, NombreDivision)
	values(@IdDivision, @NombreDivision)
	else
	print'¡Error!, esta division ya existe'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--Equipo
create procedure sp_insertarequipo
@IdEquipo varchar(4),
@NombreEquipo varchar(100),
@NombreOficinasEquipo varchar(100),
@HoraFavoritaEquipo time,
@IdDiaFavorito varchar(5),
@IdEstadio varchar(4),
@IdPais varchar(5),
@IdLiga varchar(4)
as
begin try
begin tran
	if(select count(*) from Administracion.Equipo where IdEquipo=@IdEquipo)=0
	insert into Administracion.Equipo(IdEquipo, NombreEquipo, NombreOficinasEquipo, HoraFavoritaEquipo, IdDiaFavorito, IdEstadio, IdPais, IdLiga)
	values(@IdEquipo, @NombreEquipo, @NombreOficinasEquipo, @HoraFavoritaEquipo, @IdDiaFavorito, @IdEstadio, @IdPais, @IdLiga)
	else
	print'¡Error!, este equipo ya existe'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--Empleado
create procedure sp_insertar_empleado
@IdEmpleado varchar(5),
@NombreEmpleado varchar(100),
@FechaNacimientoEmpleado date,
@IdTipoEmpleado varchar(4),
@IdEquipo varchar(4),
@correo varchar(50),
@sexo varchar(20),
@numIdentificacion varchar(50),
@IdPais varchar(5)
as
begin try
begin tran
	if(select count(*) from Empleado where IdEmpleado=@IdEmpleado)=0
	insert into Empleado(IdEmpleado, NombreEmpleado, FechaNacimientoEmpleado, IdTipoEmpleado, IdEquipo, correo, sexo, numIdentificacion, IdPais)
	values(@IdEmpleado, @NombreEmpleado, @FechaNacimientoEmpleado, @IdTipoEmpleado, @IdEquipo, @correo, @sexo, @numIdentificacion, @IdPais)
	else
	print'¡Error!, este empleado ya existe'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--DetalleEquipoPatrocinador
create procedure sp_Detalle_Equipo_Patrocinador
@IdEquipo varchar(4), 
@IdPatrocinador varchar(20),
@Estado int,
@FechaInicio DATE,
@FechaFin DATE 
as
begin try
begin tran
	if(select count(*) from Detalle_Equipo_Patrocinador where IdEquipo=@IdEquipo) = 0
	insert into Detalle_Equipo_Patrocinador(IdEquipo, IdPatrocinador, Estado, FechaInicio, FechaFin)
	values(@IdEquipo, @IdPatrocinador, @Estado, @FechaInicio, @FechaFin)
	else
	print'¡Error!, este detalle patrocinio ya existe'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO


--DetalleDueño
create procedure sp_insertarDetalleDuenio
@IdDuenio varchar(20),
@IdEquipo varchar(4)
as
begin try
begin tran
	if(select count(*) from DetalleDuenio where IdDuenio=@IdDuenio) = 0
	insert into DetalleDuenio(IdDuenio, IdEquipo)
	values(@IdDuenio, @IdEquipo)
	else
	print'¡Error!, este detalle dueño ya existe'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--Jugador
create procedure sp_insertarjugador
@IdJugador varchar(20),
@NombreJugador varchar(100),
@AlturaJugador varchar(20), 
@PesoJugador varchar(20),
@FechaNacimientoJugador date,
@posicion varchar(100),
@IdPais varchar(5)
as
begin try
begin tran
	if(select count(*) from Administracion.Jugador where IdJugador=@IdJugador) = 0
	insert into Administracion.Jugador(IdJugador,NombreJugador, AlturaJugador, PesoJugador, FechaNacimientoJugador, posicion, IdPais)
	values(@IdJugador, @NombreJugador, @AlturaJugador, @PesoJugador, @FechaNacimientoJugador, @posicion, @IdPais)
	else
	print'¡Error!, este jugador ya existe'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--Goleador
create procedure sp_insertargoleador
@IdJugador varchar(20),
@IdCampania varchar(4)
as
begin try
begin tran
	if(select count(*) from Goleador where IdJugador=@IdJugador) = 0
	insert into Goleador(IdJugador, IdCampania)
	values(@IdJugador, @IdCampania)
	else
	print'¡Error!, este goleador ya existe'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--Partido
create procedure sp_insertarpartido
@EquipoVisitante varchar(20),
@EquipoLocal varchar(20),
@FechaPartido date,
@HoraPartido time,
@EquipoGanador varchar(20),
@EquipoPerdedor varchar(20), 
@GolesLocal int,
@GolesVisitante int
as
begin try
begin tran
	insert into Partido(EquipoVisitante, EquipoLocal, FechaPartido, HoraPartido, EquipoGanador, EquipoPerdedor, GolesLocal, GolesVisitante)
	values(@EquipoVisitante, @EquipoLocal, @FechaPartido, @HoraPartido, @EquipoGanador, @EquipoPerdedor, @GolesLocal, @GolesVisitante)
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--Goles
create procedure ProcGoles.sp_insertargoles
@IdPartido int,
@IdJugador varchar(20),
@IdEquipo varchar(4)
as
begin try
begin tran
	--Valida que el partido aún no este finalizado
	IF(SELECT Estado FROM Partido WHERE IdPartido = @IdPartido) != 'FINALIZADO'
	BEGIN
		--Valida que el equipo pertenezca al partido
		IF(select count(*) from partido where (IdPartido = @IdPartido AND EquipoLocal = @IdEquipo) OR (IdPartido = @IdPartido AND EquipoVisitante = @IdEquipo)) != 0
		BEGIN 
			--Valida que el jugador pertenezca al equipo ingresado
			IF(select count(*) from Detalle_Equipo_Jugador where (IdEquipo = @IdEquipo and IdJugador = @IdJugador)) != 0
			BEGIN
					insert into Goles(IdPartido, IdJugador,idEquipo)
					values (@IdPartido, @IdJugador,@idEquipo)
			END
			ELSE
			BEGIN
				PRINT ('El jugador ingresado no pertenece a este equipo')
			END

		END
		ELSE
		BEGIN
			PRINT 'El equipo ingresado no pertenece a este partido'
		END
	END
	ELSE
	BEGIN
		PRINT ('No se puede ingresar goles porque el partido ya ha finalizado')
	END
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--Tarjeta
create procedure sp_insertartarjetas
@IdTipoTajerta varchar(20),
@IdJugador varchar(20),
@IdPartido int
as
begin try
begin tran
	insert into Tarjeta( IdTipoTajerta, IdJugador, IdPartido)
	values( @IdTipoTajerta, @IdJugador, @IdPartido)
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--PROCEDIMIENTO TABLA DIA FAVORITO
create procedure sp_Insertar_DiaFavorito
@IdDiaFavorito varchar(5),
@NombreDia varchar(50)
as
begin try
begin tran
	if(select Count(*) from DiaFavorito
			where IdDiaFavorito=@IdDiaFavorito)=0
			insert into DiaFavorito(IdDiaFavorito, NombreDia)
			values(@IdDiaFavorito, @NombreDia)
	else
	print '¡Error!, este día ya existe'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--PROCEDIMIENTO TABLA LIGA
create procedure sp_Insertar_Liga
@IdLiga varchar(4),
@NombreLiga varchar(100),
@FechaInicioLiga date,
@IdPais varchar(5),
@IdDivision varchar(4)
as
begin try
begin tran
	if(select Count(*) from Liga
			where IdLiga=@IdLiga)=0
			insert into Liga(IdLiga,NombreLiga,FechaInicioLiga,IdPais,IdDivision)
			values (@IdLiga, @NombreLiga, @FechaInicioLiga, @IdPais, @IdDivision)
	else
	print '¡Error!, esta liga ya existe en los registros'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--PROCEDIMIENTO TABLA CAMPAÑA
create procedure sp_Insertar_Campania
@IdCampania varchar(4),
@NombreCampania varchar(100),
@IdLiga varchar(4)
as
begin try
begin tran
	if(select Count(*) from Campania
			where IdCampania=@IdCampania or NombreCampania=@NombreCampania)=0
			insert into Campania(IdCampania, NombreCampania, IdLiga)
			values (@IdCampania, @NombreCampania, @IdLiga)
	else
	print '¡Error!, esta campaña ya es existente en los registros'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--PROCEDIMIENTO TABLA PATROCINADOR
create procedure sp_Insertar_Patrocinador
@IdPatrocinador varchar(20),
@NombrePatrocinador varchar(100),
@TelefonoPatrocinador varchar(20),
@CorreoPatrocinador varchar(20),
@Logo IMAGE
as
begin try
begin tran
	if(select count(*) from Patrocinador
			where IdPatrocinador=@IdPatrocinador)=0
			insert into Patrocinador(IdPatrocinador,NombrePatrocinador, TelefonoPatrocinador, CorreoPatrocinador, Logo)
			values(@IdPatrocinador,@NombrePatrocinador, @TelefonoPatrocinador, @CorreoPatrocinador, @Logo)
	else
	print '¡Error!, esta patrocinador ya está en los registros'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--PROCEDIMIENTO TABLA DUEÑO
create procedure sp_Insertar_Duenio
@IdDuenio varchar(20),
@NombreDuenio varchar(100), 
@DireccionDuenio varchar(200), 
@TelefonoDuenio varchar(20),
@IdEquipo varchar(4)
as
begin try
begin tran
	if(select count(*) from Duenio
			where IdDuenio=@IdDuenio)=0
			insert into Duenio(IdDuenio,NombreDuenio, DireccionDuenio, TelefonoDuenio, IdEquipo)
			values(@IdDuenio,@NombreDuenio, @DireccionDuenio, @TelefonoDuenio, @IdEquipo)
	else
	print '¡Error!, esta dueño ya está en los registros'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--PROCEDIMIENTO TABLA EQUIPACIÓN
create procedure sp_Insertar_Equipacion
@IdEquipacion varchar(20),
@DescripcionCamisa varchar(200),
@DescripcionBotines varchar(200), 
@DescripcionShort varchar(200),
@DescripcionMedias varchar(200),
@IdEquipo varchar(4)
as
begin try
begin tran
	if(select count(*) from Equipacion
			where IdEquipacion=@IdEquipacion)=0
			insert into Equipacion(IdEquipacion, DescripcionCamisa, DescripcionBotines, 
			DescripcionShort, DescripcionMedias, IdEquipo)
			values (@IdEquipacion, @DescripcionCamisa, @DescripcionBotines, 
			@DescripcionShort, @DescripcionMedias, @IdEquipo)
	else
	print '¡Error!, este ya es existente'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--PROCEDIMIENTO TABLA DETALLE EQUIPO JUGADOR
create procedure sp_Insertar_DetalleEquipoJugador
@IdPeriodo varchar(20),
@FechaInicioPeriodo date, 
@FechaFinalPeriodo date, 
@IdEquipo varchar(4),
@IdJugador varchar(20)
as
begin try
begin tran
	if(select count(*) from Detalle_Equipo_Jugador
			where IdPeriodo=@IdPeriodo)=0
			insert into Detalle_Equipo_Jugador(IdPeriodo,FechaInicioPeriodo,FechaFinalPeriodo, IdEquipo, IdJugador)
			values(@IdPeriodo,@FechaInicioPeriodo,@FechaFinalPeriodo, @IdEquipo, @IdJugador)
	else
	print '¡Error!, este registro ya es existente'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--PROCEDIMIENTO TABLA DETALLE DESCENSO
create procedure sp_Insertar_DetalleDescenso
@IdEquipo varchar(4),
@IdCampania varchar(4)
as
begin try
begin tran
	insert into Detalle_Descenso(IdEquipo, IdCampania)
	values (@IdEquipo, @IdCampania)
commit
end try
begin catch
rollback
print error_message()
end catch;
GO


--PROCEDIMIENTO TIPO TARJETA
create procedure sp_Insertar_TipoTarjeta
@IdTipoTajerta varchar(20),
@NombreTipoTarjeta varchar(20)
as
begin try
begin tran
	if(select count(*) from TipoTarjeta
			where IdTipoTajerta=@IdTipoTajerta)=0
			insert into TipoTarjeta(IdTipoTajerta,NombreTipoTarjeta)
			values (@IdTipoTajerta,@NombreTipoTarjeta)
	else
	print '¡Error!, este registro de tipo de tarjeta ya es existente'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--PROCEDIMIENTO TABLA POSICION
create procedure sp_Insertar_Posicion
@IdPosicion varchar(20),
@IdEquipo varchar(4),
@IdCampania varchar(4)
as
begin try
begin tran
	if(select count(*) from Tabla_De_Posicion
			where IdPosicion=@IdPosicion)=0
			insert into Tabla_De_Posicion(IdPosicion,IdEquipo,IdCampania)
			values(@IdPosicion,@IdEquipo,@IdCampania)
	else
	print '¡Error!, este registro  ya es existente'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--*******************************TRIGGERS**************************

--TRIGGER TABLA FechaNoPermitida
CREATE TRIGGER trg_fecha_no_permitida
ON FechaNoPermitida
AFTER INSERT, UPDATE
AS
	IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE FechaNoPermitida 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdFechaNoPermitida = (SELECT i.IdFechaNoPermitida FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE FechaNoPermitida 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdFechaNoPermitida = (SELECT i.IdFechaNoPermitida FROM inserted i);
	END
GO

--TRIGGER TABLA PAIS
CREATE TRIGGER trg_pais
ON Pais
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Pais 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE idPais = (SELECT i.idPais FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Pais 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE idPais = (SELECT i.idPais FROM inserted i);
	END
GO


--TRIGGER TABLA TipoEmpleado
CREATE TRIGGER trg_tipo_empleadoo
ON TipoEmpleado
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE TipoEmpleado 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdTipoEmpleado = (SELECT i.IdTipoEmpleado FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE TipoEmpleado 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdTipoEmpleado = (SELECT i.IdTipoEmpleado FROM inserted i);
	END
GO

--TRIGGER TABLA ESTADIO
CREATE TRIGGER trg_estadioo
ON estadio
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE estadio 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdEstadio = (SELECT i.IdEstadio FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE estadio 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdEstadio = (SELECT i.IdEstadio FROM inserted i);
	END
GO

--TRIGGER TABLA DiaFavorito
CREATE TRIGGER trg_dia_favorito
ON DiaFavorito
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE DiaFavorito 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdDiaFavorito = (SELECT i.IdDiaFavorito FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE DiaFavorito 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdDiaFavorito = (SELECT i.IdDiaFavorito FROM inserted i);
	END
GO

--TRIGGER TABLA DIVISIÓN
CREATE TRIGGER trg_division
ON division
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Division 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdDivision = (SELECT i.IdDivision FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Division 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdDivision = (SELECT i.IdDivision FROM inserted i);
	END
GO

--TRIGGER TABLA LIGA
CREATE TRIGGER trg_liga
ON Liga
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Liga 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdLiga = (SELECT i.IdLiga FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Liga 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdLiga = (SELECT i.IdLiga FROM inserted i);
	END
GO

--TRIGGER TABLA EQUIPO
CREATE TRIGGER trg_equipo
ON Administracion.Equipo
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Administracion.Equipo 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdEquipo = (SELECT i.IdEquipo FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Administracion.Equipo 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdEquipo = (SELECT i.IdEquipo FROM inserted i);
	END
GO

--TRIGGER TABLA CAMPANIA
CREATE TRIGGER trg_campania
ON Campania
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Campania 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdCampania = (SELECT i.IdCampania FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Campania 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdCampania = (SELECT i.IdCampania FROM inserted i);
	END
GO

--TRIGGER TABLA EMPLEADO
CREATE TRIGGER trg_empleado
ON Empleado
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Empleado 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdEmpleado = (SELECT i.IdEmpleado FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Empleado 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdEmpleado = (SELECT i.IdEmpleado FROM inserted i);
	END
GO


--TRIGGER TABLA PATROCINADOR
CREATE TRIGGER trg_patrocinador
ON Patrocinador
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Patrocinador 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdPatrocinador = (SELECT i.IdPatrocinador FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Patrocinador 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdPatrocinador = (SELECT i.IdPatrocinador FROM inserted i);
	END
GO

--TRIGGER TABLA Detalle_Equipo_Patrocinador
CREATE TRIGGER trg_Detalle_Equipo_Patrocinador
ON Detalle_Equipo_Patrocinador
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Detalle_Equipo_Patrocinador 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdPatrocinador = (SELECT i.IdPatrocinador FROM inserted i) and IdEquipo = (SELECT i.IdEquipo FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Detalle_Equipo_Patrocinador 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdPatrocinador = (SELECT i.IdPatrocinador FROM inserted i) and IdEquipo = (SELECT i.IdEquipo FROM inserted i);
	END
GO

--TRIGGER TABLA Duenio
CREATE TRIGGER trg_duenio
ON Duenio
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Duenio 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdDuenio = (SELECT i.IdDuenio FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Duenio 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdDuenio = (SELECT i.IdDuenio FROM inserted i);
	END
GO

--TRIGGER TABLA DetalleDUEÑO
CREATE TRIGGER trg_DetalleDuenio
ON DetalleDuenio
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE DetalleDuenio 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdDuenio = (SELECT i.IdDuenio FROM inserted i) and IdEquipo = (SELECT i.IdEquipo FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE DetalleDuenio 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdDuenio = (SELECT i.IdDuenio FROM inserted i) and IdEquipo = (SELECT i.IdEquipo FROM inserted i);
	END
GO

--TRIGGER TABLA EQUIPACIÓN
CREATE TRIGGER trg_equipacion
ON Equipacion
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Equipacion 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdEquipacion = (SELECT i.IdEquipacion FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Equipacion 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdEquipacion = (SELECT i.IdEquipacion FROM inserted i);
	END
GO

--TRIGGER TABLA JUGADOR
CREATE TRIGGER trg_jugador
ON Administracion.Jugador
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Administracion.Jugador 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdJugador = (SELECT i.IdJugador FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Administracion.Jugador 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdJugador = (SELECT i.IdJugador FROM inserted i);
	END
GO

--TRIGGER TABLA Detalle_Equipo_Jugador
CREATE TRIGGER trg_Detalle_Equipo_Jugador
ON Detalle_Equipo_Jugador
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Detalle_Equipo_Jugador 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdPeriodo = (SELECT i.IdPeriodo FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Detalle_Equipo_Jugador 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdPeriodo = (SELECT i.IdPeriodo FROM inserted i);
	END
GO

--TRIGGER TABLA Goleador
CREATE TRIGGER trg_goleador
ON Goleador
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Goleador 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdJugador = (SELECT i.IdJugador FROM inserted i) and IdCampania = (SELECT i.IdCampania FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Goleador 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdJugador = (SELECT i.IdJugador FROM inserted i) and IdCampania = (SELECT i.IdCampania FROM inserted i);
	END
GO

--TRIGGER TABLA DETALLE_DESCENSO
CREATE TRIGGER trg_Detalle_Descenso
ON Detalle_Descenso
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Detalle_Descenso 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdEquipo = (SELECT i.IdEquipo FROM inserted i) and IdCampania = (SELECT i.IdCampania FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Detalle_Descenso 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdEquipo = (SELECT i.IdEquipo FROM inserted i) and IdCampania = (SELECT i.IdCampania FROM inserted i);
	END
GO


--TRIGGER TABLA Partido
CREATE TRIGGER trg_partido
ON Partido
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Partido 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdPartido = (SELECT i.IdPartido FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Partido 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdPartido = (SELECT i.IdPartido FROM inserted i);
	END
GO


--TRIGGER TABLA PLANTILLA
CREATE TRIGGER trg_plantilla
ON Plantilla
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Plantilla 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdPlantilla = (SELECT i.IdPlantilla FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Plantilla 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdPlantilla = (SELECT i.IdPlantilla FROM inserted i);
	END
GO

--TRIGGER TABLA GOLES
CREATE TRIGGER trg_goles
ON Goles
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Goles 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE idGol = (SELECT i.idGol FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Goles 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE idGol = (SELECT i.idGol FROM inserted i);
	END
GO

--TRIGGER TABLA TIPO TARJETA
CREATE TRIGGER trg_TipoTarjeta
ON TipoTarjeta
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE TipoTarjeta 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdTipoTajerta = (SELECT i.IdTipoTajerta FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE TipoTarjeta 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdTipoTajerta = (SELECT i.IdTipoTajerta FROM inserted i);
	END
GO


--TRIGGER TABLA Tarjeta
CREATE TRIGGER trg_tarjeta
ON Tarjeta
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Tarjeta 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdTarjeta = (SELECT i.IdTarjeta FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Tarjeta 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdTarjeta = (SELECT i.IdTarjeta FROM inserted i);
	END
GO

--TRIGGER TABLA Tabla_De_Posicion
CREATE TRIGGER trg_Tabla_De_Posicion
ON Tabla_De_Posicion
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Tabla_De_Posicion 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdPosicion = (SELECT i.IdPosicion FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Tabla_De_Posicion 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdPosicion = (SELECT i.IdPosicion FROM inserted i);
	END
GO

--*******************************INSERT**************************
--TABLA FECHA NO PERMITIDA
EXEC sp_insertarFechaNoPermitida 'FE001','2020-11-07','FECHA FIFA'
EXEC sp_insertarFechaNoPermitida 'FE002','2020-11-08','FECHA FIFA'
EXEC sp_insertarFechaNoPermitida 'FE003','2020-11-09','FECHA FIFA'
EXEC sp_insertarFechaNoPermitida 'FE004','2020-11-10','FECHA FIFA'
EXEC sp_insertarFechaNoPermitida 'FE005','2020-11-11','FECHA FIFA'
EXEC sp_insertarFechaNoPermitida 'FE006','2020-11-12','FECHA FIFA'
EXEC sp_insertarFechaNoPermitida 'FE007','2020-11-13','FECHA FIFA'
EXEC sp_insertarFechaNoPermitida 'FE008','2020-11-14','FECHA FIFA'
EXEC sp_insertarFechaNoPermitida 'FE009','2020-12-24','VACACIÓN'
EXEC sp_insertarFechaNoPermitida 'FE010','2020-12-25','VACACIÓN'
EXEC sp_insertarFechaNoPermitida 'FE011','2020-12-26','VACACIÓN'
EXEC sp_insertarFechaNoPermitida 'FE012','2020-12-27','VACACIÓN'
EXEC sp_insertarFechaNoPermitida 'FE013','2020-12-28','VACACIÓN'
EXEC sp_insertarFechaNoPermitida 'FE014','2020-12-29','VACACIÓN'
EXEC sp_insertarFechaNoPermitida 'FE015','2020-12-30','VACACIÓN'
EXEC sp_insertarFechaNoPermitida 'FE016','2020-12-31','VACACIÓN'
EXEC sp_insertarFechaNoPermitida 'FE017','2021-01-01','VACACIÓN'
EXEC sp_insertarFechaNoPermitida 'FE018','2021-01-02','VACACIÓN'

SELECT * FROM FechaNoPermitida

--TABLA PAÍS
EXEC sp_Insertar_Pais 'ARG','Argentina'
EXEC sp_Insertar_Pais 'BOL','Bolivia'
EXEC sp_Insertar_Pais 'BRA','Brasil '
EXEC sp_Insertar_Pais 'CHI','Chile'
EXEC sp_Insertar_Pais 'ECU','Ecuador'
EXEC sp_Insertar_Pais 'PAR','Paraguay'
EXEC sp_Insertar_Pais 'PER','Perú'
EXEC sp_Insertar_Pais 'URU','Uruguay'
EXEC sp_Insertar_Pais 'VEN','Venezuela'
EXEC sp_Insertar_Pais 'PER','Perú'
EXEC sp_Insertar_Pais 'ESP','España'
EXEC sp_Insertar_Pais 'RUS','Rusia'
EXEC sp_Insertar_Pais 'SWE','Suecia'
EXEC sp_Insertar_Pais 'ITA','Italia'
EXEC sp_Insertar_Pais 'NED','Países Bajos'
EXEC sp_Insertar_Pais 'UKR','Ucrania'
EXEC sp_Insertar_Pais 'POR','Portugal'
EXEC sp_Insertar_Pais 'MEX','México'
EXEC sp_Insertar_Pais 'ESA','El Salvador'
EXEC sp_Insertar_Pais 'USA','Estados Unidos'
EXEC sp_Insertar_Pais 'COL','Colombia'
EXEC sp_Insertar_Pais 'CRI','Costa Rica'
EXEC sp_Insertar_Pais 'FRA','Francia'
EXEC sp_Insertar_Pais 'CMR','Camerun'
EXEC sp_Insertar_Pais 'AUT','Austria'
EXEC sp_Insertar_Pais 'PAN','Panamá'
EXEC sp_Insertar_Pais 'CRO','Croacia'
EXEC sp_Insertar_Pais 'GUT','Guatemala'
EXEC sp_Insertar_Pais 'PAY','Paraguay'
EXEC sp_Insertar_Pais 'TTG','Trinidad y Tobago'
EXEC sp_Insertar_Pais 'HON','Honduras'
EXEC sp_Insertar_Pais 'CUB','Cuba'
SELECT * FROM Pais

--TABLA TIPO EMPLEADO
EXEC sp_Insertar_TipoEmpleado 'TE01', 'Entrenador'
EXEC sp_Insertar_TipoEmpleado 'TE02', 'Auxiliar técnico'
EXEC sp_Insertar_TipoEmpleado 'TE03', 'Fisioterapista'
EXEC sp_Insertar_TipoEmpleado 'TE04', 'Médico'
EXEC sp_Insertar_TipoEmpleado 'TE05', 'Utilero'
SELECT * FROM TipoEmpleado

--TABLA ESTADIO
EXEC sp_insertarestadio 'ED01', 'Estadio Cuscatlán','25000', 'Calle Antigua a Huizucar, San Salvador', 'Jorge Alberto Rodríguez', '7754-8963', 'jorgeab@gmail.com'
EXEC sp_insertarestadio 'ED02', 'Estadio Óscar Quiteño','17500', 'Santa Ana', 'Gerson Daniel Maldonado', '6598-7485', 'maldonado1234@outlook.com'
EXEC sp_insertarestadio 'ED03', 'Estadio Juan Francisco Barraza','29000', 'San Miguel', 'Julio Adolfo Rodríguez', '7683-1198', 'julio_ro2@gmail.com'
EXEC sp_insertarestadio 'ED04', 'Estadio Jorge "Calero" Suárez','27000', 'Metapán','Guillermo Martínez', '7854-9632', 'martinore_23@gmail.com'
EXEC sp_insertarestadio 'ED05', 'Estadio Sergio Torres Rivera','7500', 'Usulután', 'Arnoldo Saldaña Martínez', '7754-2663', 'jsaldania_@hotmail.com'
EXEC sp_insertarestadio 'ED06', 'Estadio Dr. Ramón Flores Berrios','29000', 'La Unión', 'Luis Gonzales', '7841-1198', 'gonzales102@gmail.com'
EXEC sp_insertarestadio 'ED07', 'Estadio Las Delicias','17500', 'Santa Tecla', 'Eddy René Barahona', '7873-7485', 'baha_esc4@outlook.com'
EXEC sp_insertarestadio 'ED08', 'Estadio Gregorio Martínez','17500', 'Chalatenango', 'Mauricio Orellana', '6598-4564', 'mauricio_ore@outlook.com'
EXEC sp_insertarestadio 'ED09', 'Estadio Arturo Simeón Magaña','17500', 'Ahuachapán', 'Alejandro Manuel Ventura', '5665-4566', 'ventura1997@outlook.com'
SELECT * FROM Estadio

--TABLA DIA FAVORITO
EXEC sp_Insertar_DiaFavorito 'DAF01', 'Domingo'
EXEC sp_Insertar_DiaFavorito 'DAF02', 'Sábado'
SELECT * FROM DiaFavorito

--TABLA DIVISIÓN
EXEC sp_insertardivison 'DV01', 'Primera división'
EXEC sp_insertardivison 'DV02', 'Segunda división'
EXEC sp_insertardivison 'DV03', 'Tercera división'
SELECT * FROM Division

--TABLA LIGA
EXEC sp_Insertar_Liga 'LG01', 'Liga mayor de fútbol El Salvdor', '2021-01-28', 'ESA', 'DV01'
SELECT * FROM Liga

--TABLA EQUIPO 
EXEC sp_insertarequipo 'EQ01', 'Alianza Fútbol Club','Oficinas Centrales Alianza Fútbol Club', '15:00', 'DAF02', 'ED01', 'ESA', 'LG01'
EXEC sp_insertarequipo 'EQ02', 'Club Deportivo FAS','Oficinas Centrales Club Deportivo FAS', '17:00', 'DAF01', 'ED02', 'ESA', 'LG01'
EXEC sp_insertarequipo 'EQ03', 'Club Deportivo Águila','Oficinas Centrales Club Deportivo Águila', '13:00', 'DAF01', 'ED03', 'ESA', 'LG01'
EXEC sp_insertarequipo 'EQ04', 'Asociación Deportiva Isidro Metapán','Oficinas Centrales Asociación Deportiva Isidro Metapán', '17:00', 'DAF02', 'ED04', 'ESA', 'LG01'
EXEC sp_insertarequipo 'EQ05', 'Club Deportivo Luis Angel Firpo','Oficinas Centrales Club Deportivo Luis Angel Firpo', '16:00', 'DAF02', 'ED05', 'ESA', 'LG01'
EXEC sp_insertarequipo 'EQ06', 'Municipal Limeño','Oficinas Centrales Municipal Limeño', '13:30', 'DAF01', 'ED06', 'ESA', 'LG01'
EXEC sp_insertarequipo 'EQ07', 'Santa Tecla Futbol Club','Oficinas Centrales Santa Tecla Futbol Club', '15:30', 'DAF01', 'ED07', 'ESA', 'LG01'
EXEC sp_insertarequipo 'EQ08', 'Club Deportivo Chalatenango','Oficinas Centrales Club Deportivo Chalatenango', '14:00', 'DAF01', 'ED08', 'ESA', 'LG01'
EXEC sp_insertarequipo 'EQ09', 'Once Deportivo Fútbol Club','Oficinas Centrales Once Deportivo Fútbol Club', '15:00', 'DAF02', 'ED09', 'ESA', 'LG01'
EXEC sp_insertarequipo 'EQ10', 'Club Deportivo Atlético Marte Quezaltepe','Oficinas Centrales Club Deportivo Atlético Marte Quezaltepe', '14:00', 'DAF02', 'ED01', 'ESA', 'LG01'
SELECT * FROM Administracion.Equipo

--TABLA CAMPAÑA
EXEC sp_Insertar_Campania 'CA01', 'Torneo Apertura', 'LG01'
SELECT * FROM Campania

--TABLA EMPLEADO
EXEC sp_insertar_empleado 'EMP01','Juan Cortés', '1983-11-05', 'TE01', 'EQ01', 'jua_dieguez@gmail.com','M', '02145601-9', 'ESP'
EXEC sp_insertar_empleado 'EMP02','Guillermo Rivera', '1969-11-25', 'TE01', 'EQ02', 'memo_riv@gmail.com','M', '12589632-8', 'ESA'
EXEC sp_insertar_empleado 'EMP03','Osvaldo Escudero', '1960-10-15', 'TE01', 'EQ03', 'salvador_escudero@gmail.com','M', '45896321-7', 'ARG'
EXEC sp_insertar_empleado 'EMP04','Agustín Castillo', '1963-06-15', 'TE01', 'EQ04', 'albert_castillo@gmail.com','M', '02145601-9', 'PER'
EXEC sp_insertar_empleado 'EMP05','José Antonio Calles Franco', '1962-02-12', 'TE01', 'EQ05', 'jose_franco@gmail.com','M', '14589632-5', 'ESA'
EXEC sp_insertar_empleado 'EMP06','David Sevilla', '1983-11-05', 'TE01', 'EQ06', 'jua_diegueza@gmail.com','M', '02145601-9', 'ESP'
EXEC sp_insertar_empleado 'EMP07','Marco Sánchez', '1972-05-10', 'TE01', 'EQ07', 'marco@gmail.com','M', '12563594-2', 'MEX'
EXEC sp_insertar_empleado 'EMP08','Melvin Giovanni Portillo Amaya', '1983-11-15', 'TE01', 'EQ08', 'melvin@gmail.com','M', '12759632-8', 'ESA'
EXEC sp_insertar_empleado 'EMP09','Marco Antonio Pineda Guerra', '1983-01-05', 'TE01', 'EQ09', 'antonio_guerra@gmail.com','M', '25365487-9', 'ESA'
EXEC sp_insertar_empleado 'EMP10','	Juan Andrés Sarulyte', '1962-04-18', 'TE01', 'EQ10', 'andresz@gmail.com','M', '78523698-5', 'ARG'

SELECT * FROM Empleado

--TABLA PATROCINADOR
EXEC sp_Insertar_Patrocinador 'PTR01', 'Gatorade', '2256-9874', 'ernesto_mujica@hotmail.com', 'D:\Patrocinadores\gatorade.jpg'
EXEC sp_Insertar_Patrocinador 'PTR02', 'Powerade', '2485-9632', 'ilc_esa@hotmail.com', 'D:\Patrocinadores\powerade.jpg'
EXEC sp_Insertar_Patrocinador 'PTR03', 'Mitre', '7895-63214', 'mitre.sv@gmail.com', 'D:\Patrocinadores\mitre.jpg'
EXEC sp_Insertar_Patrocinador 'PTR04', 'Canal 4', '6895-4523', 'contacto_canal4.sv@hotmail.com', 'D:\Patrocinadores\Canal4.jpg'
EXEC sp_Insertar_Patrocinador 'PTR05', 'Maseca', '2124-7571', 'industrias_maseca.sv@outlook.com', 'D:\Patrocinadores\maseca.jpg'
EXEC sp_Insertar_Patrocinador 'PTR06', 'Umbro', '2598-6321', 'contactos_umbro@hotmail.com', 'D:\Patrocinadores\umbro_logo.jpg'
EXEC sp_Insertar_Patrocinador 'PTR07', 'Pepsi', '2368-7852', 'contactos_pepsi@hotmail.com', 'D:\Patrocinadores\pepsi_logo.jpg'
EXEC sp_Insertar_Patrocinador 'PTR08', 'Canal 21', '2598-7831', 'contactos_canal21@hotmail.com', 'D:\Patrocinadores\canal21.jpg'
EXEC sp_Insertar_Patrocinador 'PTR09', 'Pilsener', '2748-6521', 'contactos_ilc@hotmail.com', 'D:\Patrocinadores\pilsener_logo.jpg'
EXEC sp_Insertar_Patrocinador 'PTR10', 'Alo', '2968-6781', 'contactos_alo33@hotmail.com', 'D:\Patrocinadores\alo33_logo.jpg'

SELECT * FROM Patrocinador

--TABLA Detalle_Equipo_Patrocinador
EXEC sp_Detalle_Equipo_Patrocinador 'EQ01', 'PTR01',1, '2019-01-01', '2023-12-31';
EXEC sp_Detalle_Equipo_Patrocinador 'EQ02', 'PTR02',1, '2017-05-20', '2021-05-20';
EXEC sp_Detalle_Equipo_Patrocinador 'EQ03', 'PTR03',0, '2020-06-09', '2024-06-09';
EXEC sp_Detalle_Equipo_Patrocinador 'EQ04', 'PTR04',0, '2020-06-09', '2024-06-09';
EXEC sp_Detalle_Equipo_Patrocinador 'EQ05', 'PTR05',0, '2020-06-09', '2024-06-09';
EXEC sp_Detalle_Equipo_Patrocinador 'EQ06', 'PTR06',0, '2020-06-09', '2024-06-09';
EXEC sp_Detalle_Equipo_Patrocinador 'EQ07', 'PTR07',0, '2020-06-09', '2024-06-09';
EXEC sp_Detalle_Equipo_Patrocinador 'EQ08', 'PTR08',0, '2020-06-09', '2024-06-09';
EXEC sp_Detalle_Equipo_Patrocinador 'EQ09', 'PTR09',0, '2020-06-09', '2024-06-09';
EXEC sp_Detalle_Equipo_Patrocinador 'EQ10', 'PTR10',0, '2020-06-09', '2024-06-09';
SELECT * FROM Detalle_Equipo_Patrocinador

--TABLA DUENIO
EXEC sp_Insertar_Duenio 'DUE01', 'Alberto Roca', 'San Salvador, El Salvador', '78945612', 'EQ01';
EXEC sp_Insertar_Duenio 'DUE02', 'José Pérez', 'San Miguel, El Salvador', '74125896', 'EQ03';
EXEC sp_Insertar_Duenio 'DUE03', 'Carlos Martínez', 'Santa Ana, El Salvador', '78541236', 'EQ02';
EXEC sp_Insertar_Duenio 'DUE04', 'Wilber Vera', 'Cuscatlán, El Salvador', '69852314', 'EQ01';
EXEC sp_Insertar_Duenio 'DUE05', 'Cristian Solorzano', 'La Libertad, El Salvador', '63214578', 'EQ02';
EXEC sp_Insertar_Duenio 'DUE06', 'Gilberto Castro', 'La Paz, El Salvador', '76321549', 'EQ03';
SELECT * FROM Duenio

--Tabla DetalleDuenio
EXEC sp_insertarDetalleDuenio 'DUE01', 'EQ01';
EXEC sp_insertarDetalleDuenio 'DUE02', 'EQ01';
EXEC sp_insertarDetalleDuenio 'DUE03', 'EQ03';
EXEC sp_insertarDetalleDuenio 'DUE04', 'EQ03';
EXEC sp_insertarDetalleDuenio 'DUE05', 'EQ02';
EXEC sp_insertarDetalleDuenio 'DUE06', 'EQ01';
SELECT * from DetalleDuenio;
GO


--Tabla equipacion
EXEC sp_Insertar_Equipacion 'EQUI01', 'Color rojo con franjas negras diseño estandar', 'Predator verde claro con puntos grises',
 'Color rojo con logo en pierna derecha','Color blanco sin diseño', 'EQ01'; 

EXEC sp_Insertar_Equipacion 'EQUI02', 'Color blanco con logo a la izquierda y frajas doradas a los costados', 'Nike rojo oscuro con negro',
 'Color blanco con logo en pierna derecha y franjas doradas','Color blanco con logo al centro', 'EQ01'; 

EXEC sp_Insertar_Equipacion 'EQUI03', 'Color celeste con franjas blancas diseño estandar', 'Adidas blancos con logo a los costados',
 'Color celeste con logo en pierna derecha','Color celeste con logo al costado', 'EQ02'; 

EXEC sp_Insertar_Equipacion 'EQUI04', 'Color morado con linea negras', 'Precission negros con blanco logo al costado',
 'Color morado con logo en pierna derecha','Color blanco sin diseño', 'EQ02'; 

EXEC sp_Insertar_Equipacion 'EQUI05', 'Color de fondo rojo con franjas blancas verticales', 'Fusion dorados con negro diseño generico',
 'Color rojo con blanco y logo en pierna derecha','Color blanco sin diseño', 'EQ03';
 
EXEC sp_Insertar_Equipacion 'EQUI06', 'Color negro con degradado en gris', 'Air rosas con negro y logo al centro',
 'Color negro con logo en pierna derecha y franjas blancas','Color negro sin diseño', 'EQ03'; 
SELECT * FROM Equipacion;
GO

--Tabla jugador
--Alianza
EXEC sp_insertarjugador 'JG001', 'Mario González', '1.70', '60kg', '1997-05-20', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG002', 'Yimi Cuellas De León', '1.70', '60kg', '1989-10-20', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG003', 'Alexander Mendoza', '1.70', '60kg', '1990-06-04', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG004', 'César Linares', '1.70', '60kg', '1996-03-17', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG005', 'Henry Ventura', '1.70', '60kg', '1991-10-17', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG006', 'Israel López', '1.70', '60kg', '1994-06-23', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG007', 'Iván Ramírez', '1.70', '60kg', '1992-12-19', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG008', 'Jonathan Guzmán', '1.70', '60kg', '1992-07-12', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG009', 'Mario Segovia', '1.70', '60kg', '1996-08-02', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG010', 'Rudy Clavel', '1.70', '60kg', '1996-10-10', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG011', 'Rubén Marroquín', '1.70', '60kg', '1992-10-15', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG012', 'Bryan Tamacas', '1.70', '60kg', '1995-02-21', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG013', 'Elías Muñoz', '1.70', '60kg', '1998-05-20', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG014', 'Felipe Ponce', '1.70', '60kg', '1988-03-29', 'Centrocampista', 'MEX'
EXEC sp_insertarjugador 'JG015', 'Isaac Portillo', '1.70', '60kg', '1994-11-08', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG016', 'Isaac Molina', '1.70', '60kg', '1999-11-14', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG017', 'José Estrada', '1.70', '60kg', '1997-01-01', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG018', 'Diego Ascencio', '1.70', '60kg', '1995-05-15', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG019', 'Gerardo Freitas', '1.70', '60kg', '1991-03-04', 'Delantero', 'URU'
EXEC sp_insertarjugador 'JG020', 'Michel Mercado', '1.70', '60kg', '1990-01-01', 'Delantero', 'COL'
EXEC sp_insertarjugador 'JG021', 'Oswaldo Blanco', '1.70', '60kg', '1990-05-21', 'Delantero', 'COL'
EXEC sp_insertarjugador 'JG022', 'Rodolfo Zelaya', '1.70', '60kg', '1988-07-03', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG023', 'Wilfreso Ulises Cienfuegos', '1.70', '60kg', '1996-10-02', 'Delantero', 'ESA'

--FAS
EXEC sp_insertarjugador 'JG024', 'Kévin Carabantes', '1.70', '60kg', '1995-03-20', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG025', 'Nicolas Pacheco', '1.70', '60kg', '1995-04-07', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG026', 'Andrés Flores', '1.70', '60kg', '1995-01-20', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG027', 'Siliazar Prado', '1.70', '60kg', '1999-02-01', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG028', 'Diego Chávez', '1.70', '60kg', '1997-04-05', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG029', 'Ibsen Castro', '1.70', '60kg', '1988-10-24', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG030', 'Juan Palma', '1.70', '60kg', '1982-05-06', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG031', 'Marvin Aranda', '1.70', '60kg', '1998-06-13', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG032', 'Edwin Cuellar', '1.70', '60kg', '1995-06-17', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG033', 'Rodolfo Huezo', '1.70', '60kg', '2001-08-14', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG034', 'Moises Garcia', '1.70', '60kg', '1990-06-26', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG035', 'Brayan Landaverde', '1.70', '60kg', '1995-05-27', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG036', 'José Flores', '1.70', '60kg', '1996-09-28', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG037', 'Julio Amaya', '1.70', '60kg', '1995-03-29', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG038', 'Javier Bolaños', '1.70', '60kg', '2001-08-14', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG039', 'Jeffrey', '1.70', '60kg', '1995-10-15', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG040', 'Álvaro López', '1.70', '60kg', '1992-09-24', 'Delantero', 'CHI'
EXEC sp_insertarjugador 'JG041', 'Diego Areco', '1.70', '60kg', '1992-11-05', 'Delantero', 'PAY'
EXEC sp_insertarjugador 'JG042', 'Guillermo Stradella', '1.70', '60kg', '1993-09-16', 'Delantero', 'ARG'
EXEC sp_insertarjugador 'JG043', 'Irvin Herrera', '1.70', '60kg', '1991-08-30', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG044', 'Josué Arévalo', '1.70', '60kg', '1999-03-09', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG045', 'Luis Perea', '1.70', '60kg', '1986-09-03', 'Delantero', 'COL'
EXEC sp_insertarjugador 'JG046', 'óscar Rodas', '1.70', '60kg', '1987-06-04', 'Delantero', 'COL'

--Aguila
EXEC sp_insertarjugador 'JG047', 'Benjamin Villalobos', '1.70', '60kg', '1988-07-15', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG048', 'José Mejía', '1.70', '60kg', '1993-08-15', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG049', 'Andrés Quejada', '1.70', '60kg', '1985-11-21', 'Defensa', 'COL'
EXEC sp_insertarjugador 'JG050', 'Ever Acosta', '1.70', '60kg', '1998-08-28', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG051', 'Fredy Cornejo', '1.70', '60kg', '1992-04-19', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG052', 'Reynaldo Aparicio', '1.70', '60kg', '1993-05-17', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG053', 'José Villalobos', '1.70', '60kg', '1997-09-01', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG054', 'Carlos Ortiz', '1.70', '60kg', '1999-02-12', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG055', 'Diego Coca', '1.70', '60kg', '1994-08-26', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG056', 'Dixon Rivas', '1.70', '60kg', '1999-11-08', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG057', 'Edwin Lazo', '1.70', '60kg', '1990-06-16', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG058', 'Enmauel Medina', '1.70', '60kg', '1999-08-04', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG059', 'Fabricio Alfaro', '1.70', '60kg', '1990-12-03', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG060', 'Gerson Mayén', '1.70', '60kg', '1989-02-09', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG061', 'Kevin Berríos', '1.70', '60kg', '1998-06-08', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG062', 'Kairon Da Silva', '1.70', '60kg', '1989-07-20', 'Centrocampista', 'BRA'
EXEC sp_insertarjugador 'JG063', 'Marlon Trejo', '1.70', '60kg', '1988-10-03', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG064', 'Ronald Gómez', '1.70', '60kg', '1998-09-22', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG065', 'Santos Ortiz', '1.70', '60kg', '1993-01-22', 'Delantero', 'USA'
EXEC sp_insertarjugador 'JG066', 'Victor García', '1.70', '60kg', '1995-02-18', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG067', 'Wilson Rugamas', '1.70', '60kg', '1990-01-19', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG068', 'Marlon De Moura', '1.70', '60kg', '1990-02-05', 'Delantero', 'BRA'
EXEC sp_insertarjugador 'JG069', 'Nicolas Jarvis', '1.70', '60kg', '1981-12-21', 'Delantero', 'CHI'

--Isidro
EXEC sp_insertarjugador 'JG070', 'Óscar Pleitez', '1.70', '60kg', '1993-02-06', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG071', 'Alexander Larín', '1.70', '60kg', '1992-06-27', 'Defensa', 'GUT'
EXEC sp_insertarjugador 'JG072', 'Julio Cerritos', '1.70', '60kg', '1988-07-16', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG073', 'Moisés Mejía', '1.70', '60kg', '1994-12-11', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG074', 'Milton Molina', '1.70', '60kg', '1989-02-02', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG075', 'Yeison Murillo', '1.70', '60kg', '1992-11-30', 'Defensa', 'COL'
EXEC sp_insertarjugador 'JG076', 'Iván Castro', '1.70', '60kg', '1994-01-05', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG077', 'Christian Aguilar', '1.70', '60kg', '2001-07-14', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG078', 'Cristian Cisneros', '1.70', '60kg', '1994-04-16', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG079', 'Fernando Clavel', '1.70', '60kg', '1999-09-28', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG080', 'Herbert Sosa', '1.70', '60kg', '1990-01-11', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG081', 'Jaime García', '1.70', '60kg', '1994-04-20', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG082', 'Luis Figueroa', '1.70', '60kg', '1995-02-01', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG083', 'Marvin Lemus', '1.70', '60kg', '1993-03-12', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG084', 'Rudy Batres', '1.70', '60kg', '1990-11-09', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG085', 'Carlos Morales', '1.70', '60kg', '1995-03-05', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG086', 'Cristian Gil', '1.70', '60kg', '1996-11-05', 'Delantero', 'COL'
EXEC sp_insertarjugador 'JG087', 'John Machado', '1.70', '60kg', '1993-01-01', 'Delantero', 'COL'
EXEC sp_insertarjugador 'JG088', 'Jomal Williams', '1.70', '60kg', '1994-04-28', 'Delantero', 'TTG'
EXEC sp_insertarjugador 'JG089', 'Marvin Joya', '1.70', '60kg', '1998-03-12', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG090', 'Ricardo Da Silva', '1.70', '60kg', '1986-12-31', 'Delantero', 'BRA'
EXEC sp_insertarjugador 'JG091', 'Luis Martinez', '1.70', '60kg', '1997-12-01', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG092', 'Marlon Juarez', '1.70', '60kg', '1996-01-02', 'Delantero', 'ESA'

--Firpo
EXEC sp_insertarjugador 'JG093', 'Matias Lavandeira', '1.70', '60kg','1985-09-11', 'Portero', 'ARG'
EXEC sp_insertarjugador 'JG094', 'Carlos Márquez', '1.70', '60kg', '1996-09-27', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG095', 'Edwin Escobar', '1.70', '60kg', '1983-01-20', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG096', 'Eduardo Acosta', '1.70', '60kg', '1996-08-07', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG097', 'Giovanni Zavaleta', '1.70', '60kg', '1994-09-27', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG098', 'Mario Martínez', '1.70', '60kg', '1990-04-10', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG099', 'Tardelis González', '1.70', '60kg', '1988-10-31', 'Defensa', 'COL'
EXEC sp_insertarjugador 'JG100', 'William Mancia', '1.70', '60kg', '1987-11-22', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG101', 'Christopher Galeas', '1.70', '60kg', '1993-01-03', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG102', 'Diego Chavarría', '1.70', '60kg', '1990-02-28', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG103', 'Denilson Rosales', '1.70', '60kg', '1997-08-17', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG104', 'Ever Flores', '1.70', '60kg','1998-01-03', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG105', 'Gabriel Nuñez', '1.70', '60kg', '1994-01-24', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG106', 'Jefferson Polio', '1.70', '60kg', '1995-04-03', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG107', 'Lizandro Claros', '1.70', '60kg', '1998-01-25', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG108', 'Nelson Barahona', '1.70', '60kg', '1987-11-22', 'Centrocampista', 'PAN'
EXEC sp_insertarjugador 'JG109', 'Romeo Monteagudo', '1.70', '60kg', '1985-04-29', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG110', 'Ronald Pérez', '1.70', '60kg', '1996-10-22', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG111', 'Abelardo Escobar', '1.70', '60kg', '1996-07-05', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG112', 'Armando Polo', '1.70', '60kg', '1990-04-02', 'Delantero', 'PAN'
EXEC sp_insertarjugador 'JG113', 'André Vasconcelos', '1.70', '60kg', '1995-05-26', 'Delantero', 'BRA'
EXEC sp_insertarjugador 'JG114', 'Chistopher Ramirez', '1.70', '60kg', '1990-02-02', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG115', 'Edgar Cruz', '1.70', '60kg', '1993-11-20', 'Delantero', 'ESA'

--Limeño
EXEC sp_insertarjugador 'JG116', 'Abiel Aguilera', '1.76', '60kg','1988-08-29', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG117', 'William Torres', '1.80', '60kg','1993-02-08', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG118', 'Salvador Morales', '1.80', '60kg','1979-10-25', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG119', 'Christian Portillo', '1.74', '60kg','1985-01-18', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG120', 'Mario Machado', '1.79', '60kg','1990-07-17', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG121', 'Walter Guevara', '1.73', '60kg','1992-11-13', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG122', 'Hugo Oviedo', '1.77', '60kg','1992-12-14', 'Defensa', 'PAN'
EXEC sp_insertarjugador 'JG123', 'Samuel Giménez', '1.79', '60kg','1991-02-10', 'Defensa', 'PAR'
EXEC sp_insertarjugador 'JG124', 'Éver Acosta', '1.77', '60kg','1998-08-28', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG125', 'Arnulfo Beitar', '1.87', '60kg','1988-11-11', 'Defensa', 'COL'
EXEC sp_insertarjugador 'JG126', 'Luis Méndez', '1.73', '60kg','1997-10-29', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG127', 'Francisco Álvarez', '1.67', '60kg','1982-11-24', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG128', 'Christopher Galea', '1.77', '60kg','1993-01-03', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG129', 'Ramón Viera', '1.77', '60kg','1993-08-30', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG130', 'Ramón Rodríguez', '1.73', '60kg','1997-02-12', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG131', 'Ever Rodríguez', '1.73', '60kg','1997-02-12', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG132', 'Kevin Oviedo', '1.72', '60kg','1998-05-18', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG133', 'Blas Lizama', '1.78', '60kg','1994-04-11', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG134', 'William Canales', '1.73', '60kg','1995-02-18', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG135', 'Edwin Sánchez', '1.72', '60kg','1990-02-21', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG136', 'Isidro Gutiérrez', '1.73', '60kg','1989-10-21', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG137', 'Jeison Quiñonez', '1.80', '60kg','1986-09-17', 'Delantero', 'COL'
EXEC sp_insertarjugador 'JG138', 'Harold Alas', '1.82', '60kg','1989-09-19', 'Delantero', 'ESA'

--Santa Tecla
EXEC sp_insertarjugador 'JG139', 'Jesús Dautt', '1.77', '60kg','1990-03-03', 'Portero', 'MEX'
EXEC sp_insertarjugador 'JG140', 'Wilberth Hernández', '1.76', '60kg','1994-04-05', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG141', 'Geovanni Ávila', '1.87', '60kg','2000-03-21', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG142', 'Wálter Torres', '1.72', '60kg','1998-04-19', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG143', 'Yosimar Qiñónez', '1.89', '60kg','1988-08-04', 'Defensa', 'COL'
EXEC sp_insertarjugador 'JG144', 'Alexander Mendoza', '1.78', '60kg','1990-06-04', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG145', 'josué Santos', '1.80', '60kg','1997-06-12', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG146', 'Gerardo García', '1.71', '60kg','1999-05-31', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG147', 'Elmer Escobar', '1.72', '60kg','1998-02-19', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG148', 'Andrés Hernández', '1.70', '60kg','2000-02-20', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG149', 'Iván Barahona', '1.81', '60kg','1995-03-27', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG150', 'Rodrigo Rivera', '1.74', '60kg','1992-07-10', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG151', 'Fernando Quintanilla', '1.75', '60kg','1998-01-02', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG152', 'Kevin Reyes', '1.75', '60kg','1999-08-28', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG153', 'Marlón Cornejo', '1.83', '60kg','1993-09-14', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG154', 'Álvaro Lizama', '1.71', '60kg','1995-05-24', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG155', 'Juan Aimar', '1.76', '60kg','1988-10-26', 'Centrocampista', 'ARG'
EXEC sp_insertarjugador 'JG156', 'Ángel Callejas', '1.71', '60kg','1999-01-14', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG157', 'Henry Argueta', '1.73', '60kg','1997-09-19', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG158', 'Santos Guzmán', '1.77', '60kg','1993-05-23', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG159', 'Óscar Paz', '1.72', '60kg','1998-03-14', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG160', 'Wilmar Cruz', '1.71', '60kg','1993-07-27', 'Delantero', 'COL'
EXEC sp_insertarjugador 'JG161', 'David Díaz', '1.83', '60kg','1992-10-20', 'Delantero', 'ESA'

--Chalatenango
EXEC sp_insertarjugador 'JG162', 'Daniel Arroyo', '1.82', '60kg','1990-01-28', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG163', 'Émerson Lalín', '1.82', '60kg','1994-01-18', 'Defensa', 'HON'
EXEC sp_insertarjugador 'JG164', 'Raúl Cruz', '1.76', '60kg','1993-12-08', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG165', 'Fidel Jiménez', '1.73', '60kg','1992-01-29', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG166', 'Miguel Lemus', '1.62', '60kg','1993-10-26', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG167', 'Juan Granados', '1.74', '60kg','1981-01-05', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG168', 'Francisco Posada', '1.72', '60kg','1997-12-20', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG169', 'Boris Morales', '1.72', '60kg','1998-08-13', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG170', 'Brayan Landaverde', '1.73', '60kg','1997-04-01', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG171', 'Rodrigo Herrera', '1.71', '60kg','1999-05-08', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG172', 'Peter Domínguez', '1.75', '60kg','1990-10-28', 'Centrocampista', 'COL'
EXEC sp_insertarjugador 'JG173', 'Félix Sánchez', '1.80', '60kg','1990-07-16', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG174', 'Henry Reyes', '1.74', '60kg','1992-04-03', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG175', 'Jairo Enríquez', '1.73', '60kg','1993-08-31', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG176', 'Rubén Robledo', '1.76', '60kg','1989-12-19', 'Delantero', 'COL'
EXEC sp_insertarjugador 'JG177', 'Carlos Félix', '1.85', '60kg','1991-05-14', 'Delantero', 'MEX'
EXEC sp_insertarjugador 'JG178', 'Luis Paradela', '1.69', '60kg','1997-01-21', 'Delantero', 'CUB'
EXEC sp_insertarjugador 'JG179', 'josé Ángel Peña', '1.86', '60kg','1994-12-10', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG180', 'Ezequiel Rivas', '1.76', '60kg','1998-05-20', 'Delantero', 'ESA'

--Once Deportivo
EXEC sp_insertarjugador 'JG181', 'José Luis Gonzáles', '1.76', '60kg','1984-06-12', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG182', 'Ismael Valladares', '1.79', '60kg','1986-09-26', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG183', 'Luis Copete', '1.87', '60kg','1989-02-12', 'Defensa', 'COL'
EXEC sp_insertarjugador 'JG184', 'Julio Sibrián', '1.74', '60kg','1996-07-17', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG185', 'Gerardo Guirola', '1.75', '60kg','1997-06-21', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG186', 'Kevin Menjívar', '1.73', '60kg','2000-09-23', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG187', 'Carlos Araujo', '1.77', '60kg','1982-10-12', 'Centrocampista', 'BRA'
EXEC sp_insertarjugador 'JG188', 'Franklin Turcios', '1.73', '60kg','1997-06-11', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG189', 'Abdiel Macea', '1.72', '60kg','1991-04-05', 'Centrocampista', 'PAN'
EXEC sp_insertarjugador 'JG190', 'Cristhian Sánchez', '1.75', '60kg','1983-05-15', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG191', 'Diego Peraza', '1.72', '60kg','1992-06-19', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG192', 'Camilo Mejía', '1.77', '60kg','1981-08-30', 'Centrocampista', 'COL'
EXEC sp_insertarjugador 'JG193', 'Fernando Castillo', '1.70', '60kg','1997-07-09', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG194', 'Elvin Alvarado', '1.73', '60kg','1998-08-23', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG195', 'Gilberto Baires', '1.65', '60kg','1990-04-01', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG196', 'Daley Mena', '1.76', '60kg','1985-02-07', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG197', 'Mario Deras', '1.73', '60kg','1978-12-29', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG198', 'Marco Granados', '1.83', '60kg','1996-09-29', 'Delantero', 'MEX'
EXEC sp_insertarjugador 'JG199', 'David Rugamas', '1.71', '60kg','1990-02-17', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG200', 'Brayan Paz', '1.76', '60kg','1997-11-14', 'Delantero', 'ESA'

--Atlético Marte
EXEC sp_insertarjugador 'JG201', 'Luis Tatuaca', '1.85', '60kg','1990-07-06', 'Portero', 'GUT'
EXEC sp_insertarjugador 'JG202', 'José Alvarado', '1.78', '60kg','1980-03-23', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG203', 'Josué Cheguen', '1.73', '60kg','1996-12-08', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG204', 'Argenis Alba', '1.74', '60kg','1996-04-02', 'Defensa', 'COL'
EXEC sp_insertarjugador 'JG205', 'Óscar Menjívar', '1.82', '60kg','1997-07-07', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG206', 'William Pinto', '1.70', '60kg','2000-07-25', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG207', 'Kevin Barahona', '1.69', '60kg','1997-10-01', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG208', 'Eduardo Merino', '1.74', '60kg','1995-12-21', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG209', 'Edgardo Mira', '1.74', '60kg','1993-03-10', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG210', 'Daniel Guzmán', '1.78', '60kg','1992-06-28', 'Delantero', 'MEX'
EXEC sp_insertarjugador 'JG211', 'Bryan Pérez', '1.74', '60kg','1996-03-04', 'Delantero', 'ESA'
EXEC sp_insertarjugador 'JG212', 'Rolando Morales', '1.80', '60kg','1994-03-04', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG213', 'Rodrigo Artiga', '1.90', '60kg','1999-03-04', 'Portero', 'ESA'
EXEC sp_insertarjugador 'JG214', 'Carlos Anzora', '1.60', '60kg','1992-03-04', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG215', 'Diego Chévez', '1.65', '60kg','1996-03-04', 'Defensa', 'ESA'
EXEC sp_insertarjugador 'JG216', 'José Henríquez Leal', '1.70', '60kg','1996-03-04', 'Deefensa', 'ESA'
EXEC sp_insertarjugador 'JG217', 'Yohalin Palacios', '1.82', '60kg','1996-03-04', 'Defensa', 'COL'
EXEC sp_insertarjugador 'JG218', 'Héctor Crespín', '1.74', '60kg','1996-03-04', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG219', 'Mario González', '1.74', '60kg','1996-03-04', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG220', 'Diego Jiménez Hunter', '1.69', '60kg','1996-03-04', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG221', 'Hugo López', '1.80', '60kg','1996-03-04', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG222', 'Fernando Montes', '1.65', '60kg','1996-03-04', 'Centrocampista', 'ESA'
EXEC sp_insertarjugador 'JG223', 'Edgar Valladares', '1.70', '60kg','1996-03-04', 'Delantero', 'ESA'

SELECT * FROM Administracion.Jugador;
GO

--TABLA Detalle_Equipo_Jugador
--Alianza
EXEC sp_Insertar_DetalleEquipoJugador 'PER001', '2020-11-23', '2024-12-24', 'EQ01', 'JG001';
EXEC sp_Insertar_DetalleEquipoJugador 'PER002', '2020-11-01', '2024-12-21', 'EQ01', 'JG002';
EXEC sp_Insertar_DetalleEquipoJugador 'PER003', '2020-11-08', '2024-12-21', 'EQ01', 'JG003';
EXEC sp_Insertar_DetalleEquipoJugador 'PER004', '2020-11-22', '2024-12-21', 'EQ01', 'JG004';
EXEC sp_Insertar_DetalleEquipoJugador 'PER005', '2020-11-25', '2024-12-27', 'EQ01', 'JG005';
EXEC sp_Insertar_DetalleEquipoJugador 'PER006', '2020-11-10', '2024-12-27', 'EQ01', 'JG006';
EXEC sp_Insertar_DetalleEquipoJugador 'PER007', '2020-11-11', '2024-12-27', 'EQ01', 'JG007';
EXEC sp_Insertar_DetalleEquipoJugador 'PER008', '2020-11-14', '2024-12-31', 'EQ01', 'JG008';
EXEC sp_Insertar_DetalleEquipoJugador 'PER009', '2020-11-15', '2024-12-31', 'EQ01', 'JG009';
EXEC sp_Insertar_DetalleEquipoJugador 'PER010', '2020-11-16', '2024-12-31', 'EQ01', 'JG010';
EXEC sp_Insertar_DetalleEquipoJugador 'PER011', '2020-11-18', '2024-12-25', 'EQ01', 'JG011';
EXEC sp_Insertar_DetalleEquipoJugador 'PER012', '2020-11-03', '2024-12-25', 'EQ01', 'JG012';
EXEC sp_Insertar_DetalleEquipoJugador 'PER013', '2020-11-07', '2024-12-25', 'EQ01', 'JG013';
EXEC sp_Insertar_DetalleEquipoJugador 'PER014', '2020-11-09', '2024-12-08', 'EQ01', 'JG014';
EXEC sp_Insertar_DetalleEquipoJugador 'PER015', '2020-11-12', '2024-12-08', 'EQ01', 'JG015';
EXEC sp_Insertar_DetalleEquipoJugador 'PER016', '2020-11-16', '2024-12-08', 'EQ01', 'JG016';
EXEC sp_Insertar_DetalleEquipoJugador 'PER017', '2020-11-22', '2024-12-07', 'EQ01', 'JG017';
EXEC sp_Insertar_DetalleEquipoJugador 'PER018', '2020-11-20', '2024-12-07', 'EQ01', 'JG018';
EXEC sp_Insertar_DetalleEquipoJugador 'PER018', '2020-11-08', '2024-12-07', 'EQ01', 'JG019';
EXEC sp_Insertar_DetalleEquipoJugador 'PER020', '2020-11-17', '2024-12-20', 'EQ01', 'JG020';
EXEC sp_Insertar_DetalleEquipoJugador 'PER021', '2020-11-09', '2024-12-20', 'EQ01', 'JG021';
EXEC sp_Insertar_DetalleEquipoJugador 'PER022', '2020-11-13', '2024-12-20', 'EQ01', 'JG022';
EXEC sp_Insertar_DetalleEquipoJugador 'PER023', '2020-11-19', '2024-12-24', 'EQ01', 'JG023';
--FAS
EXEC sp_Insertar_DetalleEquipoJugador 'PER024', '2020-11-01', '2024-12-14', 'EQ02', 'JG024';
EXEC sp_Insertar_DetalleEquipoJugador 'PER025', '2020-11-20', '2024-12-18', 'EQ02', 'JG025';
EXEC sp_Insertar_DetalleEquipoJugador 'PER026', '2020-11-19', '2024-12-09', 'EQ02', 'JG026';
EXEC sp_Insertar_DetalleEquipoJugador 'PER027', '2020-11-03', '2024-12-04', 'EQ02', 'JG027';
EXEC sp_Insertar_DetalleEquipoJugador 'PER028', '2020-11-19', '2024-12-19', 'EQ02', 'JG028';
EXEC sp_Insertar_DetalleEquipoJugador 'PER029', '2020-11-09', '2024-12-29', 'EQ02', 'JG029';
EXEC sp_Insertar_DetalleEquipoJugador 'PER030', '2020-11-07', '2024-12-13', 'EQ02', 'JG030';
EXEC sp_Insertar_DetalleEquipoJugador 'PER031', '2020-11-24', '2024-12-21', 'EQ02', 'JG031';
EXEC sp_Insertar_DetalleEquipoJugador 'PER032', '2020-11-05', '2024-12-27', 'EQ02', 'JG032';
EXEC sp_Insertar_DetalleEquipoJugador 'PER033', '2020-11-15', '2024-12-17', 'EQ02', 'JG033';
EXEC sp_Insertar_DetalleEquipoJugador 'PER034', '2020-11-25', '2024-12-07', 'EQ02', 'JG034';
EXEC sp_Insertar_DetalleEquipoJugador 'PER035', '2020-11-08', '2024-12-28', 'EQ02', 'JG035';
EXEC sp_Insertar_DetalleEquipoJugador 'PER036', '2020-11-18', '2024-12-08', 'EQ02', 'JG036';
EXEC sp_Insertar_DetalleEquipoJugador 'PER037', '2020-11-28', '2024-12-18', 'EQ02', 'JG037';
EXEC sp_Insertar_DetalleEquipoJugador 'PER038', '2020-11-24', '2024-12-04', 'EQ02', 'JG038';
EXEC sp_Insertar_DetalleEquipoJugador 'PER039', '2020-11-04', '2024-12-24', 'EQ02', 'JG039';
EXEC sp_Insertar_DetalleEquipoJugador 'PER040', '2020-11-24', '2024-12-14', 'EQ02', 'JG040';
EXEC sp_Insertar_DetalleEquipoJugador 'PER041', '2020-11-14', '2024-12-04', 'EQ02', 'JG041';
EXEC sp_Insertar_DetalleEquipoJugador 'PER042', '2020-11-29', '2024-12-09', 'EQ02', 'JG042';
EXEC sp_Insertar_DetalleEquipoJugador 'PER043', '2020-11-09', '2024-12-19', 'EQ02', 'JG043';
EXEC sp_Insertar_DetalleEquipoJugador 'PER044', '2020-11-19', '2024-12-29', 'EQ02', 'JG044';
EXEC sp_Insertar_DetalleEquipoJugador 'PER045', '2020-11-13', '2024-12-07', 'EQ02', 'JG045';
EXEC sp_Insertar_DetalleEquipoJugador 'PER046', '2020-11-16', '2024-12-18', 'EQ02', 'JG046';

--Aguila 
EXEC sp_Insertar_DetalleEquipoJugador 'PER047', '2020-11-14', '2024-12-23', 'EQ03', 'JG047';
EXEC sp_Insertar_DetalleEquipoJugador 'PER048', '2020-11-25', '2024-12-11', 'EQ03', 'JG048';
EXEC sp_Insertar_DetalleEquipoJugador 'PER049', '2020-11-25', '2024-12-11', 'EQ03', 'JG049';
EXEC sp_Insertar_DetalleEquipoJugador 'PER050', '2020-11-25', '2024-12-11', 'EQ03', 'JG050';
EXEC sp_Insertar_DetalleEquipoJugador 'PER051', '2020-11-25', '2024-12-11', 'EQ03', 'JG051';
EXEC sp_Insertar_DetalleEquipoJugador 'PER052', '2020-11-25', '2024-12-11', 'EQ03', 'JG052';
EXEC sp_Insertar_DetalleEquipoJugador 'PER053', '2020-11-25', '2024-12-11', 'EQ03', 'JG053';
EXEC sp_Insertar_DetalleEquipoJugador 'PER054', '2020-11-25', '2024-12-11', 'EQ03', 'JG054';
EXEC sp_Insertar_DetalleEquipoJugador 'PER055', '2020-11-25', '2024-12-11', 'EQ03', 'JG055';
EXEC sp_Insertar_DetalleEquipoJugador 'PER056', '2020-11-25', '2024-12-11', 'EQ03', 'JG056';
EXEC sp_Insertar_DetalleEquipoJugador 'PER057', '2020-11-25', '2024-12-11', 'EQ03', 'JG057';
EXEC sp_Insertar_DetalleEquipoJugador 'PER058', '2020-11-25', '2024-12-11', 'EQ03', 'JG058';
EXEC sp_Insertar_DetalleEquipoJugador 'PER059', '2020-11-25', '2024-12-11', 'EQ03', 'JG059';
EXEC sp_Insertar_DetalleEquipoJugador 'PER060', '2020-11-25', '2024-12-11', 'EQ03', 'JG060';
EXEC sp_Insertar_DetalleEquipoJugador 'PER061', '2020-11-25', '2024-12-11', 'EQ03', 'JG061';
EXEC sp_Insertar_DetalleEquipoJugador 'PER062', '2020-11-25', '2024-12-11', 'EQ03', 'JG062';
EXEC sp_Insertar_DetalleEquipoJugador 'PER063', '2020-11-25', '2024-12-11', 'EQ03', 'JG063';
EXEC sp_Insertar_DetalleEquipoJugador 'PER064', '2020-11-25', '2024-12-11', 'EQ03', 'JG064';
EXEC sp_Insertar_DetalleEquipoJugador 'PER065', '2020-11-25', '2024-12-11', 'EQ03', 'JG065';
EXEC sp_Insertar_DetalleEquipoJugador 'PER066', '2020-11-25', '2024-12-11', 'EQ03', 'JG066';
EXEC sp_Insertar_DetalleEquipoJugador 'PER067', '2020-11-25', '2024-12-11', 'EQ03', 'JG067';
EXEC sp_Insertar_DetalleEquipoJugador 'PER068', '2020-11-25', '2024-12-11', 'EQ03', 'JG068';
EXEC sp_Insertar_DetalleEquipoJugador 'PER069', '2020-11-25', '2024-12-11', 'EQ03', 'JG069';

--Isidro
EXEC sp_Insertar_DetalleEquipoJugador 'PER070', '2020-11-14', '2024-12-23', 'EQ04', 'JG070';
EXEC sp_Insertar_DetalleEquipoJugador 'PER071', '2020-11-14', '2024-12-23', 'EQ04', 'JG071';
EXEC sp_Insertar_DetalleEquipoJugador 'PER072', '2020-11-14', '2024-12-23', 'EQ04', 'JG072';
EXEC sp_Insertar_DetalleEquipoJugador 'PER073', '2020-11-14', '2024-12-23', 'EQ04', 'JG073';
EXEC sp_Insertar_DetalleEquipoJugador 'PER074', '2020-11-14', '2024-12-23', 'EQ04', 'JG074';
EXEC sp_Insertar_DetalleEquipoJugador 'PER075', '2020-11-14', '2024-12-23', 'EQ04', 'JG075';
EXEC sp_Insertar_DetalleEquipoJugador 'PER076', '2020-11-14', '2024-12-23', 'EQ04', 'JG076';
EXEC sp_Insertar_DetalleEquipoJugador 'PER077', '2020-11-14', '2024-12-23', 'EQ04', 'JG077';
EXEC sp_Insertar_DetalleEquipoJugador 'PER078', '2020-11-14', '2024-12-23', 'EQ04', 'JG078';
EXEC sp_Insertar_DetalleEquipoJugador 'PER079', '2020-11-14', '2024-12-23', 'EQ04', 'JG079';
EXEC sp_Insertar_DetalleEquipoJugador 'PER080', '2020-11-14', '2024-12-23', 'EQ04', 'JG080';
EXEC sp_Insertar_DetalleEquipoJugador 'PER081', '2020-11-14', '2024-12-23', 'EQ04', 'JG081';
EXEC sp_Insertar_DetalleEquipoJugador 'PER082', '2020-11-14', '2024-12-23', 'EQ04', 'JG082';
EXEC sp_Insertar_DetalleEquipoJugador 'PER083', '2020-11-14', '2024-12-23', 'EQ04', 'JG083';
EXEC sp_Insertar_DetalleEquipoJugador 'PER084', '2020-11-14', '2024-12-23', 'EQ04', 'JG084';
EXEC sp_Insertar_DetalleEquipoJugador 'PER085', '2020-11-14', '2024-12-23', 'EQ04', 'JG085';
EXEC sp_Insertar_DetalleEquipoJugador 'PER086', '2020-11-14', '2024-12-23', 'EQ04', 'JG086';
EXEC sp_Insertar_DetalleEquipoJugador 'PER087', '2020-11-14', '2024-12-23', 'EQ04', 'JG087';
EXEC sp_Insertar_DetalleEquipoJugador 'PER088', '2020-11-14', '2024-12-23', 'EQ04', 'JG088';
EXEC sp_Insertar_DetalleEquipoJugador 'PER089', '2020-11-14', '2024-12-23', 'EQ04', 'JG089';
EXEC sp_Insertar_DetalleEquipoJugador 'PER090', '2020-11-14', '2024-12-23', 'EQ04', 'JG090';
EXEC sp_Insertar_DetalleEquipoJugador 'PER091', '2020-11-14', '2024-12-23', 'EQ04', 'JG091';
EXEC sp_Insertar_DetalleEquipoJugador 'PER092', '2020-11-14', '2024-12-23', 'EQ04', 'JG092';

--Firpo
EXEC sp_Insertar_DetalleEquipoJugador 'PER093', '2020-11-14', '2024-12-23', 'EQ05', 'JG093';
EXEC sp_Insertar_DetalleEquipoJugador 'PER094', '2020-11-14', '2024-12-23', 'EQ05', 'JG094';
EXEC sp_Insertar_DetalleEquipoJugador 'PER095', '2020-11-14', '2024-12-23', 'EQ05', 'JG095';
EXEC sp_Insertar_DetalleEquipoJugador 'PER096', '2020-11-14', '2024-12-23', 'EQ05', 'JG096';
EXEC sp_Insertar_DetalleEquipoJugador 'PER097', '2020-11-14', '2024-12-23', 'EQ05', 'JG097';
EXEC sp_Insertar_DetalleEquipoJugador 'PER098', '2020-11-14', '2024-12-23', 'EQ05', 'JG098';
EXEC sp_Insertar_DetalleEquipoJugador 'PER099', '2020-11-14', '2024-12-23', 'EQ05', 'JG099';
EXEC sp_Insertar_DetalleEquipoJugador 'PER100', '2020-11-14', '2024-12-23', 'EQ05', 'JG100';
EXEC sp_Insertar_DetalleEquipoJugador 'PER101', '2020-11-14', '2024-12-23', 'EQ05', 'JG101';
EXEC sp_Insertar_DetalleEquipoJugador 'PER102', '2020-11-14', '2024-12-23', 'EQ05', 'JG102';
EXEC sp_Insertar_DetalleEquipoJugador 'PER103', '2020-11-14', '2024-12-23', 'EQ05', 'JG103';
EXEC sp_Insertar_DetalleEquipoJugador 'PER104', '2020-11-14', '2024-12-23', 'EQ05', 'JG104';
EXEC sp_Insertar_DetalleEquipoJugador 'PER105', '2020-11-14', '2024-12-23', 'EQ05', 'JG105';
EXEC sp_Insertar_DetalleEquipoJugador 'PER106', '2020-11-14', '2024-12-23', 'EQ05', 'JG106';
EXEC sp_Insertar_DetalleEquipoJugador 'PER107', '2020-11-14', '2024-12-23', 'EQ05', 'JG107';
EXEC sp_Insertar_DetalleEquipoJugador 'PER108', '2020-11-14', '2024-12-23', 'EQ05', 'JG108';
EXEC sp_Insertar_DetalleEquipoJugador 'PER109', '2020-11-14', '2024-12-23', 'EQ05', 'JG109';
EXEC sp_Insertar_DetalleEquipoJugador 'PER110', '2020-11-14', '2024-12-23', 'EQ05', 'JG110';
EXEC sp_Insertar_DetalleEquipoJugador 'PER111', '2020-11-14', '2024-12-23', 'EQ05', 'JG111';
EXEC sp_Insertar_DetalleEquipoJugador 'PER112', '2020-11-14', '2024-12-23', 'EQ05', 'JG112';
EXEC sp_Insertar_DetalleEquipoJugador 'PER113', '2020-11-14', '2024-12-23', 'EQ05', 'JG113';
EXEC sp_Insertar_DetalleEquipoJugador 'PER114', '2020-11-14', '2024-12-23', 'EQ05', 'JG114';
EXEC sp_Insertar_DetalleEquipoJugador 'PER115', '2020-11-14', '2024-12-23', 'EQ05', 'JG115';

--Limeño
EXEC sp_Insertar_DetalleEquipoJugador 'PER116', '2020-11-14', '2024-12-23', 'EQ06', 'JG116';
EXEC sp_Insertar_DetalleEquipoJugador 'PER117', '2020-11-14', '2024-12-23', 'EQ06', 'JG117';
EXEC sp_Insertar_DetalleEquipoJugador 'PER118', '2020-11-14', '2024-12-23', 'EQ06', 'JG118';
EXEC sp_Insertar_DetalleEquipoJugador 'PER119', '2020-11-14', '2024-12-23', 'EQ05', 'JG119';
EXEC sp_Insertar_DetalleEquipoJugador 'PER120', '2020-11-14', '2024-12-23', 'EQ05', 'JG120';
EXEC sp_Insertar_DetalleEquipoJugador 'PER121', '2020-11-14', '2024-12-23', 'EQ05', 'JG121';
EXEC sp_Insertar_DetalleEquipoJugador 'PER122', '2020-11-14', '2024-12-23', 'EQ05', 'JG122';
EXEC sp_Insertar_DetalleEquipoJugador 'PER123', '2020-11-14', '2024-12-23', 'EQ05', 'JG123';
EXEC sp_Insertar_DetalleEquipoJugador 'PER124', '2020-11-14', '2024-12-23', 'EQ05', 'JG124';
EXEC sp_Insertar_DetalleEquipoJugador 'PER125', '2020-11-14', '2024-12-23', 'EQ05', 'JG125';
EXEC sp_Insertar_DetalleEquipoJugador 'PER126', '2020-11-14', '2024-12-23', 'EQ05', 'JG126';
EXEC sp_Insertar_DetalleEquipoJugador 'PER127', '2020-11-14', '2024-12-23', 'EQ05', 'JG127';
EXEC sp_Insertar_DetalleEquipoJugador 'PER128', '2020-11-14', '2024-12-23', 'EQ05', 'JG128';
EXEC sp_Insertar_DetalleEquipoJugador 'PER129', '2020-11-14', '2024-12-23', 'EQ05', 'JG129';
EXEC sp_Insertar_DetalleEquipoJugador 'PER130', '2020-11-14', '2024-12-23', 'EQ05', 'JG130';
EXEC sp_Insertar_DetalleEquipoJugador 'PER131', '2020-11-14', '2024-12-23', 'EQ05', 'JG131';
EXEC sp_Insertar_DetalleEquipoJugador 'PER132', '2020-11-14', '2024-12-23', 'EQ05', 'JG132';
EXEC sp_Insertar_DetalleEquipoJugador 'PER133', '2020-11-14', '2024-12-23', 'EQ05', 'JG133';
EXEC sp_Insertar_DetalleEquipoJugador 'PER134', '2020-11-14', '2024-12-23', 'EQ05', 'JG134';
EXEC sp_Insertar_DetalleEquipoJugador 'PER135', '2020-11-14', '2024-12-23', 'EQ05', 'JG135';
EXEC sp_Insertar_DetalleEquipoJugador 'PER136', '2020-11-14', '2024-12-23', 'EQ05', 'JG136';
EXEC sp_Insertar_DetalleEquipoJugador 'PER137', '2020-11-14', '2024-12-23', 'EQ05', 'JG137';
EXEC sp_Insertar_DetalleEquipoJugador 'PER138', '2020-11-14', '2024-12-23', 'EQ05', 'JG138';

--Santa Tecla
EXEC sp_Insertar_DetalleEquipoJugador 'PER139', '2020-11-14', '2024-12-23', 'EQ06', 'JG139';
EXEC sp_Insertar_DetalleEquipoJugador 'PER140', '2020-11-14', '2024-12-23', 'EQ06', 'JG140';
EXEC sp_Insertar_DetalleEquipoJugador 'PER141', '2020-11-14', '2024-12-23', 'EQ06', 'JG141';
EXEC sp_Insertar_DetalleEquipoJugador 'PER142', '2020-11-14', '2024-12-23', 'EQ05', 'JG142';
EXEC sp_Insertar_DetalleEquipoJugador 'PER143', '2020-11-14', '2024-12-23', 'EQ05', 'JG143';
EXEC sp_Insertar_DetalleEquipoJugador 'PER144', '2020-11-14', '2024-12-23', 'EQ05', 'JG144';
EXEC sp_Insertar_DetalleEquipoJugador 'PER145', '2020-11-14', '2024-12-23', 'EQ05', 'JG145';
EXEC sp_Insertar_DetalleEquipoJugador 'PER146', '2020-11-14', '2024-12-23', 'EQ05', 'JG146';
EXEC sp_Insertar_DetalleEquipoJugador 'PER147', '2020-11-14', '2024-12-23', 'EQ05', 'JG147';
EXEC sp_Insertar_DetalleEquipoJugador 'PER148', '2020-11-14', '2024-12-23', 'EQ05', 'JG148';
EXEC sp_Insertar_DetalleEquipoJugador 'PER149', '2020-11-14', '2024-12-23', 'EQ05', 'JG149';
EXEC sp_Insertar_DetalleEquipoJugador 'PER150', '2020-11-14', '2024-12-23', 'EQ05', 'JG150';
EXEC sp_Insertar_DetalleEquipoJugador 'PER151', '2020-11-14', '2024-12-23', 'EQ05', 'JG151';
EXEC sp_Insertar_DetalleEquipoJugador 'PER152', '2020-11-14', '2024-12-23', 'EQ05', 'JG152';
EXEC sp_Insertar_DetalleEquipoJugador 'PER153', '2020-11-14', '2024-12-23', 'EQ05', 'JG153';
EXEC sp_Insertar_DetalleEquipoJugador 'PER154', '2020-11-14', '2024-12-23', 'EQ05', 'JG154';
EXEC sp_Insertar_DetalleEquipoJugador 'PER155', '2020-11-14', '2024-12-23', 'EQ05', 'JG155';
EXEC sp_Insertar_DetalleEquipoJugador 'PER156', '2020-11-14', '2024-12-23', 'EQ05', 'JG156';
EXEC sp_Insertar_DetalleEquipoJugador 'PER157', '2020-11-14', '2024-12-23', 'EQ05', 'JG157';
EXEC sp_Insertar_DetalleEquipoJugador 'PER158', '2020-11-14', '2024-12-23', 'EQ05', 'JG158';
EXEC sp_Insertar_DetalleEquipoJugador 'PER159', '2020-11-14', '2024-12-23', 'EQ05', 'JG159';
EXEC sp_Insertar_DetalleEquipoJugador 'PER160', '2020-11-14', '2024-12-23', 'EQ05', 'JG160';
EXEC sp_Insertar_DetalleEquipoJugador 'PER161', '2020-11-14', '2024-12-23', 'EQ05', 'JG161';

--Chalatenango
EXEC sp_Insertar_DetalleEquipoJugador 'PER162', '2020-11-14', '2024-12-23', 'EQ06', 'JG162';
EXEC sp_Insertar_DetalleEquipoJugador 'PER163', '2020-11-14', '2024-12-23', 'EQ06', 'JG163';
EXEC sp_Insertar_DetalleEquipoJugador 'PER164', '2020-11-14', '2024-12-23', 'EQ06', 'JG164';
EXEC sp_Insertar_DetalleEquipoJugador 'PER165', '2020-11-14', '2024-12-23', 'EQ05', 'JG165';
EXEC sp_Insertar_DetalleEquipoJugador 'PER166', '2020-11-14', '2024-12-23', 'EQ05', 'JG166';
EXEC sp_Insertar_DetalleEquipoJugador 'PER167', '2020-11-14', '2024-12-23', 'EQ05', 'JG167';
EXEC sp_Insertar_DetalleEquipoJugador 'PER168', '2020-11-14', '2024-12-23', 'EQ05', 'JG168';
EXEC sp_Insertar_DetalleEquipoJugador 'PER169', '2020-11-14', '2024-12-23', 'EQ05', 'JG169';
EXEC sp_Insertar_DetalleEquipoJugador 'PER170', '2020-11-14', '2024-12-23', 'EQ05', 'JG170';
EXEC sp_Insertar_DetalleEquipoJugador 'PER171', '2020-11-14', '2024-12-23', 'EQ05', 'JG171';
EXEC sp_Insertar_DetalleEquipoJugador 'PER172', '2020-11-14', '2024-12-23', 'EQ05', 'JG172';
EXEC sp_Insertar_DetalleEquipoJugador 'PER173', '2020-11-14', '2024-12-23', 'EQ05', 'JG173';
EXEC sp_Insertar_DetalleEquipoJugador 'PER174', '2020-11-14', '2024-12-23', 'EQ05', 'JG174';
EXEC sp_Insertar_DetalleEquipoJugador 'PER175', '2020-11-14', '2024-12-23', 'EQ05', 'JG175';
EXEC sp_Insertar_DetalleEquipoJugador 'PER176', '2020-11-14', '2024-12-23', 'EQ05', 'JG176';
EXEC sp_Insertar_DetalleEquipoJugador 'PER177', '2020-11-14', '2024-12-23', 'EQ05', 'JG177';
EXEC sp_Insertar_DetalleEquipoJugador 'PER178', '2020-11-14', '2024-12-23', 'EQ05', 'JG178';
EXEC sp_Insertar_DetalleEquipoJugador 'PER179', '2020-11-14', '2024-12-23', 'EQ05', 'JG179';
EXEC sp_Insertar_DetalleEquipoJugador 'PER180', '2020-11-14', '2024-12-23', 'EQ05', 'JG180';

--Once Deportivo
EXEC sp_Insertar_DetalleEquipoJugador 'PER181', '2020-11-14', '2024-12-23', 'EQ06', 'JG181';
EXEC sp_Insertar_DetalleEquipoJugador 'PER182', '2020-11-14', '2024-12-23', 'EQ06', 'JG182';
EXEC sp_Insertar_DetalleEquipoJugador 'PER183', '2020-11-14', '2024-12-23', 'EQ06', 'JG183';
EXEC sp_Insertar_DetalleEquipoJugador 'PER184', '2020-11-14', '2024-12-23', 'EQ05', 'JG184';
EXEC sp_Insertar_DetalleEquipoJugador 'PER185', '2020-11-14', '2024-12-23', 'EQ05', 'JG185';
EXEC sp_Insertar_DetalleEquipoJugador 'PER186', '2020-11-14', '2024-12-23', 'EQ05', 'JG186';
EXEC sp_Insertar_DetalleEquipoJugador 'PER187', '2020-11-14', '2024-12-23', 'EQ05', 'JG187';
EXEC sp_Insertar_DetalleEquipoJugador 'PER188', '2020-11-14', '2024-12-23', 'EQ05', 'JG188';
EXEC sp_Insertar_DetalleEquipoJugador 'PER189', '2020-11-14', '2024-12-23', 'EQ05', 'JG189';
EXEC sp_Insertar_DetalleEquipoJugador 'PER190', '2020-11-14', '2024-12-23', 'EQ05', 'JG190';
EXEC sp_Insertar_DetalleEquipoJugador 'PER191', '2020-11-14', '2024-12-23', 'EQ05', 'JG191';
EXEC sp_Insertar_DetalleEquipoJugador 'PER192', '2020-11-14', '2024-12-23', 'EQ05', 'JG192';
EXEC sp_Insertar_DetalleEquipoJugador 'PER193', '2020-11-14', '2024-12-23', 'EQ05', 'JG193';
EXEC sp_Insertar_DetalleEquipoJugador 'PER194', '2020-11-14', '2024-12-23', 'EQ05', 'JG194';
EXEC sp_Insertar_DetalleEquipoJugador 'PER195', '2020-11-14', '2024-12-23', 'EQ05', 'JG195';
EXEC sp_Insertar_DetalleEquipoJugador 'PER196', '2020-11-14', '2024-12-23', 'EQ05', 'JG196';
EXEC sp_Insertar_DetalleEquipoJugador 'PER197', '2020-11-14', '2024-12-23', 'EQ05', 'JG197';
EXEC sp_Insertar_DetalleEquipoJugador 'PER198', '2020-11-14', '2024-12-23', 'EQ05', 'JG198';
EXEC sp_Insertar_DetalleEquipoJugador 'PER199', '2020-11-14', '2024-12-23', 'EQ05', 'JG199';
EXEC sp_Insertar_DetalleEquipoJugador 'PER200', '2020-11-14', '2024-12-23', 'EQ05', 'JG200';

--Atletico Marte
EXEC sp_Insertar_DetalleEquipoJugador 'PER201', '2020-11-14', '2024-12-23', 'EQ06', 'JG201';
EXEC sp_Insertar_DetalleEquipoJugador 'PER202', '2020-11-14', '2024-12-23', 'EQ06', 'JG202';
EXEC sp_Insertar_DetalleEquipoJugador 'PER203', '2020-11-14', '2024-12-23', 'EQ06', 'JG203';
EXEC sp_Insertar_DetalleEquipoJugador 'PER204', '2020-11-14', '2024-12-23', 'EQ05', 'JG204';
EXEC sp_Insertar_DetalleEquipoJugador 'PER205', '2020-11-14', '2024-12-23', 'EQ05', 'JG205';
EXEC sp_Insertar_DetalleEquipoJugador 'PER206', '2020-11-14', '2024-12-23', 'EQ05', 'JG206';
EXEC sp_Insertar_DetalleEquipoJugador 'PER207', '2020-11-14', '2024-12-23', 'EQ05', 'JG207';
EXEC sp_Insertar_DetalleEquipoJugador 'PER208', '2020-11-14', '2024-12-23', 'EQ05', 'JG208';
EXEC sp_Insertar_DetalleEquipoJugador 'PER209', '2020-11-14', '2024-12-23', 'EQ05', 'JG209';
EXEC sp_Insertar_DetalleEquipoJugador 'PER210', '2020-11-14', '2024-12-23', 'EQ05', 'JG210';
EXEC sp_Insertar_DetalleEquipoJugador 'PER211', '2020-11-14', '2024-12-23', 'EQ05', 'JG211';
EXEC sp_Insertar_DetalleEquipoJugador 'PER212', '2020-11-14', '2024-12-23', 'EQ05', 'JG212';
EXEC sp_Insertar_DetalleEquipoJugador 'PER213', '2020-11-14', '2024-12-23', 'EQ05', 'JG213';
EXEC sp_Insertar_DetalleEquipoJugador 'PER214', '2020-11-14', '2024-12-23', 'EQ05', 'JG214';
EXEC sp_Insertar_DetalleEquipoJugador 'PER215', '2020-11-14', '2024-12-23', 'EQ05', 'JG215';
EXEC sp_Insertar_DetalleEquipoJugador 'PER216', '2020-11-14', '2024-12-23', 'EQ05', 'JG216';
EXEC sp_Insertar_DetalleEquipoJugador 'PER217', '2020-11-14', '2024-12-23', 'EQ05', 'JG217';
EXEC sp_Insertar_DetalleEquipoJugador 'PER218', '2020-11-14', '2024-12-23', 'EQ05', 'JG218';
EXEC sp_Insertar_DetalleEquipoJugador 'PER219', '2020-11-14', '2024-12-23', 'EQ05', 'JG219';
EXEC sp_Insertar_DetalleEquipoJugador 'PER220', '2020-11-14', '2024-12-23', 'EQ05', 'JG220';
EXEC sp_Insertar_DetalleEquipoJugador 'PER221', '2020-11-14', '2024-12-23', 'EQ05', 'JG221';
EXEC sp_Insertar_DetalleEquipoJugador 'PER222', '2020-11-14', '2024-12-23', 'EQ05', 'JG222';
EXEC sp_Insertar_DetalleEquipoJugador 'PER223', '2020-11-14', '2024-12-23', 'EQ05', 'JG223';
SELECT * FROM Detalle_Equipo_Jugador;
GO


--TABLA POSICION
EXEC sp_Insertar_Posicion 'POS01','EQ01', 'CA01';
EXEC sp_Insertar_Posicion 'POS02','EQ02', 'CA01';
EXEC sp_Insertar_Posicion 'POS03','EQ03', 'CA01';
EXEC sp_Insertar_Posicion 'POS04','EQ04', 'CA01';
EXEC sp_Insertar_Posicion 'POS05','EQ05', 'CA01';
EXEC sp_Insertar_Posicion 'POS06','EQ06', 'CA01';
EXEC sp_Insertar_Posicion 'POS07','EQ07', 'CA01';
EXEC sp_Insertar_Posicion 'POS08','EQ08', 'CA01';
EXEC sp_Insertar_Posicion 'POS09','EQ09', 'CA01';
EXEC sp_Insertar_Posicion 'POS10','EQ10', 'CA01';
SELECT * FROM Tabla_De_Posicion
GO


--VISTA 1
GO
CREATE VIEW Vistas.Candelarizacion
AS
	select TOP 90 FechaPartido, HoraPartido,
	(select NombreEquipo from Administracion.Equipo where IdEquipo = P.EquipoVisitante) as [Equipo Visitante],
	(select NombreEquipo from Administracion.Equipo where IdEquipo = P.EquipoLocal) as [Equipo Local]
	from partido P order by FechaPartido

GO

select * from vistas.Candelarizacion
go

--VISTA 2 (Procedure)
create procedure candelarizacion_equipo
@IdEquipo varchar(20)
as
begin try
begin tran
	select FechaPartido, HoraPartido,
	(select NombreEquipo from Administracion.Equipo where IdEquipo = P.EquipoVisitante) as [Equipo Visitante],
	(select NombreEquipo from Administracion.Equipo where IdEquipo = P.EquipoLocal) as [Equipo Local]
	from partido P
	inner join Administracion.Equipo E on E.IdEquipo = P.EquipoLocal
	where EquipoLocal = @IdEquipo OR EquipoVisitante = @IdEquipo
	ORDER BY FechaPartido
	commit
end try
begin catch
rollback
print error_message()
end catch;
GO

EXEC candelarizacion_equipo 'EQ01'
GO

--VISTA 3
CREATE VIEW Vistas.Posiciones
AS
	SELECT TOP 10 E.NombreEquipo, T.PartidosJugados, T.Puntaje, T.PartidosGanados, T.PartidosEmpatados, T.PartidosPerdidos,
	T.GolesFavor, T.GolesContra, T.DiferenciaGoles 
	FROM Tabla_De_Posicion T INNER JOIN Administracion.Equipo E ON E.IdEquipo = T.IdEquipo
	WHERE IdCampania = 'CA01'
	ORDER BY Puntaje DESC,DiferenciaGoles DESC
GO

SELECT * FROM Vistas.Posiciones
GO
--Vista 4 
CREATE VIEW Vistas.Goleadores
AS
	SELECT TOP 99.9 PERCENT E.NombreEquipo, J.NombreJugador, COUNT(G.idGol) AS Goles FROM 
	Goles G INNER JOIN Partido P ON G.IdPartido=P.IdPartido INNER JOIN Administracion.Jugador J ON G.IdJugador=J.IdJugador
	INNER JOIN Administracion.Equipo E ON E.IdEquipo = p.EquipoGanador 
	GROUP BY E.NombreEquipo, J.NombreJugador ORDER BY Goles DESC	
GO

SELECT * FROM Vistas.Goleadores
GO

--VISTA 5
CREATE VIEW Vistas.PlantillaEquipo
AS
	SELECT E.NombreEquipo, J.NombreJugador, J.posicion, PA.IdPartido, PA.FechaPartido FROM Plantilla P INNER JOIN Administracion.Equipo E ON P.IdEquipo=E.IdEquipo 
	INNER JOIN Administracion.Jugador J ON J.IdJugador=p.IdJugador INNER JOIN Partido PA ON PA.IdPartido=P.IdPartido
GO

SELECT * FROM Vistas.PlantillaEquipo
GO


--VISTA PARA SABER EL EQUIPO GANADOR
CREATE VIEW Vistas.EquipoGanador
AS
	SELECT TOP 1 E.NombreEquipo, T.PartidosJugados, T.Puntaje, T.PartidosGanados, T.PartidosEmpatados, T.PartidosPerdidos,
	T.GolesFavor, T.GolesContra, T.DiferenciaGoles 
	FROM Tabla_De_Posicion T INNER JOIN Administracion.Equipo E ON E.IdEquipo = T.IdEquipo
	WHERE IdCampania = 'CA01'
	ORDER BY Puntaje DESC,DiferenciaGoles DESC
GO

SELECT * FROM Vistas.EquipoGanador
GO


--VISTA PARA SABER los equipos en descenso
CREATE VIEW Vistas.EquiposDescenso
AS
		SELECT TOP 2 E.IdEquipo, E.NombreEquipo
		FROM Tabla_De_Posicion T 
		INNER JOIN Administracion.Equipo E ON E.IdEquipo = T.IdEquipo
		INNER JOIN Campania C ON C.IdCampania = T.IdCampania
		WHERE T.IdCampania = 'CA01'
		ORDER BY Puntaje ASC,DiferenciaGoles ASC
GO

SELECT * FROM Vistas.EquiposDescenso
GO


---PROCEDIMIENTOS ALMACENADOS Y CURSOR PARA CREAR PARTIDOS*********************
--Procedimiento para crear partido
create procedure sp_crearPartido_cursor
@EquipoLocal varchar(20),
@FechaInicio date,
@HoraPartido time,
@idLiga varchar(4),
@DiaFavorito varchar(50)
as
begin try
begin tran
					Declare @EquipoVisitante varchar(4)
					declare @fechaPartido date
					set @fechaPartido = @FechaInicio;

					Declare cursor_equipos_visitantes cursor GLOBAL
					for Select IdEquipo from Administracion.Equipo
					where IdEquipo != @EquipoLocal
					Open cursor_equipos_visitantes
					fetch cursor_equipos_visitantes into @EquipoVisitante
					while(@@fetch_status=0)
					begin
							insert into Partido(EquipoVisitante, EquipoLocal, FechaPartido, HoraPartido)
							values(@EquipoVisitante, @EquipoLocal, null, @HoraPartido)
							
					fetch cursor_equipos_visitantes into @EquipoVisitante
					end
					close cursor_equipos_visitantes
					deallocate cursor_equipos_visitantes
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--Procedimiento para establecer fechas
create procedure sp_establecerFechas
@FechaInicioLiga date
as
begin try
begin tran			
					Declare @FechaInicio date
					set @FechaInicio = @FechaInicioLiga

					Declare @EquipoVisitante varchar(4)
					Declare @EquipoLocal varchar(4)
					Declare @fechaFin date

					set @fechaFin = (SELECT DATEADD(week,36,@FechaInicio) AS DateAdd)

					Declare cursor_partidos cursor GLOBAL
					for Select EquipoVisitante, EquipoLocal from Partido
					Open cursor_partidos
					fetch cursor_partidos into @EquipoVisitante, @EquipoLocal
					
					while(@@fetch_status=0)
					begin
							set @FechaInicio = @FechaInicioLiga
							declare @contador int
							set @contador = 0   

							WHILE @FechaInicio <= @fechaFin
							BEGIN
							   if((select datename(dw,@FechaInicio))='Sábado' or (select datename(dw,@FechaInicio))='Domingo')
							   begin


									declare @fechasRepetidas int

									declare @fechasRepetidasDiaAntes int
									declare @fechaDiaAntes date
									set @fechaDiaAntes = (SELECT DATEADD(day,-1,@FechaInicio))
									declare @fechaDiaDespues date
									set @fechaDiaDespues = (SELECT DATEADD(day,1,@FechaInicio))

									set @fechasRepetidas =  (select count(*) from partido where (FechaPartido = @FechaInicio and EquipoLocal = @EquipoLocal) OR (FechaPartido = @FechaInicio AND EquipoVisitante = @EquipoLocal)
															OR (FechaPartido = @FechaInicio AND EquipoLocal = @EquipoVisitante)	OR (FechaPartido = @FechaInicio AND EquipoVisitante = @EquipoVisitante))

									

									set @fechasRepetidasDiaAntes =  (select count(*) from partido where (FechaPartido = @fechaDiaAntes and EquipoLocal = @EquipoLocal) OR (FechaPartido = @fechaDiaAntes AND EquipoVisitante = @EquipoLocal) 
																	OR (FechaPartido = @fechaDiaAntes and EquipoLocal = @EquipoVisitante) OR (FechaPartido = @fechaDiaAntes AND EquipoVisitante = @EquipoVisitante))

									declare @fechasRepetidasDiaDespues int
									set @fechasRepetidasDiaDespues =  (select count(*) from partido where (FechaPartido = @fechaDiaDespues and EquipoLocal = @EquipoLocal) OR (FechaPartido = @fechaDiaDespues AND EquipoVisitante = @EquipoLocal)
																	OR (FechaPartido = @fechaDiaDespues and EquipoLocal = @EquipoVisitante) OR (FechaPartido = @fechaDiaDespues AND EquipoVisitante = @EquipoVisitante))


									if(@fechasRepetidas = 0 and @fechasRepetidasDiaAntes = 0 and @fechasRepetidasDiaDespues = 0)
									begin
										declare @DiaFavorito varchar(20)
										set @DiaFavorito = (select D.NombreDia from Administracion.Equipo E
																inner join DiaFavorito D on D.IdDiaFavorito = E.IdDiaFavorito  where IdEquipo = @EquipoLocal)
										declare @FechaPartido date
										set @FechaPartido = @FechaInicio
																	
										--Ajuste de fecha para día favorito
										if(@DiaFavorito!=(select datename(dw,@FechaPartido)))
										begin
											if((select datename(dw,@FechaPartido))='Domingo' and @DiaFavorito = 'Sábado')
											begin
												set @FechaPartido = (SELECT DATEADD(day,-1,@FechaPartido))
											end
											else if((select datename(dw,@FechaInicio))='Sábado' and @DiaFavorito = 'Domingo')
											begin
												set @FechaPartido = (SELECT DATEADD(day,1,@FechaPartido))
											end
										end
											--Verifica si es una fecha fifa o vacación
											if(SELECT COUNT(*) FROM FechaNoPermitida WHERE FechaNoPermitida = @FechaPartido) = 0
											begin
												update Partido set FechaPartido = @FechaPartido
												where EquipoLocal = @EquipoLocal and EquipoVisitante = @EquipoVisitante
												BREAK;
											end
									end
							   end
							   set @FechaInicio = (SELECT DATEADD(day,1,@FechaInicio) AS DateAdd)
							END

					fetch cursor_partidos into @EquipoVisitante, @EquipoLocal
					end
					close cursor_partidos
					deallocate cursor_partidos
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

----Cursor para crear partidos
Declare @IdEquipo varchar(4),
@NombreEquipo varchar(100),
@HoraFavoritaEquipo time,
@IdEstadio varchar(4),
@IdLiga varchar(4),
@FechaInicio date,
@DiaFavorito varchar(50)

Declare cursor_equipos cursor GLOBAL
for Select IdEquipo,  NombreEquipo, HoraFavoritaEquipo, IdEstadio, L.IdLiga, L.FechaInicioLiga, DF.NombreDia from Administracion.Equipo E
INNER JOIN Liga L ON L.IdLiga = E.IdLiga
INNER JOIN DiaFavorito DF ON DF.IdDiaFavorito = E.IdDiaFavorito
WHERE L.IdLiga = 'LG01';
Open cursor_equipos
fetch cursor_equipos into @IdEquipo, @NombreEquipo, @HoraFavoritaEquipo,@IdEstadio,@IdLiga,@FechaInicio, @DiaFavorito
while(@@fetch_status=0)
begin
		EXEC sp_crearPartido_cursor @IdEquipo, @FechaInicio, @HoraFavoritaEquipo, @IdLiga,@DiaFavorito

		if(select count(*) from partido)=90
		begin
			EXEC sp_establecerFechas @FechaInicio
		end

fetch cursor_equipos into @IdEquipo,  @NombreEquipo, @HoraFavoritaEquipo, @IdEstadio, @IdLiga, @FechaInicio, @DiaFavorito
end
close cursor_equipos
deallocate cursor_equipos
GO

----Cursor para generar goles
/*Declare 
@idPartido int,
@EquipoLocal varchar(4),
@EquipoVisitante varchar(4)

Declare cursor_goles cursor GLOBAL
for Select IdPartido ,EquipoLocal, EquipoVisitante from Partido

Open cursor_goles
fetch cursor_goles into @idPartido, @EquipoLocal, @EquipoVisitante
while(@@fetch_status=0)
begin
		declare @NumeroDesde int = 0;
		declare @NumeroHasta int = 6;

		declare @golesLocal int = 0;
		declare @golesVisitante int = 0;

		set @golesLocal = (SELECT ROUND(((@NumeroHasta - @NumeroDesde) * RAND() + @NumeroDesde), 0))
		set @golesVisitante = (SELECT ROUND(((@NumeroHasta - @NumeroDesde) * RAND() + @NumeroDesde), 0))


		if(@golesVisitante=@golesLocal)
		begin
			update Partido set GolesLocal=@golesLocal,GolesVisitante=@golesVisitante,EquipoGanador='EMPATE',EquipoPerdedor='EMPATE'
			where EquipoLocal = @EquipoLocal AND EquipoVisitante = @EquipoVisitante

			--Equipo Local
			update Tabla_De_Posicion set GolesFavor +=  @golesLocal, GolesContra += @golesVisitante,
			PartidosEmpatados += 1,Puntaje += 1, PartidosJugados += 1
			where IdEquipo = @EquipoLocal
			update Tabla_De_Posicion set DiferenciaGoles = (GolesFavor-GolesContra)
			where IdEquipo = @EquipoLocal

			--Equipo Visitante
			update Tabla_De_Posicion set GolesFavor +=  @golesVisitante, GolesContra += @golesLocal,
			PartidosEmpatados += 1,Puntaje += 1, PartidosJugados += 1
			where IdEquipo = @EquipoVisitante
			update Tabla_De_Posicion set DiferenciaGoles = (GolesFavor-GolesContra)
			where IdEquipo = @EquipoVisitante
		end
		else if(@golesVisitante>@golesLocal)
		begin
			update Partido set GolesLocal=@golesLocal,GolesVisitante=@golesVisitante,EquipoGanador=@EquipoVisitante,EquipoPerdedor=@EquipoLocal
			where EquipoLocal = @EquipoLocal AND EquipoVisitante = @EquipoVisitante


			--Equipo Local
			update Tabla_De_Posicion set GolesFavor +=  @golesLocal, GolesContra += @golesVisitante,
			PartidosPerdidos += 1, PartidosJugados += 1
			where IdEquipo = @EquipoLocal
			update Tabla_De_Posicion set DiferenciaGoles = (GolesFavor-GolesContra)
			where IdEquipo = @EquipoLocal

			--Equipo Visitante
			update Tabla_De_Posicion set GolesFavor +=  @golesVisitante, GolesContra += @golesLocal,
			PartidosGanados += 1,Puntaje += 3, PartidosJugados += 1
			where IdEquipo = @EquipoVisitante
			update Tabla_De_Posicion set DiferenciaGoles = (GolesFavor-GolesContra)
			where IdEquipo = @EquipoVisitante

		end
		else if(@golesLocal>@golesVisitante)
		begin
			update Partido set GolesLocal=@golesLocal,GolesVisitante=@golesVisitante,EquipoGanador=@EquipoLocal,EquipoPerdedor=@EquipoVisitante
			where EquipoLocal = @EquipoLocal AND EquipoVisitante = @EquipoVisitante
			
			--Equipo Local
			update Tabla_De_Posicion set GolesFavor +=  @golesLocal, GolesContra += @golesVisitante,
			PartidosGanados += 1,Puntaje += 3, PartidosJugados += 1
			where IdEquipo = @EquipoLocal
			update Tabla_De_Posicion set DiferenciaGoles = (GolesFavor-GolesContra)
			where IdEquipo = @EquipoLocal

			--Equipo Visitante
			update Tabla_De_Posicion set GolesFavor +=  @golesVisitante, GolesContra += @golesLocal,
			PartidosPerdidos += 1, PartidosJugados += 1
			where IdEquipo = @EquipoVisitante
			update Tabla_De_Posicion set DiferenciaGoles = (GolesFavor-GolesContra)
			where IdEquipo = @EquipoVisitante
		end
		while @golesLocal >= 0
		begin
			DECLARE @jugadorLocal VARCHAR(6)
			SET @jugadorLocal = (select TOP 1 J.IdJugador from Administracion.jugador  J
			inner join Detalle_Equipo_Jugador DJ ON DJ.IdJugador = J.IdJugador
			where DJ.IdEquipo = @EquipoLocal 
			ORDER BY NEWID())

			EXEC ProcGoles.sp_insertargoles @IdPartido, @jugadorLocal,@EquipoLocal;

			set @golesLocal = @golesLocal - 1;
		end

		while @golesVisitante >= 0
		begin
			DECLARE @jugadorVisitante VARCHAR(6)
			SET @jugadorVisitante = (select TOP 1 J.IdJugador from Administracion.jugador  J
			inner join Detalle_Equipo_Jugador DJ ON DJ.IdJugador = J.IdJugador
			where DJ.IdEquipo = @EquipoVisitante
			ORDER BY NEWID())

			EXEC ProcGoles.sp_insertargoles @IdPartido, @jugadorVisitante,@EquipoVisitante;

			set @golesVisitante = @golesVisitante - 1;
		end

fetch cursor_goles into @idPartido, @EquipoLocal, @EquipoVisitante
end
close cursor_goles
deallocate cursor_goles
GO*/


--TRIGGER QUE ACTUALIZA LA TABLA DE PARTIDOS LUEGO DE CADA GOL


CREATE TRIGGER trg_actualizar_goles_partido
ON Goles
AFTER INSERT
AS
		IF (SELECT EquipoLocal FROM Partido WHERE IdPartido = (SELECT i.IdPartido FROM inserted i)) = (SELECT i.IdEquipo FROM inserted i)
		BEGIN

			UPDATE Partido SET GolesLocal += 1
			WHERE IdPartido = (SELECT i.IdPartido FROM inserted i);

		END
		ELSE IF (SELECT EquipoVisitante FROM Partido WHERE IdPartido = (SELECT i.IdPartido FROM inserted i)) = (SELECT i.IdEquipo FROM inserted i)
		BEGIN

			UPDATE Partido SET GolesVisitante += 1
			WHERE IdPartido = (SELECT i.IdPartido FROM inserted i);

		END
GO

--TRIGGER QUE ACTUALIZA LA TABLA DE PARTIDOS Y LA TABLA DE POSICIONES AL FINALIZAR
CREATE TRIGGER trg_actualizar_posicion_partido
ON Partido
AFTER UPDATE
AS
		IF UPDATE (Estado)	
		BEGIN
				IF (SELECT i.Estado FROM inserted i) = 'FINALIZADO'	
				BEGIN
						DECLARE @golesLocal int = (SELECT i.GolesLocal FROM inserted i);
						DECLARE @golesVisitante int = (SELECT i.GolesVisitante FROM inserted i);

						DECLARE @EquipoLocal varchar(10) = (SELECT i.EquipoLocal FROM inserted i);
						DECLARE @EquipoVisitante varchar(10) = (SELECT i.EquipoVisitante FROM inserted i);

				
						IF(@golesVisitante=@golesLocal)
						BEGIN
							update Partido set GolesLocal=@golesLocal,GolesVisitante=@golesVisitante,EquipoGanador='EMPATE',EquipoPerdedor='EMPATE'
							where EquipoLocal = @EquipoLocal AND EquipoVisitante = @EquipoVisitante

							--Equipo Local
							update Tabla_De_Posicion set GolesFavor +=  @golesLocal, GolesContra += @golesVisitante,
							PartidosEmpatados += 1,Puntaje += 1, PartidosJugados += 1
							where IdEquipo = @EquipoLocal
							update Tabla_De_Posicion set DiferenciaGoles = (GolesFavor-GolesContra)
							where IdEquipo = @EquipoLocal

							--Equipo Visitante
							update Tabla_De_Posicion set GolesFavor +=  @golesVisitante, GolesContra += @golesLocal,
							PartidosEmpatados += 1,Puntaje += 1, PartidosJugados += 1
							where IdEquipo = @EquipoVisitante
							update Tabla_De_Posicion set DiferenciaGoles = (GolesFavor-GolesContra)
							where IdEquipo = @EquipoVisitante
						END
						ELSE IF(@golesVisitante>@golesLocal)
						BEGIN
							update Partido set GolesLocal=@golesLocal,GolesVisitante=@golesVisitante,EquipoGanador=@EquipoVisitante,EquipoPerdedor=@EquipoLocal
							where EquipoLocal = @EquipoLocal AND EquipoVisitante = @EquipoVisitante


							--Equipo Local
							update Tabla_De_Posicion set GolesFavor +=  @golesLocal, GolesContra += @golesVisitante,
							PartidosPerdidos += 1, PartidosJugados += 1
							where IdEquipo = @EquipoLocal
							update Tabla_De_Posicion set DiferenciaGoles = (GolesFavor-GolesContra)
							where IdEquipo = @EquipoLocal

							--Equipo Visitante
							update Tabla_De_Posicion set GolesFavor +=  @golesVisitante, GolesContra += @golesLocal,
							PartidosGanados += 1,Puntaje += 3, PartidosJugados += 1
							where IdEquipo = @EquipoVisitante
							update Tabla_De_Posicion set DiferenciaGoles = (GolesFavor-GolesContra)
							where IdEquipo = @EquipoVisitante

						END
						ELSE IF(@golesLocal>@golesVisitante)
						BEGIN
							update Partido set GolesLocal=@golesLocal,GolesVisitante=@golesVisitante,EquipoGanador=@EquipoLocal,EquipoPerdedor=@EquipoVisitante
							where EquipoLocal = @EquipoLocal AND EquipoVisitante = @EquipoVisitante
			
							--Equipo Local
							update Tabla_De_Posicion set GolesFavor +=  @golesLocal, GolesContra += @golesVisitante,
							PartidosGanados += 1,Puntaje += 3, PartidosJugados += 1
							where IdEquipo = @EquipoLocal
							update Tabla_De_Posicion set DiferenciaGoles = (GolesFavor-GolesContra)
							where IdEquipo = @EquipoLocal

							--Equipo Visitante
							update Tabla_De_Posicion set GolesFavor +=  @golesVisitante, GolesContra += @golesLocal,
							PartidosPerdidos += 1, PartidosJugados += 1
							where IdEquipo = @EquipoVisitante
							update Tabla_De_Posicion set DiferenciaGoles = (GolesFavor-GolesContra)
							where IdEquipo = @EquipoVisitante
						END
				END
		END
GO


--Procedimiento PARA FINALIZAR UN PARTIDO
create procedure sp_finalizar_partido
@idPartido varchar(20)
as
begin try
begin tran	
	IF(SELECT Estado FROM Partido WHERE IdPartido = @IdPartido) != 'FINALIZADO'
	BEGIN
	UPDATE Partido SET ESTADO = 'FINALIZADO' WHERE IdPartido = @idPartido
	PRINT 'El partido ha sido FINALIZADO'
	END
	ELSE
	BEGIN
		PRINT 'El partido ya ha finalizado'
	END
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--Procedimiento PARA DETERMINAR EL GANADOR DEL TORNEO
--Todos los partidos deben estar finalizados
create procedure sp_ganador_campania
@idCampania varchar(20)
as
begin try
begin tran	
	IF(SELECT COUNT(*) FROM Partido WHERE Estado = 'FINALIZADO') = 90
	BEGIN
		UPDATE Campania SET EquipoGanador = (SELECT TOP 1 E.IdEquipo
		FROM Tabla_De_Posicion T 
		INNER JOIN Administracion.Equipo E ON E.IdEquipo = T.IdEquipo
		INNER JOIN Campania C ON C.IdCampania = T.IdCampania
		WHERE T.IdCampania = @idCampania
		ORDER BY Puntaje DESC,DiferenciaGoles DESC)
		WHERE IdCampania = @idCampania
	END
	ELSE
	BEGIN
		PRINT 'La campaña aún no ha finalizado'
	END
commit
end try
begin catch
rollback
print error_message()
end catch;
GO
EXEC  sp_ganador_campania  'CA01'
GO


--Procedimiento PARA DETERMINAR EL GOLEADOR DEL TORNEO
--Todos los partidos deben estar finalizados
create procedure sp_goleador_campania
@idCampania varchar(20)
as
begin try
begin tran	
	IF(SELECT COUNT(*) FROM Partido WHERE Estado = 'FINALIZADO') = 90
	BEGIN

			DECLARE @idJugador varchar(10) =	(SELECT TOP 1  J.IdJugador AS Goles FROM Goles G
												INNER JOIN Partido P ON G.IdPartido=P.IdPartido 
												INNER JOIN Administracion.Jugador J ON G.IdJugador=J.IdJugador
												INNER JOIN Administracion.Equipo E ON E.IdEquipo = p.EquipoGanador 
												GROUP BY J.IdJugador ORDER BY COUNT(G.idGol) DESC)	
			

			exec sp_insertargoleador @idJugador,@idCampania
	END
	ELSE
	BEGIN
		PRINT 'La campaña aún no ha finalizado'
	END
commit
end try
begin catch
rollback
print error_message()
end catch;
GO
EXEC sp_goleador_campania 'CA01'
GO



--PROCEDIMIENTO TABLA PLANTILLA
create procedure sp_Insertar_Plantilla
@IdEquipo varchar(5),
@IdJugador varchar(20),
@IdPartido int
as
begin try
begin tran

	--Valida que el equipo pertenezca al partido
		IF(select count(*) from partido where (IdPartido = @IdPartido AND EquipoLocal = @IdEquipo) OR (IdPartido = @IdPartido AND EquipoVisitante = @IdEquipo)) != 0
		BEGIN 
			--Valida que el jugador pertenezca al equipo ingresado
			IF(select count(*) from Detalle_Equipo_Jugador where (IdEquipo = @IdEquipo and IdJugador = @IdJugador)) != 0
			BEGIN
					--Valida que la plantilla no tenga mas de 11 jugadores
					IF(SELECT COUNT(*) FROM Plantilla WHERE IdPartido = @IdPartido AND IdEquipo = @IdEquipo) < 11
					BEGIN
						--Valida si el jugador tiene tarjetas
						IF(SELECT COUNT(*) FROM Tarjeta WHERE IdJugador = @IdJugador) = 0
						BEGIN
							insert into Plantilla(IdEquipo,IdJugador,IdPartido)
							values (@IdEquipo,@IdJugador,@IdPartido)
						END
						ELSE
						BEGIN
							PRINT 'El Jugador posee tarjetas, no puede jugar'
						END
					END
					ELSE
					BEGIN
						PRINT 'La plantilla ya tiene 11 jugadores'
					END
			END
			ELSE
			BEGIN
				PRINT ('El jugador ingresado no pertenece a este equipo')
			END

		END
		ELSE
		BEGIN
			PRINT 'El equipo ingresado no pertenece a este partido'
		END
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--INGRESO DE PLANTILLAS PARA CADA EQUIPO EN LOS 90 PARTIDOS DE TODO EL TORNEO

--Plantilla para el equipo EQ01 para el partido 1
EXEC sp_Insertar_Plantilla 'EQ01','JG001',1
EXEC sp_Insertar_Plantilla 'EQ01','JG002',1
EXEC sp_Insertar_Plantilla 'EQ01','JG003',1
EXEC sp_Insertar_Plantilla 'EQ01','JG004',1
EXEC sp_Insertar_Plantilla 'EQ01','JG005',1
EXEC sp_Insertar_Plantilla 'EQ01','JG006',1
EXEC sp_Insertar_Plantilla 'EQ01','JG007',1
EXEC sp_Insertar_Plantilla 'EQ01','JG008',1
EXEC sp_Insertar_Plantilla 'EQ01','JG009',1
EXEC sp_Insertar_Plantilla 'EQ01','JG010',1
EXEC sp_Insertar_Plantilla 'EQ01','JG011',1

--Plantilla para el equipo EQ02 para el partido 1
EXEC sp_Insertar_Plantilla 'EQ02','JG024',1
EXEC sp_Insertar_Plantilla 'EQ02','JG025',1
EXEC sp_Insertar_Plantilla 'EQ02','JG026',1
EXEC sp_Insertar_Plantilla 'EQ02','JG027',1
EXEC sp_Insertar_Plantilla 'EQ02','JG028',1
EXEC sp_Insertar_Plantilla 'EQ02','JG029',1
EXEC sp_Insertar_Plantilla 'EQ02','JG030',1
EXEC sp_Insertar_Plantilla 'EQ02','JG031',1
EXEC sp_Insertar_Plantilla 'EQ02','JG032',1
EXEC sp_Insertar_Plantilla 'EQ02','JG033',1
EXEC sp_Insertar_Plantilla 'EQ02','JG034',1

--Esto se debe hacer para los 90 partidos









--SE DEBEN INGRESAR GOLES PARA LOS 90 PARTIDOS PROGRAMADOS
--Los id de partidos son autoincrementables. (Hacerlo de 1 a 90 porque al generar por primera vez los partidos esos id van a tener)
--Se deben ingresar datos logicos. (Los equipos deben coindidir con el partido al igual que los jugadores)
--La cantidad de goles por partido y por equipo puede ser aleatoria (Simular el torneo)
--Lego de ingresar los goles se debe de finalizar el partido para hacer todos los calculos de posicion

--EJEMPLO
--En este caso para el partido 1 hay un empate
--Luego solo se usa el procedimiento almacenado para finalizar el partido
--Al insertar un gol se actualiza la tabla partido, dependiendo el equipo que se ingrese se le suma el gol

--Insert de gol
--Partido EQ01 VS EQ02
--GOLES LOCAL
EXEC sp_insertargoles  1, 'JG007','EQ01'
--GOLES VISITANTE
EXEC sp_insertargoles  1, 'JG030','EQ02'
EXEC sp_insertargoles  1, 'JG030','EQ02'
EXEC sp_insertargoles  1, 'JG031','EQ02'

--Al finalizar el partido se modifica la tabla de partido. Se cambia el estado a FINALIZADO e ingresa el ganador y perdedor, o el empate
--También se actualiza la tabla de posiciones
--Vamos a cambiar el estado del partido a FINALIZADO
exec sp_finalizar_partido 271














-----------------------------

		/*SELECT TOP 2 E.IdEquipo
		FROM Tabla_De_Posicion T 
		INNER JOIN Administracion.Equipo E ON E.IdEquipo = T.IdEquipo
		INNER JOIN Campania C ON C.IdCampania = T.IdCampania
		WHERE T.IdCampania = 'CA01'
		ORDER BY Puntaje ASC,DiferenciaGoles ASC


SELECT * FROM Vistas.Posiciones



SELECT * FROM Goleador

select * from Administracion.Equipo
select * from Campania

drop procedure sp_ganador_campania
	

--Insert de gol
EXEC ProcGoles.sp_insertargoles  1081, 'JG007','EQ01'
EXEC ProcGoles.sp_insertargoles  1081, 'JG007','EQ02'

delete from Administracion.Equipo
delete from Detalle_Equipo_Jugador
select * from Partido order by FechaPartido
select * from goles
select * from Tabla_De_Posicion
SELECT * FROM Vistas.Posiciones
DELETE FROM Tabla_De_Posicion
select * from Partido
delete from Partido
select * from Goles
delete from Goles
delete from Tabla_De_Posicion
delete from Tabla_De_Posicion*/