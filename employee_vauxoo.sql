-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
  id SERIAL NOT NULL,
  first_name VARCHAR(25) NOT NULL,
  last_name VARCHAR(25) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE(id)
);

CREATE TABLE employee_department (
  id SERIAL NOT NULL,
  name varchar(50) NOT NULL,
  description TEXT,
  PRIMARY KEY (id),
  UNIQUE(id)
);
-- add a new COLUMN recall departament_id.
ALTER TABLE employee
ADD COLUMN departament_id INT NOT NULL;
--Create a match between "despertamet_id" of employee and
--"id" of enployee_depertament
ALTER TABLE employee
 ADD CONSTRAINT DEPARTAMENTS
 FOREIGN KEY (departament_id)
 REFERENCES employee_department(id);

--insert 4 departaments

INSERT INTO employee_department (name, description)
VALUES ( 'SISTEMAS', 'computers');

 INSERT INTO employee_department (name, description)
 VALUES ( 'RH', 'computers departemet');

 INSERT INTO employee_department (name, description)
 VALUES ( 'SALES', 'computers departemet');

 INSERT INTO employee_department (name, description)
 VALUES ( 'CLEAN', 'computers departemet');
--insert 6 employee.

INSERT INTO employee (first_name, last_name, departament_id)
VALUES ( 'Rubén', 'Ramirez', 1) ;

INSERT INTO employee (first_name, last_name, departament_id)
VALUES ( 'Raul', 'Ruiz', 2) ;

INSERT INTO employee (first_name, last_name, departament_id)
VALUES ( 'Felipe', 'Rivera', 3 ) ;

INSERT INTO employee (first_name, last_name, departament_id)
VALUES ( 'Christian', 'Gonzalez', 4) ;

INSERT INTO employee (first_name, last_name, departament_id)
VALUES ( 'Sergio', 'Rivera', 2) ;

INSERT INTO employee (first_name, last_name, departament_id)
VALUES ( 'Jorge', 'Rivera', 4) ;


--CREATE TABLE employee_hobby (

--);

-- ...
