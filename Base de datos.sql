--CREANDO BASE DE DATOS
use master
create database Control_Ligas
go


use Control_Ligas
--CREANDO TABLAS
--TABLA FechaNoPermitida
create table FechaNoPermitida
(
	IdFechaNoPermitida varchar(20) not null,
	FechaNoPermitida date not null,
	DescripcionFecha VARCHAR(MAX)
	--LLAVE PRIMARIA
	constraint pk_FechaNoPermitida primary key (IdFechaNoPermitida)
);


--TABLA PAIS
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
	DireccionEstado varchar(MAX),
	nombreRepresentante varchar(200) not null,
	telefonoRepresentante varchar(10) not null,
	correoRepresentante varchar(50) not null,
	--LLAVE PRIMARIA
	constraint pk_IdEstadio primary key (IdEstadio)
);


--TABLA DIA FAVORITO
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
	--Pendiente de eliminar
	--constraint fk_Campania_EquipoGanador foreign key (EquipoGanador) references Equipo (IdEquipo),
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
	correo varchar(50) not null,
	sexo varchar(20) not null,
	numIdentificacion varchar(50) not null,
	IdPais varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdEmpleado primary key (IdEmpleado),
	--LLAVE SECUNDARIA
	constraint fk_Empleado_TipoEmpleado foreign key (IdTipoEmpleado) references TipoEmpleado (IdTipoEmpleado),
	constraint fk_Empleado_Equipo foreign key (IdEquipo) references Equipo (IdEquipo),
	constraint fk_Empleado_pais foreign key (IdPais) references pais (IdPais),
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
	FechaFin DATE,
	--Llaves secundaria
	constraint fk_Detalle_Equipo_Patrocinador_IdEquipo foreign key (IdEquipo) references Equipo (IdEquipo),
	constraint fk_Detalle_Equipo_Patrocinador_IdPatrocinador foreign key (IdPatrocinador) references Patrocinador (IdPatrocinador)
);

--TABLA DUEÑO
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

--TABLA DetalleDUEÑO
create table DetalleDuenio
(
	IdDuenio varchar(20) not null,
	IdEquipo varchar(20) not null,
	--LLAVE SECUNDARIA
	constraint fk_Detalle_Dueño foreign key (IdDuenio) references Duenio (IdDuenio),
	constraint fk_Dueño_Equipo foreign key (IdEquipo) references Equipo (IdEquipo)
);

--TABLA EQUIPACIÓN
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
	posicion varchar(100),
	IdPais varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdJugador primary key (IdJugador),
	--LLAVE SECUNDARIA
	constraint fk_Jugador_Pais foreign key (IdPais) references Pais (IdPais)
);

--TABLA Detalle_Equipo_Jugador
create table Detalle_Equipo_Jugador
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
	FechaPartido date not null,
	HoraPartido time not null,
	EquipoGanador varchar(20) not null,
	EquipoPerdedor varchar(20) not null,
	GolesGanador int not null,
	GolesPerdedor int not null,
	--LLAVE PRIMARIA
	constraint pk_IdPartido primary key (IdPartido),
	--LLAVE SECUNDARIA
	--Pendiente de eliminar
	--constraint fk_Partido_EquipoVisitante foreign key (EquipoVisitante) references Equipo (IdEquipo),
	--constraint fk_Partido_EquipoPerdedor foreign key (EquipoLocal) references Equipo (IdEquipo),
);

