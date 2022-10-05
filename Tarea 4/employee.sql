CREATE DATABASE Tarea4;

USE Tarea4;

CREATE TABLE employee(
emp_no INT AUTO_INCREMENT PRIMARY KEY,
birth_date DATE,
first_name VARCHAR(14),
last_name VARCHAR(16),
gender enum('M','F'),
hire_date DATE
);

INSERT INTO employee (birth_date) VALUES
(1953-09-02),
(1964-06-02),
(1959-12-03),
(1954-05-01),
(1955-01-21),
(1953-04-20),
(1957-05-23),
(1958-02-19),
(1952-04-19),
(1963-06-01),
(1953-11-07),
(1960-10-04),
(1963-06-07),
(1956-02-12),
(1959-08-19),
(1961-05-02),
(1958-07-06),
(1954-06-19),
(1953-01-23),
(1952-12-24)
;
INSERT INTO employee (first_name) VALUES
(Georgi),
(Bezalel),
(Parto),
(Chirstian),
(Kyoichi),
(Anneke),
(Tzvetan),
(Saniya),
(Sumant),
(Duangkaew),
(Mary),
(Patricio),
(Eberhardt),
(Berni),
(Guoxiang),
(Kazuhito),
(Cristinel),
(Kazuhide),
(Lillian),
(Mayuko)
;
INSERT INTO employee (last_name) VALUES
(Facello),
(Simmel),
(Bamford),
(Koblick),
(Maliniak),
(Preusig),
(Zielinski),
(Kalloufi),
(Peac),
(Piveteau),
(Sluis),
(Bridgland),
(Terkki),
(Genin),
(Nooteboom),
(Cappelletti),
(Bouloucos),
(Peha),
(Haddadi),
(Warwick)
;

INSERT INTO employee (gender) VALUES
(1),
(2),
(1),
(1),
(1),
(2),
(2),
(1),
(2),
(2),
(2),
(1),
(1),
(1),
(1),
(1),
(2),
(2),
(1),
(1)
;

INSERT INTO employee (hire_date) VALUES
(1986-06-26),
(1985-11-21),
(1986-08-28),
(1986-12-01),
(1989-09-12),
(1989-06-02),
(1989-02-10),
(1994-09-15),
(1985-02-18),
(1989-08-24),
(1990-01-22),
(1992-12-18),
(1985-10-20),
(1987-03-11),
(1987-07-02),
(1995-01-27),
(1993-08-03),
(1987-04-03),
(1999-04-30),
(1991-01-26)








