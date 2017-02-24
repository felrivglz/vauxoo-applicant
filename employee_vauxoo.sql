-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
--start sql1 part
-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
--start sql1 part
-- CHECK IF THE TABLES EXISTS, IF TABLES EXITE DELET
DROP TABLE IF EXISTS employee_hobby;
DROP TABLE IF EXISTS employee CASCADE;
DROP TABLE IF EXISTS employee_department;

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

-- In the part 2, create a table, add datos and add column in tabla employee
CREATE TABLE employee_hobby (
    id serial NOT NULL,
    name VARCHAR(15) NOT NULL,
    description  TEXT,
    PRIMARY KEY (id),
    UNIQUE (id, name)
);

--add 4 hobys in the table employee_hobby
INSERT INTO employee_hobby (name, description)
  VALUES ( 'Run', 'run 5k or run 10k');
INSERT INTO employee_hobby (name, description)
  VALUES ( 'Bike', 'bike 50k or bike 100k');
INSERT INTO employee_hobby (name, description)
  VALUES ( 'Dance', 'Dance 1/2h or Dance 1h');
--add column for hobbys in table employee type array
ALTER TABLE employee
    ADD COLUMN hobbys INT[];
--insert data in column hobbys
UPDATE employee
    SET hobbys = '{ 1, 2 }'
    WHERE id < 3;
UPDATE employee
    SET hobbys = '{ 3, 2, 1 }'
    WHERE id > 2;

--PARTE 3. delete and create column with diferent type.
ALTER TABLE employee
    DROP COLUMN departament_id;
ALTER TABLE employee
    ADD COLUMN iddepartament_and_idboss INT[2];
-- insert data in the new column in employee
UPDATE employee
    SET iddepartament_and_idboss = '{ 5, NULL }'
    WHERE id = 1;
UPDATE employee
    SET iddepartament_and_idboss = '{ 1, 1 }'
    WHERE id = 2;
UPDATE employee
    SET iddepartament_and_idboss = '{ 2, 1 }'
    WHERE id = 3;
UPDATE employee
    SET iddepartament_and_idboss = '{ 2, 3 }'
    WHERE id = 4;
