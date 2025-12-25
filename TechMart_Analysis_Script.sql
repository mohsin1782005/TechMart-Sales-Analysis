-- Step 1: Create the table
CREATE TABLE Sales (
    Sale_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Product_Category VARCHAR(50),
    Sale_Amount INT,
    Sale_Date DATE
);

-- Step 2: Insert the data
INSERT INTO Sales VALUES 
(1, 'Ali', 'Mobiles', 65000, '2024-01-10'),
(2, 'Sara', 'Laptops', 120000, '2024-01-12'),
(3, 'Ahmed', 'Accessories', 5000, '2024-01-15'),
(4, 'Zain', 'Mobiles', 45000, '2024-01-20'),
(5, 'Hina', 'Laptops', 115000, '2024-02-01'),
(6, 'Bilal', 'Mobiles', 80000, '2024-02-05'),
(7, 'Mariam', 'Accessories', 3000, '2024-02-10'),
(8, 'Omer', 'Mobiles', 55000, '2024-02-15');

-- High-Value Mobile Customers
SELECT Customer_name
FROM Sales
WHERE Product_Category = 'Mobiles'
and Sale_Amount > 50000;

-- Best Selling Category
SELECT Product_Category, SUM(Sale_Amount) AS Total_Sales
FROM Sales
GROUP BY Product_Category
ORDER BY Total_Sales DESC
LIMIT 1;

-- High-Average Categories
SELECT Product_Category, AVG(Sale_Amount) AS Average_Sales
FROM Sales
GROUP BY Product_Category
HAVING AVG(Sale_Amount) > 20000;