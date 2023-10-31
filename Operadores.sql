/*-----------------------------SUMA--------------------------------*/
/*
declare @num1 decimal (9,2)=20
declare @num2 decimal (9,2)=30
declare @resultado decimal (9,2)

set @resultado = @num1 + @num2

print @resultado
*/
/*-----------------------------RESTA--------------------------------*/
/*
declare @num1 decimal (9,2)=20
declare @num2 decimal (9,2)=30
declare @resultado decimal (9,2)

set @resultado = @num1 - @num2

print @resultado
*/
/*-----------------------------DIVISION--------------------------------*/
/*
declare @num1 decimal (9,2)=20
declare @num2 decimal (9,2)=30
declare @resultado decimal (9,2)

set @resultado = @num1 / @num2

print @resultado
*/
/*-----------------------------MULTIPLICACION--------------------------------*/
/*
declare @num1 decimal (9,2)=20
declare @num2 decimal (9,2)=30
declare @resultado decimal (9,2)

set @resultado = @num1 * @num2

print @resultado
*/
/*-----------------------------MODULO--------------------------------*/
/*
declare @num1 decimal (9,2)=20
declare @num2 decimal (9,2)=30
declare @resultado decimal (9,2)

set @resultado = @num1 % @num2

print @resultado
*/
/*-----------------------------SUMA TEXTO--------------------------------*/
/*
declare @num1 varchar (20)='Hola me llamo'
declare @num2 varchar (10)=' Mariano'
declare @resultado varchar (40)

set @resultado = @num1 + @num2

print @resultado
*/

/*-----------------------------SUMA TEXTO--------------------------------*/
/*
*/

/*-----------------------------MAYOR QUE - MAYOR O IGUAL --------------------------------*/
/*

declare @num1 decimal (9,2)=20
declare @num2 decimal (9,2)=30
declare @resultado decimal (9,2)

IF @num2 > @num1
	print 'si'

	*/
/*-----------------------------MENOR - MENOR O IGUAL--------------------------------*/
/*

declare @num1 decimal (9,2)=20
declare @num2 decimal (9,2)=30
declare @resultado decimal (9,2)

IF @num2 <= @num1
	print 'si'
ELSE
print 'no'

*/

/*-----------------------------DISTINTO QUE--------------------------------*/
/*

declare @num1 decimal (9,2)=20
declare @num2 decimal (9,2)=30
declare @resultado decimal (9,2)

IF @num2 <> @num1
	print 'si'
ELSE
print 'no'
*/

/*-----------------------------SUMA, RESTA VARCHAR--------------------------------*/
/*
*/

declare @tex1 varchar (20)='Hola me llamo Mariano'
declare @tex2 varchar (20)='Hola me llamo Mariano'


IF @tex1 >= @tex2
	print 'si es mayor o igual'
ELSE
print 'no'