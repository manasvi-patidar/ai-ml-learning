USE retail_analysis;

-- STRING FUNCTIONS

-- Change case
SELECT UPPER(product_name), LOWER(category)
FROM products;

-- Combine strings
SELECT CONCAT(product_name, ' - ', category) AS product_details
FROM products;

-- Get string length
SELECT product_name, LENGTH(product_name) AS name_length
FROM products;

-- Extract part of a string
SELECT SUBSTRING(product_name, 1, 3) AS short_name
FROM products;

-- Remove extra spaces
SELECT TRIM('   Retail Analysis   ') AS cleaned_text;

-- Replace text
SELECT REPLACE(product_name, 'a', '@') AS modified_name
FROM products;


-- NUMERIC FUNCTIONS

-- Round decimal values
SELECT product_name, ROUND(price / 3, 2) AS rounded_price
FROM products;

-- Round up and down
SELECT CEIL(price / 3), FLOOR(price / 3)
FROM products;

-- Absolute value
SELECT ABS(-500);

-- Remainder
SELECT MOD(10, 3);


-- NULL HANDLING

-- Replace NULL with a default value
SELECT product_name, COALESCE(category, 'Uncategorized') AS category
FROM products;

-- Conditional NULL handling
SELECT product_name, IFNULL(category, 'Unknown') AS category
FROM products;


-- DATE FUNCTIONS

-- Current date and time
SELECT CURDATE(), NOW();

-- Extract year and month from a date
SELECT YEAR(CURDATE()), MONTH(CURDATE());

-- Calculate date difference
SELECT DATEDIFF('2026-12-31', CURDATE()) AS days_remaining;

-- Add days to a date
SELECT DATE_ADD(CURDATE(), INTERVAL 7 DAY) AS next_week;

-- Format a date
SELECT DATE_FORMAT(CURDATE(), '%d-%m-%Y') AS formatted_date;


-- CONDITIONAL FUNCTION

-- IF function
SELECT product_name, price,
       IF(price >= 1000, 'Expensive', 'Affordable') AS price_label
FROM products;

-- NULLIF: Return NULL when values are equal
SELECT NULLIF(10, 10) AS result;
