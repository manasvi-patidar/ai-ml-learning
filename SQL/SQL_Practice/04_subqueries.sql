USE ecommerce;

SELECT * FROM customers;
SELECT * FROM orders;

-- Sub-queries

-- with WHERE
SELECT *
FROM orders
WHERE amount > (
  SELECT AVG(amount)
  FROM orders
);

-- with SELECT
SELECT name, 
	(
		SELECT COUNT(*)
        FROM orders o
        WHERE o.customer_id = c.customer_id
	) AS order_count
FROM customers c;

-- with FROM
SELECT 
	summary.customer_id,
    summary.avg_amount
FROM 
	(
		SELECT 
			customer_id,
            AVG(amount) AS avg_amount
		FROM orders
        GROUP BY customer_id
	) AS summary;
