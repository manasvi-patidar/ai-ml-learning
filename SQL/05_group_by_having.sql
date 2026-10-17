USE retail_analysis;

-- Group products by category
SELECT category, COUNT(*) AS total_products
FROM products
GROUP BY category;

-- Group by multiple columns
SELECT category, price, COUNT(*) AS product_count
FROM products
GROUP BY category, price;

-- Calculate category-wise average price
SELECT category, AVG(price) AS average_price
FROM products
GROUP BY category;

-- Filter groups using HAVING
SELECT category, COUNT(*) AS total_products
FROM products
GROUP BY category
HAVING COUNT(*) >= 2;

-- Filter rows before grouping
SELECT category, AVG(price) AS average_price
FROM products
WHERE price > 500
GROUP BY category;

-- Filter groups after aggregation
SELECT category, AVG(price) AS average_price
FROM products
GROUP BY category
HAVING AVG(price) > 1000;

-- Use WHERE and HAVING together
SELECT category, SUM(stock) AS total_stock
FROM products
WHERE price > 100
GROUP BY category
HAVING SUM(stock) > 20;

-- Sort aggregated results
SELECT category, SUM(price * stock) AS inventory_value
FROM products
GROUP BY category
ORDER BY inventory_value DESC;

-- Group by an expression
SELECT
    CASE
        WHEN price >= 5000 THEN 'Premium'
        WHEN price >= 1000 THEN 'Mid-range'
        ELSE 'Budget'
    END AS price_segment,
    COUNT(*) AS total_products
FROM products
GROUP BY price_segment
ORDER BY total_products DESC;
