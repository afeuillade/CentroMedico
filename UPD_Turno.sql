
exec UPD_Turno 14, 0, 'El paciente fue atendido 12'

alter proc UPD_Turno(
		@idTurno turno,
		@estado tinyint,
		@observacion observacion
		)
as
set nocount on

if exists (Select * from Turno where idTurno = @idTurno)
	UPDATE Turno set estado = @estado,
					observacion = @observacion
	where idTurno = @idTurno
else
	select 0 as resultado


--select * from Turno
--select * from TurnoPaciente