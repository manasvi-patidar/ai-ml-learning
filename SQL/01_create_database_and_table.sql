-- Create database
CREATE DATABASE IF NOT EXISTS retail_analysis;

-- Use database
USE retail_analysis;

-- Create products table
CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(30),
    price DECIMAL(10,2),
    stock INT
);

-- Insert products
INSERT INTO products (product_id, product_name, category, price, stock)
VALUES
(1, 'Laptop', 'Electronics', 55000.00, 10),
(2, 'Mouse', 'Electronics', 800.00, 50),
(3, 'Keyboard', 'Electronics', 1500.00, 30),
(4, 'Chair', 'Furniture', 4500.00, 15),
(5, 'Desk', 'Furniture', 7000.00, 8),
(6, 'Notebook', 'Stationery', 100.00, 100),
(7, 'Pen', 'Stationery', 20.00, 200),
(8, 'Bottle', 'Accessories', 350.00, 40);

-- View all products
SELECT * FROM products;

-- View table structure
DESCRIBE products;

-- View tables
SHOW TABLES;
