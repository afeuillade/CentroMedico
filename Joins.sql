/*-----------------------JOINS-------------------------------------*/

--INNER JOIN cruce de datos donde coincide lo especificado en la clásula ON 

select *from Paciente
select *from TurnoPaciente

SELECT * FROM Paciente as pa 
INNER JOIN TurnoPaciente as tupa
ON pa.idPaciente = tupa.idPaciente

--LEFT JOIN obtiene los registros de la tabla que estaría a la izq (primera en el select)
-- y solamente los que estan en la tabla de la derecha que coincidan con la clausula ON

SELECT * FROM Paciente as pa 
LEFT JOIN TurnoPaciente as tupa
ON pa.idPaciente = tupa.idPaciente


--RIGHT JOIN obtiene los registros de la tabla que estaría en la derecha (clausula ON)
-- junto a las coincidencias de la tabla de la izq (select)

SELECT * FROM Paciente as pa 
RIGHT JOIN TurnoPaciente as tupa
ON pa.idPaciente = tupa.idPaciente


--Coincideraciones:
--Inner Join: En el ON tenemos que asegurarnos de hacer bien la conexión por la PK que coincida en ambas tablas.
--Inner Join: Colocar del lado izq el campo que pertenece a la primera tabla del inner join. (primera tabla del inner)
--Usar alias en las tablas para agilizar la busqueda.

---------------------------------------------------------------------------------------------------------------

--UNION: Permite unir dos resultados de dos consultas diferentes. 
--A dif del inner no conecta dos tablas conectadas por PK.
--No puede interceptar tablas que sean distintas (que tenga distinta cantidad de campos o tipo de dato)
--Elimina las repeticiones

select idTurno from Turno WHERE estado=0
UNION
select idPaciente from Paciente 


--UNION ALL: Es igual al UNION nada mas que no elimina las repeticiones

select * from Turno
UNION ALL
select * from Turno


