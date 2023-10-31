/*-------------TABLAS TEMPORALES EN MEMORIA----------------*/
--Tabla en memorias: Se ejecuta cuando este el script, si se cierra se destruye.

DECLARE @miTabla TABLE(id int IDENTITY(1,1), pais varchar (50))
insert into @miTabla VALUES('Mexico')
insert into @miTabla VALUES('Peru')
insert into @miTabla VALUES('Argentina')
insert into @miTabla VALUES('Colombia')
insert into @miTabla VALUES('Ecuador')

SELECT * FROM @miTabla

--Tabla tempral Fisica: Se diferencia de una tabla temporal en memoria en que la temporal fisica  
--cuando la creamos va a existir hasta que reiniciemos el servicio de base de datos.
--Se pone el # adelante para identificarla.

CREATE TABLE #miTabla(id int IDENTITY(1,1), nombre varchar(50), apellido varchar(50))
insert into #miTabla VALUES ('Angeles', 'Feuillade')
insert into #miTabla VALUES ('Mengano', 'Feuillade')
insert into #miTabla VALUES ('Fulano', 'Feuillade')
select * from #miTabla
DROP TABLE #miTabla --borra la tabla en memoria


--SCRIPT

DECLARE @turnos table (id int IDENTITY(1,1),idTurno turno, idPaciente paciente)
DECLARE @idPaciente paciente
set @idPaciente = 1

insert into @turnos (idTurno, idPaciente) 
select tp.idTurno, p.idPaciente from Paciente p
	INNER JOIN turnoPaciente tp
	on tp.idPaciente = p.idPaciente


declare @i int, @total int
SET @i =1
SET @total = (select count(*) from @turnos)
WHILE @i <= (select COUNT (*) from @turnos)
	BEGIN
		IF (select idPaciente from @turnos WHERE id = @i) <> @idPaciente -- distinto
		delete from @turnos where id = @i

		set @i = @i +1
	END

select * from @turnos

select * from Paciente p
	INNER JOIN @turnos t
	on t.idPaciente = p.idPaciente