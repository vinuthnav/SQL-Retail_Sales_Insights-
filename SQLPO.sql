SELECT * FROM daposql.retail_sales_dataset;
ALTER TABLE daposql.retail_sales_dataset CHANGE `Transaction ID` TransactionID INT;
SELECT count(TransactionID) as Total from daposql.retail_sales_dataset;
SELECT
    COUNT(*) AS total_rows,                           -- Count of total rows in the dataset
    AVG(Age) AS avg_age,                             -- Average age
    MIN(Age) AS min_age,                             -- Minimum age
    MAX(Age) AS max_age,                             -- Maximum age
    STDDEV(Age) AS stddev_age,                       -- Standard deviation of age
    AVG(Quantity) AS avg_quantity,                   -- Average quantity sold
    MIN(Quantity) AS min_quantity,                   -- Minimum quantity sold
    MAX(Quantity) AS max_quantity,                   -- Maximum quantity sold
    AVG("Price per Unit") AS avg_price_per_unit,     -- Average price per unit
    MIN("Price per Unit") AS min_price_per_unit,     -- Minimum price per unit
    MAX("Price per Unit") AS max_price_per_unit,     -- Maximum price per unit
    AVG("Total Amount") AS avg_total_amount,         -- Average total amount (quantity * price)
    MIN("Total Amount") AS min_total_amount,         -- Minimum total amount
    MAX("Total Amount") AS max_total_amount          -- Maximum total amount
FROM
    daposql.retail_sales_dataset;                                      -- Replace with your table name
    
    SELECT Gender, COUNT(*) AS count
FROM daposql.retail_sales_dataset
GROUP BY Gender;


SELECT "Product Category", COUNT(*) AS count
FROM daposql.retail_sales_dataset
GROUP BY "Product Category";

SELECT Date, SUM(`Total Amount`) AS total_sales
FROM daposql.retail_sales_dataset
GROUP BY Date
ORDER BY Date;


SELECT Gender, SUM(`Total Amount`) AS total_sales
FROM daposql.retail_sales_dataset
GROUP BY Gender;


SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46+' 
    END AS age_group,
    SUM(`Total Amount`) AS total_sales
FROM daposql.retail_sales_dataset
GROUP BY age_group;

SELECT `Product Category`, 
       SUM(`Total Amount`) AS total_sales, 
       SUM(Quantity) AS total_quantity_sold
FROM daposql.retail_sales_dataset
GROUP BY `Product Category`;

SELECT `Product Category`, 
       AVG(`Price per Unit`) AS avg_price_per_unit
FROM daposql.retail_sales_dataset
GROUP BY `Product Category`;

SELECT Date, 
       SUM(`Total Amount`) AS total_sales
FROM daposql.retail_sales_dataset
GROUP BY Date
ORDER BY Date;

SELECT monthname(Date) AS month, 
       SUM(`Total Amount`) AS total_sales
FROM daposql.retail_sales_dataset
GROUP BY month
ORDER BY month;

SELECT year(Date) AS year, 
       SUM(`Total Amount`) AS total_sales
FROM daposql.retail_sales_dataset
GROUP BY year
ORDER BY year;

SELECT `Customer ID`, 
       SUM(`Total Amount`) AS total_sales
FROM daposql.retail_sales_dataset
GROUP BY `Customer ID`
ORDER BY total_sales DESC
LIMIT 10;

SELECT Gender, 
       SUM(`Total Amount`) AS total_sales, 
       SUM(Quantity) AS total_quantity_sold
FROM daposql.retail_sales_dataset
GROUP BY Gender;









