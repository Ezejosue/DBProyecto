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

CREATE USER Alberto FOR LOGIN Usuario8
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
TO Alberto WITH GRANT OPTION 
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
EXEC sp_Insertar_DetalleEquipoJugador 'PER019', '2020-11-08', '2024-12-07', 'EQ01', 'JG019';
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
--Limeño
EXEC sp_Insertar_DetalleEquipoJugador 'PER116', '2020-11-14', '2024-12-23', 'EQ06', 'JG116';
EXEC sp_Insertar_DetalleEquipoJugador 'PER117', '2020-11-14', '2024-12-23', 'EQ06', 'JG117';
EXEC sp_Insertar_DetalleEquipoJugador 'PER118', '2020-11-14', '2024-12-23', 'EQ06', 'JG118';
EXEC sp_Insertar_DetalleEquipoJugador 'PER119', '2020-11-14', '2024-12-23', 'EQ06', 'JG119';
EXEC sp_Insertar_DetalleEquipoJugador 'PER120', '2020-11-14', '2024-12-23', 'EQ06', 'JG120';
EXEC sp_Insertar_DetalleEquipoJugador 'PER121', '2020-11-14', '2024-12-23', 'EQ06', 'JG121';
EXEC sp_Insertar_DetalleEquipoJugador 'PER122', '2020-11-14', '2024-12-23', 'EQ06', 'JG122';
EXEC sp_Insertar_DetalleEquipoJugador 'PER123', '2020-11-14', '2024-12-23', 'EQ06', 'JG123';
EXEC sp_Insertar_DetalleEquipoJugador 'PER124', '2020-11-14', '2024-12-23', 'EQ06', 'JG124';
EXEC sp_Insertar_DetalleEquipoJugador 'PER125', '2020-11-14', '2024-12-23', 'EQ06', 'JG125';
EXEC sp_Insertar_DetalleEquipoJugador 'PER126', '2020-11-14', '2024-12-23', 'EQ06', 'JG126';
EXEC sp_Insertar_DetalleEquipoJugador 'PER127', '2020-11-14', '2024-12-23', 'EQ06', 'JG127';
EXEC sp_Insertar_DetalleEquipoJugador 'PER128', '2020-11-14', '2024-12-23', 'EQ06', 'JG128';
EXEC sp_Insertar_DetalleEquipoJugador 'PER129', '2020-11-14', '2024-12-23', 'EQ06', 'JG129';
EXEC sp_Insertar_DetalleEquipoJugador 'PER130', '2020-11-14', '2024-12-23', 'EQ06', 'JG130';
EXEC sp_Insertar_DetalleEquipoJugador 'PER131', '2020-11-14', '2024-12-23', 'EQ06', 'JG131';
EXEC sp_Insertar_DetalleEquipoJugador 'PER132', '2020-11-14', '2024-12-23', 'EQ06', 'JG132';
EXEC sp_Insertar_DetalleEquipoJugador 'PER133', '2020-11-14', '2024-12-23', 'EQ06', 'JG133';
EXEC sp_Insertar_DetalleEquipoJugador 'PER134', '2020-11-14', '2024-12-23', 'EQ06', 'JG134';
EXEC sp_Insertar_DetalleEquipoJugador 'PER135', '2020-11-14', '2024-12-23', 'EQ06', 'JG135';
EXEC sp_Insertar_DetalleEquipoJugador 'PER136', '2020-11-14', '2024-12-23', 'EQ06', 'JG136';
EXEC sp_Insertar_DetalleEquipoJugador 'PER137', '2020-11-14', '2024-12-23', 'EQ06', 'JG137';
EXEC sp_Insertar_DetalleEquipoJugador 'PER138', '2020-11-14', '2024-12-23', 'EQ06', 'JG138';

--Santa Tecla
EXEC sp_Insertar_DetalleEquipoJugador 'PER139', '2020-11-14', '2024-12-23', 'EQ07', 'JG139';
EXEC sp_Insertar_DetalleEquipoJugador 'PER140', '2020-11-14', '2024-12-23', 'EQ07', 'JG140';
EXEC sp_Insertar_DetalleEquipoJugador 'PER141', '2020-11-14', '2024-12-23', 'EQ07', 'JG141';
EXEC sp_Insertar_DetalleEquipoJugador 'PER142', '2020-11-14', '2024-12-23', 'EQ07', 'JG142';
EXEC sp_Insertar_DetalleEquipoJugador 'PER143', '2020-11-14', '2024-12-23', 'EQ07', 'JG143';
EXEC sp_Insertar_DetalleEquipoJugador 'PER144', '2020-11-14', '2024-12-23', 'EQ07', 'JG144';
EXEC sp_Insertar_DetalleEquipoJugador 'PER145', '2020-11-14', '2024-12-23', 'EQ07', 'JG145';
EXEC sp_Insertar_DetalleEquipoJugador 'PER146', '2020-11-14', '2024-12-23', 'EQ07', 'JG146';
EXEC sp_Insertar_DetalleEquipoJugador 'PER147', '2020-11-14', '2024-12-23', 'EQ07', 'JG147';
EXEC sp_Insertar_DetalleEquipoJugador 'PER148', '2020-11-14', '2024-12-23', 'EQ07', 'JG148';
EXEC sp_Insertar_DetalleEquipoJugador 'PER149', '2020-11-14', '2024-12-23', 'EQ07', 'JG149';
EXEC sp_Insertar_DetalleEquipoJugador 'PER150', '2020-11-14', '2024-12-23', 'EQ07', 'JG150';
EXEC sp_Insertar_DetalleEquipoJugador 'PER151', '2020-11-14', '2024-12-23', 'EQ07', 'JG151';
EXEC sp_Insertar_DetalleEquipoJugador 'PER152', '2020-11-14', '2024-12-23', 'EQ07', 'JG152';
EXEC sp_Insertar_DetalleEquipoJugador 'PER153', '2020-11-14', '2024-12-23', 'EQ07', 'JG153';
EXEC sp_Insertar_DetalleEquipoJugador 'PER154', '2020-11-14', '2024-12-23', 'EQ07', 'JG154';
EXEC sp_Insertar_DetalleEquipoJugador 'PER155', '2020-11-14', '2024-12-23', 'EQ07', 'JG155';
EXEC sp_Insertar_DetalleEquipoJugador 'PER156', '2020-11-14', '2024-12-23', 'EQ07', 'JG156';
EXEC sp_Insertar_DetalleEquipoJugador 'PER157', '2020-11-14', '2024-12-23', 'EQ07', 'JG157';
EXEC sp_Insertar_DetalleEquipoJugador 'PER158', '2020-11-14', '2024-12-23', 'EQ07', 'JG158';
EXEC sp_Insertar_DetalleEquipoJugador 'PER159', '2020-11-14', '2024-12-23', 'EQ07', 'JG159';
EXEC sp_Insertar_DetalleEquipoJugador 'PER160', '2020-11-14', '2024-12-23', 'EQ07', 'JG160';
EXEC sp_Insertar_DetalleEquipoJugador 'PER161', '2020-11-14', '2024-12-23', 'EQ07', 'JG161';

--Chalatenango
EXEC sp_Insertar_DetalleEquipoJugador 'PER162', '2020-11-14', '2024-12-23', 'EQ08', 'JG162';
EXEC sp_Insertar_DetalleEquipoJugador 'PER163', '2020-11-14', '2024-12-23', 'EQ08', 'JG163';
EXEC sp_Insertar_DetalleEquipoJugador 'PER164', '2020-11-14', '2024-12-23', 'EQ08', 'JG164';
EXEC sp_Insertar_DetalleEquipoJugador 'PER165', '2020-11-14', '2024-12-23', 'EQ08', 'JG165';
EXEC sp_Insertar_DetalleEquipoJugador 'PER166', '2020-11-14', '2024-12-23', 'EQ08', 'JG166';
EXEC sp_Insertar_DetalleEquipoJugador 'PER167', '2020-11-14', '2024-12-23', 'EQ08', 'JG167';
EXEC sp_Insertar_DetalleEquipoJugador 'PER168', '2020-11-14', '2024-12-23', 'EQ08', 'JG168';
EXEC sp_Insertar_DetalleEquipoJugador 'PER169', '2020-11-14', '2024-12-23', 'EQ08', 'JG169';
EXEC sp_Insertar_DetalleEquipoJugador 'PER170', '2020-11-14', '2024-12-23', 'EQ08', 'JG170';
EXEC sp_Insertar_DetalleEquipoJugador 'PER171', '2020-11-14', '2024-12-23', 'EQ08', 'JG171';
EXEC sp_Insertar_DetalleEquipoJugador 'PER172', '2020-11-14', '2024-12-23', 'EQ08', 'JG172';
EXEC sp_Insertar_DetalleEquipoJugador 'PER173', '2020-11-14', '2024-12-23', 'EQ08', 'JG173';
EXEC sp_Insertar_DetalleEquipoJugador 'PER174', '2020-11-14', '2024-12-23', 'EQ08', 'JG174';
EXEC sp_Insertar_DetalleEquipoJugador 'PER175', '2020-11-14', '2024-12-23', 'EQ08', 'JG175';
EXEC sp_Insertar_DetalleEquipoJugador 'PER176', '2020-11-14', '2024-12-23', 'EQ08', 'JG176';
EXEC sp_Insertar_DetalleEquipoJugador 'PER177', '2020-11-14', '2024-12-23', 'EQ08', 'JG177';
EXEC sp_Insertar_DetalleEquipoJugador 'PER178', '2020-11-14', '2024-12-23', 'EQ08', 'JG178';
EXEC sp_Insertar_DetalleEquipoJugador 'PER179', '2020-11-14', '2024-12-23', 'EQ08', 'JG179';
EXEC sp_Insertar_DetalleEquipoJugador 'PER180', '2020-11-14', '2024-12-23', 'EQ08', 'JG180';

--Once Deportivo
EXEC sp_Insertar_DetalleEquipoJugador 'PER181', '2020-11-14', '2024-12-23', 'EQ09', 'JG181';
EXEC sp_Insertar_DetalleEquipoJugador 'PER182', '2020-11-14', '2024-12-23', 'EQ09', 'JG182';
EXEC sp_Insertar_DetalleEquipoJugador 'PER183', '2020-11-14', '2024-12-23', 'EQ09', 'JG183';
EXEC sp_Insertar_DetalleEquipoJugador 'PER184', '2020-11-14', '2024-12-23', 'EQ09', 'JG184';
EXEC sp_Insertar_DetalleEquipoJugador 'PER185', '2020-11-14', '2024-12-23', 'EQ09', 'JG185';
EXEC sp_Insertar_DetalleEquipoJugador 'PER186', '2020-11-14', '2024-12-23', 'EQ09', 'JG186';
EXEC sp_Insertar_DetalleEquipoJugador 'PER187', '2020-11-14', '2024-12-23', 'EQ09', 'JG187';
EXEC sp_Insertar_DetalleEquipoJugador 'PER188', '2020-11-14', '2024-12-23', 'EQ09', 'JG188';
EXEC sp_Insertar_DetalleEquipoJugador 'PER189', '2020-11-14', '2024-12-23', 'EQ09', 'JG189';
EXEC sp_Insertar_DetalleEquipoJugador 'PER190', '2020-11-14', '2024-12-23', 'EQ09', 'JG190';
EXEC sp_Insertar_DetalleEquipoJugador 'PER191', '2020-11-14', '2024-12-23', 'EQ09', 'JG191';
EXEC sp_Insertar_DetalleEquipoJugador 'PER192', '2020-11-14', '2024-12-23', 'EQ09', 'JG192';
EXEC sp_Insertar_DetalleEquipoJugador 'PER193', '2020-11-14', '2024-12-23', 'EQ09', 'JG193';
EXEC sp_Insertar_DetalleEquipoJugador 'PER194', '2020-11-14', '2024-12-23', 'EQ09', 'JG194';
EXEC sp_Insertar_DetalleEquipoJugador 'PER195', '2020-11-14', '2024-12-23', 'EQ09', 'JG195';
EXEC sp_Insertar_DetalleEquipoJugador 'PER196', '2020-11-14', '2024-12-23', 'EQ09', 'JG196';
EXEC sp_Insertar_DetalleEquipoJugador 'PER197', '2020-11-14', '2024-12-23', 'EQ09', 'JG197';
EXEC sp_Insertar_DetalleEquipoJugador 'PER198', '2020-11-14', '2024-12-23', 'EQ09', 'JG198';
EXEC sp_Insertar_DetalleEquipoJugador 'PER199', '2020-11-14', '2024-12-23', 'EQ09', 'JG199';
EXEC sp_Insertar_DetalleEquipoJugador 'PER200', '2020-11-14', '2024-12-23', 'EQ09', 'JG200';

--Atletico Marte
EXEC sp_Insertar_DetalleEquipoJugador 'PER201', '2020-11-14', '2024-12-23', 'EQ10', 'JG201';
EXEC sp_Insertar_DetalleEquipoJugador 'PER202', '2020-11-14', '2024-12-23', 'EQ10', 'JG202';
EXEC sp_Insertar_DetalleEquipoJugador 'PER203', '2020-11-14', '2024-12-23', 'EQ10', 'JG203';
EXEC sp_Insertar_DetalleEquipoJugador 'PER204', '2020-11-14', '2024-12-23', 'EQ10', 'JG204';
EXEC sp_Insertar_DetalleEquipoJugador 'PER205', '2020-11-14', '2024-12-23', 'EQ10', 'JG205';
EXEC sp_Insertar_DetalleEquipoJugador 'PER206', '2020-11-14', '2024-12-23', 'EQ10', 'JG206';
EXEC sp_Insertar_DetalleEquipoJugador 'PER207', '2020-11-14', '2024-12-23', 'EQ10', 'JG207';
EXEC sp_Insertar_DetalleEquipoJugador 'PER208', '2020-11-14', '2024-12-23', 'EQ10', 'JG208';
EXEC sp_Insertar_DetalleEquipoJugador 'PER209', '2020-11-14', '2024-12-23', 'EQ10', 'JG209';
EXEC sp_Insertar_DetalleEquipoJugador 'PER210', '2020-11-14', '2024-12-23', 'EQ10', 'JG210';
EXEC sp_Insertar_DetalleEquipoJugador 'PER211', '2020-11-14', '2024-12-23', 'EQ10', 'JG211';
EXEC sp_Insertar_DetalleEquipoJugador 'PER212', '2020-11-14', '2024-12-23', 'EQ10', 'JG212';
EXEC sp_Insertar_DetalleEquipoJugador 'PER213', '2020-11-14', '2024-12-23', 'EQ10', 'JG213';
EXEC sp_Insertar_DetalleEquipoJugador 'PER214', '2020-11-14', '2024-12-23', 'EQ10', 'JG214';
EXEC sp_Insertar_DetalleEquipoJugador 'PER215', '2020-11-14', '2024-12-23', 'EQ10', 'JG215';
EXEC sp_Insertar_DetalleEquipoJugador 'PER216', '2020-11-14', '2024-12-23', 'EQ10', 'JG216';
EXEC sp_Insertar_DetalleEquipoJugador 'PER217', '2020-11-14', '2024-12-23', 'EQ10', 'JG217';
EXEC sp_Insertar_DetalleEquipoJugador 'PER218', '2020-11-14', '2024-12-23', 'EQ10', 'JG218';
EXEC sp_Insertar_DetalleEquipoJugador 'PER219', '2020-11-14', '2024-12-23', 'EQ10', 'JG219';
EXEC sp_Insertar_DetalleEquipoJugador 'PER220', '2020-11-14', '2024-12-23', 'EQ10', 'JG220';
EXEC sp_Insertar_DetalleEquipoJugador 'PER221', '2020-11-14', '2024-12-23', 'EQ10', 'JG221';
EXEC sp_Insertar_DetalleEquipoJugador 'PER222', '2020-11-14', '2024-12-23', 'EQ10', 'JG222';
EXEC sp_Insertar_DetalleEquipoJugador 'PER223', '2020-11-14', '2024-12-23', 'EQ10', 'JG223';
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


--PROCEDIMIENTO ALMACENADO PARA INGRESAR GOLES
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
				--Valida que el jugador este convocado para ese partido
				IF(select count(*) from Plantilla where (IdEquipo = @IdEquipo and IdJugador = @IdJugador AND IdPartido = @IdPartido)) != 0
				BEGIN
					insert into Goles(IdPartido, IdJugador,idEquipo)
					values (@IdPartido, @IdJugador,@idEquipo)
				END
				ELSE
				BEGIN
					PRINT 'Este jugador no esta convocado'
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








--INGRESO DE PLANTILLAS PARA CADA EQUIPO EN LOS 90 PARTIDOS DE TODO EL TORNEO

/*-----------------------------  PARTIDO 1  ----------------------------------------------*/
-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG001',1
EXEC sp_Insertar_Plantilla 'EQ01','JG003',1
EXEC sp_Insertar_Plantilla 'EQ01','JG004',1
EXEC sp_Insertar_Plantilla 'EQ01','JG005',1
EXEC sp_Insertar_Plantilla 'EQ01','JG006',1
EXEC sp_Insertar_Plantilla 'EQ01','JG012',1
EXEC sp_Insertar_Plantilla 'EQ01','JG013',1
EXEC sp_Insertar_Plantilla 'EQ01','JG014',1
EXEC sp_Insertar_Plantilla 'EQ01','JG015',1
EXEC sp_Insertar_Plantilla 'EQ01','JG018',1
EXEC sp_Insertar_Plantilla 'EQ01','JG019',1

--EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG024',1
EXEC sp_Insertar_Plantilla 'EQ02','JG026',1
EXEC sp_Insertar_Plantilla 'EQ02','JG027',1
EXEC sp_Insertar_Plantilla 'EQ02','JG028',1
EXEC sp_Insertar_Plantilla 'EQ02','JG029',1
EXEC sp_Insertar_Plantilla 'EQ02','JG033',1
EXEC sp_Insertar_Plantilla 'EQ02','JG034',1
EXEC sp_Insertar_Plantilla 'EQ02','JG035',1
EXEC sp_Insertar_Plantilla 'EQ02','JG036',1
EXEC sp_Insertar_Plantilla 'EQ02','JG040',1
EXEC sp_Insertar_Plantilla 'EQ02','JG041',1

/*-----------------------------  PARTIDO 2  ----------------------------------------------*/
-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG002',2
EXEC sp_Insertar_Plantilla 'EQ01','JG007',2
EXEC sp_Insertar_Plantilla 'EQ01','JG008',2
EXEC sp_Insertar_Plantilla 'EQ01','JG009',2
EXEC sp_Insertar_Plantilla 'EQ01','JG010',2
EXEC sp_Insertar_Plantilla 'EQ01','JG016',2
EXEC sp_Insertar_Plantilla 'EQ01','JG017',2
EXEC sp_Insertar_Plantilla 'EQ01','JG020',2
EXEC sp_Insertar_Plantilla 'EQ01','JG021',2
EXEC sp_Insertar_Plantilla 'EQ01','JG022',2
EXEC sp_Insertar_Plantilla 'EQ01','JG023',2

--EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG047',2
EXEC sp_Insertar_Plantilla 'EQ03','JG049',2
EXEC sp_Insertar_Plantilla 'EQ03','JG050',2
EXEC sp_Insertar_Plantilla 'EQ03','JG051',2
EXEC sp_Insertar_Plantilla 'EQ03','JG052',2
EXEC sp_Insertar_Plantilla 'EQ03','JG054',2
EXEC sp_Insertar_Plantilla 'EQ03','JG055',2
EXEC sp_Insertar_Plantilla 'EQ03','JG056',2
EXEC sp_Insertar_Plantilla 'EQ03','JG057',2
EXEC sp_Insertar_Plantilla 'EQ03','JG065',2
EXEC sp_Insertar_Plantilla 'EQ03','JG066',2

/*-----------------------------  PARTIDO 3  ----------------------------------------------*/
-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG001',3
EXEC sp_Insertar_Plantilla 'EQ01','JG003',3
EXEC sp_Insertar_Plantilla 'EQ01','JG004',3
EXEC sp_Insertar_Plantilla 'EQ01','JG005',3
EXEC sp_Insertar_Plantilla 'EQ01','JG006',3
EXEC sp_Insertar_Plantilla 'EQ01','JG012',3
EXEC sp_Insertar_Plantilla 'EQ01','JG013',3
EXEC sp_Insertar_Plantilla 'EQ01','JG014',3
EXEC sp_Insertar_Plantilla 'EQ01','JG015',3
EXEC sp_Insertar_Plantilla 'EQ01','JG018',3
EXEC sp_Insertar_Plantilla 'EQ01','JG019',3

--EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',3
EXEC sp_Insertar_Plantilla 'EQ04','JG071',3
EXEC sp_Insertar_Plantilla 'EQ04','JG072',3
EXEC sp_Insertar_Plantilla 'EQ04','JG073',3
EXEC sp_Insertar_Plantilla 'EQ04','JG074',3
EXEC sp_Insertar_Plantilla 'EQ04','JG076',3
EXEC sp_Insertar_Plantilla 'EQ04','JG077',3
EXEC sp_Insertar_Plantilla 'EQ04','JG078',3
EXEC sp_Insertar_Plantilla 'EQ04','JG079',3
EXEC sp_Insertar_Plantilla 'EQ04','JG085',3
EXEC sp_Insertar_Plantilla 'EQ04','JG086',3

/*-----------------------------  PARTIDO 4  ----------------------------------------------*/
-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG002',4
EXEC sp_Insertar_Plantilla 'EQ01','JG007',4
EXEC sp_Insertar_Plantilla 'EQ01','JG008',4
EXEC sp_Insertar_Plantilla 'EQ01','JG009',4
EXEC sp_Insertar_Plantilla 'EQ01','JG011',4
EXEC sp_Insertar_Plantilla 'EQ01','JG016',4
EXEC sp_Insertar_Plantilla 'EQ01','JG017',4
EXEC sp_Insertar_Plantilla 'EQ01','JG020',4
EXEC sp_Insertar_Plantilla 'EQ01','JG021',4
EXEC sp_Insertar_Plantilla 'EQ01','JG022',4
EXEC sp_Insertar_Plantilla 'EQ01','JG023',4

--EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',4
EXEC sp_Insertar_Plantilla 'EQ05','JG094',4
EXEC sp_Insertar_Plantilla 'EQ05','JG095',4
EXEC sp_Insertar_Plantilla 'EQ05','JG096',4
EXEC sp_Insertar_Plantilla 'EQ05','JG097',4
EXEC sp_Insertar_Plantilla 'EQ05','JG101',4
EXEC sp_Insertar_Plantilla 'EQ05','JG102',4
EXEC sp_Insertar_Plantilla 'EQ05','JG103',4
EXEC sp_Insertar_Plantilla 'EQ05','JG104',4
EXEC sp_Insertar_Plantilla 'EQ05','JG111',4
EXEC sp_Insertar_Plantilla 'EQ05','JG112',4

