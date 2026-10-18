CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(50),
  city VARCHAR(50)
);

INSERT INTO customers VALUES
(1, "Ava", "Indore"),
(2, "Bella", "Delhi"),
(3, "Casey", "Bangalore"),
(4, "Dyna", "Mumbai");

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  amount INT 
);

INSERT INTO orders VALUES
(101, 1, 500),
(102, 1, 900),
(103, 2, 300),
(104, 5, 700);

SELECT * FROM customers;

SELECT * FROM orders;

-- inner join
SELECT c.customer_id, o.order_id, c.name 
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- left join
SELECT * 
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

-- right join
SELECT * 
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;

-- outer join
SELECT * 
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
UNION
SELECT * 
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;

-- cross join
SELECT *
FROM customers
CROSS JOIN orders;

-- self join
SELECT *
FROM customers as A
JOIN customers as B
ON A.customer_id = B.customer_id;

-- Left Exclusive Join
SELECT *
FROM customers as A
LEFT JOIN orders as B
ON A.customer_id = B.customer_id
WHERE B.customer_id IS NULL;

-- Right Exclusive Join
SELECT *
FROM customers as A
RIGHT JOIN orders as B
ON A.customer_id = B.customer_id
WHERE A.customer_id IS NULL;
