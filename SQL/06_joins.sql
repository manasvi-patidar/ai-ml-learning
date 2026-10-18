USE retail_analysis;

-- Create suppliers table
CREATE TABLE IF NOT EXISTS suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(50) NOT NULL,
    category VARCHAR(30)
);

-- Insert demo suppliers
INSERT IGNORE INTO suppliers VALUES
(1, 'TechWorld', 'Electronics'),
(2, 'FurniCo', 'Furniture'),
(3, 'PaperPlus', 'Stationery'),
(4, 'HomeEssentials', 'Home Decor');

-- INNER JOIN: Matching categories only
SELECT p.product_name, p.category, s.supplier_name
FROM products p
INNER JOIN suppliers s
ON p.category = s.category;

-- LEFT JOIN: All products, matching suppliers if available
SELECT p.product_name, s.supplier_name
FROM products p
LEFT JOIN suppliers s
ON p.category = s.category;

-- RIGHT JOIN: All suppliers, matching products if available
SELECT p.product_name, s.supplier_name
FROM products p
RIGHT JOIN suppliers s
ON p.category = s.category;

-- Find products without a matching supplier
SELECT p.product_name, p.category
FROM products p
LEFT JOIN suppliers s
ON p.category = s.category
WHERE s.supplier_id IS NULL;

-- Find suppliers without matching products
SELECT s.supplier_name, s.category
FROM products p
RIGHT JOIN suppliers s
ON p.category = s.category
WHERE p.product_id IS NULL;

-- JOIN with filtering
SELECT p.product_name, p.price, s.supplier_name
FROM products p
INNER JOIN suppliers s
ON p.category = s.category
WHERE p.price > 1000;

-- JOIN with aggregation
SELECT s.supplier_name, COUNT(p.product_id) AS total_products
FROM suppliers s
LEFT JOIN products p
ON s.category = p.category
GROUP BY s.supplier_id, s.supplier_name;

-- CROSS JOIN: Every possible combination
SELECT p.product_name, s.supplier_name
FROM products p
CROSS JOIN suppliers s;

-- SELF JOIN: Compare products in the same category
SELECT p1.product_name AS product_1,
       p2.product_name AS product_2,
       p1.category
FROM products p1
JOIN products p2
ON p1.category = p2.category
AND p1.product_id < p2.product_id;
