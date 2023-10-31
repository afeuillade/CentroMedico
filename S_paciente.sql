CREATE PROC S_paciente (
	@idPaciente int
) 
AS

SELECT * FROM Paciente WHERE idPaciente = @idPaciente

GO