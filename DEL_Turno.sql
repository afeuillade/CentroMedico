

exec DEL_Turno 10



--select * from Turno
--select * from TurnoPaciente


alter proc DEL_Turno(
		@idTurno turno
		)
as
set nocount on

if exists (Select * from Turno where idTurno = @idTurno)
BEGIN
		DELETE FROM TurnoPaciente where idTurno = @idTurno
		DELETE FROM Turno where idTurno = @idTurno	
END
else
	select 0 as resultado


--select * from Turno
--select * from TurnoPaciente