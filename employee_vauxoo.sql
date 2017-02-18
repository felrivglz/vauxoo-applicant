-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
--start sql1 part
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

--insert 6 departaments

INSERT INTO employee_department (name, description)
  VALUES ( 'SISTEMAS', 'computers');

INSERT INTO employee_department (name, description)
  VALUES ( 'RH', 'RH departemet');

INSERT INTO employee_department (name, description)
 VALUES ( 'SALES', 'SALES departemet');

INSERT INTO employee_department (name, description)
 VALUES ( 'CLEAN', 'CLEAN departemet');

INSERT INTO employee_department (name, description)
 VALUES ( 'DIR', 'DIR departemet');

INSERT INTO employee_department (name, description)
 VALUES ( 'TRANSPORT', 'TRANSPORT departemet');
--insert 4 employee.

INSERT INTO employee (first_name, last_name, departament_id)
  VALUES ( 'Felipe', 'Rivera', 1 );

INSERT INTO employee (first_name, last_name, departament_id)
  VALUES ( 'Christian', 'Gonzalez', 1);

INSERT INTO employee (first_name, last_name, departament_id)
  VALUES ( 'Sergio', 'Rivera', 2);

INSERT INTO employee (first_name, last_name, departament_id)
  VALUES ( 'Jorge', 'Rivera', 2);
--end sql1 part
-- In this section created 2 tables.
--the table employee_hobby contain information about hobys
--start sql2 part
CREATE TABLE employee_hobby (
  id serial NOT NULL,
  name VARCHAR(15) NOT NULL,
  description  TEXT,
  PRIMARY KEY (id),
  UNIQUE (id, name)
);
--the table employees_whit_hobbys contain  retation  many(employees) to many(hobys)
CREATE TABLE employees_whit_hobbys (
  id_employee INT NOT NULL,
  id_employee_hobby INT NOT NULL,
  PRIMARY KEY (id_employee, id_employee_hobby),
  CONSTRAINT id_employees_TO_id_table_employee FOREIGN KEY (id_employee)
      REFERENCES employee (id),
  CONSTRAINT id_employee_hobby_to_hoby FOREIGN KEY (id_employee)
      REFERENCES employee (id)
);
--add 4 hobys in the table employee_hobby
INSERT INTO employee_hobby (name, description)
  VALUES ( 'Run', 'run 5k or run 10k');
INSERT INTO employee_hobby (name, description)
  VALUES ( 'Bike', 'bike 50k or bike 100k');
INSERT INTO employee_hobby (name, description)
  VALUES ( 'Dance', 'Dance 1/2h or Dance 1h');
INSERT INTO employee_hobby (name, description)
  VALUES ( 'Read', 'read 1/2h or read 1h');
--add relation employees with hobys
INSERT INTO employees_whit_hobbys (id_employee, id_employee_hobby)
  VALUES ( 1, 1);
INSERT INTO employees_whit_hobbys (id_employee, id_employee_hobby)
  VALUES ( 1, 2);
INSERT INTO employees_whit_hobbys (id_employee, id_employee_hobby)
  VALUES ( 2, 3);
INSERT INTO employees_whit_hobbys (id_employee, id_employee_hobby)
  VALUES ( 2, 4);
INSERT INTO employees_whit_hobbys (id_employee, id_employee_hobby)
  VALUES ( 3, 1);
INSERT INTO employees_whit_hobbys (id_employee, id_employee_hobby)
  VALUES ( 3, 3);
INSERT INTO employees_whit_hobbys (id_employee, id_employee_hobby)
  VALUES ( 4, 2);
INSERT INTO employees_whit_hobbys (id_employee, id_employee_hobby)
  VALUES ( 4, 4);
INSERT INTO employees_whit_hobbys (id_employee, id_employee_hobby)
  VALUES ( 4, 3);
--end sql2 part
--SQL3 PART START
--cretate table of relation boss with employee.
CREATE TABLE boss_employees (
  id_boss INT NOT NULL,
  id_employee INT NOT NULL,
  PRIMARY KEY (id_employee, id_boss),
  UNIQUE(id_employee),
  CONSTRAINT id_employee_TO_id_table_employee FOREIGN KEY (id_employee)
      REFERENCES employee (id),
  CONSTRAINT id_boss_TO_id_table_employee FOREIGN KEY (id_employee)
      REFERENCES employee (id)
);

--add relation boss with employeed.
INSERT INTO boss_employees (id_boss, id_employee)
  VALUES ( 1, 2);
INSERT INTO boss_employees (id_boss, id_employee)
  VALUES ( 3, 4);


-- SQL3 PART END
