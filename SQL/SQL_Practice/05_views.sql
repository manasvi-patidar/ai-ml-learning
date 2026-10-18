USE ecommerce;

SELECT * FROM customers;
SELECT * FROM orders;

-- view
CREATE VIEW view1 AS
SELECT customer_id, name FROM customers;

SELECT * FROM view1;

SELECT * FROM view1 WHERE name = "Casey";

CREATE VIEW view2 AS
SELECT c.customer_id, c.name, o.order_id
FROM customers c 
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT * FROM view2;

-- DROP VIEW view1;