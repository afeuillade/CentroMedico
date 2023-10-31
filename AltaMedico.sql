--SELECT * FROM Medico
--SELECT * FROM MedicoEspecialidad
--SELECT * FROM Especialidad



exec AltaMedico 'Gerardo', ' Fort', 3,'Nuevo Medico'

alter proc AltaMedico(
							@nombre varchar(50),
							@apellido varchar(50),
							@idEspecialidad int,
							@descripcion varchar(50)
							)

as

set nocount on

IF NOT EXISTS(SELECT TOP 1 idMedico FROM medico WHERE nombre = @nombre AND apellido=@apellido)
BEGIN
	INSERT INTO medico (nombre, apellido)
	VALUES(@nombre, @apellido)

	DECLARE @auxIdMedico int
	SET @auxIdMedico = @@IDENTITY

	INSERT INTO MedicoEspecialidad(idMedico, idEspecialidad, descripcion)
	VALUES (@auxIdMedico, @idEspecialidad, @descripcion)

	print 'El Medico se agregó correctamente'
	return
END
ELSE
BEGIN
	print 'El medico ya existe'
	return
END