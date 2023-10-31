/*---------------------------------FUNCIONES DE CONVERSIÓN---------------------------------*/
--LEFT me toma los dos caracteres (porque lo paso por parametro) de la izquierda
declare @var1 varchar(20)
set @var1 = 'Ramiro'
print LEFT(@var1,2)
--RIGHT me toma los dos caracteres (porque lo paso por parametro) de la derecha
declare @var2 varchar(20)
declare @var3 varchar(20)
set @var2 = 'Ramiro'
set @var3 = 'Gonzales'
print RIGHT(@var2,2) + RIGHT(@var3,2)

---EJERCICIO USANDO PACIENTES
select * from Paciente

SELECT LEFT(nombre, 2) + LEFT(apellido, 2) as alias_pacientes
FROM Paciente;

--LEN cuenta la cantidad de caracteres de variable var o varchar

declare @var4 varchar(20)
set @var4 = 'Ramiro'
print LEN(@var4)
print LEFT (@var4, LEN (@var4)-1) 

---EJERCICIO USANDO PACIENTES

select * from Paciente
select LEN(domicilio) as caracteres_domicilio FROM Paciente

---LOWER convierte toda la cadena de caracteres en miniscula
declare @var5 varchar(20)
set @var5 = 'Ramiro'
print LOWER(@var5)

---UPPER convierte toda la cadena de caracteres en mayuscula

declare @var6 varchar(20)
set @var6 = 'Ramiro'
--print UPPER(@var6)
--print UPPER(@var6)+ LOWER (@var5)
print UPPER (LEFT (@var6,1)) + LOWER(RIGHT (@var6,LEN(@var6)-1)) 


---REPLACE reemplaza una varable por otra

declare @var7 varchar(20)
set @var7 = 'Ramito'
declare @var8 varchar(20)
set @var8 = 'Gonzales'
select REPLACE (@var7,'t','r')
select REPLACE (@var8,'s','z')

---REPLICATE repite un caracter o cadena la cantidad de veces que especifiquemos

print REPLICATE('0',5)

---LTRIM RTRIM elimina espacios que pueden venir desde la interfaz de usuario
declare @var9 varchar(20)
set @var9 = '      Ramiro   '
declare @var10 varchar(20)
set @var10 = 'Gonzalez          '

select LTRIM(RTRIM(@var9)) + ' ' + RTRIM(LTRIM(@var10)) + '*'


---CONCAT une dos valores

select CONCAT(LTRIM(RTRIM(@var9)),' ',LTRIM(RTRIM(@var10)))

---GETDATE Se graba la fecha y hora de registro -  GETUTCDATE Nos devuelve la hora donde esta instalado la BD

select GETDATE()
select GETUTCDATE()


--DATEADD modifica la fecha que agreguemos

select DATEADD(day, 2,GETDATE())
select DATEADD(day, -2,GETDATE())
select DATEADD(day, 2,'20230912')
select DATEADD(hour, 2,GETDATE())


--DATEDIFF nos devuelve la diferencia entre dos fechas segun el intervalo.

select DATEDIFF(year, getdate(),'20170120')
select DATEDIFF(year,'20170120', getdate())

--DATEPART devuelve el intervalo especifico de una fecha
select DATEPART(month, getdate())

--ISDATE nos permite evaluar si una fecha especifica tiene el formato correcto o no // 1 es true 0 es falso

print ISDATE(getdate())
print ISDATE('HOLA')

if ISDATE('20231725') =1
print 'Es una fecha correcta'
else
print 'Es una fecha incorrecta'


--CAST es una funcion generica que convierte un tipo de dato en otro mientras sea del mismo genero (num, text) 
declare @numero money
set @numero = 500.40

SELECT CAST(@numero as int)

select CAST(idPaciente as money) from Paciente 

--CONVERT es una implementacion de la funcion cast pero tiene parametros que permite convertir en detalle

select CONVERT(int, @numero)
