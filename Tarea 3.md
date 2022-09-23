
# TAREA 3 Modelo relacional #

+ # 1-Esquema del modelo relacional #


employees (emp_no, first_name, last_name, gender, birth_date, hire_date)

title (emp_no, title, from_date, to_date)

salary (emp_no, amount, from_date, to_date)

departments (dept_no, dept_name)

dept_emp (dept_no, emp_no, from_date, to_date)

Dept_manager (Dept_no, emp_no, from_date, to_date)