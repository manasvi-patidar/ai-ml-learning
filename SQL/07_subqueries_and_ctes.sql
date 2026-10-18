USE retail_analysis;

-- Scalar subquery: Products priced above average
SELECT product_name, price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);

-- Subquery with MAX
SELECT product_name, price
FROM products
WHERE price = (
    SELECT MAX(price)
    FROM products
);

-- Multi-row subquery with IN
SELECT product_name, category
FROM products
WHERE category IN (
    SELECT category
    FROM products
    GROUP BY category
    HAVING COUNT(*) > 1
);

-- NOT IN: Exclude selected categories
SELECT product_name, category
FROM products
WHERE category NOT IN (
    SELECT category
    FROM suppliers
);

-- Correlated subquery: Above category average
SELECT p1.product_name, p1.category, p1.price
FROM products p1
WHERE p1.price > (
    SELECT AVG(p2.price)
    FROM products p2
    WHERE p2.category = p1.category
);

-- EXISTS: Products with a matching supplier
SELECT p.product_name, p.category
FROM products p
WHERE EXISTS (
    SELECT 1
    FROM suppliers s
    WHERE s.category = p.category
);

-- NOT EXISTS: Products without a matching supplier
SELECT p.product_name, p.category
FROM products p
WHERE NOT EXISTS (
    SELECT 1
    FROM suppliers s
    WHERE s.category = p.category
);

-- CTE: Calculate the average price
WITH price_summary AS (
    SELECT AVG(price) AS avg_price
    FROM products
)
SELECT p.product_name, p.price
FROM products p
CROSS JOIN price_summary ps
WHERE p.price > ps.avg_price;

-- CTE: Category-wise inventory value
WITH category_stock AS (
    SELECT category, SUM(price * stock) AS inventory_value
    FROM products
    GROUP BY category
)
SELECT category, inventory_value
FROM category_stock
WHERE inventory_value > 10000;

-- Multiple CTEs
WITH category_summary AS (
    SELECT category, AVG(price) AS avg_price
    FROM products
    GROUP BY category
),
expensive_categories AS (
    SELECT category, avg_price
    FROM category_summary
    WHERE avg_price > 1000
)
SELECT * FROM expensive_categories;
