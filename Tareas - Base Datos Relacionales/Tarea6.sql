#Tarea 6
#Funciones de agregación

USE TAREA4 ;

SELECT * from salary ;
select * from salary where amount >80000 ;

#MEDIA
Select avg(amount) as "Media" from salary;

#MINIMOS Y MAXIMOS
select min(amount) as "Valor minimo" from salary;
select max(amount) as "Valor maximo" from salary;

#CUANTILES

select emp_no,amount,percent_rank() over(order by amount asc)*100 percentile from salary ;
select emp_no,amount,percent_rank() over(order by amount asc)*75 percentile from salary ;
select emp_no,amount,percent_rank() over(order by amount asc)*50 percentile from salary ;
select emp_no,amount,percent_rank() over(order by amount asc)*25 percentile from salary;


#MODA
#Para conocer la frecuencia de los Titulos profesionales de los empleados
SELECT title,count(*) as "Frecuencia" from title group by title order by "Frecuencia" limit 1;

#Comentarios o Hallagos: