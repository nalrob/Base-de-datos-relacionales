Create database testing;
use testing;

CREATE TABLE datatable (
X int,
Y int 
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

use testing;
select X-avg(X) as X1 from datatable;
select Y-avg(Y) as Y1 from datatable;


delimiter $$
declare X1 as

create function calculate_r (X INT, Y INT)
RETURN DECIMAL(18,2)
BEGIN
RETURN sum(X*Y)/(SQRT(sum(X*X)) *SQRT(sum(Y*Y))) WHERE datatable.X=X




with reg_tmp(x,y) as (
	SELECT X-AVG(X) OVER() "x-x'", y-AVG(Y) OVER() "y-y'" FROM  DB
) 
select sum(x*y)/(SQRT(sum(x*x)) *SQRT(sum(y*y))) as r from reg_temp;

select r(cast(x as decimal),cast(y as decimal)) from db.db;

-------


use db;

SET GLOBAL log_bin_trust_function_creators = 1;


delimiter $$
 create function calculate_r (
   X decimal,
   Y decimal) 
   returns decimal(18,8) 
   begin 
    declare r decimal(18,8);
    declare x1 decimal(18,8);
    declare y1 decimal(18,8);
    set x1 = X-AVG(X);
    set y1 = y-AVG(Y);
    set r = sum(x1*y1)/(SQRT(sum(x1*x1)) *SQRT(sum(y1*y1)));
    return calculate_r;
end$$
delimiter ;

select x,y,calculate_r from datatable;



DELIMITER //


 

DELIMITER //
create function contar ( X INT)
returns int
begin
declare x int;
select count(*) into X from db;
return contar;
end//
delimiter ;


select contar from db ;


DELIMITER //

CREATE FUNCTION CalcIncome ( starting_value INT )
RETURNS INT
BEGIN
   DECLARE income INT;
   SET income = 0;
   label1: WHILE income <= 3000 DO
     SET income = income + starting_value;
   END WHILE label1;

   RETURN income;

END; //

DELIMITER ;
SELECT CalcIncome (1000);














/*
create table muestra as
select cast(x as decimal) x, cast(y as decimal) y from datatable;
*/


select calculate_test() r from muestra;





drop function calculate_test;

delimiter $$
create function calculate_test () returns decimal
	begin 
    declare r decimal;
    set r = (
    with rtmp(x,y) as (
	SELECT X-AVG(X) OVER() "x-x'", y-AVG(Y) OVER() "y-y'" FROM  muestra
	) 
    select sum(x*y)/(SQRT(sum(x*x)) *SQRT(sum(y*y))) as r from rtmp);
    return r;
end$$
delimiter ;


show create function calculate_test;