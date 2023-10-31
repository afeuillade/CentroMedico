--select * from paciente

--exec AltaPaciente '7894231', 'Analia22', 'Gomez','19970515', 'calle 25', 'MEX', '', 'ana@gmail.com',''

alter proc AltaPaciente(
							@dni varchar(20),
							@nombre varchar(50),
							@apellido varchar(50),
							@fechaNacimiento varchar(8),
							@domicilio varchar(50),
							@idPais varchar (3),
							@telefono varchar(20)='',
							@email varchar (30),
							@observacion observacion=''
							)

as


IF not EXISTS(SELECT * FROM Paciente WHERE dni = @dni)
BEGIN
	INSERT INTO Paciente (dni, nombre, apellido, fechaNacimiento, domicilio, idPais, telefono, email, observacion)
	VALUES(@dni,@nombre, @apellido, @fechaNacimiento, @domicilio, @idPais, @telefono, @email, @observacion)
	print 'El paciente se agregó correctamente'
	return
END
ELSE
BEGIN
	print 'El paciente ya existe'
	return
END