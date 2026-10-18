USE retail_analysis;

-- CONSTRAINTS

-- PRIMARY KEY: Uniquely identifies each row
-- Already applied to products.product_id

-- UNIQUE: Prevent duplicate values
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) DEFAULT 'Unknown'
);

-- NOT NULL: Prevent missing values
-- Already applied to products.product_name

-- DEFAULT: Set a value automatically
INSERT INTO customers (customer_id, email, customer_name)
VALUES (1, 'manasvi@gmail.com', 'Manasvi');

-- CHECK: Restrict invalid values
CREATE TABLE IF NOT EXISTS inventory_test (
    item_id INT PRIMARY KEY,
    quantity INT CHECK (quantity >= 0)
);

-- FOREIGN KEY: Link two tables
CREATE TABLE IF NOT EXISTS orders_test (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

-- Add a constraint to an existing table
ALTER TABLE products
ADD CONSTRAINT chk_price_positive CHECK (price >= 0);

-- Remove a constraint
ALTER TABLE products
DROP CHECK chk_price_positive;


-- INDEXES

-- Create an index
CREATE INDEX idx_product_name
ON products(product_name);

-- Create a composite index
CREATE INDEX idx_category_price
ON products(category, price);

-- Show indexes
SHOW INDEX FROM products;

-- Remove an index
DROP INDEX idx_product_name ON products;

-- Inspect query execution
EXPLAIN
SELECT * FROM products
WHERE category = 'Electronics';

-- Clean up demonstration tables
DROP TABLE IF EXISTS orders_test;
DROP TABLE IF EXISTS inventory_test;
DROP TABLE IF EXISTS customers;
