

DROP PROCEDURE IF EXISTS cal_r;

DELIMITER $$
CREATE PROCEDURE cal_r(
OUT r DECIMAL (18,18)
)
BEGIN
	select sum(x*y)/(SQRT(sum(x*x))*SQRT(sum(y*y))) from (
		SELECT X-AVG(X) OVER() x , Y-AVG(Y) OVER() y FROM  muestra
	) a into r ;
END
$$




call cal_r(@r);
select @r;

select * from muestra ;