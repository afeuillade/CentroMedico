/*---------------------------TRIGGER-------------------------------*/
--Es un disparador de un evento. Hay 3 eventos:
--INSERT

select * from pacienteLog

CREATE TRIGGER pacientesCreados ON Paciente 
AFTER INSERT 
AS

IF (select idPais from inserted) = 'MEX'
	INSERT INTO PacienteLog (idPaciente, idPais, fechaAlta)
		SELECT i.idPaciente, i.idPais, getdate() FROM Inserted i 

--UPDATE


CREATE TRIGGER PacientesModificados ON Paciente
AFTER UPDATE
AS

	IF EXISTS(select idPaciente from PacienteLog
		WHERE idPaciente = (select idPaciente from Inserted))
	UPDATE PacienteLog SET fechaModificacion = GETDATE()
		where idPaciente = (SELECT idPaciente from Inserted)
	ELSE 
		INSERT INTO PacienteLog (idPaciente, idPais, fechaModificacion)
		SELECT idPaciente, idPais, GETDATE() from Inserted


ALTER TABLE PacienteLog add fechaModificacion DATETIME
select* from PacienteLog

select * from Paciente where idPaciente =1

UPDATE Paciente SET Nombre= 'Angeles Belen' WHERE idPaciente =1 --Devuelve dos registros afectados
--uno sobre la tabla del trigger y otro sobre el registro

--DELETE
ALTER TRIGGER PacientesEliminados ON Paciente
FOR DELETE
AS

	IF EXISTS(select idPaciente from PacienteLog
		WHERE idPaciente = (select idPaciente from deleted))
		UPDATE PacienteLog  SET fechaBaja = GETDATE()
		where idPaciente = (SELECT idPaciente from deleted)
	ELSE 
		INSERT INTO PacienteLog (idPaciente, idPais, fechaBaja)
		SELECT idPaciente, idPais, GETDATE() from deleted


ALTER TABLE PacienteLog add fechaBaja DATETIME
select* from PacienteLog

select * from PacienteLog where idPaciente =13

UPDATE PacienteLog SET fechaBaja= getdate() WHERE idPaciente =13
