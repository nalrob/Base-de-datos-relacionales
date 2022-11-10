#TAREA. VALOR DE R O CALCULO DE CORRELACIÓN 


#Base de datos, 2 variables formadas por 2 grupos de datos
Create database testing;
use testing;

CREATE TABLE datatable (
X decimal ,
Y decimal 
);
insert into datatable (X,Y) VALUES
(12500,63),
(15200,32),
(14100,26),
(12500,60),
(16200,12),
(17150,23),
(12300,64),
(16400,12),
(17167,21),
(17990,23),
(19900,67),
(11400,13),
(17157,22)
;


#Creación de procedimiento para obtención de valor R

DROP PROCEDURE IF EXISTS cal_r;

# Esqueleto // estructura

#PASO1 Delimitar función
DELIMITER $$
#PASO2 Identificar procedimiento
#PASO3 Definir entradas y salidas (IN/OUT/INOUT) + BEGIN
CREATE PROCEDURE cal_r(
OUT r DECIMAL (18,18)
)
BEGIN

#PASO4 GENERAR FUNCIÓN, SE CREA EN 2 PARTES: >PRIMERO HACES UN SELECT SACANDO FACTORES EN COMUN, >SEGUNDO HACES UNA SELECCIÓN QUE HAGA USO DE TUS VARIABLES CREADAS
#PASO5 INTO
    select sum(x*y)/(SQRT(sum(x*x))*SQRT(sum(y*y))) from (
		SELECT X-AVG(X) OVER() x , Y-AVG(Y) OVER() y FROM  datatable
	) a into r ;
    
#PASO6 END Y CERRAR DELIMITACIÓN
END
$$


#PARA PROBAR FUNCIONAMIENTO HACER USO DE CALL(NOMBRE_FUNCION(NOMBRE_VARIBLE)) Y SELECT @VARIABLE

call cal_r(@r);
select @r;