-- TABLA PLANTILLA
create table Plantilla
(
	IdPlantilla varchar(4) not null,
	IdEquipo varchar(20) not null,
	IdJugador varchar(20) not null,
	RolJugador varchar(20) not null check(RolJugador='Titular' or RolJugador='Suplente'),
	IdPartido varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdPlantilla primary key (IdPlantilla),
	--LLAVE SECUNDARIA
	constraint fk_plantilla_equipo foreign key (IdEquipo) references Equipo(IdEquipo),
	constraint fk_plantilla_partido foreign key (IdPartido) references partido (IdPartido)
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
	constraint fk_Goles_Jugador foreign key (IdJugador) references Jugador (IdJugador)
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
	IdPartido varchar(20) not null,
	--LLAVE PRIMARIA
	constraint pk_IdTarjeta primary key (IdTarjeta),
	--LLAVE SECUNDARIA
	constraint fk_Tarjeta_TipoTarjeta foreign key (IdTipoTajerta) references TipoTarjeta (IdTipoTajerta),
	constraint fk_Tarjeta_Jugador foreign key (IdJugador) references Jugador (IdJugador),
	constraint fk_Tarjeta_partido foreign key (IdPartido) references partido (IdPartido)
);

--TABLA POSICI�N
create table Tabla_De_Posicion
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

--Fecha no permitida
create procedure sp_insertarFechaNoPermitida
	@IdFechaNoPermitida varchar(20),
	@FechaNoPermitida date,
	@DescripcionFecha varchar(max)
as
if(select count(*) from FechaNoPermitida where IdFechaNoPermitida=@IdFechaNoPermitida)=0
insert into FechaNoPermitida values (@IdFechaNoPermitida,@FechaNoPermitida,@DescripcionFecha)
else
print'Error ya existe'

EXEC sp_insertarFechaNoPermitida 'FE01', '08/10/2020', 'Chido';
SELECT * FROM FechaNoPermitida;

--Estadio
create procedure sp_insertarestadio
	@IdEstadio varchar(20),
	@NombreEstadio varchar(100),
	@CapacidadEstadio int,
	@DireccionEstado varchar(max),
	@nombreRepresentante varchar(200),
	@telefonoRepresentante varchar(10),
	@correoRepresentante varchar(50)
as 
if(select count(*) from Estadio where IdEstadio=@IdEstadio)=0
insert into Estadio values (@IdEstadio, @NombreEstadio, @CapacidadEstadio, @DireccionEstado,
 @nombreRepresentante, @telefonoRepresentante, @correoRepresentante)
 else
 print'¡Error!, este estadio ya existe'


 exec sp_insertarestadio 'ES001','Periquera',100,'wadwadawdawdwad','Jesus','7777-7777','aezeq@mail.com';

 --Division
create procedure sp_insertardivison
@IdDivision varchar(20),
@NombreDivision varchar(100)
as
if(select count(*) from Division where IdDivision=@IdDivision)=0
insert into Division values(@IdDivision, @NombreDivision)
else
print'¡Error!, esta division ya existe'

exec sp_insertardivison 'BBVA','LA LIGA';

--Equipo
create procedure sp_insertarequipo
@IdEquipo varchar(20),
@NombreEquipo varchar(100),
@NombreOficinasEquipo varchar(100),
@HoraFavoritaEquipo time,
@IdDiaFavorito varchar(20),
@IdEstadio varchar(20),
@IdPais varchar(20),
@IdLiga varchar(20)
as
if(select count(*) from Equipo where IdEquipo=@IdEquipo)=0
insert into Equipo values(@IdEquipo, @NombreEquipo, @NombreOficinasEquipo, @HoraFavoritaEquipo, @IdDiaFavorito, @IdEstadio, @IdPais, @IdLiga)
else
print'¡Error!, este equipo ya existe'

--Empleado
create procedure sp_insertar_empleado
@IdEmpleado varchar(20),
@NombreEmpleado varchar(100),
@FechaNacimientoEmpleado date,
@IdTipoEmpleado varchar(20),
@IdEquipo varchar(20),
@correo varchar(50),
@sexo varchar(20),
@numIdentificacion varchar(50),
@IdPais varchar(20)
as
if(select count(*) from Empleado where IdEmpleado=@IdEmpleado)=0
insert into Empleado values(@IdEmpleado, @NombreEmpleado, @FechaNacimientoEmpleado, @IdTipoEmpleado, @IdEquipo, @correo, @sexo, @numIdentificacion, @IdPais)
else
print'¡Error!, este empleado ya existe'

