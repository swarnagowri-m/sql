CREATE TABLE employee4 (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER(10,2),
    city VARCHAR2(50),
    joining_date DATE
);

INSERT INTO EMPLOYEE4 (emp_name, salary, city, joining_date)
VALUES ('Ravi Kumar', 45000, 'Bangalore', DATE '2024-01-15');

INSERT INTO employee4 (emp_name, salary, city, joining_date)
VALUES ('Anita Sharma', 52000, 'Hyderabad', DATE '2023-11-10');

INSERT INTO employee4 (emp_name, salary, city, joining_date)
VALUES ('Rahul Verma', 60000, 'Chennai', DATE '2022-08-20');

INSERT INTO employee4 (emp_name, salary, city, joining_date)
VALUES ('Priya Reddy', 48000, 'Mumbai', DATE '2024-02-01');

INSERT INTO employee4 (emp_name, salary, city, joining_date)
VALUES ('Karthik N', 55000, 'Bangalore', DATE '2023-06-18');

INSERT INTO employee4 (emp_name, salary, city, joining_date)
VALUES ('Sneha Patel', 47000, 'Ahmedabad', DATE '2022-12-05');

INSERT INTO employee4 (emp_name, salary, city, joining_date)
VALUES ('Arjun Singh', 62000, 'Delhi', DATE '2023-03-25');

INSERT INTO employee4 (emp_name, salary, city, joining_date)
VALUES ('Meena Kumari', 51000, 'Kolkata', DATE '2024-01-30');

INSERT INTO employee4 (emp_name, salary, city, joining_date)
VALUES ('Vikram Joshi', 58000, 'Pune', DATE '2023-08-12');

INSERT INTO employee4 (emp_name, salary, city, joining_date)
VALUES ('Divya S', 49000, 'Bangalore', DATE '2024-03-05');

INSERT INTO employee4 (emp_name, salary, city, joining_date)
VALUES ('Ravi Kumar', 45000, 'Bangalore', DATE '2024-01-15');

-- display the emp details who has joined before 2024-01-01
SELECT * FROM EMPLOYEE4 WHERE JOINING_DATE < DATE '2024-01-01';

-- display the emp details who has joined in 2024-01-01
SELECT * FROM EMPLOYEE4 WHERE JOINING_DATE >= DATE '2024-01-01' AND JOINING_DATE <= date '2024-12-31';

SELECT * FROM EMPLOYEE4 WHERE JOINING_DATE BETWEEN DATE '2024-01-01' AND date '2024-12-31';




SELECT emp_name FROM EMPLOYEE4 ORDER BY EMP_NAME;

SELECT emp_name, SALARY FROM EMPLOYEE4 ORDER BY SALARY DESC;

-- print emp_name and joining year

SELECT emp_name, EXTRACT(year from JOINING_DATE) as join_year from EMPLOYEE4; 

SELECT emp_name, EXTRACT(MONTH from JOINING_DATE) as join_month from EMPLOYEE4;


-- print emp_count who has joined 1st date of the any month or year
SELECT COUNT(*) from EMPLOYEE4 WHERE EXTRACT(MONTH from JOINING_DATE) = 1;

SELECT emp_name ,JOINING_DATE from EMPLOYEE4 WHERE EXTRACT(MONTH from JOINING_DATE) = 1;

-- print emp count who has joined in 2024
SELECT COUNT(*) from EMPLOYEE4 WHERE EXTRACT(YEAR from JOINING_DATE) = 2024;

-- print emp_name with respective joined month as january ,.....
SELECT emp_name,to_char(joining_date,'month') FROM EMPLOYEE4;
SELECT emp_name,to_char(joining_date,'day') FROM EMPLOYEE4;
-- print emp_count who as joined on monday
SELECT COUNT(*) FROM EMPLOYEE4 WHERE to_char(joining_date,'day') = 'monday';

 