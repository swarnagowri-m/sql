-- Extract year from Order_Date
SELECT EXTRACT(YEAR FROM Order_Date) AS Year_Value
FROM Orders;

-- Extract month from Order_Date
SELECT EXTRACT(MONTH FROM Order_Date) AS Month_Value
FROM Orders;

-- Extract day from Order_Date
SELECT EXTRACT(DAY FROM Order_Date) AS Day_Value
FROM Orders;

-- Find current date
SELECT SYSDATE AS Current_Date
FROM dual;

-- Find current timestamp
SELECT SYSTIMESTAMP AS Current_Timestamp
FROM dual;

-- Add 7 days to Order_Date
SELECT Order_Date,
       Order_Date + 7 AS New_Date
FROM Orders;

-- Subtract 30 days from Order_Date
SELECT Order_Date,
       Order_Date - 30 AS Previous_Date
FROM Orders;

-- Find difference between two dates
SELECT (SYSDATE - Order_Date) AS Date_Difference_Days
FROM Orders;

-- Find number of months between two dates
SELECT MONTHS_BETWEEN(SYSDATE, Order_Date) AS Months_Difference
FROM Orders;

-- Find last day of the month
SELECT LAST_DAY(Order_Date) AS Last_Day_Of_Month
FROM Orders;

-- Get first day of the year
SELECT TRUNC(Order_Date, 'YEAR') AS First_Day_Of_Year
FROM Orders;

-- Format date as 'DD-MM-YYYY'
SELECT TO_CHAR(Order_Date, 'DD-MM-YYYY') AS Formatted_Date
FROM Orders;

-- Convert string to date
SELECT TO_DATE('25-02-2026', 'DD-MM-YYYY') AS Converted_Date
FROM dual;

-- Convert date to string
SELECT TO_CHAR(SYSDATE, 'DD-MM-YYYY') AS Date_String
FROM dual;

-- Find week number of the year
SELECT TO_CHAR(Order_Date, 'WW') AS Week_Number
FROM Orders;

-- Find day name from date
SELECT TO_CHAR(Order_Date, 'DAY') AS Day_Name
FROM Orders;

-- Find quarter of the year
SELECT TO_CHAR(Order_Date, 'Q') AS Quarter_Value
FROM Orders;

-- Calculate age from DOB (example column: DOB)
SELECT FLOOR(MONTHS_BETWEEN(SYSDATE, DOB)/12) AS Age
FROM Orders;

-- Check if date is weekend
SELECT Order_Date,
       CASE 
           WHEN TO_CHAR(Order_Date, 'DY') IN ('SAT','SUN')
           THEN 'Weekend'
           ELSE 'Weekday'
       END AS Day_Type
FROM Orders;

-- Find next Monday after a given date
SELECT NEXT_DAY(Order_Date, 'MONDAY') AS Next_Monday
FROM Orders;