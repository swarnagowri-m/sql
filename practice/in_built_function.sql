-- in built functions
INSERT INTO EMPLOYEES (id, name, city, department,SALARY )
VALUES
(1,'Rahul', 'hyderabad','IT',10000);
INSERT INTO EMPLOYEES (id, name, city, department,SALARY )
VALUES
(2, 'Bhanu', 'Bangalore', 'IT', 55000);
INSERT INTO EMPLOYEES (id, name, city, department,SALARY )
VALUES
(3, 'Anita', 'Hyderabad', 'HR', 45000);
INSERT INTO EMPLOYEES (id, name, city, department,SALARY )
VALUES
(4, 'Kiran', 'Chennai', 'Finance', 60000);
INSERT INTO EMPLOYEES (id, name, city, department,SALARY )
VALUES
(5, 'Sneha', 'Mumbai', 'Marketing', 50000);
SELECT * FROM EMPLOYEES;
INSERT INTO Employees (id, name, city, department, salary) VALUES
(6, 'Arjun', 'Delhi', 'IT', 65000);
INSERT INTO Employees (id, name, city, department, salary) VALUES
 (7, 'Priya', 'Bangalore', 'HR', 48000);
 INSERT INTO Employees (id, name, city, department, salary) VALUES
(8, 'Vikram', 'Pune', 'Finance', 72000);
INSERT INTO Employees (id, name, city, department, salary) VALUES
(9, 'Meera', 'Kolkata', 'Marketing', 53000);
INSERT INTO Employees (id, name, city, department, salary) VALUES
(10, 'Rohit', 'Hyderabad', 'IT', 61000);
INSERT INTO Employees (id, name, city, department, salary) VALUES
(11, 'Divya', 'Chennai', 'HR', 47000);
INSERT INTO Employees (id, name, city, department, salary) VALUES
(12, 'Sanjay', 'Mumbai', 'Finance', 75000);
INSERT INTO Employees (id, name, city, department, salary) VALUES
(13, 'Neha', 'Delhi', 'Marketing', 52000);
INSERT INTO Employees (id, name, city, department, salary) VALUES
(14, 'Aman', 'Pune', 'IT', 68000);
INSERT INTO Employees (id, name, city, department, salary) VALUES
(15, 'Kavya', 'Bangalore', 'Finance', 70000);
SELECT * FROM EMPLOYEES ;
-- USING UPPER 
SELECT upper(name) AS upper_name FROM EMPLOYEES ;
SELECT upper(name)  FROM EMPLOYEES ;
 -- 
SELECT name ,upper(name) AS upper_name FROM EMPLOYEES ;
SELECT name ,lower(name) AS lower_name FROM EMPLOYEES ;
-- initcap : first letter as the captial letter
SELECT initcap('DATA SCIENCE') FROM DUAL;
-- LENGTH : TO KNOW THE LENGTH 
SELECT LENGTH('SWARNA GOWRI') AS LEN FROM DUAL;
-- REPLACE : REPLACE(original_string, search_string, replace_string)
SELECT REPLACE('SWARNA','SWARNA','BHANU') AS replace_value from dual;
-- SUBSTR : 
SELECT SUBSTR('DATA SCIENCE',2,5) FROM DUAL;
-- INSTR : 
SELECT INSTR('DATA SCIENCE','A') FROM DUAL;
-- TRIM :
SELECT TRIM('  SWARNA  ') AS TRIMED_VALUE FROM DUAL;
SELECT LENGTH(TRIM('  SWARNA  ')) AS TRIMED_VALUE FROM DUAL;
SELECT * FROM EMPLOYEES;
SELECT concat(NAME,CITY) AS FULL_DRTAILS FROM EMPLOYEES;
-- pad
SELECT lpad('123',5,0) from DUAL;
SELECT rpad('123',5,0) from DUAL;
-- ascii
SELECT ascii('A') from dual;
SELECT ascii('a') from dual;
-- chr : to convert num to ascii
SELECT CHR(65) from dual;
-- substr 
SELECT SUBSTR(name,1,3) from EMPLOYEES;
SELECT name FROM EMPLOYEES WHERE LENGTH(name)>5;
select instr(department, 'IT') from EMPLOYEES ;

SELECT
UPPER(substr('data science',1,2)) ||
lower(substr('data science',3,2)) ||
substr('data science',5,1) ||
UPPER(substr('data science',6,2)) ||
lower(substr('data science',8))
FROM dual;



select replace('swarna', 'rna','***') from dual;

SELECT SUBSTR(name, 1, LENGTH(name)-3) || '***' as result FROM Employees;

-- abs : Return position value
-- ceil(45.2) from dual : 45
-- floor(45/2) from dual : 22.5 - 22
-- round(45.466779, 2) : 45.47 num >=5 = +1 (or) num <5 : same number
--sin()
SELECT round(sin(90)) from dual;
SELECT cos(90) from dual;
SELECT tan(90) from dual;
SELECT asin(0) from dual;
SELECT acos(0) from dual;
SELECT atan(0) from dual;


-- log
SELECT log(10,100),log(2,32) from dual;


select log(2,16) from dual;

select log(e) from dual;
-- sign(-10)
 -- if it is positive :1
 -- if it is negative : -1
 -- 0: 0
 select sign(-10) from dual;
 select sign(80) from dual;
 

-- power()
select power(4,2) from dual;
-- exp()
select exp(4) from dual;
-- sqrt()
select sqrt(4) from dual;