Create database DB;
use DB;

CREATE TABLE DB (
X int,
Y int 
);

insert into DB (X,Y) VALUES
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
--------
select * from db;

with reg_tmp(x,y) as (
	SELECT X-AVG(X) OVER() "x-x'", y-AVG(Y) OVER() "y-y'" FROM  DB
) 
select sum(x*y)/(SQRT(sum(x*x)) *SQRT(sum(y*y))) as r from reg_temp;


-------
use db;

create function r (
 x int,
 Y int) 
 returns decimal(18,8)
 begin 
 declare r decimal (18,8);
    set r = 2 ;
returns r;
end

r= sum(X-AVG(X)*y-AVG(Y))/(SQRT(sum( X-AVG(X)* X-AVG(X))) *SQRT(sum(y-AVG(Y)*y-AVG(Y)))) from DB ;



 delimiter $$
 create function r (
   x decimal,
   Y decimal) 
   returns decimal(18,8) 
   begin 
    declare @x1 decimal(18,8);
    declare @y1 decimal(18,8);
    set x1 = X-AVG(X);
    set y1 = y-AVG(Y);
    set r = sum(x1*y1)/(SQRT(sum(x1*x1)) *SQRT(sum(y1*y1)));
    return r;
end$$
delimiter ;
 

    

