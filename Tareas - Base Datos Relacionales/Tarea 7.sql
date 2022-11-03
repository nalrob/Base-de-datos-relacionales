#Tarea 7

#->Creación de base de datos
create database fb_users;
use fb_users;

CREATE TABLE Users(
userid INT primary key,
age INT,
dob_day INT,
dob_year INT,
dob_month INT,
gender enum ('female','male'),
relationship varchar(20)
    );
    
insert into Users (userid,age,dob_day,dob_year,dob_month,gender,relationship) values
(1603390,19,19,1999,11,'male','single'),
(2125844,54,2,1999,11,'female','engaged'),
(1476444,24,16,1999,11,'male','single'),
(1585433,64,25,1999,12,'female',NULL),
(2174969,34,4,1999,12,'male','married'),
(5555555,34,4,1999,12,'male','married'),
(1363040,14,1,1999,12,'male','single'),
(1411533,13,14,2000,1,'male','married'),
(1121210,45,1,1991,12,'male','engaged');

CREATE TABLE actividad(
userid INT PRIMARY KEY,
friend_count INT,
followers INT,
likes_gived INT,
likes_received INT
    );
    
insert into actividad(userid,friend_count,followers,likes_gived,likes_received) values
(1603390,10,1,34,21),
(2125844,10,NULL,34,58),
(1476444,10,2,36,2),
(1585433,1999,6,NULL,7),
(2174969,52,NULL,36,2),
(1363040,104,1,0,0),
(1411533,9,6,35,31),
(8888888,41,6,35,55),
(1121210,920,6,35,NULL),
(9999990,920,6,35,NULL);
#

#Creación de vistas recurrentes

#Ejemplo.
use fb_users;

#Uso de Join O inner Join
Select users.gender, avg(actividad.friend_count) from users
join actividad on users.userid=actividad.userid group by users.gender ;

#Uso de left Join
Select users.userid, actividad.followers from users
left join actividad on users.userid=actividad.userid;

#Uso de right Join
Select users.userid, actividad.followers from users
right join actividad on users.userid=actividad.userid;

#Subconsulta
Select users.userid,users.age from users where age >30 ;

Select users.userid,actividad.likes_received from users 
inner join actividad on users.userid=actividad.userid where likes_received >50 ;

#
#Investigar y crear disparador trigger

#Los trigger se puede ejecutar cuando el usuario añada, actualice o elimine información de una tabla. 
#En los comandos INSERT, UPDATE o DELETE.

#¿Cuando se puede utilizar un trigger?
#BEFORE STATEMENT : Antes de ejecutar la sentencia
#AFTER STATEMENT: Después de ejecutar la sentencia
#BEFORE ROW: Antes de modificar la fila de la tabla afectada por la sentencia del trigger
#AFTER ROW: Después de modificar la fila de la tabla afectada por la sentencia del trigger

#Ejemplo de Trigger PASO A PASO:

#1) Plantea que operación deseas ejecutar y asegurate de tener la base datos y las tablas adecuadas para ello. 
# En este caso mi trigger se ejecutara al realizar INSERTS.

create database test_trigger;
use test_trigger;

CREATE TABLE contactos(
id_persona varchar(4),
ciudad varchar(15),  
telefono varchar(20),
email varchar(20)
    );
    
CREATE TABLE contactos2(
id_persona varchar(4),
ciudad varchar(15),  
telefono varchar(20),
email varchar(20),
fecha_registro DATETIME
    );
    
#2)Una vez que creaste la base de datos y añadiste las tablas, añade tu primer insert. 
#El esperado es que solo tengas información en contactos pues no se ha generado un trigger para que procese la información y cree el backoff de la misma.

insert into contactos(id_persona,ciudad,telefono,email) values    
('T201',81825666,'Monclova','juany2@gmail.com');

Select * from contactos;
Select * from contactos2;

#3)Genera tu trigger  con la estructura siguiente:

create trigger añadir after insert on contactos for each row insert into contactos2 (id_persona, ciudad, telefono, email, fecha_registro) values ( new.id_persona, new.ciudad, new.telefono, new.email, now()) ;

#Al seguir añadiendo datos se debe generar un backoff de tus datos en la tabla "contactos2", con la fecha y hora del registro.
#Si esto se cumple, esta trabajando adecuadamente.

insert into contactos(id_persona,ciudad,telefono,email) values    
('T203',81824038,'Villahermosa','minyboti@gmail.com');

    
    


