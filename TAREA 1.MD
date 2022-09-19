#Universidad Autonoma de Nuevo Leon
#Facultad de Ciencias Fisico Matematicas
#Maestria en Ciencias de Datos

TAREA 1

- Fuente: 
>Información obtenida del repositorio
 https://github.com/datacharmer/test_db 
            Base de datos original creada por Fusheng Wang y Carlo Zaniolo.

- Nombre del data set:
>Lista de Empleados de Empresa

-	Descripción del dataset:

>Recursos Humanos de una empresa se encarga de mantenener y preservar la información histórica de la compañía, así como la información personal más relevante de los empleados de la misma. Hace uso de 6 tablas en total para almacenar toda esta información.

1er tabla: Department
Almacena todos los departamentos existentes en la compañia, estos son relacionados a su codigo de identificación.
Variables: 
1) Dept_no 	Varchar
2) Dept_name	Varchar

2da tabla: dept_emp
Se almacena el historico de todas las personas que han trabajado para la compañia. En ella se relacionan todos los numeros de empleados alguna vez creados con su fecha de alta y baja, en su respectivo departamento.
Variables:
1) Emp_no	int
2) Dept_no	Varchar
3) From_date	Date
4) To_date	Date  

3ra tabla: dept_manager
Almacena la información historica de la administración de los departamentos, relaciona a cada departamento, con el empleado que ha ocupado la posición de gerente, su fecha de ingreso y salida a la posición.
Variables:
1) Emp_no	int
2) Dept_no	Varchar
3) From_date	Date
4) To_date	Date 

4ta tabla: employee
Almacena la información personal de los empleados, aqui se relacionan el numero de empleado al nombre del individio, su fecha de nacimiento, lugar de proveniencia y fecha de ingreso a la compañia.
Variables:
1) Emp_no	int
2) Birth_date	Date
3) First_name	Date
4) Last_name 	Date 
5) Gender	Varchar 
6) Hire_date	Date
	
5ta tabla: title
Almacena la información profesional de cada uno de los empleados.
Variables:

1) Emp_no     int
2) title	  varchar
3) From_date 	Date
4) To_date   Date 

6ta tabla: salary
Almacena el historial de los salarios ofrecidos a cada uno de los colaboradores, asi como cada una de las actualizaciones, ligadas a la fecha de inicio y fin.
Variables:
1) Emp_no	   int
2) amount	    int
3) From_date   Date
4) To_date     Date 

+Elegir un SGBD
>MySQL, la razón por la que lo elijo es porque desde hace un tiempo lo he escuchado como un requisito en ofertas laborales de diferentes campos, no  necesariamente en áreas de análisis de datos, asumo que tiene un gran alcance y popularidad entre empresas globales, por lo que ha despertado mi interés aprender a utilizarlo.

+Descripción del SGBD seleccionado
-	Es un sistema de gestión de base de datos de código abierto. Se desarrollo por la empresa Oracle en lenguaje C y C++.
-	 Esta habilitado para uso en Windows, Mac y Linux
-	Cuenta con dos licencias una es código abierto y otra es versión en comercial. 
-	Es de entorno gratuito lo que permite al usuario acceso al código fuente lo cual posibilita el estudio y así como la modificación  del software
-	Trabaja con bases de datos relacionales es decir que; utiliza tablas múltiples que se interconectan entre si, almacena datos que se relacionan. Además permite clasificar y filtrar datos, agrupar transacciones y hacer bloques, además de otras interacciones muy útiles
-	Permite utilizar diferentes motores de almacenamiento para cada tabla
-	Cuenta con una conectividad segura
-	Ejecuta transacciones y claves foráneas.
-	Protege la integridad de los datos por medio de un sistema de verificación
-	Soporta una cantidad inmensa de datos, dependiendo de la capacidad del ordenador.
-	Una de sus pocas desventajas, es que al ser una software libre se ha documentado poco de sus procesos y utilidades