/*-----------------------------  PARTIDO 5  ----------------------------------------------*/
-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG001',5
EXEC sp_Insertar_Plantilla 'EQ01','JG003',5
EXEC sp_Insertar_Plantilla 'EQ01','JG004',5
EXEC sp_Insertar_Plantilla 'EQ01','JG005',5
EXEC sp_Insertar_Plantilla 'EQ01','JG006',5
EXEC sp_Insertar_Plantilla 'EQ01','JG012',5
EXEC sp_Insertar_Plantilla 'EQ01','JG013',5
EXEC sp_Insertar_Plantilla 'EQ01','JG014',5
EXEC sp_Insertar_Plantilla 'EQ01','JG015',5
EXEC sp_Insertar_Plantilla 'EQ01','JG018',5
EXEC sp_Insertar_Plantilla 'EQ01','JG019',5

--EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG116',5
EXEC sp_Insertar_Plantilla 'EQ06','JG118',5
EXEC sp_Insertar_Plantilla 'EQ06','JG119',5
EXEC sp_Insertar_Plantilla 'EQ06','JG120',5
EXEC sp_Insertar_Plantilla 'EQ06','JG121',5
EXEC sp_Insertar_Plantilla 'EQ06','JG128',5
EXEC sp_Insertar_Plantilla 'EQ06','JG129',5
EXEC sp_Insertar_Plantilla 'EQ06','JG130',5
EXEC sp_Insertar_Plantilla 'EQ06','JG131',5
EXEC sp_Insertar_Plantilla 'EQ06','JG136',5
EXEC sp_Insertar_Plantilla 'EQ06','JG137',5

/*-----------------------------  PARTIDO 6  ----------------------------------------------*/
-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG002',6
EXEC sp_Insertar_Plantilla 'EQ01','JG007',6
EXEC sp_Insertar_Plantilla 'EQ01','JG008',6
EXEC sp_Insertar_Plantilla 'EQ01','JG009',6
EXEC sp_Insertar_Plantilla 'EQ01','JG010',6
EXEC sp_Insertar_Plantilla 'EQ01','JG016',6
EXEC sp_Insertar_Plantilla 'EQ01','JG017',6
EXEC sp_Insertar_Plantilla 'EQ01','JG020',6
EXEC sp_Insertar_Plantilla 'EQ01','JG021',6
EXEC sp_Insertar_Plantilla 'EQ01','JG022',6
EXEC sp_Insertar_Plantilla 'EQ01','JG023',6

--EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG139',6
EXEC sp_Insertar_Plantilla 'EQ07','JG141',6
EXEC sp_Insertar_Plantilla 'EQ07','JG142',6
EXEC sp_Insertar_Plantilla 'EQ07','JG143',6
EXEC sp_Insertar_Plantilla 'EQ07','JG144',6
EXEC sp_Insertar_Plantilla 'EQ07','JG147',6
EXEC sp_Insertar_Plantilla 'EQ07','JG148',6
EXEC sp_Insertar_Plantilla 'EQ07','JG149',6
EXEC sp_Insertar_Plantilla 'EQ07','JG150',6
EXEC sp_Insertar_Plantilla 'EQ07','JG157',6
EXEC sp_Insertar_Plantilla 'EQ07','JG158',6

/*-----------------------------  PARTIDO 7  ----------------------------------------------*/
-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG001',7
EXEC sp_Insertar_Plantilla 'EQ01','JG003',7
EXEC sp_Insertar_Plantilla 'EQ01','JG004',7
EXEC sp_Insertar_Plantilla 'EQ01','JG005',7
EXEC sp_Insertar_Plantilla 'EQ01','JG006',7
EXEC sp_Insertar_Plantilla 'EQ01','JG012',7
EXEC sp_Insertar_Plantilla 'EQ01','JG013',7
EXEC sp_Insertar_Plantilla 'EQ01','JG014',7
EXEC sp_Insertar_Plantilla 'EQ01','JG015',7
EXEC sp_Insertar_Plantilla 'EQ01','JG018',7
EXEC sp_Insertar_Plantilla 'EQ01','JG019',7

--EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',7
EXEC sp_Insertar_Plantilla 'EQ08','JG163',7
EXEC sp_Insertar_Plantilla 'EQ08','JG164',7
EXEC sp_Insertar_Plantilla 'EQ08','JG165',7
EXEC sp_Insertar_Plantilla 'EQ08','JG166',7
EXEC sp_Insertar_Plantilla 'EQ08','JG167',7
EXEC sp_Insertar_Plantilla 'EQ08','JG168',7
EXEC sp_Insertar_Plantilla 'EQ08','JG169',7
EXEC sp_Insertar_Plantilla 'EQ08','JG170',7
EXEC sp_Insertar_Plantilla 'EQ08','JG176',7
EXEC sp_Insertar_Plantilla 'EQ08','JG177',7

/*-----------------------------  PARTIDO 8  ----------------------------------------------*/
-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG002',8
EXEC sp_Insertar_Plantilla 'EQ01','JG007',8
EXEC sp_Insertar_Plantilla 'EQ01','JG008',8
EXEC sp_Insertar_Plantilla 'EQ01','JG009',8
EXEC sp_Insertar_Plantilla 'EQ01','JG011',8
EXEC sp_Insertar_Plantilla 'EQ01','JG016',8
EXEC sp_Insertar_Plantilla 'EQ01','JG017',8
EXEC sp_Insertar_Plantilla 'EQ01','JG020',8
EXEC sp_Insertar_Plantilla 'EQ01','JG021',8
EXEC sp_Insertar_Plantilla 'EQ01','JG022',8
EXEC sp_Insertar_Plantilla 'EQ01','JG023',8

--EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ09','JG181',8
EXEC sp_Insertar_Plantilla 'EQ09','JG183',8
EXEC sp_Insertar_Plantilla 'EQ09','JG184',8
EXEC sp_Insertar_Plantilla 'EQ09','JG185',8
EXEC sp_Insertar_Plantilla 'EQ09','JG186',8
EXEC sp_Insertar_Plantilla 'EQ09','JG187',8
EXEC sp_Insertar_Plantilla 'EQ09','JG188',8
EXEC sp_Insertar_Plantilla 'EQ09','JG189',8
EXEC sp_Insertar_Plantilla 'EQ09','JG190',8
EXEC sp_Insertar_Plantilla 'EQ09','JG196',8
EXEC sp_Insertar_Plantilla 'EQ09','JG197',8

/*-----------------------------  PARTIDO 9  ----------------------------------------------*/
-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG001',9
EXEC sp_Insertar_Plantilla 'EQ01','JG003',9
EXEC sp_Insertar_Plantilla 'EQ01','JG004',9
EXEC sp_Insertar_Plantilla 'EQ01','JG005',9
EXEC sp_Insertar_Plantilla 'EQ01','JG006',9
EXEC sp_Insertar_Plantilla 'EQ01','JG012',9
EXEC sp_Insertar_Plantilla 'EQ01','JG013',9
EXEC sp_Insertar_Plantilla 'EQ01','JG014',9
EXEC sp_Insertar_Plantilla 'EQ01','JG015',9
EXEC sp_Insertar_Plantilla 'EQ01','JG018',9
EXEC sp_Insertar_Plantilla 'EQ01','JG019',9

--EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ10','JG201',9
EXEC sp_Insertar_Plantilla 'EQ10','JG202',9
EXEC sp_Insertar_Plantilla 'EQ10','JG203',9
EXEC sp_Insertar_Plantilla 'EQ10','JG204',9
EXEC sp_Insertar_Plantilla 'EQ10','JG205',9
EXEC sp_Insertar_Plantilla 'EQ10','JG208',9
EXEC sp_Insertar_Plantilla 'EQ10','JG209',9
EXEC sp_Insertar_Plantilla 'EQ10','JG218',9
EXEC sp_Insertar_Plantilla 'EQ10','JG219',9
EXEC sp_Insertar_Plantilla 'EQ10','JG210',9
EXEC sp_Insertar_Plantilla 'EQ10','JG211',9

/*-----------------------------  PARTIDO 10 ----------------------------------------------*/
-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG002',10
EXEC sp_Insertar_Plantilla 'EQ01','JG007',10
EXEC sp_Insertar_Plantilla 'EQ01','JG008',10
EXEC sp_Insertar_Plantilla 'EQ01','JG009',10
EXEC sp_Insertar_Plantilla 'EQ01','JG010',10
EXEC sp_Insertar_Plantilla 'EQ01','JG016',10
EXEC sp_Insertar_Plantilla 'EQ01','JG017',10
EXEC sp_Insertar_Plantilla 'EQ01','JG020',10
EXEC sp_Insertar_Plantilla 'EQ01','JG021',10
EXEC sp_Insertar_Plantilla 'EQ01','JG022',10
EXEC sp_Insertar_Plantilla 'EQ01','JG023',10

--EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG024',10
EXEC sp_Insertar_Plantilla 'EQ02','JG026',10
EXEC sp_Insertar_Plantilla 'EQ02','JG027',10
EXEC sp_Insertar_Plantilla 'EQ02','JG028',10
EXEC sp_Insertar_Plantilla 'EQ02','JG029',10
EXEC sp_Insertar_Plantilla 'EQ02','JG033',10
EXEC sp_Insertar_Plantilla 'EQ02','JG034',10
EXEC sp_Insertar_Plantilla 'EQ02','JG035',10
EXEC sp_Insertar_Plantilla 'EQ02','JG036',10
EXEC sp_Insertar_Plantilla 'EQ02','JG040',10
EXEC sp_Insertar_Plantilla 'EQ02','JG041',10

/*-----------------------------  PARTIDO 11 ----------------------------------------------*/
--EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG025',11
EXEC sp_Insertar_Plantilla 'EQ02','JG030',11
EXEC sp_Insertar_Plantilla 'EQ02','JG031',11
EXEC sp_Insertar_Plantilla 'EQ02','JG032',11
EXEC sp_Insertar_Plantilla 'EQ02','JG037',11
EXEC sp_Insertar_Plantilla 'EQ02','JG038',11
EXEC sp_Insertar_Plantilla 'EQ02','JG039',11
EXEC sp_Insertar_Plantilla 'EQ02','JG042',11
EXEC sp_Insertar_Plantilla 'EQ02','JG043',11
EXEC sp_Insertar_Plantilla 'EQ02','JG044',11
EXEC sp_Insertar_Plantilla 'EQ02','JG046',11

-- EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG048',11
EXEC sp_Insertar_Plantilla 'EQ03','JG053',11
EXEC sp_Insertar_Plantilla 'EQ03','JG057',11
EXEC sp_Insertar_Plantilla 'EQ03','JG058',11
EXEC sp_Insertar_Plantilla 'EQ03','JG059',11
EXEC sp_Insertar_Plantilla 'EQ03','JG060',11
EXEC sp_Insertar_Plantilla 'EQ03','JG061',11
EXEC sp_Insertar_Plantilla 'EQ03','JG067',11
EXEC sp_Insertar_Plantilla 'EQ03','JG068',11
EXEC sp_Insertar_Plantilla 'EQ03','JG069',11
EXEC sp_Insertar_Plantilla 'EQ03','JG062',11

/*-----------------------------  PARTIDO 12 ----------------------------------------------*/
--EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG024',12
EXEC sp_Insertar_Plantilla 'EQ02','JG026',12
EXEC sp_Insertar_Plantilla 'EQ02','JG027',12
EXEC sp_Insertar_Plantilla 'EQ02','JG028',12
EXEC sp_Insertar_Plantilla 'EQ02','JG029',12
EXEC sp_Insertar_Plantilla 'EQ02','JG033',12
EXEC sp_Insertar_Plantilla 'EQ02','JG034',12
EXEC sp_Insertar_Plantilla 'EQ02','JG035',12
EXEC sp_Insertar_Plantilla 'EQ02','JG036',12
EXEC sp_Insertar_Plantilla 'EQ02','JG040',12
EXEC sp_Insertar_Plantilla 'EQ02','JG041',12

-- EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',12
EXEC sp_Insertar_Plantilla 'EQ04','JG075',12
EXEC sp_Insertar_Plantilla 'EQ04','JG080',12
EXEC sp_Insertar_Plantilla 'EQ04','JG081',12
EXEC sp_Insertar_Plantilla 'EQ04','JG082',12
EXEC sp_Insertar_Plantilla 'EQ04','JG083',12
EXEC sp_Insertar_Plantilla 'EQ04','JG084',12
EXEC sp_Insertar_Plantilla 'EQ04','JG088',12
EXEC sp_Insertar_Plantilla 'EQ04','JG089',12
EXEC sp_Insertar_Plantilla 'EQ04','JG090',12
EXEC sp_Insertar_Plantilla 'EQ04','JG090',12

/*-----------------------------  PARTIDO 13 ----------------------------------------------*/
--EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG025',13
EXEC sp_Insertar_Plantilla 'EQ02','JG030',13
EXEC sp_Insertar_Plantilla 'EQ02','JG031',13
EXEC sp_Insertar_Plantilla 'EQ02','JG032',13
EXEC sp_Insertar_Plantilla 'EQ02','JG037',13
EXEC sp_Insertar_Plantilla 'EQ02','JG038',13
EXEC sp_Insertar_Plantilla 'EQ02','JG039',13
EXEC sp_Insertar_Plantilla 'EQ02','JG042',13
EXEC sp_Insertar_Plantilla 'EQ02','JG043',13
EXEC sp_Insertar_Plantilla 'EQ02','JG044',13
EXEC sp_Insertar_Plantilla 'EQ02','JG045',13

-- EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',13
EXEC sp_Insertar_Plantilla 'EQ05','JG098',13
EXEC sp_Insertar_Plantilla 'EQ05','JG099',13
EXEC sp_Insertar_Plantilla 'EQ05','JG100',13
EXEC sp_Insertar_Plantilla 'EQ05','JG105',13
EXEC sp_Insertar_Plantilla 'EQ05','JG106',13
EXEC sp_Insertar_Plantilla 'EQ05','JG107',13
EXEC sp_Insertar_Plantilla 'EQ05','JG108',13
EXEC sp_Insertar_Plantilla 'EQ05','JG109',13
EXEC sp_Insertar_Plantilla 'EQ05','JG113',13
EXEC sp_Insertar_Plantilla 'EQ05','JG114',13

/*-----------------------------  PARTIDO 14 ----------------------------------------------*/
--EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG024',14
EXEC sp_Insertar_Plantilla 'EQ02','JG026',14
EXEC sp_Insertar_Plantilla 'EQ02','JG027',14
EXEC sp_Insertar_Plantilla 'EQ02','JG028',14
EXEC sp_Insertar_Plantilla 'EQ02','JG029',14
EXEC sp_Insertar_Plantilla 'EQ02','JG033',14
EXEC sp_Insertar_Plantilla 'EQ02','JG034',14
EXEC sp_Insertar_Plantilla 'EQ02','JG035',14
EXEC sp_Insertar_Plantilla 'EQ02','JG036',14
EXEC sp_Insertar_Plantilla 'EQ02','JG040',14
EXEC sp_Insertar_Plantilla 'EQ02','JG041',14

-- EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG117',14
EXEC sp_Insertar_Plantilla 'EQ06','JG122',14
EXEC sp_Insertar_Plantilla 'EQ06','JG123',14
EXEC sp_Insertar_Plantilla 'EQ06','JG124',14
EXEC sp_Insertar_Plantilla 'EQ06','JG125',14
EXEC sp_Insertar_Plantilla 'EQ06','JG126',14
EXEC sp_Insertar_Plantilla 'EQ06','JG132',14
EXEC sp_Insertar_Plantilla 'EQ06','JG133',14
EXEC sp_Insertar_Plantilla 'EQ06','JG134',14
EXEC sp_Insertar_Plantilla 'EQ06','JG135',14
EXEC sp_Insertar_Plantilla 'EQ06','JG138',14

/*-----------------------------  PARTIDO 15 ----------------------------------------------*/
--EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG025',15
EXEC sp_Insertar_Plantilla 'EQ02','JG030',15
EXEC sp_Insertar_Plantilla 'EQ02','JG031',15
EXEC sp_Insertar_Plantilla 'EQ02','JG032',15
EXEC sp_Insertar_Plantilla 'EQ02','JG037',15
EXEC sp_Insertar_Plantilla 'EQ02','JG038',15
EXEC sp_Insertar_Plantilla 'EQ02','JG039',15
EXEC sp_Insertar_Plantilla 'EQ02','JG042',15
EXEC sp_Insertar_Plantilla 'EQ02','JG043',15
EXEC sp_Insertar_Plantilla 'EQ02','JG044',15
EXEC sp_Insertar_Plantilla 'EQ02','JG046',15

-- EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG140',15
EXEC sp_Insertar_Plantilla 'EQ07','JG145',15
EXEC sp_Insertar_Plantilla 'EQ07','JG146',15
EXEC sp_Insertar_Plantilla 'EQ07','JG151',15
EXEC sp_Insertar_Plantilla 'EQ07','JG152',15
EXEC sp_Insertar_Plantilla 'EQ07','JG153',15
EXEC sp_Insertar_Plantilla 'EQ07','JG154',15
EXEC sp_Insertar_Plantilla 'EQ07','JG155',15
EXEC sp_Insertar_Plantilla 'EQ07','JG156',15
EXEC sp_Insertar_Plantilla 'EQ07','JG159',15
EXEC sp_Insertar_Plantilla 'EQ07','JG160',15

/*-----------------------------  PARTIDO 16 ----------------------------------------------*/
--EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG024',16
EXEC sp_Insertar_Plantilla 'EQ02','JG026',16
EXEC sp_Insertar_Plantilla 'EQ02','JG027',16
EXEC sp_Insertar_Plantilla 'EQ02','JG028',16
EXEC sp_Insertar_Plantilla 'EQ02','JG029',16
EXEC sp_Insertar_Plantilla 'EQ02','JG033',16
EXEC sp_Insertar_Plantilla 'EQ02','JG034',16
EXEC sp_Insertar_Plantilla 'EQ02','JG035',16
EXEC sp_Insertar_Plantilla 'EQ02','JG036',16
EXEC sp_Insertar_Plantilla 'EQ02','JG040',16
EXEC sp_Insertar_Plantilla 'EQ02','JG041',16

-- EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',16
EXEC sp_Insertar_Plantilla 'EQ08','JG165',16
EXEC sp_Insertar_Plantilla 'EQ08','JG166',16
EXEC sp_Insertar_Plantilla 'EQ08','JG171',16
EXEC sp_Insertar_Plantilla 'EQ08','JG172',16
EXEC sp_Insertar_Plantilla 'EQ08','JG173',16
EXEC sp_Insertar_Plantilla 'EQ08','JG174',16
EXEC sp_Insertar_Plantilla 'EQ08','JG175',16
EXEC sp_Insertar_Plantilla 'EQ08','JG178',16
EXEC sp_Insertar_Plantilla 'EQ08','JG179',16
EXEC sp_Insertar_Plantilla 'EQ08','JG180',16

/*-----------------------------  PARTIDO 17 ----------------------------------------------*/
--EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG025',17
EXEC sp_Insertar_Plantilla 'EQ02','JG030',17
EXEC sp_Insertar_Plantilla 'EQ02','JG031',17
EXEC sp_Insertar_Plantilla 'EQ02','JG032',17
EXEC sp_Insertar_Plantilla 'EQ02','JG037',17
EXEC sp_Insertar_Plantilla 'EQ02','JG038',17
EXEC sp_Insertar_Plantilla 'EQ02','JG039',17
EXEC sp_Insertar_Plantilla 'EQ02','JG042',17
EXEC sp_Insertar_Plantilla 'EQ02','JG043',17
EXEC sp_Insertar_Plantilla 'EQ02','JG044',17
EXEC sp_Insertar_Plantilla 'EQ02','JG045',17

-- EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG182',17
EXEC sp_Insertar_Plantilla 'EQ09','JG183',17
EXEC sp_Insertar_Plantilla 'EQ09','JG184',17
EXEC sp_Insertar_Plantilla 'EQ09','JG191',17
EXEC sp_Insertar_Plantilla 'EQ09','JG192',17
EXEC sp_Insertar_Plantilla 'EQ09','JG193',17
EXEC sp_Insertar_Plantilla 'EQ09','JG194',17
EXEC sp_Insertar_Plantilla 'EQ09','JG195',17
EXEC sp_Insertar_Plantilla 'EQ09','JG198',17
EXEC sp_Insertar_Plantilla 'EQ09','JG199',17
EXEC sp_Insertar_Plantilla 'EQ09','JG200',17

/*-----------------------------  PARTIDO 18 ----------------------------------------------*/
--EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG024',18
EXEC sp_Insertar_Plantilla 'EQ02','JG026',18
EXEC sp_Insertar_Plantilla 'EQ02','JG027',18
EXEC sp_Insertar_Plantilla 'EQ02','JG028',18
EXEC sp_Insertar_Plantilla 'EQ02','JG029',18
EXEC sp_Insertar_Plantilla 'EQ02','JG033',18
EXEC sp_Insertar_Plantilla 'EQ02','JG034',18
EXEC sp_Insertar_Plantilla 'EQ02','JG035',18
EXEC sp_Insertar_Plantilla 'EQ02','JG036',18
EXEC sp_Insertar_Plantilla 'EQ02','JG040',18
EXEC sp_Insertar_Plantilla 'EQ02','JG041',18

-- EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG212',18
EXEC sp_Insertar_Plantilla 'EQ10','JG206',18
EXEC sp_Insertar_Plantilla 'EQ10','JG207',18
EXEC sp_Insertar_Plantilla 'EQ10','JG216',18
EXEC sp_Insertar_Plantilla 'EQ10','JG217',18
EXEC sp_Insertar_Plantilla 'EQ10','JG220',18
EXEC sp_Insertar_Plantilla 'EQ10','JG221',18
EXEC sp_Insertar_Plantilla 'EQ10','JG222',18
EXEC sp_Insertar_Plantilla 'EQ10','JG223',18
EXEC sp_Insertar_Plantilla 'EQ10','JG214',18
EXEC sp_Insertar_Plantilla 'EQ10','JG215',18

/*-----------------------------  PARTIDO 19 ----------------------------------------------*/
--EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG047',19
EXEC sp_Insertar_Plantilla 'EQ03','JG049',19
EXEC sp_Insertar_Plantilla 'EQ03','JG050',19
EXEC sp_Insertar_Plantilla 'EQ03','JG051',19
EXEC sp_Insertar_Plantilla 'EQ03','JG052',19
EXEC sp_Insertar_Plantilla 'EQ03','JG054',19
EXEC sp_Insertar_Plantilla 'EQ03','JG055',19
EXEC sp_Insertar_Plantilla 'EQ03','JG056',19
EXEC sp_Insertar_Plantilla 'EQ03','JG057',19
EXEC sp_Insertar_Plantilla 'EQ03','JG065',19
EXEC sp_Insertar_Plantilla 'EQ03','JG066',19

