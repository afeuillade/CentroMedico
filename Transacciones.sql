/*------------------------------------TRANSACTION------------------------------------------*/
--Una transaccion evalua una porcion de codigo que se esta modificando. Además lo usamos para validar inserts.

--Rowcount nos dice cuantos registros se modifican

select * from Paciente 

BEGIN TRANSACTION 
		UPDATE Paciente SET telefono = 444 WHERE idPaciente=8
			if @@ROWCOUNT = 1
				COMMIT TRANSACTION --Se afecta el cambio
			else
				ROLLBACK TRANSACTION

BEGIN TRANSACTION 
		UPDATE Paciente SET telefono = 444 WHERE apellido='Lopez'
			if @@ROWCOUNT = 1
				COMMIT TRANSACTION --Se afecta el cambio
			else
				ROLLBACK TRANSACTION --deja la tabla como estaba

----------------------------EJECICIO TURNO---------------

Select * from Turno

BEGIN TRANSACTION 
		DELETE FROM Turno WHERE estado = 1
		if @@ROWCOUNT = 1
			COMMIT TRAN 
		else 
			ROLLBACK TRAN