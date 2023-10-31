/*---------------------------------CREACION DE FUNCIONES-------------------------------------*/

select dbo.nombrefun (256)

ALTER FUNCTION nombrefun (@var int)
RETURNS int 

AS

BEGIN 
			set @var = @var *5
			return @var
END

