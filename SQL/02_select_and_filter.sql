-- Select all columns
SELECT * FROM products;

-- Select specific columns
SELECT product_name, price FROM products;

-- Rename columns using aliases
SELECT product_name AS product, price AS selling_price
FROM products;

-- Remove duplicate values
SELECT DISTINCT category FROM products;

-- Filter rows
SELECT * FROM products
WHERE price > 1000;

-- Multiple conditions
SELECT * FROM products
WHERE category = 'Electronics' AND price > 1000;

SELECT * FROM products
WHERE category = 'Furniture' OR price < 100;

-- Exclude a condition
SELECT * FROM products
WHERE NOT category = 'Stationery';

-- Match multiple values
SELECT * FROM products
WHERE category IN ('Electronics', 'Furniture');

-- Filter within a range (inclusive)
SELECT * FROM products
WHERE price BETWEEN 100 AND 1500;

-- Pattern matching (% = any number of characters)
SELECT * FROM products
WHERE product_name LIKE 'B%';

-- Match a single character using _
SELECT * FROM products
WHERE product_name LIKE '_en';

-- Sort ascending
SELECT * FROM products
ORDER BY price ASC;

-- Sort descending
SELECT * FROM products
ORDER BY price DESC;

-- Sort by multiple columns
SELECT * FROM products
ORDER BY category ASC, price DESC;

-- Return only a limited number of rows
SELECT * FROM products
LIMIT 3;

-- Skip rows and return the next rows
SELECT * FROM products
LIMIT 3 OFFSET 2;

-- Find products with NULL values
SELECT * FROM products
WHERE category IS NULL;

-- Find products without NULL values
SELECT * FROM products
WHERE category IS NOT NULL;

-- Calculate values in the result
SELECT product_name, price, price * 1.18 AS price_with_tax
FROM products;

-- Conditional output using CASE
SELECT product_name, price,
    CASE
        WHEN price >= 5000 THEN 'Expensive'
        WHEN price >= 1000 THEN 'Moderate'
        ELSE 'Affordable'
    END AS price_range
FROM products;
