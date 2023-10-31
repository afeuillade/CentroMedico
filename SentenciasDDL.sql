
/*---------------------------ADD , ALTER, DROP----------------------------------------*/

ALTER TABLE Paciente ADD estado smallint

ALTER TABLE Paciente ALTER COLUMN estado bit

ALTER TABLE Paciente DROP COLUMN estado


CREATE TABLE ejemplo (campo1 int, campo2 int)

DROP TABLE ejemplo


--------------------TRUNCATE- Borra todos los registros, reinicia la tabla-----------------------------
CREATE TABLE ejemplo (campo0 int IDENTITY (1,1), campo1 int, campo2 int)

select * from ejemplo

INSERT INTO ejemplo values (2,3)

TRUNCATE TABLE ejemplo