--DetalleEquipoPatrocinador
create procedure sp_Detalle_Equipo_Patrocinador
@IdEquipo varchar(20), 
@IdPatrocinador varchar(20),
@Estado int,
@FechaInicio DATE,
@FechaFin DATE 
as
if(select count(*) from Detalle_Equipo_Patrocinador where IdEquipo=@IdEquipo) = 0
insert into Detalle_Equipo_Patrocinador values(@IdEquipo, @IdPatrocinador, @Estado, @FechaInicio, @FechaFin)
else
print'¡Error!, este detalle patrocinio ya existe'

--DetalleDueño
create procedure sp_insertarDetalleDuenio
@IdDuenio varchar(20),
@IdEquipo varchar(20)
as
if(select count(*) from DetalleDuenio where IdDuenio=@IdDuenio) = 0
insert into DetalleDuenio values(@IdDuenio, @IdEquipo)
else
print'¡Error!, este detalle dueño ya existe'

--Jugador
create procedure sp_insertarjugador
@IdJugador varchar(20),
@NombreJugador varchar(100),
@AlturaJugador varchar(20), 
@PesoJugador varchar(20),
@FechaNacimientoJugador date,
@posicion varchar(100),
@IdPais varchar(20)
as
if(select count(*) from Jugador where IdJugador=@IdJugador) = 0
insert into Jugador values(@IdJugador, @NombreJugador, @AlturaJugador, @PesoJugador, @FechaNacimientoJugador, @posicion, @IdPais)
else
print'¡Error!, este jugador ya existe'

--Goleador
create procedure sp_insertargoleador
@IdJugador varchar(20),
@IdCampania varchar(20)
as
if(select count(*) from Goleador where IdJugador=@IdJugador) = 0
insert into Goleador values(@IdJugador, @IdCampania)
else
print'¡Error!, este goleador ya existe'

--Partido
create procedure sp_insertarpartido
@IdPartido varchar(20),
@EquipoVisitante varchar(20),
@EquipoLocal varchar(20),
@FechaPartido date,
@HoraPartido time,
@EquipoGanador varchar(20),
@EquipoPerdedor varchar(20), 
@GolesGanador int,
@GolesPerdedor int
as
if(select count(*) from Partido where IdPartido=@IdPartido) = 0
insert into Partido values(@IdPartido, @EquipoVisitante, @EquipoLocal, @FechaPartido, @HoraPartido, @EquipoGanador, @EquipoPerdedor, @GolesGanador, @GolesPerdedor)
else
print'¡Error!, este partido ya existe'

--Goles
create procedure sp_insertargoles
@idGol int,	
@IdPartido varchar(20),
@IdJugador varchar(20)
as
if(select count(*) from Goles where idGol=@idGol) = 0
insert into Goles values(@idGol, @IdPartido, @IdJugador)
else
print'¡Error!, este registro goles ya existe'

--Tarjeta
create procedure sp_insertartarjetas
@IdTarjeta varchar(20),
@IdTipoTajerta varchar(20),
@IdJugador varchar(20),
@IdPartido varchar(20)
as
if(select count(*) from Tarjeta where IdTarjeta=@IdTarjeta) = 0
insert into Tarjeta values(@IdTarjeta, @IdTipoTajerta, @IdJugador, @IdPartido)
else
print'¡Error!, este regristro tarjea ya existe'

--PROCEDIMIENTO TABLA PAIS
create procedure sp_Insertar_Pais
@IdPais varchar(20), 
@NombrePais varchar(100)
as 
if(select Count(*) from Pais
		where IdPais=@IdPais)=0
		insert into Pais(IdPais, NombrePais)
		values (@IdPais, @NombrePais)
else
print '¡Error!, este país ya existe'
--Consulta de prueba
select * from Pais;