-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG001',19
EXEC sp_Insertar_Plantilla 'EQ01','JG003',19
EXEC sp_Insertar_Plantilla 'EQ01','JG004',19
EXEC sp_Insertar_Plantilla 'EQ01','JG005',19
EXEC sp_Insertar_Plantilla 'EQ01','JG006',19
EXEC sp_Insertar_Plantilla 'EQ01','JG012',19
EXEC sp_Insertar_Plantilla 'EQ01','JG013',19
EXEC sp_Insertar_Plantilla 'EQ01','JG014',19
EXEC sp_Insertar_Plantilla 'EQ01','JG015',19
EXEC sp_Insertar_Plantilla 'EQ01','JG018',19
EXEC sp_Insertar_Plantilla 'EQ01','JG019',19

/*-----------------------------  PARTIDO 20 ----------------------------------------------*/
--EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG048',20
EXEC sp_Insertar_Plantilla 'EQ03','JG053',20
EXEC sp_Insertar_Plantilla 'EQ03','JG057',20
EXEC sp_Insertar_Plantilla 'EQ03','JG058',20
EXEC sp_Insertar_Plantilla 'EQ03','JG059',20
EXEC sp_Insertar_Plantilla 'EQ03','JG060',20
EXEC sp_Insertar_Plantilla 'EQ03','JG061',20
EXEC sp_Insertar_Plantilla 'EQ03','JG067',20
EXEC sp_Insertar_Plantilla 'EQ03','JG068',20
EXEC sp_Insertar_Plantilla 'EQ03','JG069',20
EXEC sp_Insertar_Plantilla 'EQ03','JG063',20

-- EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG024',20
EXEC sp_Insertar_Plantilla 'EQ02','JG026',20
EXEC sp_Insertar_Plantilla 'EQ02','JG027',20
EXEC sp_Insertar_Plantilla 'EQ02','JG028',20
EXEC sp_Insertar_Plantilla 'EQ02','JG029',20
EXEC sp_Insertar_Plantilla 'EQ02','JG033',20
EXEC sp_Insertar_Plantilla 'EQ02','JG034',20
EXEC sp_Insertar_Plantilla 'EQ02','JG035',20
EXEC sp_Insertar_Plantilla 'EQ02','JG036',20
EXEC sp_Insertar_Plantilla 'EQ02','JG040',20
EXEC sp_Insertar_Plantilla 'EQ02','JG041',20

/*-----------------------------  PARTIDO 21 ----------------------------------------------*/
--EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG047',21
EXEC sp_Insertar_Plantilla 'EQ03','JG049',21
EXEC sp_Insertar_Plantilla 'EQ03','JG050',21
EXEC sp_Insertar_Plantilla 'EQ03','JG051',21
EXEC sp_Insertar_Plantilla 'EQ03','JG052',21
EXEC sp_Insertar_Plantilla 'EQ03','JG054',21
EXEC sp_Insertar_Plantilla 'EQ03','JG055',21
EXEC sp_Insertar_Plantilla 'EQ03','JG056',21
EXEC sp_Insertar_Plantilla 'EQ03','JG057',21
EXEC sp_Insertar_Plantilla 'EQ03','JG065',21
EXEC sp_Insertar_Plantilla 'EQ03','JG066',21

-- EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',21
EXEC sp_Insertar_Plantilla 'EQ04','JG071',21
EXEC sp_Insertar_Plantilla 'EQ04','JG072',21
EXEC sp_Insertar_Plantilla 'EQ04','JG073',21
EXEC sp_Insertar_Plantilla 'EQ04','JG074',21
EXEC sp_Insertar_Plantilla 'EQ04','JG076',21
EXEC sp_Insertar_Plantilla 'EQ04','JG077',21
EXEC sp_Insertar_Plantilla 'EQ04','JG078',21
EXEC sp_Insertar_Plantilla 'EQ04','JG079',21
EXEC sp_Insertar_Plantilla 'EQ04','JG086',21
EXEC sp_Insertar_Plantilla 'EQ04','JG087',21

/*-----------------------------  PARTIDO 22 ----------------------------------------------*/
--EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG048',22
EXEC sp_Insertar_Plantilla 'EQ03','JG053',22
EXEC sp_Insertar_Plantilla 'EQ03','JG057',22
EXEC sp_Insertar_Plantilla 'EQ03','JG058',22
EXEC sp_Insertar_Plantilla 'EQ03','JG059',22
EXEC sp_Insertar_Plantilla 'EQ03','JG060',22
EXEC sp_Insertar_Plantilla 'EQ03','JG061',22
EXEC sp_Insertar_Plantilla 'EQ03','JG067',22
EXEC sp_Insertar_Plantilla 'EQ03','JG068',22
EXEC sp_Insertar_Plantilla 'EQ03','JG069',22
EXEC sp_Insertar_Plantilla 'EQ03','JG064',22


-- EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',22
EXEC sp_Insertar_Plantilla 'EQ05','JG094',22
EXEC sp_Insertar_Plantilla 'EQ05','JG095',22
EXEC sp_Insertar_Plantilla 'EQ05','JG096',22
EXEC sp_Insertar_Plantilla 'EQ05','JG097',22
EXEC sp_Insertar_Plantilla 'EQ05','JG101',22
EXEC sp_Insertar_Plantilla 'EQ05','JG102',22
EXEC sp_Insertar_Plantilla 'EQ05','JG103',22
EXEC sp_Insertar_Plantilla 'EQ05','JG104',22
EXEC sp_Insertar_Plantilla 'EQ05','JG111',22
EXEC sp_Insertar_Plantilla 'EQ05','JG112',22

/*-----------------------------  PARTIDO 23 ----------------------------------------------*/
--EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG047',23
EXEC sp_Insertar_Plantilla 'EQ03','JG049',23
EXEC sp_Insertar_Plantilla 'EQ03','JG050',23
EXEC sp_Insertar_Plantilla 'EQ03','JG051',23
EXEC sp_Insertar_Plantilla 'EQ03','JG052',23
EXEC sp_Insertar_Plantilla 'EQ03','JG054',23
EXEC sp_Insertar_Plantilla 'EQ03','JG055',23
EXEC sp_Insertar_Plantilla 'EQ03','JG056',23
EXEC sp_Insertar_Plantilla 'EQ03','JG057',23
EXEC sp_Insertar_Plantilla 'EQ03','JG065',23
EXEC sp_Insertar_Plantilla 'EQ03','JG066',23


-- EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG116',23
EXEC sp_Insertar_Plantilla 'EQ06','JG118',23
EXEC sp_Insertar_Plantilla 'EQ06','JG119',23
EXEC sp_Insertar_Plantilla 'EQ06','JG120',23
EXEC sp_Insertar_Plantilla 'EQ06','JG121',23
EXEC sp_Insertar_Plantilla 'EQ06','JG128',23
EXEC sp_Insertar_Plantilla 'EQ06','JG129',23
EXEC sp_Insertar_Plantilla 'EQ06','JG130',23
EXEC sp_Insertar_Plantilla 'EQ06','JG131',23
EXEC sp_Insertar_Plantilla 'EQ06','JG136',23
EXEC sp_Insertar_Plantilla 'EQ06','JG137',23

/*-----------------------------  PARTIDO 24 ----------------------------------------------*/
--EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG048',24
EXEC sp_Insertar_Plantilla 'EQ03','JG053',24
EXEC sp_Insertar_Plantilla 'EQ03','JG057',24
EXEC sp_Insertar_Plantilla 'EQ03','JG058',24
EXEC sp_Insertar_Plantilla 'EQ03','JG059',24
EXEC sp_Insertar_Plantilla 'EQ03','JG060',24
EXEC sp_Insertar_Plantilla 'EQ03','JG061',24
EXEC sp_Insertar_Plantilla 'EQ03','JG067',24
EXEC sp_Insertar_Plantilla 'EQ03','JG068',24
EXEC sp_Insertar_Plantilla 'EQ03','JG069',24
EXEC sp_Insertar_Plantilla 'EQ03','JG062',24


-- EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG139',24
EXEC sp_Insertar_Plantilla 'EQ07','JG141',24
EXEC sp_Insertar_Plantilla 'EQ07','JG142',24
EXEC sp_Insertar_Plantilla 'EQ07','JG143',24
EXEC sp_Insertar_Plantilla 'EQ07','JG144',24
EXEC sp_Insertar_Plantilla 'EQ07','JG147',24
EXEC sp_Insertar_Plantilla 'EQ07','JG148',24
EXEC sp_Insertar_Plantilla 'EQ07','JG149',24
EXEC sp_Insertar_Plantilla 'EQ07','JG150',24
EXEC sp_Insertar_Plantilla 'EQ07','JG157',24
EXEC sp_Insertar_Plantilla 'EQ07','JG158',24

/*-----------------------------  PARTIDO 25 ----------------------------------------------*/
--EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG047',25
EXEC sp_Insertar_Plantilla 'EQ03','JG049',25
EXEC sp_Insertar_Plantilla 'EQ03','JG050',25
EXEC sp_Insertar_Plantilla 'EQ03','JG051',25
EXEC sp_Insertar_Plantilla 'EQ03','JG052',25
EXEC sp_Insertar_Plantilla 'EQ03','JG054',25
EXEC sp_Insertar_Plantilla 'EQ03','JG055',25
EXEC sp_Insertar_Plantilla 'EQ03','JG056',25
EXEC sp_Insertar_Plantilla 'EQ03','JG057',25
EXEC sp_Insertar_Plantilla 'EQ03','JG065',25
EXEC sp_Insertar_Plantilla 'EQ03','JG066',25


-- EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',25
EXEC sp_Insertar_Plantilla 'EQ08','JG163',25
EXEC sp_Insertar_Plantilla 'EQ08','JG164',25
EXEC sp_Insertar_Plantilla 'EQ08','JG165',25
EXEC sp_Insertar_Plantilla 'EQ08','JG166',25
EXEC sp_Insertar_Plantilla 'EQ08','JG167',25
EXEC sp_Insertar_Plantilla 'EQ08','JG168',25
EXEC sp_Insertar_Plantilla 'EQ08','JG169',25
EXEC sp_Insertar_Plantilla 'EQ08','JG170',25
EXEC sp_Insertar_Plantilla 'EQ08','JG176',25
EXEC sp_Insertar_Plantilla 'EQ08','JG177',25

/*-----------------------------  PARTIDO 26 ----------------------------------------------*/
--EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG048',26
EXEC sp_Insertar_Plantilla 'EQ03','JG053',26
EXEC sp_Insertar_Plantilla 'EQ03','JG057',26
EXEC sp_Insertar_Plantilla 'EQ03','JG058',26
EXEC sp_Insertar_Plantilla 'EQ03','JG059',26
EXEC sp_Insertar_Plantilla 'EQ03','JG060',26
EXEC sp_Insertar_Plantilla 'EQ03','JG061',26
EXEC sp_Insertar_Plantilla 'EQ03','JG067',26
EXEC sp_Insertar_Plantilla 'EQ03','JG068',26
EXEC sp_Insertar_Plantilla 'EQ03','JG069',26
EXEC sp_Insertar_Plantilla 'EQ03','JG063',26


-- EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG181',26
EXEC sp_Insertar_Plantilla 'EQ09','JG183',26
EXEC sp_Insertar_Plantilla 'EQ09','JG184',26
EXEC sp_Insertar_Plantilla 'EQ09','JG185',26
EXEC sp_Insertar_Plantilla 'EQ09','JG186',26
EXEC sp_Insertar_Plantilla 'EQ09','JG187',26
EXEC sp_Insertar_Plantilla 'EQ09','JG188',26
EXEC sp_Insertar_Plantilla 'EQ09','JG189',26
EXEC sp_Insertar_Plantilla 'EQ09','JG190',26
EXEC sp_Insertar_Plantilla 'EQ09','JG196',26
EXEC sp_Insertar_Plantilla 'EQ09','JG197',26

/*-----------------------------  PARTIDO 27 ----------------------------------------------*/
--EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG047',27
EXEC sp_Insertar_Plantilla 'EQ03','JG049',27
EXEC sp_Insertar_Plantilla 'EQ03','JG050',27
EXEC sp_Insertar_Plantilla 'EQ03','JG051',27
EXEC sp_Insertar_Plantilla 'EQ03','JG052',27
EXEC sp_Insertar_Plantilla 'EQ03','JG054',27
EXEC sp_Insertar_Plantilla 'EQ03','JG055',27
EXEC sp_Insertar_Plantilla 'EQ03','JG056',27
EXEC sp_Insertar_Plantilla 'EQ03','JG057',27
EXEC sp_Insertar_Plantilla 'EQ03','JG065',27
EXEC sp_Insertar_Plantilla 'EQ03','JG066',27


-- EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG201',27
EXEC sp_Insertar_Plantilla 'EQ10','JG202',27
EXEC sp_Insertar_Plantilla 'EQ10','JG203',27
EXEC sp_Insertar_Plantilla 'EQ10','JG204',27
EXEC sp_Insertar_Plantilla 'EQ10','JG205',27
EXEC sp_Insertar_Plantilla 'EQ10','JG208',27
EXEC sp_Insertar_Plantilla 'EQ10','JG209',27
EXEC sp_Insertar_Plantilla 'EQ10','JG210',27
EXEC sp_Insertar_Plantilla 'EQ10','JG211',27
EXEC sp_Insertar_Plantilla 'EQ10','JG218',27
EXEC sp_Insertar_Plantilla 'EQ10','JG219',27

/*-----------------------------  PARTIDO 28 ----------------------------------------------*/
--EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',28
EXEC sp_Insertar_Plantilla 'EQ04','JG075',28
EXEC sp_Insertar_Plantilla 'EQ04','JG080',28
EXEC sp_Insertar_Plantilla 'EQ04','JG081',28
EXEC sp_Insertar_Plantilla 'EQ04','JG082',28
EXEC sp_Insertar_Plantilla 'EQ04','JG083',28
EXEC sp_Insertar_Plantilla 'EQ04','JG084',28
EXEC sp_Insertar_Plantilla 'EQ04','JG088',28
EXEC sp_Insertar_Plantilla 'EQ04','JG089',28
EXEC sp_Insertar_Plantilla 'EQ04','JG090',28
EXEC sp_Insertar_Plantilla 'EQ04','JG092',28


-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG002',28
EXEC sp_Insertar_Plantilla 'EQ01','JG007',28
EXEC sp_Insertar_Plantilla 'EQ01','JG008',28
EXEC sp_Insertar_Plantilla 'EQ01','JG009',28
EXEC sp_Insertar_Plantilla 'EQ01','JG011',28
EXEC sp_Insertar_Plantilla 'EQ01','JG016',28
EXEC sp_Insertar_Plantilla 'EQ01','JG017',28
EXEC sp_Insertar_Plantilla 'EQ01','JG020',28
EXEC sp_Insertar_Plantilla 'EQ01','JG021',28
EXEC sp_Insertar_Plantilla 'EQ01','JG022',28
EXEC sp_Insertar_Plantilla 'EQ01','JG023',28

/*-----------------------------  PARTIDO 29 ----------------------------------------------*/
--EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',29
EXEC sp_Insertar_Plantilla 'EQ04','JG071',29
EXEC sp_Insertar_Plantilla 'EQ04','JG072',29
EXEC sp_Insertar_Plantilla 'EQ04','JG073',29
EXEC sp_Insertar_Plantilla 'EQ04','JG074',29
EXEC sp_Insertar_Plantilla 'EQ04','JG076',29
EXEC sp_Insertar_Plantilla 'EQ04','JG077',29
EXEC sp_Insertar_Plantilla 'EQ04','JG078',29
EXEC sp_Insertar_Plantilla 'EQ04','JG079',29
EXEC sp_Insertar_Plantilla 'EQ04','JG085',29
EXEC sp_Insertar_Plantilla 'EQ04','JG086',29


-- EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG025',29
EXEC sp_Insertar_Plantilla 'EQ02','JG030',29
EXEC sp_Insertar_Plantilla 'EQ02','JG031',29
EXEC sp_Insertar_Plantilla 'EQ02','JG032',29
EXEC sp_Insertar_Plantilla 'EQ02','JG037',29
EXEC sp_Insertar_Plantilla 'EQ02','JG038',29
EXEC sp_Insertar_Plantilla 'EQ02','JG039',29
EXEC sp_Insertar_Plantilla 'EQ02','JG042',29
EXEC sp_Insertar_Plantilla 'EQ02','JG043',29
EXEC sp_Insertar_Plantilla 'EQ02','JG044',29
EXEC sp_Insertar_Plantilla 'EQ02','JG046',29

/*-----------------------------  PARTIDO 30 ----------------------------------------------*/
--EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',30
EXEC sp_Insertar_Plantilla 'EQ04','JG075',30
EXEC sp_Insertar_Plantilla 'EQ04','JG080',30
EXEC sp_Insertar_Plantilla 'EQ04','JG081',30
EXEC sp_Insertar_Plantilla 'EQ04','JG082',30
EXEC sp_Insertar_Plantilla 'EQ04','JG083',30
EXEC sp_Insertar_Plantilla 'EQ04','JG084',30
EXEC sp_Insertar_Plantilla 'EQ04','JG088',30
EXEC sp_Insertar_Plantilla 'EQ04','JG089',30
EXEC sp_Insertar_Plantilla 'EQ04','JG090',30
EXEC sp_Insertar_Plantilla 'EQ04','JG091',30


-- EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG048',30
EXEC sp_Insertar_Plantilla 'EQ03','JG053',30
EXEC sp_Insertar_Plantilla 'EQ03','JG057',30
EXEC sp_Insertar_Plantilla 'EQ03','JG058',30
EXEC sp_Insertar_Plantilla 'EQ03','JG059',30
EXEC sp_Insertar_Plantilla 'EQ03','JG060',30
EXEC sp_Insertar_Plantilla 'EQ03','JG061',30
EXEC sp_Insertar_Plantilla 'EQ03','JG067',30
EXEC sp_Insertar_Plantilla 'EQ03','JG068',30
EXEC sp_Insertar_Plantilla 'EQ03','JG069',30
EXEC sp_Insertar_Plantilla 'EQ03','JG063',30

/*-----------------------------  PARTIDO 31 ----------------------------------------------*/
--EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',31
EXEC sp_Insertar_Plantilla 'EQ04','JG071',31
EXEC sp_Insertar_Plantilla 'EQ04','JG072',31
EXEC sp_Insertar_Plantilla 'EQ04','JG073',31
EXEC sp_Insertar_Plantilla 'EQ04','JG074',31
EXEC sp_Insertar_Plantilla 'EQ04','JG076',31
EXEC sp_Insertar_Plantilla 'EQ04','JG077',31
EXEC sp_Insertar_Plantilla 'EQ04','JG078',31
EXEC sp_Insertar_Plantilla 'EQ04','JG079',31
EXEC sp_Insertar_Plantilla 'EQ04','JG085',31
EXEC sp_Insertar_Plantilla 'EQ04','JG087',31

-- EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',31
EXEC sp_Insertar_Plantilla 'EQ05','JG098',31
EXEC sp_Insertar_Plantilla 'EQ05','JG098',31
EXEC sp_Insertar_Plantilla 'EQ05','JG100',31
EXEC sp_Insertar_Plantilla 'EQ05','JG105',31
EXEC sp_Insertar_Plantilla 'EQ05','JG106',31
EXEC sp_Insertar_Plantilla 'EQ05','JG107',31
EXEC sp_Insertar_Plantilla 'EQ05','JG108',31
EXEC sp_Insertar_Plantilla 'EQ05','JG110',31
EXEC sp_Insertar_Plantilla 'EQ05','JG113',31
EXEC sp_Insertar_Plantilla 'EQ05','JG115',31


/*-----------------------------  PARTIDO 32 ----------------------------------------------*/
--EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',32
EXEC sp_Insertar_Plantilla 'EQ04','JG075',32
EXEC sp_Insertar_Plantilla 'EQ04','JG080',32
EXEC sp_Insertar_Plantilla 'EQ04','JG081',32
EXEC sp_Insertar_Plantilla 'EQ04','JG082',32
EXEC sp_Insertar_Plantilla 'EQ04','JG083',32
EXEC sp_Insertar_Plantilla 'EQ04','JG084',32
EXEC sp_Insertar_Plantilla 'EQ04','JG088',32
EXEC sp_Insertar_Plantilla 'EQ04','JG089',32
EXEC sp_Insertar_Plantilla 'EQ04','JG090',32
EXEC sp_Insertar_Plantilla 'EQ04','JG092',32

-- EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG117',32
EXEC sp_Insertar_Plantilla 'EQ06','JG122',32
EXEC sp_Insertar_Plantilla 'EQ06','JG123',32
EXEC sp_Insertar_Plantilla 'EQ06','JG124',32
EXEC sp_Insertar_Plantilla 'EQ06','JG125',32
EXEC sp_Insertar_Plantilla 'EQ06','JG127',32
EXEC sp_Insertar_Plantilla 'EQ06','JG132',32
EXEC sp_Insertar_Plantilla 'EQ06','JG133',32
EXEC sp_Insertar_Plantilla 'EQ06','JG134',32
EXEC sp_Insertar_Plantilla 'EQ06','JG135',32
EXEC sp_Insertar_Plantilla 'EQ06','JG138',32

/*-----------------------------  PARTIDO 33 ----------------------------------------------*/
--EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',33
EXEC sp_Insertar_Plantilla 'EQ04','JG071',33
EXEC sp_Insertar_Plantilla 'EQ04','JG072',33
EXEC sp_Insertar_Plantilla 'EQ04','JG073',33
EXEC sp_Insertar_Plantilla 'EQ04','JG074',33
EXEC sp_Insertar_Plantilla 'EQ04','JG076',33
EXEC sp_Insertar_Plantilla 'EQ04','JG077',33
EXEC sp_Insertar_Plantilla 'EQ04','JG078',33
EXEC sp_Insertar_Plantilla 'EQ04','JG079',33
EXEC sp_Insertar_Plantilla 'EQ04','JG085',33
EXEC sp_Insertar_Plantilla 'EQ04','JG086',33

-- EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG140',33
EXEC sp_Insertar_Plantilla 'EQ07','JG145',33
EXEC sp_Insertar_Plantilla 'EQ07','JG146',33
EXEC sp_Insertar_Plantilla 'EQ07','JG151',33
EXEC sp_Insertar_Plantilla 'EQ07','JG152',33
EXEC sp_Insertar_Plantilla 'EQ07','JG153',33
EXEC sp_Insertar_Plantilla 'EQ07','JG154',33
EXEC sp_Insertar_Plantilla 'EQ07','JG155',33
EXEC sp_Insertar_Plantilla 'EQ07','JG156',33
EXEC sp_Insertar_Plantilla 'EQ07','JG159',33
EXEC sp_Insertar_Plantilla 'EQ07','JG161',33


