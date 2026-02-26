-- SELECT * FROM ORDERS;
-- INSERT INTO Orders
-- (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category, Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
-- VALUES
-- (1001, '01-02-2026', 'C001', 'Ravi Kumar', 'Electronics', 'Wireless Mouse', 2, 799, 'UPI', 'Bangalore');
-- INSERT INTO Orders
-- (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category, Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
-- VALUES
-- (1002, '02-02-2026', 'C002', 'Sneha Reddy', 'Grocery', 'Basmati Rice 5kg', 1, 650, 'Credit Card', 'Hyderabad');
-- INSERT INTO Orders
-- (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category, Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
-- VALUES
-- (1003, '03-02-2026', 'C003', 'Arjun Mehta', 'Fashion', 'Men''s T-Shirt', 3, 499, 'Cash', 'Chennai');

-- INSERT INTO Orders
-- (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category, Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
-- VALUES
-- (1004, '04-02-2026', 'C004', 'Priya Sharma', 'Electronics', 'Bluetooth Speaker', 1, 1499, 'Debit Card', 'Mumbai');
-- INSERT INTO Orders
-- (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category, Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
-- VALUES
-- (1005, '05-02-2026', 'C005', 'Kiran Rao', 'Home  Kitchen', 'Mixer Grinder', 1, 2499, 'UPI', 'Bangalore');
-- INSERT INTO Orders
-- (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category, Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
-- VALUES
-- (1006, '2026-02-06', 'C006', 'Neha Verma', 'Beauty', 'Face Cream', 4, 299, 'Credit Card', 'Delhi');
-- INSERT INTO Orders
-- (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category, Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
-- VALUES
-- (1007, '07-02-2026', 'C007', 'Rahul Das', 'Grocery', 'Cooking Oil 1L', 5, 180, 'Cash', 'Kolkata');
-- INSERT INTO Orders
-- (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category, Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
-- VALUES
-- (1008, '08-02-2026', 'C008', 'Anjali Nair', 'Fashion', 'Women''s Jeans', 2, 1199, 'UPI', 'Kochi');
-- INSERT INTO Orders
-- (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category, Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
-- VALUES
-- (1009, '09-02-2026', 'C009', 'Suresh Patel', 'Electronics', 'Smartphone', 1, 15999, 'Debit Card', 'Ahmedabad');
-- INSERT INTO Orders
-- (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category, Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
-- VALUES
-- (1010, '10-02-2026', 'C010', 'Meena Iyer', 'Home  Kitchen', 'Pressure Cooker', 1, 1899, 'Credit Card', 'Pune');
-- SELECT * FROM ORDERS;

-- Round Unit_Price to 2 decimal places
SELECT ROUND(Unit_Price, 2) AS Rounded_Unit_Price FROM orders;

-- Find total sales per order.
SELECT * FROM ORDERS;
SELECT Quantity,Unit_Price FROM ORDERS;
SELECT  sum(Unit_Price * Quantity) as total_sales_price FROM orders ;

-- Calculate average order value.
SELECT avg(Unit_Price * Quantity) as average_order_value from orders ;

-- Find highest product price.
SELECT MAX(Unit_Price) FROM orders;

-- Find lowest product price.
SELECT MIN(Unit_Price) FROM ORDERS;

-- Calculate percentage discount applied.

-- Find modulus of Quantity divided by 2.
SELECT MOD(Quantity, 2) from orders;

-- Convert negative values to positive.
SELECT abs(Unit_Price) as positive_price FROM ORDERS;

-- Truncate price without rounding.
SELECT Trunc(Unit_Price, 2) AS Truncated_Price FROM orders;

-- Find square root of total sales
SELECT * FROM ORDERS;
SELECT * FROM ORDERS;
SELECT  sum(Unit_Price * Quantity) as total_sales_price FROM orders ;
SELECT SQRT(sum(Unit_Price * Quantity)) AS Square_Root_Total_Sales
FROM Orders;
SELECT EXP(QUANTITY) AS Exponential_Value FROM ORDERS;
SELECT ROUND(EXP(QUANTITY),2) AS Exponential_Value FROM ORDERS;

-- Calculate power of 2^5
SELECT POWER(2,5) AS Power_Value FROM dual;

-- Find absolute difference between two prices
SELECT ABS(Unit_Price - 100) AS Price_Difference
FROM Orders;

-- Calculate sales growth percentage
-- Formula: ((New_Sales - Old_Sales) / Old_Sales) * 100


-- Find random number between 1 and 100
SELECT ROUND(DBMS_RANDOM.VALUE(1,100)) AS Random_Number
FROM dual;

-- Divide total sales by number of orders
SELECT SUM(Unit_Price * Quantity) / COUNT(Order_ID) AS Avg_Sales_Per_Order
FROM Orders;

-- Find ceiling value of price
SELECT CEIL(Unit_Price) AS Ceiling_Price
FROM Orders;

-- Find floor value of price
SELECT FLOOR(Unit_Price) AS Floor_Price
FROM Orders;

-- Convert decimal to integer
SELECT TRUNC(Unit_Price) AS Integer_Value
FROM Orders;

-- Calculate compound interest
-- Formula: P * POWER(1 + R/100, T)
SELECT 1000 * POWER(1 + 5/100, 2) AS Compound_Interest
FROM dual;


