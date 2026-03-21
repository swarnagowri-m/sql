CREATE TABLE employee2(
    emp_id NUMBER GENERATED ALWAYS AS IDENTITY START WITH 1 INCREMENT BY 1 PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL (10,2),
    city VARCHAR(50)
);

INSERT INTO employee2 (emp_name, salary, city) VALUES ('Ravi', 45000.50, 'Bangalore');

INSERT INTO employee2 (emp_name, salary, city) VALUES ('Anita', 52000.75, 'Hyderabad');

INSERT INTO employee2 (emp_name, salary, city) VALUES ('Kiran', 39000.00, 'Chennai');

INSERT INTO employee2 (emp_name, salary, city) VALUES ('Priya', 61000.25, 'Mumbai');

INSERT INTO employee2 (emp_name, salary, city) VALUES ('Arjun', 47000.80, 'Delhi');

DESCRIBE employee2;

-- RENAME 
ALTER TABLE employee2 RENAME COLUMN salary TO emp_salary;

DESCRIBE employee2;


-- delete 
ALTER TABLE employee2 DROP column city; 

DESCRIBE employee2;

-- change datatype of  emp_name of varchar (50)
alter TABLE employee2 MODIFY emp_name varchar(60);
DESCRIBE employee2;

-- add a new column dept varchar(40)
ALTER TABLE employee2 ADD dept varchar(40);
DESCRIBE employee2;
SELECT * FROM EMPLOYEE2 ;

INSERT INTO EMPLOYEE2 (DEPT) VALUES('develpoer');
UPDATE EMPLOYEE2 set DEPT= 'development' WHERE EMP_NAME = 'Ravi';

UPDATE EMPLOYEE2 set DEPT= 'develop';