/*-----------------------------  PARTIDO 34 ----------------------------------------------*/
--EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',34
EXEC sp_Insertar_Plantilla 'EQ04','JG075',34
EXEC sp_Insertar_Plantilla 'EQ04','JG080',34
EXEC sp_Insertar_Plantilla 'EQ04','JG081',34
EXEC sp_Insertar_Plantilla 'EQ04','JG082',34
EXEC sp_Insertar_Plantilla 'EQ04','JG083',34
EXEC sp_Insertar_Plantilla 'EQ04','JG084',34
EXEC sp_Insertar_Plantilla 'EQ04','JG088',34
EXEC sp_Insertar_Plantilla 'EQ04','JG089',34
EXEC sp_Insertar_Plantilla 'EQ04','JG090',34
EXEC sp_Insertar_Plantilla 'EQ04','JG091',34

-- EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',34
EXEC sp_Insertar_Plantilla 'EQ08','JG165',34
EXEC sp_Insertar_Plantilla 'EQ08','JG166',34
EXEC sp_Insertar_Plantilla 'EQ08','JG171',34
EXEC sp_Insertar_Plantilla 'EQ08','JG172',34
EXEC sp_Insertar_Plantilla 'EQ08','JG173',34
EXEC sp_Insertar_Plantilla 'EQ08','JG174',34
EXEC sp_Insertar_Plantilla 'EQ08','JG175',34
EXEC sp_Insertar_Plantilla 'EQ08','JG178',34
EXEC sp_Insertar_Plantilla 'EQ08','JG179',34
EXEC sp_Insertar_Plantilla 'EQ08','JG180',34


/*-----------------------------  PARTIDO 35 ----------------------------------------------*/
--EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',35
EXEC sp_Insertar_Plantilla 'EQ04','JG071',35
EXEC sp_Insertar_Plantilla 'EQ04','JG072',35
EXEC sp_Insertar_Plantilla 'EQ04','JG073',35
EXEC sp_Insertar_Plantilla 'EQ04','JG074',35
EXEC sp_Insertar_Plantilla 'EQ04','JG076',35
EXEC sp_Insertar_Plantilla 'EQ04','JG077',35
EXEC sp_Insertar_Plantilla 'EQ04','JG078',35
EXEC sp_Insertar_Plantilla 'EQ04','JG079',35
EXEC sp_Insertar_Plantilla 'EQ04','JG085',35
EXEC sp_Insertar_Plantilla 'EQ04','JG087',35

-- EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG182',35
EXEC sp_Insertar_Plantilla 'EQ09','JG183',35
EXEC sp_Insertar_Plantilla 'EQ09','JG184',35
EXEC sp_Insertar_Plantilla 'EQ09','JG191',35
EXEC sp_Insertar_Plantilla 'EQ09','JG192',35
EXEC sp_Insertar_Plantilla 'EQ09','JG193',35
EXEC sp_Insertar_Plantilla 'EQ09','JG194',35
EXEC sp_Insertar_Plantilla 'EQ09','JG195',35
EXEC sp_Insertar_Plantilla 'EQ09','JG198',35
EXEC sp_Insertar_Plantilla 'EQ09','JG199',35
EXEC sp_Insertar_Plantilla 'EQ09','JG200',35


/*-----------------------------  PARTIDO 36 ----------------------------------------------*/
--EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',36
EXEC sp_Insertar_Plantilla 'EQ04','JG075',36
EXEC sp_Insertar_Plantilla 'EQ04','JG080',36
EXEC sp_Insertar_Plantilla 'EQ04','JG081',36
EXEC sp_Insertar_Plantilla 'EQ04','JG082',36
EXEC sp_Insertar_Plantilla 'EQ04','JG083',36
EXEC sp_Insertar_Plantilla 'EQ04','JG084',36
EXEC sp_Insertar_Plantilla 'EQ04','JG088',36
EXEC sp_Insertar_Plantilla 'EQ04','JG089',36
EXEC sp_Insertar_Plantilla 'EQ04','JG090',36
EXEC sp_Insertar_Plantilla 'EQ04','JG092',36

-- EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG213',36
EXEC sp_Insertar_Plantilla 'EQ10','JG206',36
EXEC sp_Insertar_Plantilla 'EQ10','JG207',36
EXEC sp_Insertar_Plantilla 'EQ10','JG216',36
EXEC sp_Insertar_Plantilla 'EQ10','JG217',36
EXEC sp_Insertar_Plantilla 'EQ10','JG220',36
EXEC sp_Insertar_Plantilla 'EQ10','JG221',36
EXEC sp_Insertar_Plantilla 'EQ10','JG222',36
EXEC sp_Insertar_Plantilla 'EQ10','JG223',36
EXEC sp_Insertar_Plantilla 'EQ10','JG214',36
EXEC sp_Insertar_Plantilla 'EQ10','JG215',36


/*-----------------------------  PARTIDO 37 ----------------------------------------------*/
--EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',37
EXEC sp_Insertar_Plantilla 'EQ05','JG094',37
EXEC sp_Insertar_Plantilla 'EQ05','JG095',37
EXEC sp_Insertar_Plantilla 'EQ05','JG096',37
EXEC sp_Insertar_Plantilla 'EQ05','JG097',37
EXEC sp_Insertar_Plantilla 'EQ05','JG101',37
EXEC sp_Insertar_Plantilla 'EQ05','JG102',37
EXEC sp_Insertar_Plantilla 'EQ05','JG103',37
EXEC sp_Insertar_Plantilla 'EQ05','JG104',37
EXEC sp_Insertar_Plantilla 'EQ05','JG111',37
EXEC sp_Insertar_Plantilla 'EQ05','JG112',37

-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG001',37
EXEC sp_Insertar_Plantilla 'EQ01','JG003',37
EXEC sp_Insertar_Plantilla 'EQ01','JG004',37
EXEC sp_Insertar_Plantilla 'EQ01','JG005',37
EXEC sp_Insertar_Plantilla 'EQ01','JG006',37
EXEC sp_Insertar_Plantilla 'EQ01','JG012',37
EXEC sp_Insertar_Plantilla 'EQ01','JG013',37
EXEC sp_Insertar_Plantilla 'EQ01','JG014',37
EXEC sp_Insertar_Plantilla 'EQ01','JG015',37
EXEC sp_Insertar_Plantilla 'EQ01','JG018',37
EXEC sp_Insertar_Plantilla 'EQ01','JG019',37


/*-----------------------------  PARTIDO 38 ----------------------------------------------*/
--EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',38
EXEC sp_Insertar_Plantilla 'EQ05','JG098',38
EXEC sp_Insertar_Plantilla 'EQ05','JG099',38
EXEC sp_Insertar_Plantilla 'EQ05','JG100',38
EXEC sp_Insertar_Plantilla 'EQ05','JG105',38
EXEC sp_Insertar_Plantilla 'EQ05','JG106',38
EXEC sp_Insertar_Plantilla 'EQ05','JG107',38
EXEC sp_Insertar_Plantilla 'EQ05','JG108',38
EXEC sp_Insertar_Plantilla 'EQ05','JG109',38
EXEC sp_Insertar_Plantilla 'EQ05','JG113',38
EXEC sp_Insertar_Plantilla 'EQ05','JG114',38

-- EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG024',38
EXEC sp_Insertar_Plantilla 'EQ02','JG026',38
EXEC sp_Insertar_Plantilla 'EQ02','JG027',38
EXEC sp_Insertar_Plantilla 'EQ02','JG028',38
EXEC sp_Insertar_Plantilla 'EQ02','JG029',38
EXEC sp_Insertar_Plantilla 'EQ02','JG033',38
EXEC sp_Insertar_Plantilla 'EQ02','JG034',38
EXEC sp_Insertar_Plantilla 'EQ02','JG035',38
EXEC sp_Insertar_Plantilla 'EQ02','JG036',38
EXEC sp_Insertar_Plantilla 'EQ02','JG040',38
EXEC sp_Insertar_Plantilla 'EQ02','JG041',38


/*-----------------------------  PARTIDO 39 ----------------------------------------------*/
--EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',39
EXEC sp_Insertar_Plantilla 'EQ05','JG094',39
EXEC sp_Insertar_Plantilla 'EQ05','JG095',39
EXEC sp_Insertar_Plantilla 'EQ05','JG096',39
EXEC sp_Insertar_Plantilla 'EQ05','JG097',39
EXEC sp_Insertar_Plantilla 'EQ05','JG101',39
EXEC sp_Insertar_Plantilla 'EQ05','JG102',39
EXEC sp_Insertar_Plantilla 'EQ05','JG103',39
EXEC sp_Insertar_Plantilla 'EQ05','JG104',39
EXEC sp_Insertar_Plantilla 'EQ05','JG111',39
EXEC sp_Insertar_Plantilla 'EQ05','JG112',39

-- EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG047',39
EXEC sp_Insertar_Plantilla 'EQ03','JG049',39
EXEC sp_Insertar_Plantilla 'EQ03','JG050',39
EXEC sp_Insertar_Plantilla 'EQ03','JG051',39
EXEC sp_Insertar_Plantilla 'EQ03','JG052',39
EXEC sp_Insertar_Plantilla 'EQ03','JG054',39
EXEC sp_Insertar_Plantilla 'EQ03','JG055',39
EXEC sp_Insertar_Plantilla 'EQ03','JG056',39
EXEC sp_Insertar_Plantilla 'EQ03','JG057',39
EXEC sp_Insertar_Plantilla 'EQ03','JG065',39
EXEC sp_Insertar_Plantilla 'EQ03','JG066',39


/*-----------------------------  PARTIDO 40 ----------------------------------------------*/
--EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',40
EXEC sp_Insertar_Plantilla 'EQ05','JG098',40
EXEC sp_Insertar_Plantilla 'EQ05','JG099',40
EXEC sp_Insertar_Plantilla 'EQ05','JG100',40
EXEC sp_Insertar_Plantilla 'EQ05','JG105',40
EXEC sp_Insertar_Plantilla 'EQ05','JG106',40
EXEC sp_Insertar_Plantilla 'EQ05','JG107',40
EXEC sp_Insertar_Plantilla 'EQ05','JG108',40
EXEC sp_Insertar_Plantilla 'EQ05','JG110',40
EXEC sp_Insertar_Plantilla 'EQ05','JG113',40
EXEC sp_Insertar_Plantilla 'EQ05','JG115',40

-- EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',40
EXEC sp_Insertar_Plantilla 'EQ04','JG071',40
EXEC sp_Insertar_Plantilla 'EQ04','JG072',40
EXEC sp_Insertar_Plantilla 'EQ04','JG073',40
EXEC sp_Insertar_Plantilla 'EQ04','JG074',40
EXEC sp_Insertar_Plantilla 'EQ04','JG076',40
EXEC sp_Insertar_Plantilla 'EQ04','JG077',40
EXEC sp_Insertar_Plantilla 'EQ04','JG078',40
EXEC sp_Insertar_Plantilla 'EQ04','JG079',40
EXEC sp_Insertar_Plantilla 'EQ04','JG085',40
EXEC sp_Insertar_Plantilla 'EQ04','JG086',40


/*-----------------------------  PARTIDO 41 ----------------------------------------------*/
--EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',41
EXEC sp_Insertar_Plantilla 'EQ05','JG094',41
EXEC sp_Insertar_Plantilla 'EQ05','JG095',41
EXEC sp_Insertar_Plantilla 'EQ05','JG096',41
EXEC sp_Insertar_Plantilla 'EQ05','JG097',41
EXEC sp_Insertar_Plantilla 'EQ05','JG101',41
EXEC sp_Insertar_Plantilla 'EQ05','JG102',41
EXEC sp_Insertar_Plantilla 'EQ05','JG103',41
EXEC sp_Insertar_Plantilla 'EQ05','JG104',41
EXEC sp_Insertar_Plantilla 'EQ05','JG111',41
EXEC sp_Insertar_Plantilla 'EQ05','JG112',41

-- EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG116',41
EXEC sp_Insertar_Plantilla 'EQ06','JG118',41
EXEC sp_Insertar_Plantilla 'EQ06','JG119',41
EXEC sp_Insertar_Plantilla 'EQ06','JG120',41
EXEC sp_Insertar_Plantilla 'EQ06','JG121',41
EXEC sp_Insertar_Plantilla 'EQ06','JG128',41
EXEC sp_Insertar_Plantilla 'EQ06','JG129',41
EXEC sp_Insertar_Plantilla 'EQ06','JG130',41
EXEC sp_Insertar_Plantilla 'EQ06','JG131',41
EXEC sp_Insertar_Plantilla 'EQ06','JG136',41
EXEC sp_Insertar_Plantilla 'EQ06','JG137',41


/*-----------------------------  PARTIDO 42 ----------------------------------------------*/
--EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',42
EXEC sp_Insertar_Plantilla 'EQ05','JG098',42
EXEC sp_Insertar_Plantilla 'EQ05','JG099',42
EXEC sp_Insertar_Plantilla 'EQ05','JG100',42
EXEC sp_Insertar_Plantilla 'EQ05','JG105',42
EXEC sp_Insertar_Plantilla 'EQ05','JG106',42
EXEC sp_Insertar_Plantilla 'EQ05','JG107',42
EXEC sp_Insertar_Plantilla 'EQ05','JG108',42
EXEC sp_Insertar_Plantilla 'EQ05','JG110',42
EXEC sp_Insertar_Plantilla 'EQ05','JG113',42
EXEC sp_Insertar_Plantilla 'EQ05','JG115',42

-- EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG139',42
EXEC sp_Insertar_Plantilla 'EQ07','JG141',42
EXEC sp_Insertar_Plantilla 'EQ07','JG142',42
EXEC sp_Insertar_Plantilla 'EQ07','JG143',42
EXEC sp_Insertar_Plantilla 'EQ07','JG144',42
EXEC sp_Insertar_Plantilla 'EQ07','JG147',42
EXEC sp_Insertar_Plantilla 'EQ07','JG148',42
EXEC sp_Insertar_Plantilla 'EQ07','JG149',42
EXEC sp_Insertar_Plantilla 'EQ07','JG150',42
EXEC sp_Insertar_Plantilla 'EQ07','JG157',42
EXEC sp_Insertar_Plantilla 'EQ07','JG158',42


/*-----------------------------  PARTIDO 43 ----------------------------------------------*/
--EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',43
EXEC sp_Insertar_Plantilla 'EQ05','JG094',43
EXEC sp_Insertar_Plantilla 'EQ05','JG095',43
EXEC sp_Insertar_Plantilla 'EQ05','JG096',43
EXEC sp_Insertar_Plantilla 'EQ05','JG097',43
EXEC sp_Insertar_Plantilla 'EQ05','JG101',43
EXEC sp_Insertar_Plantilla 'EQ05','JG102',43
EXEC sp_Insertar_Plantilla 'EQ05','JG103',43
EXEC sp_Insertar_Plantilla 'EQ05','JG104',43
EXEC sp_Insertar_Plantilla 'EQ05','JG111',43
EXEC sp_Insertar_Plantilla 'EQ05','JG112',43

-- EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',43
EXEC sp_Insertar_Plantilla 'EQ08','JG163',43
EXEC sp_Insertar_Plantilla 'EQ08','JG164',43
EXEC sp_Insertar_Plantilla 'EQ08','JG165',43
EXEC sp_Insertar_Plantilla 'EQ08','JG166',43
EXEC sp_Insertar_Plantilla 'EQ08','JG167',43
EXEC sp_Insertar_Plantilla 'EQ08','JG168',43
EXEC sp_Insertar_Plantilla 'EQ08','JG169',43
EXEC sp_Insertar_Plantilla 'EQ08','JG170',43
EXEC sp_Insertar_Plantilla 'EQ08','JG176',43
EXEC sp_Insertar_Plantilla 'EQ08','JG177',43


/*-----------------------------  PARTIDO 44 ----------------------------------------------*/
--EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',44
EXEC sp_Insertar_Plantilla 'EQ05','JG098',44
EXEC sp_Insertar_Plantilla 'EQ05','JG099',44
EXEC sp_Insertar_Plantilla 'EQ05','JG100',44
EXEC sp_Insertar_Plantilla 'EQ05','JG105',44
EXEC sp_Insertar_Plantilla 'EQ05','JG106',44
EXEC sp_Insertar_Plantilla 'EQ05','JG107',44
EXEC sp_Insertar_Plantilla 'EQ05','JG108',44
EXEC sp_Insertar_Plantilla 'EQ05','JG109',44
EXEC sp_Insertar_Plantilla 'EQ05','JG113',44
EXEC sp_Insertar_Plantilla 'EQ05','JG114',44

-- EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG181',44
EXEC sp_Insertar_Plantilla 'EQ09','JG183',44
EXEC sp_Insertar_Plantilla 'EQ09','JG184',44
EXEC sp_Insertar_Plantilla 'EQ09','JG185',44
EXEC sp_Insertar_Plantilla 'EQ09','JG186',44
EXEC sp_Insertar_Plantilla 'EQ09','JG187',44
EXEC sp_Insertar_Plantilla 'EQ09','JG188',44
EXEC sp_Insertar_Plantilla 'EQ09','JG189',44
EXEC sp_Insertar_Plantilla 'EQ09','JG190',44
EXEC sp_Insertar_Plantilla 'EQ09','JG196',44
EXEC sp_Insertar_Plantilla 'EQ09','JG197',44


/*-----------------------------  PARTIDO 45 ----------------------------------------------*/
--EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',45
EXEC sp_Insertar_Plantilla 'EQ05','JG094',45
EXEC sp_Insertar_Plantilla 'EQ05','JG095',45
EXEC sp_Insertar_Plantilla 'EQ05','JG096',45
EXEC sp_Insertar_Plantilla 'EQ05','JG097',45
EXEC sp_Insertar_Plantilla 'EQ05','JG101',45
EXEC sp_Insertar_Plantilla 'EQ05','JG102',45
EXEC sp_Insertar_Plantilla 'EQ05','JG103',45
EXEC sp_Insertar_Plantilla 'EQ05','JG104',45
EXEC sp_Insertar_Plantilla 'EQ05','JG111',45
EXEC sp_Insertar_Plantilla 'EQ05','JG112',45

-- EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG201',45
EXEC sp_Insertar_Plantilla 'EQ10','JG202',45
EXEC sp_Insertar_Plantilla 'EQ10','JG203',45
EXEC sp_Insertar_Plantilla 'EQ10','JG204',45
EXEC sp_Insertar_Plantilla 'EQ10','JG205',45
EXEC sp_Insertar_Plantilla 'EQ10','JG208',45
EXEC sp_Insertar_Plantilla 'EQ10','JG209',45
EXEC sp_Insertar_Plantilla 'EQ10','JG218',45
EXEC sp_Insertar_Plantilla 'EQ10','JG219',45
EXEC sp_Insertar_Plantilla 'EQ10','JG210',45
EXEC sp_Insertar_Plantilla 'EQ10','JG211',45


/*-----------------------------  PARTIDO 46 ----------------------------------------------*/
--EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG117',46
EXEC sp_Insertar_Plantilla 'EQ06','JG122',46
EXEC sp_Insertar_Plantilla 'EQ06','JG123',46
EXEC sp_Insertar_Plantilla 'EQ06','JG124',46
EXEC sp_Insertar_Plantilla 'EQ06','JG125',46
EXEC sp_Insertar_Plantilla 'EQ06','JG126',46
EXEC sp_Insertar_Plantilla 'EQ06','JG132',46
EXEC sp_Insertar_Plantilla 'EQ06','JG133',46
EXEC sp_Insertar_Plantilla 'EQ06','JG134',46
EXEC sp_Insertar_Plantilla 'EQ06','JG135',46
EXEC sp_Insertar_Plantilla 'EQ06','JG138',46

-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG002',46
EXEC sp_Insertar_Plantilla 'EQ01','JG007',46
EXEC sp_Insertar_Plantilla 'EQ01','JG008',46
EXEC sp_Insertar_Plantilla 'EQ01','JG009',46
EXEC sp_Insertar_Plantilla 'EQ01','JG010',46
EXEC sp_Insertar_Plantilla 'EQ01','JG016',46
EXEC sp_Insertar_Plantilla 'EQ01','JG017',46
EXEC sp_Insertar_Plantilla 'EQ01','JG020',46
EXEC sp_Insertar_Plantilla 'EQ01','JG021',46
EXEC sp_Insertar_Plantilla 'EQ01','JG022',46
EXEC sp_Insertar_Plantilla 'EQ01','JG023',46


/*-----------------------------  PARTIDO 47 ----------------------------------------------*/
--EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG117',47
EXEC sp_Insertar_Plantilla 'EQ06','JG118',47
EXEC sp_Insertar_Plantilla 'EQ06','JG119',47
EXEC sp_Insertar_Plantilla 'EQ06','JG120',47
EXEC sp_Insertar_Plantilla 'EQ06','JG121',47
EXEC sp_Insertar_Plantilla 'EQ06','JG128',47
EXEC sp_Insertar_Plantilla 'EQ06','JG139',47
EXEC sp_Insertar_Plantilla 'EQ06','JG130',47
EXEC sp_Insertar_Plantilla 'EQ06','JG131',47
EXEC sp_Insertar_Plantilla 'EQ06','JG136',47
EXEC sp_Insertar_Plantilla 'EQ06','JG137',47

-- EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG025',47
EXEC sp_Insertar_Plantilla 'EQ02','JG030',47
EXEC sp_Insertar_Plantilla 'EQ02','JG031',47
EXEC sp_Insertar_Plantilla 'EQ02','JG032',47
EXEC sp_Insertar_Plantilla 'EQ02','JG037',47
EXEC sp_Insertar_Plantilla 'EQ02','JG038',47
EXEC sp_Insertar_Plantilla 'EQ02','JG039',47
EXEC sp_Insertar_Plantilla 'EQ02','JG042',47
EXEC sp_Insertar_Plantilla 'EQ02','JG043',47
EXEC sp_Insertar_Plantilla 'EQ02','JG044',47
EXEC sp_Insertar_Plantilla 'EQ02','JG045',47


/*-----------------------------  PARTIDO 48 ----------------------------------------------*/
--EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG117',48
EXEC sp_Insertar_Plantilla 'EQ06','JG122',48
EXEC sp_Insertar_Plantilla 'EQ06','JG123',48
EXEC sp_Insertar_Plantilla 'EQ06','JG124',48
EXEC sp_Insertar_Plantilla 'EQ06','JG125',48
EXEC sp_Insertar_Plantilla 'EQ06','JG126',48
EXEC sp_Insertar_Plantilla 'EQ06','JG132',48
EXEC sp_Insertar_Plantilla 'EQ06','JG133',48
EXEC sp_Insertar_Plantilla 'EQ06','JG134',48
EXEC sp_Insertar_Plantilla 'EQ06','JG135',48
EXEC sp_Insertar_Plantilla 'EQ06','JG138',48

-- EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG048',48
EXEC sp_Insertar_Plantilla 'EQ03','JG053',48
EXEC sp_Insertar_Plantilla 'EQ03','JG057',48
EXEC sp_Insertar_Plantilla 'EQ03','JG058',48
EXEC sp_Insertar_Plantilla 'EQ03','JG059',48
EXEC sp_Insertar_Plantilla 'EQ03','JG060',48
EXEC sp_Insertar_Plantilla 'EQ03','JG061',48
EXEC sp_Insertar_Plantilla 'EQ03','JG067',48
EXEC sp_Insertar_Plantilla 'EQ03','JG068',48
EXEC sp_Insertar_Plantilla 'EQ03','JG069',48
EXEC sp_Insertar_Plantilla 'EQ03','JG064',48


/*-----------------------------  PARTIDO 49 ----------------------------------------------*/
--EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG117',49
EXEC sp_Insertar_Plantilla 'EQ06','JG118',49
EXEC sp_Insertar_Plantilla 'EQ06','JG119',49
EXEC sp_Insertar_Plantilla 'EQ06','JG120',49
EXEC sp_Insertar_Plantilla 'EQ06','JG121',49
EXEC sp_Insertar_Plantilla 'EQ06','JG128',49
EXEC sp_Insertar_Plantilla 'EQ06','JG139',49
EXEC sp_Insertar_Plantilla 'EQ06','JG130',49
EXEC sp_Insertar_Plantilla 'EQ06','JG131',49
EXEC sp_Insertar_Plantilla 'EQ06','JG136',49
EXEC sp_Insertar_Plantilla 'EQ06','JG137',49

-- EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',49
EXEC sp_Insertar_Plantilla 'EQ04','JG075',49
EXEC sp_Insertar_Plantilla 'EQ04','JG080',49
EXEC sp_Insertar_Plantilla 'EQ04','JG081',49
EXEC sp_Insertar_Plantilla 'EQ04','JG082',49
EXEC sp_Insertar_Plantilla 'EQ04','JG083',49
EXEC sp_Insertar_Plantilla 'EQ04','JG084',49
EXEC sp_Insertar_Plantilla 'EQ04','JG088',49
EXEC sp_Insertar_Plantilla 'EQ04','JG089',49
EXEC sp_Insertar_Plantilla 'EQ04','JG090',49
EXEC sp_Insertar_Plantilla 'EQ04','JG091',49


/*-----------------------------  PARTIDO 50 ----------------------------------------------*/
--EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG117',50
EXEC sp_Insertar_Plantilla 'EQ06','JG122',50
EXEC sp_Insertar_Plantilla 'EQ06','JG123',50
EXEC sp_Insertar_Plantilla 'EQ06','JG124',50
EXEC sp_Insertar_Plantilla 'EQ06','JG125',50
EXEC sp_Insertar_Plantilla 'EQ06','JG127',50
EXEC sp_Insertar_Plantilla 'EQ06','JG132',50
EXEC sp_Insertar_Plantilla 'EQ06','JG133',50
EXEC sp_Insertar_Plantilla 'EQ06','JG134',50
EXEC sp_Insertar_Plantilla 'EQ06','JG135',50
EXEC sp_Insertar_Plantilla 'EQ06','JG138',50

-- EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',50
EXEC sp_Insertar_Plantilla 'EQ05','JG098',50
EXEC sp_Insertar_Plantilla 'EQ05','JG099',50
EXEC sp_Insertar_Plantilla 'EQ05','JG100',50
EXEC sp_Insertar_Plantilla 'EQ05','JG105',50
EXEC sp_Insertar_Plantilla 'EQ05','JG106',50
EXEC sp_Insertar_Plantilla 'EQ05','JG107',50
EXEC sp_Insertar_Plantilla 'EQ05','JG108',50
EXEC sp_Insertar_Plantilla 'EQ05','JG110',50
EXEC sp_Insertar_Plantilla 'EQ05','JG113',50
EXEC sp_Insertar_Plantilla 'EQ05','JG115',50


/*-----------------------------  PARTIDO 51 ----------------------------------------------*/
--EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG117',51
EXEC sp_Insertar_Plantilla 'EQ06','JG118',51
EXEC sp_Insertar_Plantilla 'EQ06','JG119',51
EXEC sp_Insertar_Plantilla 'EQ06','JG120',51
EXEC sp_Insertar_Plantilla 'EQ06','JG121',51
EXEC sp_Insertar_Plantilla 'EQ06','JG128',51
EXEC sp_Insertar_Plantilla 'EQ06','JG139',51
EXEC sp_Insertar_Plantilla 'EQ06','JG130',51
EXEC sp_Insertar_Plantilla 'EQ06','JG131',51
EXEC sp_Insertar_Plantilla 'EQ06','JG136',51
EXEC sp_Insertar_Plantilla 'EQ06','JG137',51

-- EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG140',51
EXEC sp_Insertar_Plantilla 'EQ07','JG145',51
EXEC sp_Insertar_Plantilla 'EQ07','JG146',51
EXEC sp_Insertar_Plantilla 'EQ07','JG151',51
EXEC sp_Insertar_Plantilla 'EQ07','JG152',51
EXEC sp_Insertar_Plantilla 'EQ07','JG153',51
EXEC sp_Insertar_Plantilla 'EQ07','JG154',51
EXEC sp_Insertar_Plantilla 'EQ07','JG155',51
EXEC sp_Insertar_Plantilla 'EQ07','JG156',51
EXEC sp_Insertar_Plantilla 'EQ07','JG119',51
EXEC sp_Insertar_Plantilla 'EQ07','JG161',51


/*-----------------------------  PARTIDO 52 ----------------------------------------------*/
--EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG117',52
EXEC sp_Insertar_Plantilla 'EQ06','JG122',52
EXEC sp_Insertar_Plantilla 'EQ06','JG123',52
EXEC sp_Insertar_Plantilla 'EQ06','JG124',52
EXEC sp_Insertar_Plantilla 'EQ06','JG125',52
EXEC sp_Insertar_Plantilla 'EQ06','JG126',52
EXEC sp_Insertar_Plantilla 'EQ06','JG132',52
EXEC sp_Insertar_Plantilla 'EQ06','JG133',52
EXEC sp_Insertar_Plantilla 'EQ06','JG134',52
EXEC sp_Insertar_Plantilla 'EQ06','JG135',52
EXEC sp_Insertar_Plantilla 'EQ06','JG138',52

-- EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',52
EXEC sp_Insertar_Plantilla 'EQ08','JG165',52
EXEC sp_Insertar_Plantilla 'EQ08','JG166',52
EXEC sp_Insertar_Plantilla 'EQ08','JG171',52
EXEC sp_Insertar_Plantilla 'EQ08','JG172',52
EXEC sp_Insertar_Plantilla 'EQ08','JG173',52
EXEC sp_Insertar_Plantilla 'EQ08','JG174',52
EXEC sp_Insertar_Plantilla 'EQ08','JG175',52
EXEC sp_Insertar_Plantilla 'EQ08','JG178',52
EXEC sp_Insertar_Plantilla 'EQ08','JG179',52
EXEC sp_Insertar_Plantilla 'EQ08','JG180',52


/*-----------------------------  PARTIDO 53 ----------------------------------------------*/
--EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG117',53
EXEC sp_Insertar_Plantilla 'EQ06','JG118',53
EXEC sp_Insertar_Plantilla 'EQ06','JG119',53
EXEC sp_Insertar_Plantilla 'EQ06','JG120',53
EXEC sp_Insertar_Plantilla 'EQ06','JG121',53
EXEC sp_Insertar_Plantilla 'EQ06','JG128',53
EXEC sp_Insertar_Plantilla 'EQ06','JG139',53
EXEC sp_Insertar_Plantilla 'EQ06','JG130',53
EXEC sp_Insertar_Plantilla 'EQ06','JG131',53
EXEC sp_Insertar_Plantilla 'EQ06','JG136',53
EXEC sp_Insertar_Plantilla 'EQ06','JG137',53

-- EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG182',53
EXEC sp_Insertar_Plantilla 'EQ09','JG183',53
EXEC sp_Insertar_Plantilla 'EQ09','JG184',53
EXEC sp_Insertar_Plantilla 'EQ09','JG191',53
EXEC sp_Insertar_Plantilla 'EQ09','JG192',53
EXEC sp_Insertar_Plantilla 'EQ09','JG193',53
EXEC sp_Insertar_Plantilla 'EQ09','JG194',53
EXEC sp_Insertar_Plantilla 'EQ09','JG195',53
EXEC sp_Insertar_Plantilla 'EQ09','JG198',53
EXEC sp_Insertar_Plantilla 'EQ09','JG199',53
EXEC sp_Insertar_Plantilla 'EQ09','JG200',53


/*-----------------------------  PARTIDO 54 ----------------------------------------------*/
--EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG117',54
EXEC sp_Insertar_Plantilla 'EQ06','JG122',54
EXEC sp_Insertar_Plantilla 'EQ06','JG123',54
EXEC sp_Insertar_Plantilla 'EQ06','JG124',54
EXEC sp_Insertar_Plantilla 'EQ06','JG125',54
EXEC sp_Insertar_Plantilla 'EQ06','JG127',54
EXEC sp_Insertar_Plantilla 'EQ06','JG132',54
EXEC sp_Insertar_Plantilla 'EQ06','JG133',54
EXEC sp_Insertar_Plantilla 'EQ06','JG134',54
EXEC sp_Insertar_Plantilla 'EQ06','JG135',54
EXEC sp_Insertar_Plantilla 'EQ06','JG138',54

-- EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG213',54
EXEC sp_Insertar_Plantilla 'EQ10','JG206',54
EXEC sp_Insertar_Plantilla 'EQ10','JG207',54
EXEC sp_Insertar_Plantilla 'EQ10','JG216',54
EXEC sp_Insertar_Plantilla 'EQ10','JG217',54
EXEC sp_Insertar_Plantilla 'EQ10','JG220',54
EXEC sp_Insertar_Plantilla 'EQ10','JG221',54
EXEC sp_Insertar_Plantilla 'EQ10','JG222',54
EXEC sp_Insertar_Plantilla 'EQ10','JG223',54
EXEC sp_Insertar_Plantilla 'EQ10','JG214',54
EXEC sp_Insertar_Plantilla 'EQ10','JG215',54


/*-----------------------------  PARTIDO 55 ----------------------------------------------*/
--EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG139',55
EXEC sp_Insertar_Plantilla 'EQ07','JG141',55
EXEC sp_Insertar_Plantilla 'EQ07','JG142',55
EXEC sp_Insertar_Plantilla 'EQ07','JG143',55
EXEC sp_Insertar_Plantilla 'EQ07','JG144',55
EXEC sp_Insertar_Plantilla 'EQ07','JG147',55
EXEC sp_Insertar_Plantilla 'EQ07','JG148',55
EXEC sp_Insertar_Plantilla 'EQ07','JG149',55
EXEC sp_Insertar_Plantilla 'EQ07','JG150',55
EXEC sp_Insertar_Plantilla 'EQ07','JG157',55
EXEC sp_Insertar_Plantilla 'EQ07','JG158',55

-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG001',55
EXEC sp_Insertar_Plantilla 'EQ01','JG003',55
EXEC sp_Insertar_Plantilla 'EQ01','JG004',55
EXEC sp_Insertar_Plantilla 'EQ01','JG005',55
EXEC sp_Insertar_Plantilla 'EQ01','JG006',55
EXEC sp_Insertar_Plantilla 'EQ01','JG012',55
EXEC sp_Insertar_Plantilla 'EQ01','JG013',55
EXEC sp_Insertar_Plantilla 'EQ01','JG014',55
EXEC sp_Insertar_Plantilla 'EQ01','JG015',55
EXEC sp_Insertar_Plantilla 'EQ01','JG018',55
EXEC sp_Insertar_Plantilla 'EQ01','JG019',55


/*-----------------------------  PARTIDO 56 ----------------------------------------------*/
--EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG140',56
EXEC sp_Insertar_Plantilla 'EQ07','JG145',56
EXEC sp_Insertar_Plantilla 'EQ07','JG146',56
EXEC sp_Insertar_Plantilla 'EQ07','JG151',56
EXEC sp_Insertar_Plantilla 'EQ07','JG152',56
EXEC sp_Insertar_Plantilla 'EQ07','JG153',56
EXEC sp_Insertar_Plantilla 'EQ07','JG154',56
EXEC sp_Insertar_Plantilla 'EQ07','JG155',56
EXEC sp_Insertar_Plantilla 'EQ07','JG156',56
EXEC sp_Insertar_Plantilla 'EQ07','JG159',56
EXEC sp_Insertar_Plantilla 'EQ07','JG160',56

-- EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG024',56
EXEC sp_Insertar_Plantilla 'EQ02','JG026',56
EXEC sp_Insertar_Plantilla 'EQ02','JG027',56
EXEC sp_Insertar_Plantilla 'EQ02','JG028',56
EXEC sp_Insertar_Plantilla 'EQ02','JG029',56
EXEC sp_Insertar_Plantilla 'EQ02','JG033',56
EXEC sp_Insertar_Plantilla 'EQ02','JG034',56
EXEC sp_Insertar_Plantilla 'EQ02','JG035',56
EXEC sp_Insertar_Plantilla 'EQ02','JG036',56
EXEC sp_Insertar_Plantilla 'EQ02','JG040',56
EXEC sp_Insertar_Plantilla 'EQ02','JG041',56


/*-----------------------------  PARTIDO 57 ----------------------------------------------*/
--EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG139',57
EXEC sp_Insertar_Plantilla 'EQ07','JG141',57
EXEC sp_Insertar_Plantilla 'EQ07','JG142',57
EXEC sp_Insertar_Plantilla 'EQ07','JG143',57
EXEC sp_Insertar_Plantilla 'EQ07','JG144',57
EXEC sp_Insertar_Plantilla 'EQ07','JG147',57
EXEC sp_Insertar_Plantilla 'EQ07','JG148',57
EXEC sp_Insertar_Plantilla 'EQ07','JG149',57
EXEC sp_Insertar_Plantilla 'EQ07','JG150',57
EXEC sp_Insertar_Plantilla 'EQ07','JG157',57
EXEC sp_Insertar_Plantilla 'EQ07','JG158',57

-- EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG047',57
EXEC sp_Insertar_Plantilla 'EQ03','JG049',57
EXEC sp_Insertar_Plantilla 'EQ03','JG050',57
EXEC sp_Insertar_Plantilla 'EQ03','JG051',57
EXEC sp_Insertar_Plantilla 'EQ03','JG052',57
EXEC sp_Insertar_Plantilla 'EQ03','JG054',57
EXEC sp_Insertar_Plantilla 'EQ03','JG055',57
EXEC sp_Insertar_Plantilla 'EQ03','JG056',57
EXEC sp_Insertar_Plantilla 'EQ03','JG057',57
EXEC sp_Insertar_Plantilla 'EQ03','JG065',57
EXEC sp_Insertar_Plantilla 'EQ03','JG066',57


/*-----------------------------  PARTIDO 58 ----------------------------------------------*/
--EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG140',58
EXEC sp_Insertar_Plantilla 'EQ07','JG145',58
EXEC sp_Insertar_Plantilla 'EQ07','JG146',58
EXEC sp_Insertar_Plantilla 'EQ07','JG151',58
EXEC sp_Insertar_Plantilla 'EQ07','JG152',58
EXEC sp_Insertar_Plantilla 'EQ07','JG153',58
EXEC sp_Insertar_Plantilla 'EQ07','JG154',58
EXEC sp_Insertar_Plantilla 'EQ07','JG155',58
EXEC sp_Insertar_Plantilla 'EQ07','JG156',58
EXEC sp_Insertar_Plantilla 'EQ07','JG159',58
EXEC sp_Insertar_Plantilla 'EQ07','JG161',58

-- EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',58
EXEC sp_Insertar_Plantilla 'EQ04','JG071',58
EXEC sp_Insertar_Plantilla 'EQ04','JG072',58
EXEC sp_Insertar_Plantilla 'EQ04','JG073',58
EXEC sp_Insertar_Plantilla 'EQ04','JG074',58
EXEC sp_Insertar_Plantilla 'EQ04','JG076',58
EXEC sp_Insertar_Plantilla 'EQ04','JG077',58
EXEC sp_Insertar_Plantilla 'EQ04','JG078',58
EXEC sp_Insertar_Plantilla 'EQ04','JG079',58
EXEC sp_Insertar_Plantilla 'EQ04','JG085',58
EXEC sp_Insertar_Plantilla 'EQ04','JG087',58


/*-----------------------------  PARTIDO 59 ----------------------------------------------*/
--EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG139',59
EXEC sp_Insertar_Plantilla 'EQ07','JG141',59
EXEC sp_Insertar_Plantilla 'EQ07','JG142',59
EXEC sp_Insertar_Plantilla 'EQ07','JG143',59
EXEC sp_Insertar_Plantilla 'EQ07','JG144',59
EXEC sp_Insertar_Plantilla 'EQ07','JG147',59
EXEC sp_Insertar_Plantilla 'EQ07','JG148',59
EXEC sp_Insertar_Plantilla 'EQ07','JG149',59
EXEC sp_Insertar_Plantilla 'EQ07','JG150',59
EXEC sp_Insertar_Plantilla 'EQ07','JG157',59
EXEC sp_Insertar_Plantilla 'EQ07','JG158',59

-- EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',59
EXEC sp_Insertar_Plantilla 'EQ05','JG094',59
EXEC sp_Insertar_Plantilla 'EQ05','JG095',59
EXEC sp_Insertar_Plantilla 'EQ05','JG096',59
EXEC sp_Insertar_Plantilla 'EQ05','JG097',59
EXEC sp_Insertar_Plantilla 'EQ05','JG101',59
EXEC sp_Insertar_Plantilla 'EQ05','JG102',59
EXEC sp_Insertar_Plantilla 'EQ05','JG103',59
EXEC sp_Insertar_Plantilla 'EQ05','JG104',59
EXEC sp_Insertar_Plantilla 'EQ05','JG111',59
EXEC sp_Insertar_Plantilla 'EQ05','JG112',59


/*-----------------------------  PARTIDO 60 ----------------------------------------------*/
--EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG140',60
EXEC sp_Insertar_Plantilla 'EQ07','JG145',60
EXEC sp_Insertar_Plantilla 'EQ07','JG146',60
EXEC sp_Insertar_Plantilla 'EQ07','JG151',60
EXEC sp_Insertar_Plantilla 'EQ07','JG152',60
EXEC sp_Insertar_Plantilla 'EQ07','JG153',60
EXEC sp_Insertar_Plantilla 'EQ07','JG154',60
EXEC sp_Insertar_Plantilla 'EQ07','JG155',60
EXEC sp_Insertar_Plantilla 'EQ07','JG156',60
EXEC sp_Insertar_Plantilla 'EQ07','JG159',60
EXEC sp_Insertar_Plantilla 'EQ07','JG160',60

-- EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG116',60
EXEC sp_Insertar_Plantilla 'EQ06','JG118',60
EXEC sp_Insertar_Plantilla 'EQ06','JG119',60
EXEC sp_Insertar_Plantilla 'EQ06','JG120',60
EXEC sp_Insertar_Plantilla 'EQ06','JG121',60
EXEC sp_Insertar_Plantilla 'EQ06','JG128',60
EXEC sp_Insertar_Plantilla 'EQ06','JG129',60
EXEC sp_Insertar_Plantilla 'EQ06','JG130',60
EXEC sp_Insertar_Plantilla 'EQ06','JG131',60
EXEC sp_Insertar_Plantilla 'EQ06','JG136',60
EXEC sp_Insertar_Plantilla 'EQ06','JG137',60


/*-----------------------------  PARTIDO 61 ----------------------------------------------*/
--EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG139',61
EXEC sp_Insertar_Plantilla 'EQ07','JG141',61
EXEC sp_Insertar_Plantilla 'EQ07','JG142',61
EXEC sp_Insertar_Plantilla 'EQ07','JG143',61
EXEC sp_Insertar_Plantilla 'EQ07','JG144',61
EXEC sp_Insertar_Plantilla 'EQ07','JG147',61
EXEC sp_Insertar_Plantilla 'EQ07','JG148',61
EXEC sp_Insertar_Plantilla 'EQ07','JG149',61
EXEC sp_Insertar_Plantilla 'EQ07','JG150',61
EXEC sp_Insertar_Plantilla 'EQ07','JG157',61
EXEC sp_Insertar_Plantilla 'EQ07','JG158',61

-- EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',61
EXEC sp_Insertar_Plantilla 'EQ08','JG163',61
EXEC sp_Insertar_Plantilla 'EQ08','JG164',61
EXEC sp_Insertar_Plantilla 'EQ08','JG165',61
EXEC sp_Insertar_Plantilla 'EQ08','JG166',61
EXEC sp_Insertar_Plantilla 'EQ08','JG167',61
EXEC sp_Insertar_Plantilla 'EQ08','JG168',61
EXEC sp_Insertar_Plantilla 'EQ08','JG169',61
EXEC sp_Insertar_Plantilla 'EQ08','JG170',61
EXEC sp_Insertar_Plantilla 'EQ08','JG176',61
EXEC sp_Insertar_Plantilla 'EQ08','JG177',61


/*-----------------------------  PARTIDO 62 ----------------------------------------------*/
--EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG140',62
EXEC sp_Insertar_Plantilla 'EQ07','JG145',62
EXEC sp_Insertar_Plantilla 'EQ07','JG146',62
EXEC sp_Insertar_Plantilla 'EQ07','JG151',62
EXEC sp_Insertar_Plantilla 'EQ07','JG152',62
EXEC sp_Insertar_Plantilla 'EQ07','JG153',62
EXEC sp_Insertar_Plantilla 'EQ07','JG154',62
EXEC sp_Insertar_Plantilla 'EQ07','JG155',62
EXEC sp_Insertar_Plantilla 'EQ07','JG156',62
EXEC sp_Insertar_Plantilla 'EQ07','JG159',62
EXEC sp_Insertar_Plantilla 'EQ07','JG161',62

-- EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG181',62
EXEC sp_Insertar_Plantilla 'EQ09','JG183',62
EXEC sp_Insertar_Plantilla 'EQ09','JG184',62
EXEC sp_Insertar_Plantilla 'EQ09','JG185',62
EXEC sp_Insertar_Plantilla 'EQ09','JG186',62
EXEC sp_Insertar_Plantilla 'EQ09','JG187',62
EXEC sp_Insertar_Plantilla 'EQ09','JG188',62
EXEC sp_Insertar_Plantilla 'EQ09','JG189',62
EXEC sp_Insertar_Plantilla 'EQ09','JG190',62
EXEC sp_Insertar_Plantilla 'EQ09','JG196',62
EXEC sp_Insertar_Plantilla 'EQ09','JG197',62


