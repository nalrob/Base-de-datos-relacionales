


# TAREA 3 Modelo relacional #


+ Esquema del modelo relacional 
#

employees (emp_no, first_name, last_name, gender, birth_date, hire_date)

title (emp_no, title, from_date, to_date)

salary (emp_no, amount, from_date, to_date)

departments (dept_no, dept_name)

dept_emp (dept_no, emp_no, from_date, to_date)

Dept_manager (Dept_no, emp_no, from_date, to_date)








+ Diagrama relacional
#

![Image text](https://github.com/nalrob/Base-de-datos-relacionales/blob/00537d04a0ea83469096455c1f75a5575d0432e6/DIAGRAMAER.drawio.png)








+ Operaciones mediante operadores del álgebra relacional. 
#

1-. SELECCIÓN: Hacer una selección dentro de la tabla "employee" con el atributo "birth_date". Servira para seleccionar unicamente a los empleados que cumplen el mismo día.
 employee[birth_date*19/04/1998]
 σ birth_date=19/04/1998(employee)


2-. PRODUCTO CARTESIANO: Que devuelva todos los atributos de las tablas "title" y "salary" al mismo tiempo
 Title X Salary
 

3-. INTERSECCIÓN: Que regrese los empleados con puesto de manager dentro de la tabla "dept_emp"
 dept_emp ∩ dept_manager 


4-. PROYECCIÓN: Que extraiga los atributos que me interesan de la tabla "salary"
 Π amount,from_date(salary)