--PROCEDIMIENTO TABLA TIPO EMPLEADO
create procedure sp_Insertar_TipoEmpleado
@IdTipoEmpleado varchar(20),
@NombreTipoEmpleado varchar(100)
as
if(select Count(*) from TipoEmpleado
		where IdTipoEmpleado=@IdTipoEmpleado)=0
		insert into TipoEmpleado(IdTipoEmpleado, NombreTipoEmpleado)
		values (@IdTipoEmpleado, @NombreTipoEmpleado)
else
print '¡Error!, este tipo de empleado ya existe'
--Consulta de prueba
select * from TipoEmpleado

--PROCEDIMIENTO TABLA DIA FAVORITO
create procedure sp_Insertar_DiaFavorito
@IdDiaFavorito varchar(20),
@NombreDia varchar(50)
as
if(select Count(*) from DiaFavorito
		where IdDiaFavorito=@IdDiaFavorito)=0
		insert into DiaFavorito(IdDiaFavorito, NombreDia)
		values(@IdDiaFavorito, @NombreDia)
else
print '¡Error!, este día ya existe'
--Consulta de prueba
select * from DiaFavorito

--PROCEDIMIENTO TABLA LIGA
create procedure sp_Insertar_Liga
@IdLiga varchar(20),
@NombreLiga varchar(100),
@FechaInicioLiga date,
@FechaFinalLiga date,
@IdPais varchar(20),
@IdDivision varchar(20)
as
if(select Count(*) from Liga
		where IdLiga=@IdLiga)=0
		insert into Liga(IdLiga,NombreLiga,FechaInicioLiga,FechaFinalLiga,IdPais,IdDivision)
		values (@IdLiga, @NombreLiga, @FechaInicioLiga, @FechaFinalLiga, @IdPais, @IdDivision)
else
print '¡Error!, esta liga ya existe en los registros'
--Consulta de prueba
select * from Liga

--PROCEDIMIENTO TABLA CAMPAÑA
create procedure sp_Insertar_Campania
@IdCampania varchar(20),
@NombreCampania varchar(100),
@EquipoGanador varchar(20),
@IdLiga varchar(20)
as
if(select Count(*) from Campania
		where IdCampania=@IdCampania or NombreCampania=@NombreCampania or 
		EquipoGanador=@EquipoGanador or IdLiga=@IdLiga)=0
		insert into Campania(IdCampania, NombreCampania, EquipoGanador, IdLiga)
		values (@IdCampania, @NombreCampania, @EquipoGanador, @IdLiga)
else
print '¡Error!, esta campaña ya es existente en los registros'
--Consulta de prueba
select * from Campania 

--PROCEDIMIENTO TABLA PATROCINADOR
create procedure sp_Insertar_Patrocinador
@IdPatrocinador varchar(20),
@NombrePatrocinador varchar(100),
@TelefonoPatrocinador varchar(20),
@CorreoPatrocinador varchar(20),
@Logo IMAGE
as
if(select count(*) from Patrocinador
		where IdPatrocinador=@IdPatrocinador)=0
		insert into Patrocinador
		values(@IdPatrocinador,@NombrePatrocinador, @TelefonoPatrocinador, @CorreoPatrocinador, @Logo)
else
print '¡Error!, esta patrocinador ya está en los registros'
--Consulta de prueba
select * from Patrocinador

--PROCEDIMIENTO TABLA DUEÑO
create procedure sp_Insertar_Duenio
@IdDuenio varchar(20),
@NombreDuenio varchar(100), 
@DireccionDuenio varchar(200), 
@TelefonoDuenio varchar(20),
@IdEquipo varchar(20)
as
if(select count(*) from Duenio
		where IdDuenio=@IdDuenio)=0
		insert into Duenio
		values(@IdDuenio,@NombreDuenio, @DireccionDuenio, @TelefonoDuenio, @IdEquipo)
else
print '¡Error!, esta dueño ya está en los registros'
--Consulta de prueba
select * from Duenio