/*-----------------------------  PARTIDO 63 ----------------------------------------------*/
--EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG139',63
EXEC sp_Insertar_Plantilla 'EQ07','JG141',63
EXEC sp_Insertar_Plantilla 'EQ07','JG142',63
EXEC sp_Insertar_Plantilla 'EQ07','JG143',63
EXEC sp_Insertar_Plantilla 'EQ07','JG144',63
EXEC sp_Insertar_Plantilla 'EQ07','JG147',63
EXEC sp_Insertar_Plantilla 'EQ07','JG148',63
EXEC sp_Insertar_Plantilla 'EQ07','JG149',63
EXEC sp_Insertar_Plantilla 'EQ07','JG150',63
EXEC sp_Insertar_Plantilla 'EQ07','JG157',63
EXEC sp_Insertar_Plantilla 'EQ07','JG158',63

-- EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG201',63
EXEC sp_Insertar_Plantilla 'EQ10','JG202',63
EXEC sp_Insertar_Plantilla 'EQ10','JG203',63
EXEC sp_Insertar_Plantilla 'EQ10','JG204',63
EXEC sp_Insertar_Plantilla 'EQ10','JG205',63
EXEC sp_Insertar_Plantilla 'EQ10','JG208',63
EXEC sp_Insertar_Plantilla 'EQ10','JG209',63
EXEC sp_Insertar_Plantilla 'EQ10','JG218',63
EXEC sp_Insertar_Plantilla 'EQ10','JG219',63
EXEC sp_Insertar_Plantilla 'EQ10','JG210',63
EXEC sp_Insertar_Plantilla 'EQ10','JG211',63


/*-----------------------------  PARTIDO 64 ----------------------------------------------*/
--EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',64
EXEC sp_Insertar_Plantilla 'EQ08','JG165',64
EXEC sp_Insertar_Plantilla 'EQ08','JG166',64
EXEC sp_Insertar_Plantilla 'EQ08','JG171',64
EXEC sp_Insertar_Plantilla 'EQ08','JG172',64
EXEC sp_Insertar_Plantilla 'EQ08','JG173',64
EXEC sp_Insertar_Plantilla 'EQ08','JG174',64
EXEC sp_Insertar_Plantilla 'EQ08','JG175',64
EXEC sp_Insertar_Plantilla 'EQ08','JG178',64
EXEC sp_Insertar_Plantilla 'EQ08','JG179',64
EXEC sp_Insertar_Plantilla 'EQ08','JG180',64

-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG002',64
EXEC sp_Insertar_Plantilla 'EQ01','JG007',64
EXEC sp_Insertar_Plantilla 'EQ01','JG008',64
EXEC sp_Insertar_Plantilla 'EQ01','JG009',64
EXEC sp_Insertar_Plantilla 'EQ01','JG010',64
EXEC sp_Insertar_Plantilla 'EQ01','JG016',64
EXEC sp_Insertar_Plantilla 'EQ01','JG017',64
EXEC sp_Insertar_Plantilla 'EQ01','JG020',64
EXEC sp_Insertar_Plantilla 'EQ01','JG021',64
EXEC sp_Insertar_Plantilla 'EQ01','JG022',64
EXEC sp_Insertar_Plantilla 'EQ01','JG023',64


/*-----------------------------  PARTIDO 65 ----------------------------------------------*/
--EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',65
EXEC sp_Insertar_Plantilla 'EQ08','JG163',65
EXEC sp_Insertar_Plantilla 'EQ08','JG164',65
EXEC sp_Insertar_Plantilla 'EQ08','JG165',65
EXEC sp_Insertar_Plantilla 'EQ08','JG166',65
EXEC sp_Insertar_Plantilla 'EQ08','JG167',65
EXEC sp_Insertar_Plantilla 'EQ08','JG168',65
EXEC sp_Insertar_Plantilla 'EQ08','JG169',65
EXEC sp_Insertar_Plantilla 'EQ08','JG170',65
EXEC sp_Insertar_Plantilla 'EQ08','JG176',65
EXEC sp_Insertar_Plantilla 'EQ08','JG177',65

-- EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG025',65
EXEC sp_Insertar_Plantilla 'EQ02','JG030',65
EXEC sp_Insertar_Plantilla 'EQ02','JG031',65
EXEC sp_Insertar_Plantilla 'EQ02','JG032',65
EXEC sp_Insertar_Plantilla 'EQ02','JG037',65
EXEC sp_Insertar_Plantilla 'EQ02','JG038',65
EXEC sp_Insertar_Plantilla 'EQ02','JG039',65
EXEC sp_Insertar_Plantilla 'EQ02','JG042',65
EXEC sp_Insertar_Plantilla 'EQ02','JG043',65
EXEC sp_Insertar_Plantilla 'EQ02','JG044',65
EXEC sp_Insertar_Plantilla 'EQ02','JG046',65


/*-----------------------------  PARTIDO 66 ----------------------------------------------*/
--EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',66
EXEC sp_Insertar_Plantilla 'EQ08','JG165',66
EXEC sp_Insertar_Plantilla 'EQ08','JG166',66
EXEC sp_Insertar_Plantilla 'EQ08','JG171',66
EXEC sp_Insertar_Plantilla 'EQ08','JG172',66
EXEC sp_Insertar_Plantilla 'EQ08','JG173',66
EXEC sp_Insertar_Plantilla 'EQ08','JG174',66
EXEC sp_Insertar_Plantilla 'EQ08','JG175',66
EXEC sp_Insertar_Plantilla 'EQ08','JG178',66
EXEC sp_Insertar_Plantilla 'EQ08','JG179',66
EXEC sp_Insertar_Plantilla 'EQ08','JG180',66

-- EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG048',66
EXEC sp_Insertar_Plantilla 'EQ03','JG053',66
EXEC sp_Insertar_Plantilla 'EQ03','JG057',66
EXEC sp_Insertar_Plantilla 'EQ03','JG058',66
EXEC sp_Insertar_Plantilla 'EQ03','JG059',66
EXEC sp_Insertar_Plantilla 'EQ03','JG060',66
EXEC sp_Insertar_Plantilla 'EQ03','JG061',66
EXEC sp_Insertar_Plantilla 'EQ03','JG067',66
EXEC sp_Insertar_Plantilla 'EQ03','JG068',66
EXEC sp_Insertar_Plantilla 'EQ03','JG069',66
EXEC sp_Insertar_Plantilla 'EQ03','JG063',66


/*-----------------------------  PARTIDO 67 ----------------------------------------------*/
--EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',67
EXEC sp_Insertar_Plantilla 'EQ08','JG163',67
EXEC sp_Insertar_Plantilla 'EQ08','JG164',67
EXEC sp_Insertar_Plantilla 'EQ08','JG165',67
EXEC sp_Insertar_Plantilla 'EQ08','JG166',67
EXEC sp_Insertar_Plantilla 'EQ08','JG167',67
EXEC sp_Insertar_Plantilla 'EQ08','JG168',67
EXEC sp_Insertar_Plantilla 'EQ08','JG169',67
EXEC sp_Insertar_Plantilla 'EQ08','JG170',67
EXEC sp_Insertar_Plantilla 'EQ08','JG176',67
EXEC sp_Insertar_Plantilla 'EQ08','JG177',67

-- EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',67
EXEC sp_Insertar_Plantilla 'EQ04','JG075',67
EXEC sp_Insertar_Plantilla 'EQ04','JG080',67
EXEC sp_Insertar_Plantilla 'EQ04','JG081',67
EXEC sp_Insertar_Plantilla 'EQ04','JG082',67
EXEC sp_Insertar_Plantilla 'EQ04','JG083',67
EXEC sp_Insertar_Plantilla 'EQ04','JG084',67
EXEC sp_Insertar_Plantilla 'EQ04','JG088',67
EXEC sp_Insertar_Plantilla 'EQ04','JG089',67
EXEC sp_Insertar_Plantilla 'EQ04','JG090',67
EXEC sp_Insertar_Plantilla 'EQ04','JG092',67


/*-----------------------------  PARTIDO 68 ----------------------------------------------*/
--EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',68
EXEC sp_Insertar_Plantilla 'EQ08','JG165',68
EXEC sp_Insertar_Plantilla 'EQ08','JG166',68
EXEC sp_Insertar_Plantilla 'EQ08','JG171',68
EXEC sp_Insertar_Plantilla 'EQ08','JG172',68
EXEC sp_Insertar_Plantilla 'EQ08','JG173',68
EXEC sp_Insertar_Plantilla 'EQ08','JG174',68
EXEC sp_Insertar_Plantilla 'EQ08','JG175',68
EXEC sp_Insertar_Plantilla 'EQ08','JG178',68
EXEC sp_Insertar_Plantilla 'EQ08','JG179',68
EXEC sp_Insertar_Plantilla 'EQ08','JG180',68

-- EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',68
EXEC sp_Insertar_Plantilla 'EQ05','JG098',68
EXEC sp_Insertar_Plantilla 'EQ05','JG099',68
EXEC sp_Insertar_Plantilla 'EQ05','JG100',68
EXEC sp_Insertar_Plantilla 'EQ05','JG105',68
EXEC sp_Insertar_Plantilla 'EQ05','JG106',68
EXEC sp_Insertar_Plantilla 'EQ05','JG107',68
EXEC sp_Insertar_Plantilla 'EQ05','JG108',68
EXEC sp_Insertar_Plantilla 'EQ05','JG110',68
EXEC sp_Insertar_Plantilla 'EQ05','JG113',68
EXEC sp_Insertar_Plantilla 'EQ05','JG115',68


/*-----------------------------  PARTIDO 69 ----------------------------------------------*/
--EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',69
EXEC sp_Insertar_Plantilla 'EQ08','JG163',69
EXEC sp_Insertar_Plantilla 'EQ08','JG164',69
EXEC sp_Insertar_Plantilla 'EQ08','JG165',69
EXEC sp_Insertar_Plantilla 'EQ08','JG166',69
EXEC sp_Insertar_Plantilla 'EQ08','JG167',69
EXEC sp_Insertar_Plantilla 'EQ08','JG168',69
EXEC sp_Insertar_Plantilla 'EQ08','JG169',69
EXEC sp_Insertar_Plantilla 'EQ08','JG170',69
EXEC sp_Insertar_Plantilla 'EQ08','JG176',69
EXEC sp_Insertar_Plantilla 'EQ08','JG177',69

-- EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG117',69
EXEC sp_Insertar_Plantilla 'EQ06','JG122',69
EXEC sp_Insertar_Plantilla 'EQ06','JG123',69
EXEC sp_Insertar_Plantilla 'EQ06','JG124',69
EXEC sp_Insertar_Plantilla 'EQ06','JG125',69
EXEC sp_Insertar_Plantilla 'EQ06','JG127',69
EXEC sp_Insertar_Plantilla 'EQ06','JG132',69
EXEC sp_Insertar_Plantilla 'EQ06','JG133',69
EXEC sp_Insertar_Plantilla 'EQ06','JG134',69
EXEC sp_Insertar_Plantilla 'EQ06','JG135',69
EXEC sp_Insertar_Plantilla 'EQ06','JG138',69


/*-----------------------------  PARTIDO 70 ----------------------------------------------*/
--EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',70
EXEC sp_Insertar_Plantilla 'EQ08','JG165',70
EXEC sp_Insertar_Plantilla 'EQ08','JG166',70
EXEC sp_Insertar_Plantilla 'EQ08','JG171',70
EXEC sp_Insertar_Plantilla 'EQ08','JG172',70
EXEC sp_Insertar_Plantilla 'EQ08','JG173',70
EXEC sp_Insertar_Plantilla 'EQ08','JG174',70
EXEC sp_Insertar_Plantilla 'EQ08','JG175',70
EXEC sp_Insertar_Plantilla 'EQ08','JG178',70
EXEC sp_Insertar_Plantilla 'EQ08','JG179',70
EXEC sp_Insertar_Plantilla 'EQ08','JG180',70

-- EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG140',70
EXEC sp_Insertar_Plantilla 'EQ07','JG141',70
EXEC sp_Insertar_Plantilla 'EQ07','JG142',70
EXEC sp_Insertar_Plantilla 'EQ07','JG143',70
EXEC sp_Insertar_Plantilla 'EQ07','JG144',70
EXEC sp_Insertar_Plantilla 'EQ07','JG147',70
EXEC sp_Insertar_Plantilla 'EQ07','JG148',70
EXEC sp_Insertar_Plantilla 'EQ07','JG149',70
EXEC sp_Insertar_Plantilla 'EQ07','JG150',70
EXEC sp_Insertar_Plantilla 'EQ07','JG157',70
EXEC sp_Insertar_Plantilla 'EQ07','JG158',70


/*-----------------------------  PARTIDO 71 ----------------------------------------------*/
--EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',71
EXEC sp_Insertar_Plantilla 'EQ08','JG163',71
EXEC sp_Insertar_Plantilla 'EQ08','JG164',71
EXEC sp_Insertar_Plantilla 'EQ08','JG165',71
EXEC sp_Insertar_Plantilla 'EQ08','JG166',71
EXEC sp_Insertar_Plantilla 'EQ08','JG167',71
EXEC sp_Insertar_Plantilla 'EQ08','JG168',71
EXEC sp_Insertar_Plantilla 'EQ08','JG169',71
EXEC sp_Insertar_Plantilla 'EQ08','JG170',71
EXEC sp_Insertar_Plantilla 'EQ08','JG176',71
EXEC sp_Insertar_Plantilla 'EQ08','JG177',71

-- EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG182',71
EXEC sp_Insertar_Plantilla 'EQ09','JG183',71
EXEC sp_Insertar_Plantilla 'EQ09','JG184',71
EXEC sp_Insertar_Plantilla 'EQ09','JG185',71
EXEC sp_Insertar_Plantilla 'EQ09','JG186',71
EXEC sp_Insertar_Plantilla 'EQ09','JG187',71
EXEC sp_Insertar_Plantilla 'EQ09','JG188',71
EXEC sp_Insertar_Plantilla 'EQ09','JG189',71
EXEC sp_Insertar_Plantilla 'EQ09','JG190',71
EXEC sp_Insertar_Plantilla 'EQ09','JG196',71
EXEC sp_Insertar_Plantilla 'EQ09','JG197',71


/*-----------------------------  PARTIDO 72 ----------------------------------------------*/
--EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',72
EXEC sp_Insertar_Plantilla 'EQ08','JG165',72
EXEC sp_Insertar_Plantilla 'EQ08','JG166',72
EXEC sp_Insertar_Plantilla 'EQ08','JG171',72
EXEC sp_Insertar_Plantilla 'EQ08','JG172',72
EXEC sp_Insertar_Plantilla 'EQ08','JG173',72
EXEC sp_Insertar_Plantilla 'EQ08','JG174',72
EXEC sp_Insertar_Plantilla 'EQ08','JG175',72
EXEC sp_Insertar_Plantilla 'EQ08','JG178',72
EXEC sp_Insertar_Plantilla 'EQ08','JG179',72
EXEC sp_Insertar_Plantilla 'EQ08','JG180',72

-- EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG212',72
EXEC sp_Insertar_Plantilla 'EQ10','JG206',72
EXEC sp_Insertar_Plantilla 'EQ10','JG207',72
EXEC sp_Insertar_Plantilla 'EQ10','JG216',72
EXEC sp_Insertar_Plantilla 'EQ10','JG217',72
EXEC sp_Insertar_Plantilla 'EQ10','JG220',72
EXEC sp_Insertar_Plantilla 'EQ10','JG221',72
EXEC sp_Insertar_Plantilla 'EQ10','JG222',72
EXEC sp_Insertar_Plantilla 'EQ10','JG223',72
EXEC sp_Insertar_Plantilla 'EQ10','JG214',72
EXEC sp_Insertar_Plantilla 'EQ10','JG215',72


/*-----------------------------  PARTIDO 73 ----------------------------------------------*/
--EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG181',73
EXEC sp_Insertar_Plantilla 'EQ09','JG183',73
EXEC sp_Insertar_Plantilla 'EQ09','JG184',73
EXEC sp_Insertar_Plantilla 'EQ09','JG185',73
EXEC sp_Insertar_Plantilla 'EQ09','JG186',73
EXEC sp_Insertar_Plantilla 'EQ09','JG187',73
EXEC sp_Insertar_Plantilla 'EQ09','JG188',73
EXEC sp_Insertar_Plantilla 'EQ09','JG189',73
EXEC sp_Insertar_Plantilla 'EQ09','JG190',73
EXEC sp_Insertar_Plantilla 'EQ09','JG196',73
EXEC sp_Insertar_Plantilla 'EQ09','JG197',73

-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG001',73
EXEC sp_Insertar_Plantilla 'EQ01','JG003',73
EXEC sp_Insertar_Plantilla 'EQ01','JG004',73
EXEC sp_Insertar_Plantilla 'EQ01','JG005',73
EXEC sp_Insertar_Plantilla 'EQ01','JG006',73
EXEC sp_Insertar_Plantilla 'EQ01','JG012',73
EXEC sp_Insertar_Plantilla 'EQ01','JG013',73
EXEC sp_Insertar_Plantilla 'EQ01','JG014',73
EXEC sp_Insertar_Plantilla 'EQ01','JG015',73
EXEC sp_Insertar_Plantilla 'EQ01','JG018',73
EXEC sp_Insertar_Plantilla 'EQ01','JG019',73


/*-----------------------------  PARTIDO 74 ----------------------------------------------*/
--EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG182',74
EXEC sp_Insertar_Plantilla 'EQ09','JG183',74
EXEC sp_Insertar_Plantilla 'EQ09','JG184',74
EXEC sp_Insertar_Plantilla 'EQ09','JG191',74
EXEC sp_Insertar_Plantilla 'EQ09','JG192',74
EXEC sp_Insertar_Plantilla 'EQ09','JG193',74
EXEC sp_Insertar_Plantilla 'EQ09','JG194',74
EXEC sp_Insertar_Plantilla 'EQ08','JG195',74
EXEC sp_Insertar_Plantilla 'EQ09','JG198',74
EXEC sp_Insertar_Plantilla 'EQ09','JG199',74
EXEC sp_Insertar_Plantilla 'EQ09','JG200',74

-- EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG024',74
EXEC sp_Insertar_Plantilla 'EQ02','JG026',74
EXEC sp_Insertar_Plantilla 'EQ02','JG027',74
EXEC sp_Insertar_Plantilla 'EQ02','JG028',74
EXEC sp_Insertar_Plantilla 'EQ02','JG029',74
EXEC sp_Insertar_Plantilla 'EQ02','JG033',74
EXEC sp_Insertar_Plantilla 'EQ02','JG034',74
EXEC sp_Insertar_Plantilla 'EQ02','JG035',74
EXEC sp_Insertar_Plantilla 'EQ02','JG036',74
EXEC sp_Insertar_Plantilla 'EQ02','JG040',74
EXEC sp_Insertar_Plantilla 'EQ02','JG041',74


/*-----------------------------  PARTIDO 75 ----------------------------------------------*/
--EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG181',75
EXEC sp_Insertar_Plantilla 'EQ09','JG183',75
EXEC sp_Insertar_Plantilla 'EQ09','JG184',75
EXEC sp_Insertar_Plantilla 'EQ09','JG185',75
EXEC sp_Insertar_Plantilla 'EQ09','JG186',75
EXEC sp_Insertar_Plantilla 'EQ09','JG187',75
EXEC sp_Insertar_Plantilla 'EQ09','JG188',75
EXEC sp_Insertar_Plantilla 'EQ09','JG189',75
EXEC sp_Insertar_Plantilla 'EQ09','JG190',75
EXEC sp_Insertar_Plantilla 'EQ09','JG196',75
EXEC sp_Insertar_Plantilla 'EQ09','JG197',75

-- EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG047',75
EXEC sp_Insertar_Plantilla 'EQ03','JG049',75
EXEC sp_Insertar_Plantilla 'EQ03','JG050',75
EXEC sp_Insertar_Plantilla 'EQ03','JG051',75
EXEC sp_Insertar_Plantilla 'EQ03','JG052',75
EXEC sp_Insertar_Plantilla 'EQ03','JG054',75
EXEC sp_Insertar_Plantilla 'EQ03','JG055',75
EXEC sp_Insertar_Plantilla 'EQ03','JG056',75
EXEC sp_Insertar_Plantilla 'EQ03','JG057',75
EXEC sp_Insertar_Plantilla 'EQ03','JG065',75
EXEC sp_Insertar_Plantilla 'EQ03','JG066',75


/*-----------------------------  PARTIDO 76 ----------------------------------------------*/
--EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG182',76
EXEC sp_Insertar_Plantilla 'EQ09','JG183',76
EXEC sp_Insertar_Plantilla 'EQ09','JG184',76
EXEC sp_Insertar_Plantilla 'EQ09','JG191',76
EXEC sp_Insertar_Plantilla 'EQ09','JG192',76
EXEC sp_Insertar_Plantilla 'EQ09','JG193',76
EXEC sp_Insertar_Plantilla 'EQ09','JG194',76
EXEC sp_Insertar_Plantilla 'EQ09','JG195',76
EXEC sp_Insertar_Plantilla 'EQ09','JG198',76
EXEC sp_Insertar_Plantilla 'EQ09','JG199',76
EXEC sp_Insertar_Plantilla 'EQ09','JG200',76

-- EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',76
EXEC sp_Insertar_Plantilla 'EQ04','JG071',76
EXEC sp_Insertar_Plantilla 'EQ04','JG072',76
EXEC sp_Insertar_Plantilla 'EQ04','JG073',76
EXEC sp_Insertar_Plantilla 'EQ04','JG074',76
EXEC sp_Insertar_Plantilla 'EQ04','JG076',76
EXEC sp_Insertar_Plantilla 'EQ04','JG077',76
EXEC sp_Insertar_Plantilla 'EQ04','JG078',76
EXEC sp_Insertar_Plantilla 'EQ04','JG079',76
EXEC sp_Insertar_Plantilla 'EQ04','JG085',76
EXEC sp_Insertar_Plantilla 'EQ04','JG087',76


/*-----------------------------  PARTIDO 77 ----------------------------------------------*/
--EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG181',77
EXEC sp_Insertar_Plantilla 'EQ09','JG183',77
EXEC sp_Insertar_Plantilla 'EQ09','JG184',77
EXEC sp_Insertar_Plantilla 'EQ09','JG185',77
EXEC sp_Insertar_Plantilla 'EQ09','JG186',77
EXEC sp_Insertar_Plantilla 'EQ09','JG187',77
EXEC sp_Insertar_Plantilla 'EQ09','JG188',77
EXEC sp_Insertar_Plantilla 'EQ09','JG189',77
EXEC sp_Insertar_Plantilla 'EQ09','JG190',77
EXEC sp_Insertar_Plantilla 'EQ09','JG196',77
EXEC sp_Insertar_Plantilla 'EQ09','JG197',77

-- EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',77
EXEC sp_Insertar_Plantilla 'EQ05','JG094',77
EXEC sp_Insertar_Plantilla 'EQ05','JG095',77
EXEC sp_Insertar_Plantilla 'EQ05','JG096',77
EXEC sp_Insertar_Plantilla 'EQ05','JG097',77
EXEC sp_Insertar_Plantilla 'EQ05','JG101',77
EXEC sp_Insertar_Plantilla 'EQ05','JG102',77
EXEC sp_Insertar_Plantilla 'EQ05','JG103',77
EXEC sp_Insertar_Plantilla 'EQ05','JG104',77
EXEC sp_Insertar_Plantilla 'EQ05','JG111',77
EXEC sp_Insertar_Plantilla 'EQ05','JG112',77


/*-----------------------------  PARTIDO 78 ----------------------------------------------*/
--EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG182',78
EXEC sp_Insertar_Plantilla 'EQ09','JG183',78
EXEC sp_Insertar_Plantilla 'EQ09','JG184',78
EXEC sp_Insertar_Plantilla 'EQ09','JG191',78
EXEC sp_Insertar_Plantilla 'EQ09','JG192',78
EXEC sp_Insertar_Plantilla 'EQ09','JG193',78
EXEC sp_Insertar_Plantilla 'EQ09','JG194',78
EXEC sp_Insertar_Plantilla 'EQ09','JG195',78
EXEC sp_Insertar_Plantilla 'EQ09','JG198',78
EXEC sp_Insertar_Plantilla 'EQ09','JG199',78
EXEC sp_Insertar_Plantilla 'EQ09','JG200',78

-- EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG116',78
EXEC sp_Insertar_Plantilla 'EQ06','JG118',78
EXEC sp_Insertar_Plantilla 'EQ06','JG119',78
EXEC sp_Insertar_Plantilla 'EQ06','JG120',78
EXEC sp_Insertar_Plantilla 'EQ06','JG121',78
EXEC sp_Insertar_Plantilla 'EQ06','JG128',78
EXEC sp_Insertar_Plantilla 'EQ06','JG129',78
EXEC sp_Insertar_Plantilla 'EQ06','JG130',78
EXEC sp_Insertar_Plantilla 'EQ06','JG131',78
EXEC sp_Insertar_Plantilla 'EQ06','JG136',78
EXEC sp_Insertar_Plantilla 'EQ06','JG137',78


/*-----------------------------  PARTIDO 79 ----------------------------------------------*/
--EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG181',79
EXEC sp_Insertar_Plantilla 'EQ09','JG183',79
EXEC sp_Insertar_Plantilla 'EQ09','JG184',79
EXEC sp_Insertar_Plantilla 'EQ09','JG185',79
EXEC sp_Insertar_Plantilla 'EQ09','JG186',79
EXEC sp_Insertar_Plantilla 'EQ09','JG187',79
EXEC sp_Insertar_Plantilla 'EQ09','JG188',79
EXEC sp_Insertar_Plantilla 'EQ09','JG189',79
EXEC sp_Insertar_Plantilla 'EQ09','JG190',79
EXEC sp_Insertar_Plantilla 'EQ09','JG196',79
EXEC sp_Insertar_Plantilla 'EQ09','JG197',79

-- EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG139',79
EXEC sp_Insertar_Plantilla 'EQ07','JG141',79
EXEC sp_Insertar_Plantilla 'EQ07','JG142',79
EXEC sp_Insertar_Plantilla 'EQ07','JG143',79
EXEC sp_Insertar_Plantilla 'EQ07','JG144',79
EXEC sp_Insertar_Plantilla 'EQ07','JG147',79
EXEC sp_Insertar_Plantilla 'EQ07','JG148',79
EXEC sp_Insertar_Plantilla 'EQ07','JG149',79
EXEC sp_Insertar_Plantilla 'EQ07','JG150',79
EXEC sp_Insertar_Plantilla 'EQ07','JG157',79
EXEC sp_Insertar_Plantilla 'EQ07','JG158',79


/*-----------------------------  PARTIDO 80 ----------------------------------------------*/
--EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG182',80
EXEC sp_Insertar_Plantilla 'EQ09','JG183',80
EXEC sp_Insertar_Plantilla 'EQ09','JG184',80
EXEC sp_Insertar_Plantilla 'EQ09','JG191',80
EXEC sp_Insertar_Plantilla 'EQ09','JG192',80
EXEC sp_Insertar_Plantilla 'EQ09','JG193',80
EXEC sp_Insertar_Plantilla 'EQ09','JG194',80
EXEC sp_Insertar_Plantilla 'EQ09','JG195',80
EXEC sp_Insertar_Plantilla 'EQ09','JG198',80
EXEC sp_Insertar_Plantilla 'EQ09','JG199',80
EXEC sp_Insertar_Plantilla 'EQ09','JG200',80

-- EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',80
EXEC sp_Insertar_Plantilla 'EQ08','JG163',80
EXEC sp_Insertar_Plantilla 'EQ08','JG164',80
EXEC sp_Insertar_Plantilla 'EQ08','JG165',80
EXEC sp_Insertar_Plantilla 'EQ08','JG166',80
EXEC sp_Insertar_Plantilla 'EQ08','JG167',80
EXEC sp_Insertar_Plantilla 'EQ08','JG168',80
EXEC sp_Insertar_Plantilla 'EQ08','JG169',80
EXEC sp_Insertar_Plantilla 'EQ08','JG170',80
EXEC sp_Insertar_Plantilla 'EQ08','JG176',80
EXEC sp_Insertar_Plantilla 'EQ08','JG177',80


/*-----------------------------  PARTIDO 81 ----------------------------------------------*/
--EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG181',81
EXEC sp_Insertar_Plantilla 'EQ09','JG183',81
EXEC sp_Insertar_Plantilla 'EQ09','JG184',81
EXEC sp_Insertar_Plantilla 'EQ09','JG185',81
EXEC sp_Insertar_Plantilla 'EQ09','JG186',81
EXEC sp_Insertar_Plantilla 'EQ09','JG187',81
EXEC sp_Insertar_Plantilla 'EQ09','JG188',81
EXEC sp_Insertar_Plantilla 'EQ09','JG189',81
EXEC sp_Insertar_Plantilla 'EQ09','JG190',81
EXEC sp_Insertar_Plantilla 'EQ09','JG196',81
EXEC sp_Insertar_Plantilla 'EQ09','JG197',81

-- EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG201',81
EXEC sp_Insertar_Plantilla 'EQ10','JG202',81
EXEC sp_Insertar_Plantilla 'EQ10','JG203',81
EXEC sp_Insertar_Plantilla 'EQ10','JG204',81
EXEC sp_Insertar_Plantilla 'EQ10','JG205',81
EXEC sp_Insertar_Plantilla 'EQ10','JG208',81
EXEC sp_Insertar_Plantilla 'EQ10','JG209',81
EXEC sp_Insertar_Plantilla 'EQ10','JG218',81
EXEC sp_Insertar_Plantilla 'EQ10','JG219',81
EXEC sp_Insertar_Plantilla 'EQ10','JG210',81
EXEC sp_Insertar_Plantilla 'EQ10','JG211',81


/*-----------------------------  PARTIDO 82 ----------------------------------------------*/
--EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG213',82
EXEC sp_Insertar_Plantilla 'EQ10','JG206',82
EXEC sp_Insertar_Plantilla 'EQ10','JG207',82
EXEC sp_Insertar_Plantilla 'EQ10','JG216',82
EXEC sp_Insertar_Plantilla 'EQ10','JG217',82
EXEC sp_Insertar_Plantilla 'EQ10','JG220',82
EXEC sp_Insertar_Plantilla 'EQ10','JG221',82
EXEC sp_Insertar_Plantilla 'EQ10','JG222',82
EXEC sp_Insertar_Plantilla 'EQ10','JG223',82
EXEC sp_Insertar_Plantilla 'EQ10','JG214',82
EXEC sp_Insertar_Plantilla 'EQ10','JG215',82

-- EQUIPO 1
EXEC sp_Insertar_Plantilla 'EQ01','JG002',82
EXEC sp_Insertar_Plantilla 'EQ01','JG007',82
EXEC sp_Insertar_Plantilla 'EQ01','JG008',82
EXEC sp_Insertar_Plantilla 'EQ01','JG009',82
EXEC sp_Insertar_Plantilla 'EQ01','JG011',82
EXEC sp_Insertar_Plantilla 'EQ01','JG016',82
EXEC sp_Insertar_Plantilla 'EQ01','JG017',82
EXEC sp_Insertar_Plantilla 'EQ01','JG020',82
EXEC sp_Insertar_Plantilla 'EQ01','JG021',82
EXEC sp_Insertar_Plantilla 'EQ01','JG022',82
EXEC sp_Insertar_Plantilla 'EQ01','JG023',82


/*-----------------------------  PARTIDO 83 ----------------------------------------------*/
--EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG201',83
EXEC sp_Insertar_Plantilla 'EQ10','JG202',83
EXEC sp_Insertar_Plantilla 'EQ10','JG203',83
EXEC sp_Insertar_Plantilla 'EQ10','JG204',83
EXEC sp_Insertar_Plantilla 'EQ10','JG205',83
EXEC sp_Insertar_Plantilla 'EQ10','JG208',83
EXEC sp_Insertar_Plantilla 'EQ10','JG209',83
EXEC sp_Insertar_Plantilla 'EQ10','JG218',83
EXEC sp_Insertar_Plantilla 'EQ10','JG219',83
EXEC sp_Insertar_Plantilla 'EQ10','JG210',83
EXEC sp_Insertar_Plantilla 'EQ10','JG211',83

-- EQUIPO 2
EXEC sp_Insertar_Plantilla 'EQ02','JG025',83
EXEC sp_Insertar_Plantilla 'EQ02','JG030',83
EXEC sp_Insertar_Plantilla 'EQ02','JG031',83
EXEC sp_Insertar_Plantilla 'EQ02','JG032',83
EXEC sp_Insertar_Plantilla 'EQ02','JG037',83
EXEC sp_Insertar_Plantilla 'EQ02','JG038',83
EXEC sp_Insertar_Plantilla 'EQ02','JG039',83
EXEC sp_Insertar_Plantilla 'EQ02','JG042',83
EXEC sp_Insertar_Plantilla 'EQ02','JG043',83
EXEC sp_Insertar_Plantilla 'EQ02','JG044',83
EXEC sp_Insertar_Plantilla 'EQ02','JG046',83


/*-----------------------------  PARTIDO 84 ----------------------------------------------*/
--EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG212',84
EXEC sp_Insertar_Plantilla 'EQ10','JG206',84
EXEC sp_Insertar_Plantilla 'EQ10','JG207',84
EXEC sp_Insertar_Plantilla 'EQ10','JG216',84
EXEC sp_Insertar_Plantilla 'EQ10','JG217',84
EXEC sp_Insertar_Plantilla 'EQ10','JG220',84
EXEC sp_Insertar_Plantilla 'EQ10','JG221',84
EXEC sp_Insertar_Plantilla 'EQ10','JG222',84
EXEC sp_Insertar_Plantilla 'EQ10','JG223',84
EXEC sp_Insertar_Plantilla 'EQ10','JG214',84
EXEC sp_Insertar_Plantilla 'EQ10','JG215',84

-- EQUIPO 3
EXEC sp_Insertar_Plantilla 'EQ03','JG048',84
EXEC sp_Insertar_Plantilla 'EQ03','JG053',84
EXEC sp_Insertar_Plantilla 'EQ03','JG057',84
EXEC sp_Insertar_Plantilla 'EQ03','JG058',84
EXEC sp_Insertar_Plantilla 'EQ03','JG059',84
EXEC sp_Insertar_Plantilla 'EQ03','JG060',84
EXEC sp_Insertar_Plantilla 'EQ03','JG061',84
EXEC sp_Insertar_Plantilla 'EQ03','JG067',84
EXEC sp_Insertar_Plantilla 'EQ03','JG068',84
EXEC sp_Insertar_Plantilla 'EQ03','JG069',84
EXEC sp_Insertar_Plantilla 'EQ03','JG064',84


/*-----------------------------  PARTIDO 85 ----------------------------------------------*/
--EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG201',85
EXEC sp_Insertar_Plantilla 'EQ10','JG202',85
EXEC sp_Insertar_Plantilla 'EQ10','JG203',85
EXEC sp_Insertar_Plantilla 'EQ10','JG204',85
EXEC sp_Insertar_Plantilla 'EQ10','JG205',85
EXEC sp_Insertar_Plantilla 'EQ10','JG208',85
EXEC sp_Insertar_Plantilla 'EQ10','JG209',85
EXEC sp_Insertar_Plantilla 'EQ10','JG218',85
EXEC sp_Insertar_Plantilla 'EQ10','JG219',85
EXEC sp_Insertar_Plantilla 'EQ10','JG210',85
EXEC sp_Insertar_Plantilla 'EQ10','JG211',85

-- EQUIPO 4
EXEC sp_Insertar_Plantilla 'EQ04','JG070',85
EXEC sp_Insertar_Plantilla 'EQ04','JG075',85
EXEC sp_Insertar_Plantilla 'EQ04','JG080',85
EXEC sp_Insertar_Plantilla 'EQ04','JG081',85
EXEC sp_Insertar_Plantilla 'EQ04','JG082',85
EXEC sp_Insertar_Plantilla 'EQ04','JG083',85
EXEC sp_Insertar_Plantilla 'EQ04','JG084',85
EXEC sp_Insertar_Plantilla 'EQ04','JG088',85
EXEC sp_Insertar_Plantilla 'EQ04','JG089',85
EXEC sp_Insertar_Plantilla 'EQ04','JG090',85
EXEC sp_Insertar_Plantilla 'EQ04','JG092',85


/*-----------------------------  PARTIDO 86 ----------------------------------------------*/
--EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG213',86
EXEC sp_Insertar_Plantilla 'EQ10','JG206',86
EXEC sp_Insertar_Plantilla 'EQ10','JG207',86
EXEC sp_Insertar_Plantilla 'EQ10','JG216',86
EXEC sp_Insertar_Plantilla 'EQ10','JG217',86
EXEC sp_Insertar_Plantilla 'EQ10','JG220',86
EXEC sp_Insertar_Plantilla 'EQ10','JG221',86
EXEC sp_Insertar_Plantilla 'EQ10','JG222',86
EXEC sp_Insertar_Plantilla 'EQ10','JG223',86
EXEC sp_Insertar_Plantilla 'EQ10','JG214',86
EXEC sp_Insertar_Plantilla 'EQ10','JG215',86

-- EQUIPO 5
EXEC sp_Insertar_Plantilla 'EQ05','JG093',86
EXEC sp_Insertar_Plantilla 'EQ05','JG098',86
EXEC sp_Insertar_Plantilla 'EQ05','JG099',86
EXEC sp_Insertar_Plantilla 'EQ05','JG100',86
EXEC sp_Insertar_Plantilla 'EQ05','JG105',86
EXEC sp_Insertar_Plantilla 'EQ05','JG106',86
EXEC sp_Insertar_Plantilla 'EQ05','JG107',86
EXEC sp_Insertar_Plantilla 'EQ05','JG108',86
EXEC sp_Insertar_Plantilla 'EQ05','JG110',86
EXEC sp_Insertar_Plantilla 'EQ05','JG113',86
EXEC sp_Insertar_Plantilla 'EQ05','JG115',86


/*-----------------------------  PARTIDO 87 ----------------------------------------------*/
--EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG201',87
EXEC sp_Insertar_Plantilla 'EQ10','JG202',87
EXEC sp_Insertar_Plantilla 'EQ10','JG203',87
EXEC sp_Insertar_Plantilla 'EQ10','JG204',87
EXEC sp_Insertar_Plantilla 'EQ10','JG205',87
EXEC sp_Insertar_Plantilla 'EQ10','JG208',87
EXEC sp_Insertar_Plantilla 'EQ10','JG209',87
EXEC sp_Insertar_Plantilla 'EQ10','JG218',87
EXEC sp_Insertar_Plantilla 'EQ10','JG219',87
EXEC sp_Insertar_Plantilla 'EQ10','JG210',87
EXEC sp_Insertar_Plantilla 'EQ10','JG211',87

-- EQUIPO 6
EXEC sp_Insertar_Plantilla 'EQ06','JG117',87
EXEC sp_Insertar_Plantilla 'EQ06','JG122',87
EXEC sp_Insertar_Plantilla 'EQ06','JG123',87
EXEC sp_Insertar_Plantilla 'EQ06','JG124',87
EXEC sp_Insertar_Plantilla 'EQ06','JG125',87
EXEC sp_Insertar_Plantilla 'EQ06','JG127',87
EXEC sp_Insertar_Plantilla 'EQ06','JG132',87
EXEC sp_Insertar_Plantilla 'EQ06','JG133',87
EXEC sp_Insertar_Plantilla 'EQ06','JG134',87
EXEC sp_Insertar_Plantilla 'EQ06','JG135',87
EXEC sp_Insertar_Plantilla 'EQ06','JG138',87


/*-----------------------------  PARTIDO 88 ----------------------------------------------*/
--EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG212',88
EXEC sp_Insertar_Plantilla 'EQ10','JG206',88
EXEC sp_Insertar_Plantilla 'EQ10','JG207',88
EXEC sp_Insertar_Plantilla 'EQ10','JG216',88
EXEC sp_Insertar_Plantilla 'EQ10','JG217',88
EXEC sp_Insertar_Plantilla 'EQ10','JG220',88
EXEC sp_Insertar_Plantilla 'EQ10','JG221',88
EXEC sp_Insertar_Plantilla 'EQ10','JG222',88
EXEC sp_Insertar_Plantilla 'EQ10','JG223',88
EXEC sp_Insertar_Plantilla 'EQ10','JG214',88
EXEC sp_Insertar_Plantilla 'EQ10','JG215',88

-- EQUIPO 7
EXEC sp_Insertar_Plantilla 'EQ07','JG140',88
EXEC sp_Insertar_Plantilla 'EQ07','JG145',88
EXEC sp_Insertar_Plantilla 'EQ07','JG146',88
EXEC sp_Insertar_Plantilla 'EQ07','JG151',88
EXEC sp_Insertar_Plantilla 'EQ07','JG152',88
EXEC sp_Insertar_Plantilla 'EQ07','JG153',88
EXEC sp_Insertar_Plantilla 'EQ07','JG154',88
EXEC sp_Insertar_Plantilla 'EQ07','JG155',88
EXEC sp_Insertar_Plantilla 'EQ07','JG156',88
EXEC sp_Insertar_Plantilla 'EQ07','JG159',88
EXEC sp_Insertar_Plantilla 'EQ07','JG160',88


/*-----------------------------  PARTIDO 89 ----------------------------------------------*/
--EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG201',89
EXEC sp_Insertar_Plantilla 'EQ10','JG202',89
EXEC sp_Insertar_Plantilla 'EQ10','JG203',89
EXEC sp_Insertar_Plantilla 'EQ10','JG204',89
EXEC sp_Insertar_Plantilla 'EQ10','JG205',89
EXEC sp_Insertar_Plantilla 'EQ10','JG208',89
EXEC sp_Insertar_Plantilla 'EQ10','JG209',89
EXEC sp_Insertar_Plantilla 'EQ10','JG218',89
EXEC sp_Insertar_Plantilla 'EQ10','JG219',89
EXEC sp_Insertar_Plantilla 'EQ10','JG210',89
EXEC sp_Insertar_Plantilla 'EQ10','JG211',89

-- EQUIPO 8
EXEC sp_Insertar_Plantilla 'EQ08','JG162',89
EXEC sp_Insertar_Plantilla 'EQ08','JG165',89
EXEC sp_Insertar_Plantilla 'EQ08','JG166',89
EXEC sp_Insertar_Plantilla 'EQ08','JG171',89
EXEC sp_Insertar_Plantilla 'EQ08','JG172',89
EXEC sp_Insertar_Plantilla 'EQ08','JG173',89
EXEC sp_Insertar_Plantilla 'EQ08','JG174',89
EXEC sp_Insertar_Plantilla 'EQ08','JG175',89
EXEC sp_Insertar_Plantilla 'EQ08','JG178',89
EXEC sp_Insertar_Plantilla 'EQ08','JG179',89
EXEC sp_Insertar_Plantilla 'EQ08','JG180',89


/*-----------------------------  PARTIDO 90 ----------------------------------------------*/
--EQUIPO 10
EXEC sp_Insertar_Plantilla 'EQ10','JG213',90
EXEC sp_Insertar_Plantilla 'EQ10','JG206',90
EXEC sp_Insertar_Plantilla 'EQ10','JG207',90
EXEC sp_Insertar_Plantilla 'EQ10','JG216',90
EXEC sp_Insertar_Plantilla 'EQ10','JG217',90
EXEC sp_Insertar_Plantilla 'EQ10','JG220',90
EXEC sp_Insertar_Plantilla 'EQ10','JG221',90
EXEC sp_Insertar_Plantilla 'EQ10','JG222',90
EXEC sp_Insertar_Plantilla 'EQ10','JG223',90
EXEC sp_Insertar_Plantilla 'EQ10','JG214',90
EXEC sp_Insertar_Plantilla 'EQ10','JG215',90

-- EQUIPO 9
EXEC sp_Insertar_Plantilla 'EQ09','JG182',90
EXEC sp_Insertar_Plantilla 'EQ09','JG183',90
EXEC sp_Insertar_Plantilla 'EQ09','JG184',90
EXEC sp_Insertar_Plantilla 'EQ09','JG191',90
EXEC sp_Insertar_Plantilla 'EQ09','JG192',90
EXEC sp_Insertar_Plantilla 'EQ09','JG193',90
EXEC sp_Insertar_Plantilla 'EQ09','JG194',90
EXEC sp_Insertar_Plantilla 'EQ09','JG195',90
EXEC sp_Insertar_Plantilla 'EQ09','JG198',90
EXEC sp_Insertar_Plantilla 'EQ09','JG199',90
EXEC sp_Insertar_Plantilla 'EQ09','JG200',90

--Esto se debe hacer para los 90 partidos










Select * from Partido
SELECT * FROM Vistas.Goleadores
SELECT * FROM Vistas.Posiciones
SELECT * FROM Vistas.EquiposDescenso

--REGISTRO DE GOLES PARA LOS 90 PARTIDOS
--Partido EQ01 VS EQ02
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  1, 'JG007','EQ01'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  1, 'JG030','EQ02'
EXEC ProcGoles.sp_insertargoles  1, 'JG030','EQ02'
EXEC ProcGoles.sp_insertargoles  1, 'JG031','EQ02'

exec sp_finalizar_partido 1

--Partido EQ01 VS EQ03
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  2, 'JG023','EQ01'
EXEC ProcGoles.sp_insertargoles  2, 'JG023','EQ01'
EXEC ProcGoles.sp_insertargoles  2, 'JG022','EQ01'
EXEC ProcGoles.sp_insertargoles  2, 'JG022','EQ01'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  2, 'JG069','EQ03'

