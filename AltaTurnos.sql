--SELECT * FROM Turno
--SELECT * FROM TurnoPaciente
--SELECT * FROM Paciente
--SELECT * FROM Medico


--exec AltaTurnos '20250901 10:00',1,7,'El paciente tiene que estar en ayunas'
--exec AltaTurnos '20251105 10:00',1,7,'Nuevo turno'

alter proc AltaTurnos(
							@fechaTurno char(14),
							@idPaciente paciente,
							@idMedico medico,
							@observacion observacion
							)

as

set nocount on

IF NOT EXISTS(SELECT TOP 1 idTurno FROM turno WHERE fechaTurno = @fechaTurno)
BEGIN
	INSERT INTO Turno (fechaTurno, estado, observacion)
	VALUES(@fechaturno, 0, @observacion)

	DECLARE @auxIdTurno turno
	SET @auxIdTurno = @@IDENTITY

	INSERT INTO TurnoPaciente(idTurno, idPaciente, idMedico)
	VALUES (@auxIdTurno, @idPaciente, @idMedico)

	print 'El turno se agregó correctamente'
	return
END
ELSE
BEGIN
	print 'El turno ya existe'
	return
END