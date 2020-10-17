--CREANDO BASE DE DATOS
use master
create database Control_Ligas
go
use Control_Ligas
go

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
	constraint ck_FechaNoPermitida check(FechaNoPermitida>=getdate()),
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
	FechaFinalLiga date not null,
	IdPais varchar(5) not null,
	IdDivision varchar(4) not null,
	--LLAVE PRIMARIA
	constraint pk_IdLiga primary key (IdLiga),
	--LLAVE SECUNDARIA
	constraint fk_Liga_Division foreign key (IdDivision) references Division (IdDivision),
	--RESTRICCIONES
	constraint ck_IdLiga check(IdLiga like '[L][G][0-9][0-9]'),
	constraint ck_NombreLiga check(NombreLiga like '%[a-zA-Z0-9]%'),
	constraint ck_fechasliga check(FechaFinalLiga>FechaInicioLiga)
);

--TABLA EQUIPO
create table Equipo
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
	EquipoGanador varchar(20) not null,
	IdLiga varchar(4) not null,
	--LLAVE PRIMARIA
	constraint pk_IdCampania primary key (IdCampania),
	--LLAVE SECUNDARIA
	--Pendiente de eliminar
	--constraint fk_Campania_EquipoGanador foreign key (EquipoGanador) references Equipo (IdEquipo),
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
	constraint fk_Empleado_Equipo foreign key (IdEquipo) references Equipo (IdEquipo),
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
	constraint fk_Detalle_Equipo_Patrocinador_IdEquipo foreign key (IdEquipo) references Equipo (IdEquipo),
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
	constraint fk_Dueño_Equipo foreign key (IdEquipo) references Equipo (IdEquipo)
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
	constraint fk_Equipacio_Equipo foreign key (IdEquipo) references Equipo (IdEquipo),
	--RESTRICCIONES
	constraint ck_IdEquipacion check(IdEquipacion like '[E][Q][U][I][0-9][0-9]')
);

--TABLA JUGADOR
create table Jugador
(
	IdJugador varchar(4) not null,
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
	constraint ck_IdJugador check(IdJugador like '[J][G][0-9][0-9]'),
	constraint ck_NombreJugador check(NombreJugador like '%[a-zA-Z]%'),
	constraint ck_Posicion check(posicion like '%[a-zA-Z]]')
);

--TABLA Detalle_Equipo_Jugador
create table Detalle_Equipo_Jugador
(
	IdContrato varchar(5) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	FechaInicioContrato date not null,
	FechaFinalContrato date not null,
	IdEquipo varchar(4) not null,
	IdJugador varchar(4) not null,
	--LLAVE PRIMARIA
	constraint pk_IdContrato primary key (IdContrato),
	--LLAVE SECUNDARIA
	constraint fk_Contrato_Equipo foreign key (IdEquipo) references Equipo (IdEquipo),
	constraint fk_Contrato_Jugador foreign key (IdJugador) references Jugador (IdJugador)
);

--TABLA GOLEADOR
create table Goleador
(
	IdJugador varchar(4) not null,
	IdCampania varchar(4) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	--LLAVE SECUNDARIA
	constraint fk_Goleador_Jugador foreign key (IdJugador) references Jugador (IdJugador),
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
	constraint fk_Detalle_Descenso_IdEquipo foreign key (IdEquipo) references Equipo (IdEquipo),
	constraint fk_Detalle_Descenso_IdCampania foreign key (IdCampania) references Campania (IdCampania)
);


--TABLA PARTIDO
create table Partido
(
	IdPartido varchar(5) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
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
	--RESTRICCIONES
	constraint ck_IdPartido check(IdPartido like '[P][A][R][0-9][0-9]')
);

