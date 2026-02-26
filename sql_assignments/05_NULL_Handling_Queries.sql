-- Replace NULL price with 0
SELECT NVL(Unit_Price, 0) AS Price
FROM Orders;

-- Replace NULL Customer_Name with 'Unknown'
SELECT NVL(Customer_Name, 'Unknown') AS Customer_Name
FROM Orders;

-- Count NULL values in Product_Name
SELECT COUNT(*) - COUNT(Product_Name) AS Null_Count
FROM Orders;

-- Find rows where Order_Date is NULL
SELECT *
FROM Orders
WHERE Order_Date IS NULL;

-- Use COALESCE to return first non-null value
SELECT COALESCE(Customer_Name, Product_Name, 'Not Available') AS First_Non_Null
FROM Orders;

-- Use NVL to replace NULL values
SELECT NVL(Quantity, 0) AS Quantity_Value
FROM Orders;

-- Use IFNULL function (Note: Not supported in Oracle, use NVL instead)
SELECT NVL(Unit_Price, 0) AS Price_Value
FROM Orders;

-- Check if column is NULL
SELECT *
FROM Orders
WHERE Unit_Price IS NULL;

-- Check if column is NOT NULL
SELECT *
FROM Orders
WHERE Unit_Price IS NOT NULL;

-- Use NULLIF between two columns
SELECT NULLIF(Unit_Price, Quantity) AS Result_Value
FROM Orders;

-- Replace blank values with NULL
SELECT NULLIF(Customer_Name, '') AS Clean_Name
FROM Orders;

-- Count non-null values
SELECT COUNT(Unit_Price) AS Non_Null_Count
FROM Orders;

-- Filter records where price is NULL or 0
SELECT *
FROM Orders
WHERE Unit_Price IS NULL OR Unit_Price = 0;

-- Use CASE to handle NULL values
SELECT CASE
         WHEN Unit_Price IS NULL THEN 0
         ELSE Unit_Price
       END AS Price_Value
FROM Orders;

-- Compare NULL values properly (use IS NULL, not = NULL)
SELECT *
FROM Orders
WHERE Customer_Name IS NULL;

-- Handle NULL in aggregation (replace NULL before SUM)
SELECT SUM(NVL(Unit_Price,0)) AS Total_Sales
FROM Orders;

-- Find average excluding NULL values (AVG automatically ignores NULL)
SELECT AVG(Unit_Price) AS Average_Price
FROM Orders;

-- Find sum ignoring NULL values (SUM ignores NULL)
SELECT SUM(Unit_Price) AS Total_Price
FROM Orders;

-- Identify columns containing NULL using metadata
SELECT column_name
FROM user_tab_columns
WHERE table_name = 'ORDERS'
AND nullable = 'Y';

-- Convert NULL to default system date
SELECT NVL(Order_Date, SYSDATE) AS Updated_Date
FROM Orders;