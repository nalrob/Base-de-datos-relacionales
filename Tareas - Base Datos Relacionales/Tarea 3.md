


# TAREA 3 Modelo relacional #

+ Esquema del modelo relacional 


employees (emp_no, first_name, last_name, gender, birth_date, hire_date)

title (emp_no, title, from_date, to_date)

salary (emp_no, amount, from_date, to_date)

departments (dept_no, dept_name)

dept_emp (dept_no, emp_no, from_date, to_date)

Dept_manager (Dept_no, emp_no, from_date, to_date)








+ Diagrama relacional


![Image text](https://github.com/nalrob/Base-de-datos-relacionales/blob/b25359d1b1150abeedd4dcb3236d034af9a6a204/DIAGRAMAER.drawio.png)








+ Operaciones mediante operadores del álgebra relacional.

1-. SELECCIÓN: Hacer una selección dentro de la tabla "employee" con el atributo "birth_date". Servira para seleccionar unicamente a los empleados que cumplen el mismo día.
 employee[birth_date*19/04/1998]
 σ birth_date=19/04/1998(employee)


2-. INTERSECCIÓN: Encontrar la intersección entre las relaciones "title" y "salary"
 Title ∩ Salary
 σ title.emp_no=1∩salary_emp.emp_no(10228)


3-. COMPOSICIÓN: 
 σ 
 RELACION1[RELACION1.ATRIBUTO1=RELACION2.ATRIBUTO2]RELACION2

4-. PRODUCTO CARTESIANO: 

RELACION1XRELACION2