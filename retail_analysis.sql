USE startersql;
-- SET SQL_SAFE_UPDATES = 0;
SELECT COUNT(*) AS total_orders FROM retail_orders;
SELECT COUNT(DISTINCT Customer_ID) AS unique_customers FROM retail_orders;
SELECT SUM(Total_Amount) AS total_revenue FROM retail_orders;
SELECT SUM(Quantity) AS total_quantity FROM retail_orders;
SELECT AVG(Total_Amount) AS avg_order_value FROM retail_orders;
SELECT Product_Category, SUM(Total_Amount) AS category_sales FROM retail_orders GROUP BY Product_Category;
SELECT Product_Name, SUM(Total_Amount) AS revenue FROM retail_orders GROUP BY Product_Name ORDER BY revenue DESC LIMIT 5;
SELECT Product_Name, SUM(Quantity) AS total_quantity FROM retail_orders GROUP BY Product_Name ORDER BY total_quantity DESC LIMIT 5;
SELECT City, SUM(Total_Amount) AS city_sales FROM retail_orders GROUP BY City;
SELECT City, SUM(Total_Amount) AS revenue FROM retail_orders GROUP BY City ORDER BY revenue DESC LIMIT 5;
SELECT Payment_Mode, COUNT(*) AS total_orders, SUM(Total_Amount) AS revenue FROM retail_orders GROUP BY Payment_Mode;
SELECT YEAR(Order_Date) AS year, SUM(Total_Amount) AS sales FROM retail_orders GROUP BY YEAR(Order_Date);
SELECT MONTH(Order_Date) AS month, SUM(Total_Amount) AS sales FROM retail_orders GROUP BY MONTH(Order_Date) ORDER BY month;
SELECT COUNT(*) AS cancelled_orders FROM retail_orders WHERE Cancellation = 1;
SELECT City, COUNT(*) AS cancelled_orders FROM retail_orders WHERE Cancellation = 1 GROUP BY City;
SELECT Customer_ID, SUM(Total_Amount) AS total_spent FROM retail_orders GROUP BY Customer_ID ORDER BY total_spent DESC LIMIT 10;
SELECT Customer_ID, COUNT(*) AS order_count FROM retail_orders GROUP BY Customer_ID HAVING order_count > 1;
SELECT * FROM retail_orders WHERE Cancellation = 0;
SELECT *, Quantity * Unit_Price AS calculated_total FROM retail_orders;
SELECT
Order_ID,
Order_Date,
YEAR(Order_Date) AS Year,
MONTH(Order_Date) AS Month,
Customer_ID,
Product_Category,
Product_Name,
Quantity,
Unit_Price,
Total_Amount,
Payment_Mode,
City,
Cancellation
FROM retail_orders
WHERE Cancellation = 1;
SELECT * FROM retail_orders;