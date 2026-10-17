USE retail_analysis;

-- INSERT: Add a new product
INSERT INTO products (product_id, product_name, category, price, stock)
VALUES (9, 'Headphones', 'Electronics', 2000.00, 25);

-- Insert multiple rows
INSERT INTO products (product_id, product_name, category, price, stock)
VALUES
(10, 'Tablet', 'Electronics', 18000.00, 12),
(11, 'Marker', 'Stationery', 50.00, 80);

-- INSERT: Copy data from another query
CREATE TABLE premium_products AS
SELECT * FROM products WHERE price >= 5000;

-- UPDATE: Change a product price
UPDATE products
SET price = 2200.00
WHERE product_id = 9;

-- Update multiple columns
UPDATE products
SET price = 19000.00, stock = 15
WHERE product_id = 10;

-- UPDATE: Increase prices by 10%
UPDATE products
SET price = price * 1.10
WHERE category = 'Electronics';

-- DELETE: Remove a specific product
DELETE FROM products
WHERE product_id = 11;

-- DELETE: Remove rows matching a condition
DELETE FROM products
WHERE stock = 0;

-- View the updated data
SELECT * FROM products;

-- TRUNCATE: Remove all rows, keep table structure
-- TRUNCATE TABLE premium_products;

-- DROP: Remove the entire table
-- DROP TABLE premium_products;
