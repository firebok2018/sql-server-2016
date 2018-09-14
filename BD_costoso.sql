create database BD_Contoso
go

sp_helpdb BD_Contoso

create database BD_Travel
on
(
name="Travel_Data",
filename='D:\DATA\Travel_Data.MDF',
size=5mb,
maxsize=50mb,
filegrowth=25%
)
log on
(
name="travel_Log",
filename='D:\DAta\Travel_log.LDF',
size=5mb,
maxsize=150mb,
filegrowth=5mb
)
go

sp_helpdb BD_Travel

--modificar 
alter database BD_Travel
modify file
(
name=Travel_Data,
maxsize=150mb
)
go

alter database BD_Travel
add file
(name='Travel_DataN1', filename='D:\DATA\Travel_DataN1.NDF')

--añadir archivos
alter database BD_Travel
add log file
(name='Travel_LogN1', filename='D:\DATA\Travel_LogN1')

--eliminar
alter database BD_Travel
remove file Travel_LogN1

alter database BD_Travel
	add filegroup FGCOMERCIAL
go

alter database BD_travel
	add filegroup FGADMINISTRA
go