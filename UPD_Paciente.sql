
exec UPD_Paciente 1,'41481919','Angeles','Feuillade','19980901','Cartagena','3516513917','angife8@hotmail.com','observacion'

select * from Paciente

alter proc UPD_Paciente(
			@idPaciente paciente,
			@dni varchar (20),
			@nombre varchar(50),
			@apellido varchar(50),
			@fechaNacimiento varchar(8),
			@domicilio varchar(50),
			@telefono varchar(20),
			@email varchar (30),
			@observacion varchar(1000)
			)
as
set nocount on

if exists (select * from Paciente where idPaciente = @idPaciente)
		UPDATE Paciente set dni = @dni,
							nombre = @nombre,
							apellido = @apellido,
							fechaNacimiento = @fechaNacimiento,
							domicilio = @domicilio,
							telefono = @telefono,
							email = @email,
							observacion = @observacion
		where idPaciente = @idPaciente
else
	select 0 as resultado