-- TABLA PLANTILLA
create table Plantilla
(
	IdPlantilla varchar(4) not null,
	IdEquipo varchar(4) not null,
	IdJugador varchar(4) not null,
	RolJugador varchar(20) not null check(RolJugador='Titular' or RolJugador='Suplente'),
	IdPartido varchar(5) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	--LLAVE PRIMARIA
	constraint pk_IdPlantilla primary key (IdPlantilla),
	--LLAVE SECUNDARIA
	constraint fk_plantilla_equipo foreign key (IdEquipo) references Equipo(IdEquipo),
	constraint fk_plantilla_jugador foreign key (IdJugador) references Jugador(IdJugador),
	constraint fk_plantilla_partido foreign key (IdPartido) references partido (IdPartido),
	--RESTRICCIONES
	constraint ck_IdPlantilla check(IdPlantilla like '[P][L][0-9][0-9]')
);

--TABLA GOLES
create table Goles
(
	idGol int not null,
	IdPartido varchar(5) not null,
	IdJugador varchar(4) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	--LLAVE PRIMARIA
	constraint pk_IdGol primary key(idGol),
	--LLAVE SECUNDARIA
	constraint fk_idpartido foreign key(IdPartido) references Partido(IdPartido),
	constraint fk_Goles_Jugador foreign key (IdJugador) references Jugador (IdJugador)
);

--TABLA TIPO TARJETA
create table TipoTarjeta
(
	IdTipoTajerta varchar(4) not null,
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
	IdTarjeta varchar(4) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	IdTipoTajerta varchar(4) not null,
	IdJugador varchar(4) not null,
	IdPartido varchar(5) not null,
	--LLAVE PRIMARIA
	constraint pk_IdTarjeta primary key (IdTarjeta),
	--LLAVE SECUNDARIA
	constraint fk_Tarjeta_TipoTarjeta foreign key (IdTipoTajerta) references TipoTarjeta (IdTipoTajerta),
	constraint fk_Tarjeta_Jugador foreign key (IdJugador) references Jugador (IdJugador),
	constraint fk_Tarjeta_partido foreign key (IdPartido) references partido (IdPartido),
	--RESTRICCIONES
	constraint ck_IdTarjeta check(IdTarjeta like '[T][A][R][0-9][0-9]')
);

