-- Find sine value of an angle (example: 30 degrees converted to radians)
SELECT SIN(30 * (ACOS(-1) / 180)) AS Sine_Value
FROM dual;

-- Find cosine value of an angle (example: 60 degrees)
SELECT COS(60 * (ACOS(-1) / 180)) AS Cosine_Value
FROM dual;

-- Find tangent value (example: 45 degrees)
SELECT TAN(45 * (ACOS(-1) / 180)) AS Tangent_Value
FROM dual;

-- Convert degrees to radians
SELECT 90 * (ACOS(-1) / 180) AS Radians_Value
FROM dual;

-- Convert radians to degrees
SELECT (ACOS(-1) * 180 / ACOS(-1)) AS Degrees_Value
FROM dual;

-- Find logarithm (base 10) of a number
SELECT LOG(10, 100) AS Log_Base10
FROM dual;

-- Find natural log of a number
SELECT LN(10) AS Natural_Log
FROM dual;

-- Find square of a number
SELECT POWER(5, 2) AS Square_Value
FROM dual;

-- Find cube of a number
SELECT POWER(5, 3) AS Cube_Value
FROM dual;

-- Calculate factorial of a number (example: 5!)
SELECT 5*4*3*2*1 AS Factorial_Value
FROM dual;

-- Find greatest value among three numbers
SELECT GREATEST(10, 25, 18) AS Greatest_Value
FROM dual;

-- Find least value among three numbers
SELECT LEAST(10, 25, 18) AS Least_Value
FROM dual;

-- Calculate variance of sales
SELECT VARIANCE(Unit_Price * Quantity) AS Sales_Variance
FROM Orders;

-- Calculate standard deviation of sales
SELECT STDDEV(Unit_Price * Quantity) AS Sales_Std_Deviation
FROM Orders;

-- Find average deviation (mean absolute deviation)
SELECT AVG(ABS((Unit_Price * Quantity) - 
       (SELECT AVG(Unit_Price * Quantity) FROM Orders))) AS Avg_Deviation
FROM Orders;

-- Calculate geometric mean
SELECT EXP(AVG(LN(Unit_Price * Quantity))) AS Geometric_Mean
FROM Orders;

-- Calculate harmonic mean
SELECT COUNT(*) / SUM(1 / (Unit_Price * Quantity)) AS Harmonic_Mean
FROM Orders;

-- Find sum of squares
SELECT SUM(POWER(Unit_Price * Quantity, 2)) AS Sum_Of_Squares
FROM Orders;

-- Calculate correlation between two columns (example: Unit_Price and Quantity)
SELECT CORR(Unit_Price, Quantity) AS Correlation_Value
FROM Orders;

-- Calculate regression slope
SELECT REGR_SLOPE(Quantity, Unit_Price) AS Regression_Slope
FROM Orders;