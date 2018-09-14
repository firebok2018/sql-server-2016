
create database  BD_Recobra
on(name='BD_Recobrra',filename='D:\files\BD_Recobrra.MDF')
log on(name='BD_Recobra', 
filename='D:\files\BD_Recobra.LDF',
size=5mb,
maxsize=50mb,
filegrowth=5mb)


alter database BD_Recobra
	add filegroup Operaciones
go

alter database BD_Recobra
add file(name='archivo',filename='D:\files\archivo.NDF')
to filegroup Operaciones

sp_helpdb BD_Recobra


--################################################

create database BD_comercial2

alter database BD_comercial2
add filegroup FGgrupoData1
go

alter database BD_comercial2
remove filegroup archivoFile

alter database BD_comercial2
add file (name='Data_sec1',filename='D:\Data2\Data_sec1.NDF',size=5mb,maxsize=20mb,filegrowth=1mb)
to filegroup FGgrupoData1

sp_helpdb BD_comercial2

use BD_Travel
create Schema ventas
go
create Schema RRHH 
go

select *from sys.schemas

create table PRODUCTO
(
ID_PRODUCTO  CHAR (6) NOT NULL,
DESCRIPCION  VARCHAR   (45) NOT NULL,
PRECIO_VENTA MONEY   NOT NULL,
STOCK_MINIMO  INT  NULL,
STOCK_ACTUAL INT NULL,
FECHA_VENC DATE NULL,
PRIMARY KEY  (ID_PRODUCTO)
)
GO

ALTER SCHEMA ventas
transfer PRODUCTO
GO

create schema mtk
go

drop schema mtk
go

---creando tipo de datos

sp_addtype fono , 'varchar(15)','null'
go

sp_addtype genero,'char(1)','null'
go


create type tiempo from datetime not null
go

---eliminando los type

sp_droptype genero
go

drop type tiempo
go

--0*0***0*00*0****8859i8*o/p7*/0'9070th4*7/gfrthgf

use BD_Recobra
go

create schema VENTAS
go
create schema RRHH
go
create schema FINANZAS
go

create type TCadena from varchar(50) null
go
create type TMoneda from smallmoney  not null
go
create type Ttiempo from date not null
go

--8*fgh74*/y544y88894h46t8h75/*46436*/4365*/34
use BD_Travel
go

create schema RRHH
go

alter database BD_Travel
add filegroup FGAdministra
go

create type tiempo from datetime not null
go

create table  RRHH.TBEmpleado
(
codEmp  char (5) not null,
nomEmp  varchar(48) not null,
finEmp  tiempo   not null,
sueEmp smallmoney not null, 
)on  FGAdministra
go

sp_help 'RRHH.TBEmpleado'

alter table RRHH.TBEmpleado
add tlfEmp varchar (14) not null
go

alter table RRHH.TBEmpleado
alter column tlfEmp int not null
go

alter table RRHH.TBEmpleado
drop column tlfEmp
go

