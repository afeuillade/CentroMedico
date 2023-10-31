
--select * from view_MedicosEspecialidades

CREATE VIEW View_MedicosEspecialidades 
AS

select m.idMedico, m.nombre, m.apellido, me.idEspecialidad, me.descripcion from Medico m
inner join MedicoEspecialidad me
on m.idMedico = me.idMedico