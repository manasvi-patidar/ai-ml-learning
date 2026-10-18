USE retail_analysis;

-- VIEWS

-- Create a view
CREATE OR REPLACE VIEW expensive_products AS
SELECT product_id, product_name, category, price
FROM products
WHERE price > 1000;

-- Query a view
SELECT * FROM expensive_products;

-- Update a view definition
CREATE OR REPLACE VIEW electronics_products AS
SELECT product_name, price
FROM products
WHERE category = 'Electronics';

-- Drop a view
DROP VIEW IF EXISTS electronics_products;


-- WINDOW FUNCTIONS

-- Assign row numbers
SELECT product_name, category, price,
       ROW_NUMBER() OVER (ORDER BY price DESC) AS row_num
FROM products;

-- Rank products by price
SELECT product_name, price,
       RANK() OVER (ORDER BY price DESC) AS price_rank
FROM products;

-- Rank without gaps after ties
SELECT product_name, price,
       DENSE_RANK() OVER (ORDER BY price DESC) AS price_rank
FROM products;

-- Rank products within each category
SELECT product_name, category, price,
       RANK() OVER (
           PARTITION BY category
           ORDER BY price DESC
       ) AS category_rank
FROM products;

-- Calculate a running total of stock
SELECT product_name, stock,
       SUM(stock) OVER (
           ORDER BY product_id
       ) AS running_stock
FROM products;

-- Compare each price with the average price
SELECT product_name, price,
       AVG(price) OVER () AS overall_avg_price
FROM products;

-- Compare each product with the previous product
SELECT product_name, price,
       LAG(price) OVER (ORDER BY product_id) AS previous_price
FROM products;

-- Compare each product with the next product
SELECT product_name, price,
       LEAD(price) OVER (ORDER BY product_id) AS next_price
FROM products;

-- Get the highest-priced product in each category
WITH ranked_products AS (
    SELECT product_name, category, price,
           ROW_NUMBER() OVER (
               PARTITION BY category
               ORDER BY price DESC, product_id
           ) AS rn
    FROM products
)
SELECT product_name, category, price
FROM ranked_products
WHERE rn = 1;
