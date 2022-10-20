CREATE DATABASE PRUEBA;

USE PRUEBA;

        CREATE TABLE Units (
        OM INT(11) PRIMARY KEY
         );
         
insert into Units (OM) values 

CREATE TABLE 110_CALIBRATION (
	OM INT,
	Pole1 int,
	Pole2 int,
	Pole3 INT,
	FOREIGN KEY (OM) REFERENCES Units(OM)
	);
insert into 110_CALIBRATION (OM,Pole1,Pole2,Pole3) values 

	CREATE TABLE 135_CALIBRATION(
	OM INT,
	Pole1 int ,
	Pole2 int ,
	Pole3 INT ,
	FOREIGN KEY (OM) REFERENCES Units(OM)
	);
    
insert into 135_CALIBRATION (OM,Pole1,Pole2,Pole3) values 

	CREATE TABLE 200_CALIBRATION(
	OM INT,
	Pole1 int ,
	Pole2 int ,
	Pole3 INT ,
	FOREIGN KEY (OM) REFERENCES Units(OM)
	);
insert into 200_CALIBRATION (OM,Pole1,Pole2,Pole3) values 

	CREATE TABLE TB_Cal(
	OM INT,
	Backoff_time int,
	Temp_amb DEC(2,2),
	impedance INT,
	Trip_time DATETIME
	);
    
insert into TB_Cal (OM,Backoff_time,Temp_amb,impedance,Trip_Time) values 