--TABLA Tabla_De_Posicion
create table Tabla_De_Posicion
(
	IdPosicion varchar(5) not null,
	usuarioisert varchar(50),
	usuarioupdate varchar(50),
	fechainsert date,
	fechaupdate date,
	GolesFavor int not null,
	GolesContra int not null,
	PartidosGanados int not null,
	PartidosPerdidos int not null,
	PartidosEmpatados int not null,
	PartidosJugados int not null,
	Puntaje int not null,
	DiferenciaGoles int not null,
	JuegoLimpio int not null,
	IdEquipo varchar(4) not null,
	IdCampania varchar(4) not null,
	--LLAVE PRIMARIA
	constraint pk_IdPosicion primary key (IdPosicion),
	--LLAVE SECUNDARIA
	constraint fk_Posicion_Equipo foreign key (IdEquipo) references Equipo (IdEquipo),
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
	if(select count(*) from Equipo where IdEquipo=@IdEquipo)=0
	insert into Equipo(IdEquipo, NombreEquipo, NombreOficinasEquipo, HoraFavoritaEquipo, IdDiaFavorito, IdEstadio, IdPais, IdLiga)
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
	if(select count(*) from Jugador where IdJugador=@IdJugador) = 0
	insert into Jugador(IdJugador,NombreJugador, AlturaJugador, PesoJugador, FechaNacimientoJugador, posicion, IdPais)
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
begin try
begin tran
	if(select count(*) from Partido where IdPartido=@IdPartido) = 0
	insert into Partido(IdPartido, EquipoVisitante, EquipoLocal, FechaPartido, HoraPartido, EquipoGanador, EquipoPerdedor, GolesGanador, GolesPerdedor)
	values(@IdPartido, @EquipoVisitante, @EquipoLocal, @FechaPartido, @HoraPartido, @EquipoGanador, @EquipoPerdedor, @GolesGanador, @GolesPerdedor)
	else
	print'¡Error!, este partido ya existe'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO


--Goles
create procedure sp_insertargoles
@idGol int,	
@IdPartido varchar(20),
@IdJugador varchar(20)
as
begin try
begin tran
	if(select count(*) from Goles where idGol=@idGol) = 0
	insert into Goles(idGol, IdPartido, IdJugador)
	values(@idGol, @IdPartido, @IdJugador)
	else
	print'¡Error!, este registro goles ya existe'
commit
end try
begin catch
rollback
print error_message()
end catch;
GO

--Tarjeta
create procedure sp_insertartarjetas
@IdTarjeta varchar(20),
@IdTipoTajerta varchar(20),
@IdJugador varchar(20),
@IdPartido varchar(20)
as
begin try
begin tran
	if(select count(*) from Tarjeta where IdTarjeta=@IdTarjeta) = 0
	insert into Tarjeta(IdTarjeta, IdTipoTajerta, IdJugador, IdPartido)
	values(@IdTarjeta, @IdTipoTajerta, @IdJugador, @IdPartido)
	else
	print'¡Error!, este regristro tarjea ya existe'
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
@FechaFinalLiga date,
@IdPais varchar(5),
@IdDivision varchar(4)
as
begin try
begin tran
	if(select Count(*) from Liga
			where IdLiga=@IdLiga)=0
			insert into Liga(IdLiga,NombreLiga,FechaInicioLiga,FechaFinalLiga,IdPais,IdDivision)
			values (@IdLiga, @NombreLiga, @FechaInicioLiga, @FechaFinalLiga, @IdPais, @IdDivision)
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
@EquipoGanador varchar(20),
@IdLiga varchar(4)
as
begin try
begin tran
	if(select Count(*) from Campania
			where IdCampania=@IdCampania or NombreCampania=@NombreCampania or 
			EquipoGanador=@EquipoGanador)=0
			insert into Campania(IdCampania, NombreCampania, EquipoGanador, IdLiga)
			values (@IdCampania, @NombreCampania, @EquipoGanador, @IdLiga)
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
@IdContrato varchar(20),
@FechaInicioContrato date, 
@FechaFinalContrato date, 
@IdEquipo varchar(4),
@IdJugador varchar(20)
as
begin try
begin tran
	if(select count(*) from Detalle_Equipo_Jugador
			where IdContrato=@IdContrato)=0
			insert into Detalle_Equipo_Jugador(IdContrato,FechaInicioContrato,FechaFinalContrato, IdEquipo, IdJugador)
			values(@IdContrato,@FechaInicioContrato,@FechaFinalContrato, @IdEquipo, @IdJugador)
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


--PROCEDIMIENTO TABLA PLANTILLA
create procedure sp_Insertar_Plantilla
@IdPlantilla varchar(4),
@IdEquipo varchar(4),
@IdJugador varchar(20),
@RolJugador varchar(20),
@IdPartido varchar(20)
as
begin try
begin tran
	if(select count (*) from Plantilla
			where IdPlantilla=@IdPlantilla)=0
			insert into Plantilla(IdPlantilla,IdEquipo,IdJugador, RolJugador,IdPartido)
			values (@IdPlantilla,@IdEquipo,@IdJugador, @RolJugador,@IdPartido)
	else
	print '¡Error!, este registro de plantilla ya es existente'
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
@GolesFavor int, 
@GolesContra int,
@PartidosGanados int,
@PartidosPerdidos int,
@PartidosEmpatados int,
@PartidosJugados int,
@Puntaje int,
@DiferenciaGoles int,
@JuegoLimpio int,
@IdEquipo varchar(4),
@IdCampania varchar(4)
as
begin try
begin tran
	if(select count(*) from Tabla_De_Posicion
			where IdPosicion=@IdPosicion)=0
			insert into Tabla_De_Posicion(IdPosicion,GolesFavor ,GolesContra,PartidosGanados,PartidosPerdidos,
			PartidosEmpatados,PartidosJugados,Puntaje,DiferenciaGoles,JuegoLimpio,IdEquipo,IdCampania)
			values(@IdPosicion,@GolesFavor ,@GolesContra,@PartidosGanados,@PartidosPerdidos,
			@PartidosEmpatados,@PartidosJugados,@Puntaje,@DiferenciaGoles,@JuegoLimpio,@IdEquipo,@IdCampania)
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
ON Equipo
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Equipo 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdEquipo = (SELECT i.IdEquipo FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Equipo 
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
ON Jugador
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted) and  EXISTS (SELECT * FROM deleted)
	BEGIN
	UPDATE Jugador 
	SET usuarioupdate = (SELECT CURRENT_USER), fechaupdate = getdate()
	WHERE IdJugador = (SELECT i.IdJugador FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Jugador 
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
	WHERE IdContrato = (SELECT i.IdContrato FROM inserted i);
	END
	ELSE IF EXISTS(SELECT * FROM inserted)
	BEGIN
	UPDATE Detalle_Equipo_Jugador 
	SET usuarioisert = (SELECT CURRENT_USER), fechainsert = getdate()
	WHERE IdContrato = (SELECT i.IdContrato FROM inserted i);
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
EXEC sp_Insertar_Pais 'DDR','Alemania'
EXEC sp_Insertar_Pais 'ESP','España'
EXEC sp_Insertar_Pais 'RUS','Rusia'
EXEC sp_Insertar_Pais 'SWE','Suecia'
EXEC sp_Insertar_Pais 'ITA','Italia'
EXEC sp_Insertar_Pais 'NED','Países Bajos'
EXEC sp_Insertar_Pais 'UKR','Ucrania'
EXEC sp_Insertar_Pais 'POR','Portugal'
EXEC sp_Insertar_Pais 'MEX','México'
EXEC sp_Insertar_Pais 'ESA','El Salvador'
EXEC sp_Insertar_Pais 'UKD','Reino Unido'
EXEC sp_Insertar_Pais 'COL','Colombia'
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
EXEC sp_insertarestadio 'ED02', 'Estadio las Delicias','7500', 'Avenida Caoba, Santa Tecla', 'Arnoldo Saldaña Martínez', '7754-2663', 'juli_ar@hotmail.com'
EXEC sp_insertarestadio 'ED03', 'Estadio Jorge Mágico González','27000', '49 Avenida Sur, San Salvador', 'Mauricio Enrique Martínez', '7854-9632', 'martinore_23@gmail.com'
EXEC sp_insertarestadio 'ED04', 'Estadio Juan Francisco Barraza','29000', 'San Miguel', 'Julio Rodolfo Rodríguez', '7683-1198', 'julio_ro2@gmail.com'
EXEC sp_insertarestadio 'ED05', 'Estadio Óscar Quiteño','17500', 'Santa Ana', 'Gerson Daniel Maldonado', '6598-7485', 'maldonado1234@outlook.com'
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
EXEC sp_Insertar_Liga 'LG01', 'Liga mayor de fútbol El Salvdor', '2020-01-15', '2020-06-25', 'ESA', 'DV01'
EXEC sp_Insertar_Liga 'LG02', 'Premier', '2020-03-15', '2020-09-25', 'UKD', 'DV02'
EXEC sp_Insertar_Liga 'LG03', 'Liga MX', '2020-02-17', '2020-11-21', 'MEX', 'DV01'
EXEC sp_Insertar_Liga 'LG04', 'Liga Santander', '2020-01-15', '2020-06-25', 'ESP', 'DV01'
SELECT * FROM Liga

--TABLA EQUIPO 
EXEC sp_insertarequipo 'EQ01', 'Alianza Fútbol Club','Oficinas Centrales Alianza Fútbol Club', '3:00', 'DAF02', 'ED01', 'ESA', 'LG01'
EXEC sp_insertarequipo 'EQ02', 'Club Deportivo FAS','Oficinas Centrales Club Deportivo FAS', '7:00', 'DAF03', 'ED04', 'ESA', 'LG01'
EXEC sp_insertarequipo 'EQ03', 'Club Deportivo Águila','Oficinas Centrales Club Deportivo Águila', '4:00', 'DAF01', 'ED04', 'ESA', 'LG01'
SELECT * FROM Equipo

--TABLA CAMPAÑA
EXEC sp_Insertar_Campania 'CA01', 'Torneo Apertura', 'EQ01', 'LG01'
EXEC sp_Insertar_Campania 'CA02', 'Torneo Clausura', 'EQ03', 'LG01'
SELECT * FROM Campania

--TABLA EMPLEADO
EXEC sp_insertar_empleado 'EMP01','Eddy Vladimir Orellana', '1995-02-19', 'TE02', 'EQ01', 'eddyb@gmail.com','M', '02145601-9', 'ESA'
EXEC sp_insertar_empleado 'EMP02','Wilson Jaime Gutiérrez', '1971-05-05', 'TE01', 'EQ01', 'wilson_05@gmail.com','M', '02459632-0', 'COL'
EXEC sp_insertar_empleado 'EMP03','Erick Dowson Prado', '1976-11-25', 'TE01', 'EQ02', 'erick_prado@gmail.com','M', '02185201-7', 'ESA'
EXEC sp_insertar_empleado 'EMP04','Alex Renato Martínez', '1975-08-01', 'TE03', 'EQ03', 'alex_marti14@gmail.com','M', '01253698-4', 'VEN'
EXEC sp_insertar_empleado 'EMP05','Roberto José Gómez', '1980-12-04', 'TE05', 'EQ02', 'rob_go@gmail.com','M', '01753628-2', 'ESA'
SELECT * FROM Empleado

--TABLA PATROCINADOR
EXEC sp_Insertar_Patrocinador 'PTR01', 'Gatorade', '2256-9874', 'ernesto_mujica@hotmail.com', 'D:\Patrocinadores\gatorade.jpg'
EXEC sp_Insertar_Patrocinador 'PTR02', 'Powerade', '2485-9632', 'ilc_esa@hotmail.com', 'D:\Patrocinadores\powerade.jpg'
EXEC sp_Insertar_Patrocinador 'PTR03', 'Mitre', '7895-63214', 'mitre.sv@gmail.com', 'D:\Patrocinadores\mitre.jpg'
EXEC sp_Insertar_Patrocinador 'PTR04', 'TIGO El Salvador', '6895-4523', 'contactos_TIGO.sv@hotmail.com', 'D:\Patrocinadores\TIGO.jpg'
EXEC sp_Insertar_Patrocinador 'PTR05', 'Gillette', '2124-7571', 'industrias_pg.sv@outlook.com', 'D:\Patrocinadores\gillette.jpg'
EXEC sp_Insertar_Patrocinador 'PTR06', 'Umbro', '2598-6321', 'contactos_umbro@hotmail.com', 'D:\Patrocinadores\umbro_logo.jpg'
SELECT * FROM Patrocinador

--TABLA Detalle_Equipo_Patrocinador
EXEC sp_Detalle_Equipo_Patrocinador 'EQ01', 'PTR01', '2019-01-01', '2023-12-31';
EXEC sp_Detalle_Equipo_Patrocinador 'EQ01', 'PTR06', '2018-11-10', '2020-11-10';
EXEC sp_Detalle_Equipo_Patrocinador 'EQ02', 'PTR02', '2017-05-20', '2021-05-20';
EXEC sp_Detalle_Equipo_Patrocinador 'EQ02', 'PTR03', '2016-07-15', '2020-07-15';
EXEC sp_Detalle_Equipo_Patrocinador 'EQ03', 'PTR04', '2020-06-09', '2024-06-09';
EXEC sp_Detalle_Equipo_Patrocinador 'EQ03', 'PTR05', '2020-07-08', '2022-07-08'; 

--TABLA DUENIO
EXEC sp_Insertar_Duenio 'DUE01', 'Alberto Roca', 'San Salvador, El Salvador', '78945612', 'EQ01';
EXEC sp_Insertar_Duenio 'DUE02', 'José Pérez', 'San Miguel, El Salvador', '74125896', 'EQ03';
EXEC sp_Insertar_Duenio 'DUE03', 'Carlos Martínez', 'Santa Ana, El Salvador', '78541236', 'EQ02';
EXEC sp_Insertar_Duenio 'DUE04', 'Wilber Vera', 'Cuscatlán, El Salvador', '69852314', 'EQ01';
EXEC sp_Insertar_Duenio 'DUE05', 'Cristian Solorzano', 'La Libertad, El Salvador', '63214578', 'EQ02';
EXEC sp_Insertar_Duenio 'DUE06', 'Gilberto Castro', 'La Paz, El Salvador', '76321549', 'EQ03';