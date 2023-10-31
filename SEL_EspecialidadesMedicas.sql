
exec SEL_EspecialidadesMedicas

alter proc SEL_EspecialidadesMedicas
as
set nocount on

--select * from Especialidad
--select * from MedicoEspecialidad
--select * from Medico

if exists(select * from Especialidad)
			select * from Especialidad
else
		select 0 as resultado