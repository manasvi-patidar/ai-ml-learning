USE retail_analysis;

-- Count total products
SELECT COUNT(*) AS total_products
FROM products;

-- Count non-NULL prices
SELECT COUNT(price) AS products_with_price
FROM products;

-- Calculate total inventory value
SELECT SUM(price * stock) AS inventory_value
FROM products;

-- Calculate average product price
SELECT AVG(price) AS average_price
FROM products;

-- Find minimum and maximum prices
SELECT MIN(price) AS lowest_price,
       MAX(price) AS highest_price
FROM products;

-- Count distinct categories
SELECT COUNT(DISTINCT category) AS total_categories
FROM products;

-- Aggregate functions with conditions
SELECT COUNT(*) AS expensive_products
FROM products
WHERE price > 5000;

-- Aggregate functions by category
SELECT category,
       COUNT(*) AS total_products,
       AVG(price) AS average_price,
       MIN(price) AS lowest_price,
       MAX(price) AS highest_price
FROM products
GROUP BY category;

-- Total inventory value by category
SELECT category,
       SUM(price * stock) AS inventory_value
FROM products
GROUP BY category;

-- Filter groups using HAVING
SELECT category,
       AVG(price) AS average_price
FROM products
GROUP BY category
HAVING AVG(price) > 1000;
