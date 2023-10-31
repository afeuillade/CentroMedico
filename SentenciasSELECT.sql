SELECT * FROM Turno
SELECT * FROM Paciente
SELECT * FROM Medico
SELECT * FROM TurnoPaciente

INSERT INTO Turno (fechaTurno, estado, observacion) 
VALUES ('22/01/2019 10:00','0','Turno pendiente de aprobación')

INSERT INTO TurnoPaciente(idTurno,idPaciente,idMedico)
VALUES (12,1,1)


INSERT INTO TurnoPaciente(idTurno,idPaciente,idMedico)
VALUES (10,7,1)

DELETE FROM TurnoPaciente WHERE idTurno=12


SELECT * FROM Medico

INSERT INTO Medico(nombre,apellido)
VALUES ('Marina', 'Feuillade')

INSERT INTO Medico(nombre,apellido)
VALUES (NULL, 'Feuillade')

INSERT INTO Medico(nombre,apellido)
VALUES ('Marina', NULL)

SELECT * FROM TurnoEstado

INSERT INTO TurnoEstado(descripcion)
VALUES ('Nuevo estado')

DELETE FROM TurnoEstado WHERE idEstado=7

SELECT * FROM Pago
SELECT * FROM Pago ORDER BY fechaPago  

SELECT * FROM Paciente
SELECT TOP 1 * FROM Paciente ORDER BY fechaNacimiento DESC

SELECT * FROM Pago

SELECT MAX(fechaPago) FROM Pago
SELECT MIN(monto) FROM Pago
SELECT SUM(monto) as montoTotal FROM pago
SELECT SUM(monto+20) as montoTotal FROM pago
SELECT SUM(monto) +20 as montoTotal FROM pago

SELECT AVG(monto) as MontoPromedio FROM pago
SELECT AVG(monto+20) as MontoPromedio FROM pago
SELECT AVG(monto) +20 as MontoPromedio FROM pago

SELECT COUNT (idPaciente) FROM Paciente

SELECT * FROM Turno

SELECT estado FROM Turno GROUP BY estado HAVING COUNT(estado)=5

SELECT * FROM Paciente WHERE apellido = 'Feuillade' and nombre='Angeles'

SELECT * FROM Paciente WHERE apellido = 'Feuillade' and nombre='Angeles' or nombre='Francisco'


SELECT * FROM Turno WHERE estado in (0)


SELECT * FROM Paciente WHERE apellido in ('Ramirez','Paredes','Feuillade')

SELECT * FROM Paciente WHERE nombre LIKE ('Ang%')

SELECT * FROM Paciente WHERE nombre LIKE ('%les')

SELECT * FROM Paciente WHERE nombre LIKE ('%les')


SELECT * FROM Paciente WHERE nombre NOT LIKE ('Ang%')



SELECT * FROM Paciente WHERE apellido not in ('Ramirez','Paredes','Feuillade')


SELECT * FROM Turno WHERE fechaTurno BETWEEN '01/01/2019' and '01/02/2024'


SELECT * FROM Turno WHERE estado NOT BETWEEN 4 and 6

sp_help AltaTurnos --Trae todas las caracteristicas de creación, campos, identity, etc

sp_helptext AltaTurnos --Trae todas las caracteristicas de creación, campos, identity, etc. Pero del Stored Procedure


/*----------------------------------SHORTCUTS---------------------------------*/

AltaPaciente



