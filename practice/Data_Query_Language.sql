CREATE TABLE employee1(
    emp_name VARCHAR(50),
    salary DECIMAL (10,2),
    city VARCHAR(50)
);
INSERT INTO EMPLOYEE1 (emp_name,salary,city) VALUES ('Rahul', 50000, 'Bangalore');

INSERT INTO EMPLOYEE1 (emp_name, salary, city) VALUES ('Anita', 62000, 'Hyderabad');

INSERT INTO EMPLOYEE1 (emp_name, salary, city) VALUES ('Kiran', 45000, 'Chennai');

INSERT INTO EMPLOYEE1 (emp_name, salary, city) VALUES ('Sneha', 70000, 'Mumbai');

INSERT INTO EMPLOYEE1 (emp_name, salary, city) VALUES ('Arjun', 55000, 'Delhi');

INSERT INTO EMPLOYEE1 (emp_name, salary, city) VALUES ('Pooja', 48000, 'Pune');

INSERT INTO EMPLOYEE1 (emp_name, salary, city) VALUES ('Ravi', 75000, 'Kolkata');

INSERT INTO EMPLOYEE1 (emp_name, salary, city) VALUES ('Meena', 53000, 'Jaipur');

INSERT INTO EMPLOYEE1 (emp_name, salary, city) VALUES ('Vikram', 60000, 'jaipur');

INSERT INTO EMPLOYEE1 (emp_name, salary, city) VALUES ('Divya', 67000, 'Bangalore');

SELECT min(salary) as  min_salary , max(salary)  as max_salary , AVG(salary) as avg_salary , count(*) , sum(salary) as total_salary from EMPLOYEE1;

SELECT city, min(salary) as  min_salary , max(salary)  as max_salary , AVG(salary) as avg_salary , count(*) , sum(salary) as total_salary from EMPLOYEE1 GROUP by CITY;

SELECT COUNT(*) as count_emp FROM EMPLOYEE1 WHERE CITY= 'Jaipur';

SELECT COUNT(*) as count_emp FROM EMPLOYEE1 WHERE CITY= 'Jaipur' or CITY= 'jaipur' ;

SELECT COUNT(*) as count_emp FROM EMPLOYEE1 WHERE lower(CITY)= 'jaipur';

SELECT COUNT(*) as count_emp FROM EMPLOYEE1 WHERE Upper(CITY)= 'JAIPUR';

SELECT SUM(salary) as total_salary FROM EMPLOYEE1 WHERE Upper(CITY)= 'JAIPUR' OR lower(CITY)= 'bangalore';

SELECT SUM(salary) as total_salary FROM EMPLOYEE1 WHERE Upper(CITY)= 'JAIPUR' AND lower(CITY)= 'bangalore';

SELECT emp_name , salary from EMPLOYEE1 WHERE lower(CITY)= 'bangalore' ORDER BY SALARY;

SELECT emp_name , salary from EMPLOYEE1 WHERE lower(CITY)= 'bangalore' ORDER BY SALARY DESC;

SELECT emp_name ,salary,city from EMPLOYEE1   group by city,emp_name,salary ORDER BY CITY;

-- How many employees earn more than 8000 salary?
SELECT count(*) as count_emp FROM EMPLOYEE1 where SALARY < 80000;

--------------------------------------------------------------------------------
-- emp_name start with A
SELECT * from EMPLOYEE1 WHERE EMP_NAME LIKE'A%';
SELECT * from EMPLOYEE1 WHERE EMP_NAME LIKE'%a';
SELECT * from EMPLOYEE1 WHERE EMP_NAME LIKE'%n%';


 
 
