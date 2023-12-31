USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[S_paciente]    Script Date: 23/10/2023 19:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[S_paciente] (
	@idPaciente int
) 
AS


SELECT apellido, nombre, idPais, observacion, 
	(SELECT pais FROM Pais ps WHERE ps.idPais = pa.idPais ) descPais
FROM Paciente pa WHERE idPaciente = @idPaciente


EXEC S_paciente 6