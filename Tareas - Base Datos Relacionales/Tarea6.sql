#Tarea 6#
#Funciones de agregación#

USE TAREA4 ;

#Ejemplo simple de selección#
select * from salary where amount >80000 ;


#MEDIA#
#Conocer el salario promedio de todo el personal de la empresa
Select avg(amount) as "Media" from salary;

#Conocer el salario promedio que ganan los profesionistas Senior Engineer en esa empresa
Select title.title, avg(salary.amount) from title
join salary on title.emp_no=salary.emp_no
where title.title = 'Senior Engineer';

#Conocer el salario promedio que ganan los profesionistas de cada área de la empresa
Select title.title, avg(salary.amount) from title
join salary on title.emp_no=salary.emp_no group by title.title;



#MINIMOS Y MAXIMOS#
select min(amount) as "Valor minimo" from salary;
select max(amount) as "Valor maximo" from salary;


#CUANTILES#
select emp_no,amount,percent_rank() over(order by amount asc)*100 percentile from salary ;
select emp_no,amount,percent_rank() over(order by amount asc)*75 percentile from salary ;
select emp_no,amount,percent_rank() over(order by amount asc)*50 percentile from salary ;
select emp_no,amount,percent_rank() over(order by amount asc)*25 percentile from salary;


#MODA
#Conocer la frecuencia de los Titulos profesionales de los empleados
SELECT title,count(*) as "Frecuencia" from title group by title order by "Frecuencia";
#Conocer la moda entre entre los titulos profesionales de los empleados de la empresa
SELECT title,count(*) as "Frecuencia" from title group by title order by "Frecuencia" limit 1;

