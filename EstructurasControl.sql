/*---------------------------funcion if else------------------------*/
/*DECLARE @idPaciente int
DECLARE @idTurno int


SET @idPaciente = 8

IF @idPaciente = 7
BEGIN
		SET @idTurno = 20
		SELECT * FROM Paciente WHERE idPaciente = @idPaciente
		print @idTurno
END
ELSE
BEGIN
		print 'No se cumplio la condicion'
END*/


/*-----------------------------------------------funcion exist----------------------------------*/

/*DECLARE @idPaciente int
DECLARE @idTurno int


SET @idPaciente = 8

IF @idPaciente = 7

BEGIN
		SET @idTurno = 20
		SELECT * FROM Paciente WHERE idPaciente = @idPaciente
		print @idTurno

		IF EXISTS(select*from paciente where idPaciente=2)
      print 'Existe'
END*/


/*----------------------------------------funcion while---------------------------*/

/*
DECLARE @contador int=0
WHILE @contador <=10

BEGIN
	print @contador
	set @contador = @contador +1
END

*/

/*----------------------------------------condicional case---------------------------*/

/*
DECLARE @valor int
DECLARE @resultado char(10)=''
SET @valor = 10

SET @resultado = (CASE WHEN @valor = 10 THEN 'ROJO'
					WHEN @valor = 20 THEN 'VERDE'
					WHEN @valor = 30 THEN 'AZUL'
					END)
print @resultado


select *, (CASE WHEN estado = 0 THEN 'VERDE'
				WHEN estado = 1 THEN 'ROJO'
				WHEN estado = 2 THEN 'AZUL'
				ELSE 'GRIS'
			END) as colorTurno
from Turno
*/

/*-----------------------------RETURN: corta la ejecución de forma forzada--------------------------*/
/*
DECLARE @contador int=0
WHILE @contador <=10

BEGIN
	print @contador
	set @contador = @contador +1
	IF @contador =3 
	RETURN
END
*/
/*--------------------------BREAK: interrumpe la ejecución pero ejecuta lo que sigue-----------------------*/

/*
DECLARE @contador int=0
WHILE @contador <=10

BEGIN
	print @contador
	set @contador = @contador +1
	IF @contador =3 
	BREAK
END

print 'Sigue ejecutando'
*/

/*--------------------------------------TRY - CATCH-----------------------------------*/

DECLARE @contador int=0
WHILE @contador <=10

BEGIN
	print @contador
	set @contador = @contador +1
	IF @contador =3 
	BREAK
END

print 'Sigue ejecutando'


BEGIN TRY
	set @contador = 'texto'
END TRY

BEGIN CATCH
	print 'No es posible asignar un texto a la variable contador'
END CATCH
