USE retail_analysis;

-- TRANSACTIONS

-- Start a transaction
START TRANSACTION;

-- Update product stock
UPDATE products
SET stock = stock - 1
WHERE product_id = 1;

-- Save changes permanently
COMMIT;


-- ROLLBACK: Undo uncommitted changes
START TRANSACTION;

UPDATE products
SET price = price + 100
WHERE product_id = 2;

ROLLBACK;


-- SAVEPOINT: Roll back part of a transaction
START TRANSACTION;

UPDATE products
SET stock = stock - 1
WHERE product_id = 3;

SAVEPOINT stock_updated;

UPDATE products
SET price = price + 500
WHERE product_id = 4;

ROLLBACK TO SAVEPOINT stock_updated;

COMMIT;


-- STORED PROCEDURES

-- Create a procedure to display all products
DROP PROCEDURE IF EXISTS GetAllProducts;

DELIMITER //

CREATE PROCEDURE GetAllProducts()
BEGIN
    SELECT * FROM products;
END //

DELIMITER ;

-- Execute the procedure
CALL GetAllProducts();


-- Procedure with an input parameter
DROP PROCEDURE IF EXISTS GetProductsByCategory;

DELIMITER //

CREATE PROCEDURE GetProductsByCategory(IN category_name VARCHAR(30))
BEGIN
    SELECT product_name, price, stock
    FROM products
    WHERE category = category_name;
END //

DELIMITER ;

-- Call with an argument
CALL GetProductsByCategory('Electronics');


-- Remove a procedure
DROP PROCEDURE IF EXISTS GetAllProducts;
DROP PROCEDURE IF EXISTS GetProductsByCategory;
