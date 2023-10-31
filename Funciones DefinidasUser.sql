/*------------------------------FUNCIONES DEFINIDAS POR EL USUARIO--------------------------------*/

--FUNCIONES ESCALARES: Permite recibir  1 o mas parametros y devolver un valor de tipo especifico
-- realizar un calculo o proceso con ese parametro y devolver ese valor.

--select dbo.concatenar('Feuillade','Angeles')

CREATE FUNCTION concatenar(
							@apellido varchar(50),
							@nombre varchar(50)
							)
RETURNS varchar(100)
AS
BEGIN
	declare @resultado varchar(500)
	set @resultado =@apellido +' , '+ @nombre
	return @resultado
END


select * from Paciente

select dbo.obtenerPais(6)

CREATE FUNCTION obtenerPais(
							@idPaciente paciente
							)
RETURNS varchar(50)
AS
BEGIN
	declare @pais varchar (50)
	SET @pais = (SELECT pa.pais FROM Paciente p
				INNER JOIN Pais pa 
				ON pa.idPais = p.idPais
				where idPaciente = @idPaciente)
	return @pais
END

--FUNCIONES TIPO TABLA: Recibe uno o mas parametros y con ellos realiza acciones dentro de las 
--funciones y retorna una tabla, es decir un conjunto de registros

select * from dbo.listaPaises()

CREATE FUNCTION listaPaises()
RETURNS @paises TABLE (idPais char(3), pais varchar (50))
AS
BEGIN
	INSERT INTO @paises values('CHN','China')
	INSERT INTO @paises values('RUS','Rusia')
	INSERT INTO @paises values('ITL','Italia')
	INSERT INTO @paises values('MAD','Madagascar')
	RETURN
END