--PROCEDIMIENTO TABLA EQUIPACIÓN
create procedure sp_Insertar_Equipacion
@IdEquipacion varchar(20),
@DescripcionCamisa varchar(200),
@DescripcionBotines varchar(200), 
@DescripcionShort varchar(200),
@DescripcionMedias varchar(200),
@IdEquipo varchar(20)
as
if(select count(*) from Equipacion
		where IdEquipacion=@IdEquipacion)=0
		insert into Equipacion
		values (@IdEquipacion, @DescripcionCamisa, @DescripcionBotines, 
		@DescripcionShort, @DescripcionMedias, @IdEquipo)
else
print '¡Error!, este ya es existente'
--Consulta de prueba
select * from Equipacion

--PROCEDIMIENTO TABLA DETALLE EQUIPO JUGADOR
create procedure sp_Insertar_DetalleEquipoJugador
@IdContrato varchar(20),
@FechaInicioContrato date, 
@FechaFinalContrato date, 
@IdEquipo varchar(20),
@IdJugador varchar(20)
as
if(select count(*) from Detalle_Equipo_Jugador
		where IdContrato=@IdContrato)=0
		insert into Detalle_Equipo_Jugador
		values(@IdContrato,@FechaInicioContrato,@FechaFinalContrato, @IdEquipo, @IdJugador)
else
print '¡Error!, este registro ya es existente'
--Consulta de prueba
select * from Detalle_Equipo_Jugador

--PROCEDIMIENTO TABLA DETALLE DESCENSO
create procedure sp_Insertar_DetalleDescenso
@IdEquipo varchar(20),
@IdCampania varchar(20)
as
insert into Detalle_Descenso
values (@IdEquipo, @IdCampania)
--Consulta de prueba
select * from Detalle_Descenso


--PROCEDIMIENTO TABLA PLANTILLA
create procedure sp_Insertar_Plantilla
@IdPlantilla varchar(4),
@IdEquipo varchar(20),
@IdJugador varchar(20),
@RolJugador varchar(20),
@IdPartido varchar(20)
as
if(select count (*) from Plantilla
		where IdPlantilla=@IdPlantilla)=0
		insert into Plantilla
		values (@IdPlantilla,@IdEquipo,@IdJugador, @RolJugador,@IdPartido)
else
print '¡Error!, este registro de plantilla ya es existente'
--Consulta de prueba
select * from Plantilla

--PROCEDIMIENTO TIPO TARJETA
create procedure sp_Insertar_TipoTarjeta
@IdTipoTajerta varchar(20),
@NombreTipoTarjeta varchar(20)
as
if(select count(*) from TipoTarjeta
		where IdTipoTajerta=@IdTipoTajerta)=0
		insert into TipoTarjeta
		values (@IdTipoTajerta,@NombreTipoTarjeta)
else
print '¡Error!, este registro de tipo de tarjeta ya es existente'
--Consulta de prueba
select * from TipoTarjeta

--PROCEDIMIENTO TABLA POSICION
create procedure sp_Insertar_Posicion
@IdPosicion varchar(20),
@GolesFavor int, 
@GolesContra int,
@PartidosGanados int,
@PartidosPerdidos int,
@PartidosEmpatados int,
@PartidosJugados int,
@Puntaje int,
@DiferenciaGoles int,
@JuegoLimpio int,
@IdEquipo varchar(20),
@IdCampania varchar(20)
as
if(select count(*) from Tabla_De_Posicion
		where IdPosicion=@IdPosicion)=0
		insert into Tabla_De_Posicion
		values(@IdPosicion,@GolesFavor ,@GolesContra,@PartidosGanados,@PartidosPerdidos,
		@PartidosEmpatados,@PartidosJugados,@Puntaje,@DiferenciaGoles,@JuegoLimpio,@IdEquipo,@IdCampania)
else
print '¡Error!, este registro  ya es existente'
--Consulta de prueba
select * from Tabla_De_Posicion


