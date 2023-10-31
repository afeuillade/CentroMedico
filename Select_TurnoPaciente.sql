
exec Select_TurnoPaciente 3



alter PROC Select_TurnoPaciente(
				@idPaciente paciente 


					)

as
set nocount on

--SELECT * FROM Turno
--SELECT * FROM TurnoPaciente
--select * from Paciente
--select * from MedicoEspecialidad

select * from Paciente p
INNER join TurnoPaciente tp
on tp.idPaciente = p.idPaciente
INNER JOIN Turno t
on t.idTurno = tp.idTurno
inner join MedicoEspecialidad m
on m.idMedico = tp.idMedico
inner join Medico me
on me.idMedico = m.idMedico
WHERE P.idPaciente = @idPaciente