exec sp_finalizar_partido 2

--Partido EQ01 VS EQ04
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  3, 'JG022','EQ01'
EXEC ProcGoles.sp_insertargoles  3, 'JG022','EQ01'
EXEC ProcGoles.sp_insertargoles  3, 'JG023','EQ01'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  3, 'JG092','EQ04'

exec sp_finalizar_partido 3

--Partido EQ01 VS EQ05
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  4, 'JG022','EQ01'
EXEC ProcGoles.sp_insertargoles  4, 'JG023','EQ01'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  4, 'JG114','EQ05'
EXEC ProcGoles.sp_insertargoles  4, 'JG115','EQ05'
EXEC ProcGoles.sp_insertargoles  4, 'JG115','EQ05'

exec sp_finalizar_partido 4

--Partido EQ01 VS EQ06
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  5, 'JG022','EQ01'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  5, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  5, 'JG137','EQ06'

exec sp_finalizar_partido 5

--Partido EQ01 VS EQ07
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  6, 'JG023','EQ01'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  6, 'JG161','EQ07'

exec sp_finalizar_partido 6

--Partido EQ01 VS EQ08
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  7, 'JG022','EQ01'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  7, 'JG180','EQ08'

exec sp_finalizar_partido 7

--Partido EQ01 VS EQ09
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  8, 'JG023','EQ01'
EXEC ProcGoles.sp_insertargoles  8, 'JG022','EQ01'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  8, 'JG200','EQ09'

exec sp_finalizar_partido 8

--Partido EQ01 VS EQ10
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  9, 'JG022','EQ01'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  9, 'JG223','EQ10'
EXEC ProcGoles.sp_insertargoles  9, 'JG222','EQ10'

exec sp_finalizar_partido 9

--Partido EQ02 VS EQ01
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  10, 'JG046','EQ02'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  10, 'JG022','EQ01'
EXEC ProcGoles.sp_insertargoles  10, 'JG023','EQ01'

exec sp_finalizar_partido 10

--Partido EQ02 VS EQ03
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  11, 'JG046','EQ02'
EXEC ProcGoles.sp_insertargoles  11, 'JG046','EQ02'
EXEC ProcGoles.sp_insertargoles  11, 'JG045','EQ02'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  11, 'JG069','EQ03'
EXEC ProcGoles.sp_insertargoles  11, 'JG069','EQ03'
EXEC ProcGoles.sp_insertargoles  11, 'JG068','EQ03'

exec sp_finalizar_partido 11

--Partido EQ02 VS EQ04
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  12, 'JG046','EQ02'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  12, 'JG092','EQ04'

exec sp_finalizar_partido 12

--Partido EQ02 VS EQ05
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  13, 'JG046','EQ02'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  13, 'JG0115','EQ05'

exec sp_finalizar_partido 13

--Partido EQ02 VS EQ06
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  14, 'JG046','EQ02'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  14, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  14, 'JG137','EQ06'

exec sp_finalizar_partido 14

--Partido EQ02 VS EQ07
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  15, 'JG046','EQ02'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  15, 'JG161','EQ07'
EXEC ProcGoles.sp_insertargoles  15, 'JG160','EQ07'

exec sp_finalizar_partido 15

--Partido EQ02 VS EQ08
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  16, 'JG046','EQ02'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  16, 'JG180','EQ08'

exec sp_finalizar_partido 16

--Partido EQ02 VS EQ09
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  17, 'JG046','EQ02'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  17, 'JG200','EQ09'

exec sp_finalizar_partido 17

--Partido EQ02 VS EQ10
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  18, 'JG046','EQ02'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  18, 'JG223','EQ10'

exec sp_finalizar_partido 18

--Partido EQ03 VS EQ01
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  19, 'JG069','EQ03'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  19, 'JG023','EQ01'

exec sp_finalizar_partido 19

--Partido EQ03 VS EQ02
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  20, 'JG069','EQ03'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  20, 'JG046','EQ02'

exec sp_finalizar_partido 20

--Partido EQ03 VS EQ04
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  21, 'JG069','EQ03'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  21, 'JG092','EQ04'

exec sp_finalizar_partido 21

--Partido EQ03 VS EQ05
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  22, 'JG069','EQ03'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  22, 'JG115','EQ05'
EXEC ProcGoles.sp_insertargoles  22, 'JG114','EQ05'

exec sp_finalizar_partido 22

--Partido EQ03 VS EQ06
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  23, 'JG069','EQ03'
EXEC ProcGoles.sp_insertargoles  23, 'JG069','EQ03'
EXEC ProcGoles.sp_insertargoles  23, 'JG068','EQ03'
EXEC ProcGoles.sp_insertargoles  23, 'JG068','EQ03'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  23, 'JG138','EQ06'

exec sp_finalizar_partido 23

--Partido EQ03 VS EQ07
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  24, 'JG069','EQ03'
EXEC ProcGoles.sp_insertargoles  24, 'JG069','EQ03'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  24, 'JG161','EQ07'

exec sp_finalizar_partido 24

--Partido EQ03 VS EQ08
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  25, 'JG069','EQ03'
EXEC ProcGoles.sp_insertargoles  25, 'JG069','EQ03'
EXEC ProcGoles.sp_insertargoles  25, 'JG068','EQ03'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  25, 'JG180','EQ08'
EXEC ProcGoles.sp_insertargoles  25, 'JG180','EQ08'
EXEC ProcGoles.sp_insertargoles  25, 'JG179','EQ08'
EXEC ProcGoles.sp_insertargoles  25, 'JG179','EQ08'

exec sp_finalizar_partido 25

--Partido EQ03 VS EQ09
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  26, 'JG069','EQ03'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  26, 'JG200','EQ09'
EXEC ProcGoles.sp_insertargoles  26, 'JG200','EQ09'

exec sp_finalizar_partido 26

--Partido EQ03 VS EQ10
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  27, 'JG069','EQ03'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  27, 'JG223','EQ10'

exec sp_finalizar_partido 27

--Partido EQ04 VS EQ01
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  28, 'JG092','EQ04'
EXEC ProcGoles.sp_insertargoles  28, 'JG092','EQ04'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  28, 'JG023','EQ01'

exec sp_finalizar_partido 28

--Partido EQ04 VS EQ02
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  29, 'JG092','EQ04'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  29, 'JG046','EQ02'
EXEC ProcGoles.sp_insertargoles  29, 'JG046','EQ02'

exec sp_finalizar_partido 29

--Partido EQ04 VS EQ03
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  30, 'JG092','EQ04'
EXEC ProcGoles.sp_insertargoles  30, 'JG092','EQ04'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  30, 'JG069','EQ03'

exec sp_finalizar_partido 30

--Partido EQ04 VS EQ05
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  31, 'JG092','EQ04'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  31, 'JG115','EQ05'
EXEC ProcGoles.sp_insertargoles  31, 'JG115','EQ05'

exec sp_finalizar_partido 31

--Partido EQ04 VS EQ06
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  32, 'JG092','EQ04'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  32, 'JG138','EQ06'

exec sp_finalizar_partido 32

--Partido EQ04 VS EQ07
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  33, 'JG092','EQ04'
EXEC ProcGoles.sp_insertargoles  33, 'JG092','EQ04'
EXEC ProcGoles.sp_insertargoles  33, 'JG091','EQ04'
EXEC ProcGoles.sp_insertargoles  33, 'JG091','EQ04'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  33, 'JG161','EQ07'

exec sp_finalizar_partido 33

--Partido EQ04 VS EQ08
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  34, 'JG092','EQ04'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  34, 'JG180','EQ08'

exec sp_finalizar_partido 34

--Partido EQ04 VS EQ09
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  35, 'JG092','EQ04'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  35, 'JG200','EQ09'
EXEC ProcGoles.sp_insertargoles  35, 'JG200','EQ09'
EXEC ProcGoles.sp_insertargoles  35, 'JG199','EQ09'
EXEC ProcGoles.sp_insertargoles  35, 'JG199','EQ09'

exec sp_finalizar_partido 35

--Partido EQ04 VS EQ10
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  36, 'JG092','EQ04'
EXEC ProcGoles.sp_insertargoles  36, 'JG092','EQ04'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  36, 'JG180','EQ10'

exec sp_finalizar_partido 36

--Partido EQ05 VS EQ01
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  37, 'JG115','EQ05'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  37, 'JG023','EQ01'
EXEC ProcGoles.sp_insertargoles  37, 'JG023','EQ01'

exec sp_finalizar_partido 37

--Partido EQ05 VS EQ02
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  38, 'JG115','EQ05'
EXEC ProcGoles.sp_insertargoles  38, 'JG115','EQ05'
EXEC ProcGoles.sp_insertargoles  38, 'JG114','EQ05'
EXEC ProcGoles.sp_insertargoles  38, 'JG114','EQ05'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  38, 'JG046','EQ02'

exec sp_finalizar_partido 38

--Partido EQ05 VS EQ03
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  39, 'JG115','EQ05'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  39, 'JG069','EQ03'
EXEC ProcGoles.sp_insertargoles  39, 'JG069','EQ03'

exec sp_finalizar_partido 39

--Partido EQ05 VS EQ04
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  40, 'JG115','EQ05'
EXEC ProcGoles.sp_insertargoles  40, 'JG115','EQ05'
EXEC ProcGoles.sp_insertargoles  40, 'JG114','EQ05'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  40, 'JG092','EQ04'

exec sp_finalizar_partido 40

--Partido EQ05 VS EQ06
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  41, 'JG115','EQ05'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  41, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  41, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  41, 'JG137','EQ06'
EXEC ProcGoles.sp_insertargoles  41, 'JG137','EQ06'

exec sp_finalizar_partido 41

--Partido EQ05 VS EQ07
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  42, 'JG115','EQ05'
EXEC ProcGoles.sp_insertargoles  42, 'JG115','EQ05'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  42, 'JG161','EQ07'

exec sp_finalizar_partido 42

--Partido EQ05 VS EQ08
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  43, 'JG115','EQ05'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  43, 'JG180','EQ08'
EXEC ProcGoles.sp_insertargoles  43, 'JG180','EQ08'
EXEC ProcGoles.sp_insertargoles  43, 'JG179','EQ08'
EXEC ProcGoles.sp_insertargoles  43, 'JG179','EQ08'
EXEC ProcGoles.sp_insertargoles  43, 'JG178','EQ08'

exec sp_finalizar_partido 43

--Partido EQ05 VS EQ09
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  44, 'JG115','EQ05'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  44, 'JG200','EQ09'

exec sp_finalizar_partido 44

--Partido EQ05 VS EQ10
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  45, 'JG115','EQ05'
EXEC ProcGoles.sp_insertargoles  45, 'JG115','EQ05'
EXEC ProcGoles.sp_insertargoles  45, 'JG115','EQ05'
EXEC ProcGoles.sp_insertargoles  45, 'JG115','EQ05'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  45, 'JG223','EQ10'

exec sp_finalizar_partido 45

--Partido EQ06 VS EQ01
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  46, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  46, 'JG138','EQ06'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  46, 'JG023','EQ01'
EXEC ProcGoles.sp_insertargoles  46, 'JG023','EQ01'
EXEC ProcGoles.sp_insertargoles  46, 'JG022','EQ01'

exec sp_finalizar_partido 46

--Partido EQ06 VS EQ02
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  47, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  47, 'JG138','EQ06'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  47, 'JG046','EQ02'
EXEC ProcGoles.sp_insertargoles  47, 'JG046','EQ02'

exec sp_finalizar_partido 47

--Partido EQ06 VS EQ03
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  48, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  48, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  48, 'JG137','EQ06'
EXEC ProcGoles.sp_insertargoles  48, 'JG137','EQ06'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  48, 'JG069','EQ03'

exec sp_finalizar_partido 48

--Partido EQ06 VS EQ04
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  49, 'JG138','EQ06'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  49, 'JG092','EQ04'
EXEC ProcGoles.sp_insertargoles  49, 'JG092','EQ04'

exec sp_finalizar_partido 49

--Partido EQ06 VS EQ05
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  50, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  50, 'JG138','EQ06'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  50, 'JG115','EQ05'

exec sp_finalizar_partido 50

--Partido EQ06 VS EQ07
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  51, 'JG138','EQ06'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  51, 'JG161','EQ07'
EXEC ProcGoles.sp_insertargoles  51, 'JG161','EQ07'
EXEC ProcGoles.sp_insertargoles  51, 'JG160','EQ07'

exec sp_finalizar_partido 51

--Partido EQ06 VS EQ08
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  52, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  52, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  52, 'JG138','EQ06'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  52, 'JG180','EQ08'
EXEC ProcGoles.sp_insertargoles  52, 'JG180','EQ08'
EXEC ProcGoles.sp_insertargoles  52, 'JG180','EQ08'

exec sp_finalizar_partido 52

--Partido EQ06 VS EQ09
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  53, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  53, 'JG138','EQ06'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  53, 'JG200','EQ09'
EXEC ProcGoles.sp_insertargoles  53, 'JG200','EQ09'
EXEC ProcGoles.sp_insertargoles  53, 'JG199','EQ09'

exec sp_finalizar_partido 53

--Partido EQ06 VS EQ10
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  54, 'JG138','EQ06'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  54, 'JG223','EQ10'
EXEC ProcGoles.sp_insertargoles  54, 'JG223','EQ10'

exec sp_finalizar_partido 54

--Partido EQ07 VS EQ01
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  55, 'JG161','EQ07'
EXEC ProcGoles.sp_insertargoles  55, 'JG161','EQ07'
EXEC ProcGoles.sp_insertargoles  55, 'JG160','EQ07'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  55, 'JG023','EQ01'

exec sp_finalizar_partido 55

--Partido EQ07 VS EQ02
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  56, 'JG161','EQ07'
EXEC ProcGoles.sp_insertargoles  56, 'JG161','EQ07'
EXEC ProcGoles.sp_insertargoles  56, 'JG160','EQ07'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  56, 'JG046','EQ02'
EXEC ProcGoles.sp_insertargoles  56, 'JG046','EQ02'
EXEC ProcGoles.sp_insertargoles  56, 'JG045','EQ02'
EXEC ProcGoles.sp_insertargoles  56, 'JG045','EQ02'

exec sp_finalizar_partido 56

--Partido EQ07 VS EQ03
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  57, 'JG161','EQ07'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  57, 'JG069','EQ03'

exec sp_finalizar_partido 57

--Partido EQ07 VS EQ04
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  58, 'JG161','EQ07'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  58, 'JG092','EQ04'

exec sp_finalizar_partido 58

--Partido EQ07 VS EQ05
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  59, 'JG161','EQ07'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  59, 'JG115','EQ05'
EXEC ProcGoles.sp_insertargoles  59, 'JG115','EQ05'

exec sp_finalizar_partido 59

--Partido EQ07 VS EQ06
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  60, 'JG161','EQ07'
EXEC ProcGoles.sp_insertargoles  60, 'JG161','EQ07'
EXEC ProcGoles.sp_insertargoles  60, 'JG160','EQ07'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  60, 'JG138','EQ06'

exec sp_finalizar_partido 60

--Partido EQ07 VS EQ08
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  61, 'JG161','EQ07'
EXEC ProcGoles.sp_insertargoles  61, 'JG161','EQ07'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  61, 'JG180','EQ08'

exec sp_finalizar_partido 61

--Partido EQ07 VS EQ09
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  62, 'JG161','EQ07'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  62, 'JG200','EQ09'

exec sp_finalizar_partido 62

--Partido EQ07 VS EQ10
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  63, 'JG161','EQ07'
EXEC ProcGoles.sp_insertargoles  63, 'JG161','EQ07'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  63, 'JG223','EQ10'
EXEC ProcGoles.sp_insertargoles  63, 'JG223','EQ10'
EXEC ProcGoles.sp_insertargoles  63, 'JG222','EQ10'
EXEC ProcGoles.sp_insertargoles  63, 'JG222','EQ10'
EXEC ProcGoles.sp_insertargoles  63, 'JG222','EQ10'

exec sp_finalizar_partido 63

--Partido EQ08 VS EQ01
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  64, 'JG180','EQ08'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  64, 'JG023','EQ01'
EXEC ProcGoles.sp_insertargoles  64, 'JG023','EQ01'

exec sp_finalizar_partido 64

--Partido EQ08 VS EQ02
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  65, 'JG180','EQ08'
EXEC ProcGoles.sp_insertargoles  65, 'JG180','EQ08'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  65, 'JG046','EQ02'

exec sp_finalizar_partido 65

--Partido EQ08 VS EQ03
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  66, 'JG180','EQ08'
EXEC ProcGoles.sp_insertargoles  66, 'JG180','EQ08'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  66, 'JG069','EQ03'

exec sp_finalizar_partido 66

--Partido EQ08 VS EQ04
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  67, 'JG180','EQ08'
EXEC ProcGoles.sp_insertargoles  67, 'JG180','EQ08'
EXEC ProcGoles.sp_insertargoles  67, 'JG179','EQ08'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  67, 'JG092','EQ04'

exec sp_finalizar_partido 67

--Partido EQ08 VS EQ05
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  68, 'JG180','EQ08'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  68, 'JG115','EQ05'
EXEC ProcGoles.sp_insertargoles  68, 'JG115','EQ05'

exec sp_finalizar_partido 68

--Partido EQ08 VS EQ06
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  69, 'JG180','EQ08'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  69, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  69, 'JG138','EQ06'

exec sp_finalizar_partido 69

--Partido EQ08 VS EQ07
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  70, 'JG180','EQ08'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  70, 'JG161','EQ07'
EXEC ProcGoles.sp_insertargoles  70, 'JG161','EQ07'

exec sp_finalizar_partido 70

--Partido EQ08 VS EQ09
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  71, 'JG180','EQ08'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  71, 'JG200','EQ09'
EXEC ProcGoles.sp_insertargoles  71, 'JG200','EQ09'
EXEC ProcGoles.sp_insertargoles  71, 'JG199','EQ09'
EXEC ProcGoles.sp_insertargoles  71, 'JG199','EQ09'

exec sp_finalizar_partido 71

--Partido EQ08 VS EQ10
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  72, 'JG180','EQ08'
EXEC ProcGoles.sp_insertargoles  72, 'JG180','EQ08'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  72, 'JG223','EQ10'

exec sp_finalizar_partido 72

--Partido EQ09 VS EQ01
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  73, 'JG200','EQ09'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  73, 'JG023','EQ01'
EXEC ProcGoles.sp_insertargoles  73, 'JG023','EQ01'
EXEC ProcGoles.sp_insertargoles  73, 'JG022','EQ01'
EXEC ProcGoles.sp_insertargoles  73, 'JG022','EQ01'

exec sp_finalizar_partido 73

--Partido EQ09 VS EQ02
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  74, 'JG200','EQ09'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  74, 'JG046','EQ02'
EXEC ProcGoles.sp_insertargoles  74, 'JG046','EQ02'
EXEC ProcGoles.sp_insertargoles  74, 'JG045','EQ02'
EXEC ProcGoles.sp_insertargoles  74, 'JG045','EQ02'

exec sp_finalizar_partido 74

--Partido EQ09 VS EQ03
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  75, 'JG200','EQ09'
EXEC ProcGoles.sp_insertargoles  75, 'JG200','EQ09'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  75, 'JG069','EQ03'

exec sp_finalizar_partido 75

--Partido EQ09 VS EQ04
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  76, 'JG200','EQ09'
EXEC ProcGoles.sp_insertargoles  76, 'JG200','EQ09'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  76, 'JG092','EQ04'

exec sp_finalizar_partido 76

--Partido EQ09 VS EQ05
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  77, 'JG200','EQ09'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  77, 'JG115','EQ05'

exec sp_finalizar_partido 77

--Partido EQ09 VS EQ06
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  78, 'JG200','EQ09'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  78, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  78, 'JG138','EQ06'
EXEC ProcGoles.sp_insertargoles  78, 'JG137','EQ06'

exec sp_finalizar_partido 78

--Partido EQ09 VS EQ07
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  79, 'JG200','EQ09'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  79, 'JG161','EQ07'

exec sp_finalizar_partido 79

--Partido EQ09 VS EQ08
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  80, 'JG200','EQ09'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  80, 'JG180','EQ08'
EXEC ProcGoles.sp_insertargoles  80, 'JG180','EQ08'

exec sp_finalizar_partido 80

--Partido EQ09 VS EQ10
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  81, 'JG200','EQ09'
EXEC ProcGoles.sp_insertargoles  81, 'JG200','EQ09'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  81, 'JG223','EQ10'

exec sp_finalizar_partido 81

--Partido EQ10 VS EQ01
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  82, 'JG223','EQ10'
EXEC ProcGoles.sp_insertargoles  82, 'JG223','EQ10'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  82, 'JG023','EQ01'

exec sp_finalizar_partido 82

--Partido EQ10 VS EQ02
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  83, 'JG223','EQ10'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  83, 'JG046','EQ02'

exec sp_finalizar_partido 83

--Partido EQ10 VS EQ03
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  84, 'JG223','EQ10'
EXEC ProcGoles.sp_insertargoles  84, 'JG223','EQ10'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  84, 'JG069','EQ03'
EXEC ProcGoles.sp_insertargoles  84, 'JG069','EQ03'

exec sp_finalizar_partido 84

--Partido EQ10 VS EQ04
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  85, 'JG223','EQ10'
EXEC ProcGoles.sp_insertargoles  85, 'JG223','EQ10'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  85, 'JG092','EQ04'

exec sp_finalizar_partido 85

--Partido EQ10 VS EQ05
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  86, 'JG223','EQ10'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  86, 'JG115','EQ05'

exec sp_finalizar_partido 86

--Partido EQ10 VS EQ06
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  87, 'JG223','EQ10'
EXEC ProcGoles.sp_insertargoles  87, 'JG223','EQ10'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  87, 'JG138','EQ06'

exec sp_finalizar_partido 87

--Partido EQ10 VS EQ07
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  88, 'JG223','EQ10'
EXEC ProcGoles.sp_insertargoles  88, 'JG223','EQ10'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  88, 'JG161','EQ07'
EXEC ProcGoles.sp_insertargoles  88, 'JG161','EQ07'

exec sp_finalizar_partido 88

--Partido EQ10 VS EQ08
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  89, 'JG223','EQ10'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  89, 'JG161','EQ08'

exec sp_finalizar_partido 89

--Partido EQ10 VS EQ09
--GOLES LOCAL
EXEC ProcGoles.sp_insertargoles  90, 'JG223','EQ10'
EXEC ProcGoles.sp_insertargoles  90, 'JG223','EQ10'
--GOLES VISITANTE
EXEC ProcGoles.sp_insertargoles  90, 'JG200','EQ09'
EXEC ProcGoles.sp_insertargoles  90, 'JG200','EQ09'

exec sp_finalizar_partido 90