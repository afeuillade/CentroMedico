
select * from PacientesTurnosPendientes

CREATE VIEW PacientesTurnosPendientes as 

	SELECT p.idPaciente , p.nombre, p.apellido, t.idTurno, t.estado FROM Paciente p
	INNER JOIN TurnoPaciente tp
	ON tp.idPaciente = p.idPaciente
	INNER JOIN Turno t
	ON t.idTurno = tp.idTurno
	WHERE isnull(t.estado,0) = 0