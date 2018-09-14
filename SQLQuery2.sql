

 create database Bd_Comercio
 on
 (
 name='BD_COMERCIO_PRI',
 filename='D:\DB_Comercio\Dato\BD_COMERCIO_PRI.MDF',
 size=30mb,
 maxsize=unlimited ,
 filegrowth=5mb
 )
 log on
 (name='BD_COMERCIO_TRA',
 filename='D:\DB_Comercio\Trans\BD_COMERCIO_TRA.LDF',
 size=10mb,
 maxsize=100mb,
 filegrowth=10%)
alter database BD_Comercio
	add file(name='BD_COMERCIO_SEC2',filename='D:\DB_Comercio\BD_COMERCIO_SEC2.NDF',size=10mb,maxsize=50mb,filegrowth=10%),
	(name='BD_COMERCIO_SEC3',filename='D:\DB_Comercio\BD_COMERCIO_SEC3.NDF',size=15mb,maxsize=100mb,filegrowth=15%)
go

sp_helpdb BD_Comercio
sp_detach_db 'BD_Comercio'
go

use BD_Travel

sp_helpdb BD_travel

alter database BD_Travel
	add filegroup FGCOMERCIAL
go

alter database BD_travel
	add filegroup FGADMINISTRA
go