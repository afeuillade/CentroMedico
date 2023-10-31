declare @fecha char(12)
declare @path varchar(100)
declare @name varchar(20)

set @fecha = CONVERT(CHAR(8),GETDATE(),112) + REPLACE(CONVERT(CHAR(5),GETDATE(),108), ':','')
set @path ='C:\Backup_SQL\CentroMedico' + @fecha +'.bak'
set @name= 'CentroMedico' + @fecha

BACKUP DATABASE CentroMedico
TO DISK = @path
WITH NO_COMPRESSION, NAME=@name