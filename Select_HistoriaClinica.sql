
exec Select_HistoriaClinica 1

alter proc Select_HistoriaClinica(				
				@idPaciente paciente
				)
as 
set nocount on

--select * from Paciente
--select *from HistoriaClinica
--select * from HistoriaPaciente


IF EXISTS(
		SELECT * FROM Paciente P
		inner join HistoriaPaciente as hp
		on hp.idPaciente = p.idPaciente
		inner join HistoriaClinica as hc
		on hc.idHistoria = hp.idHistoria
		inner join MedicoEspecialidad me
		on me.idMedico = hp.idMedico
		inner join Medico m
		on m.idMedico = me.idMedico
		WHERE p.idPaciente = @idPaciente)
		SELECT * FROM Paciente P
		inner join HistoriaPaciente as hp
		on hp.idPaciente = p.idPaciente
		inner join HistoriaClinica as hc
		on hc.idHistoria = hp.idHistoria
		inner join MedicoEspecialidad me
		on me.idMedico = hp.idMedico
		inner join Medico m
		on m.idMedico = me.idMedico
		WHERE p.idPaciente = @idPaciente
ELSE
	print ('No existen historias clinicas para el paciente')
	select 0 as resultado
