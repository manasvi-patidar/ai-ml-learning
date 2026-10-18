CREATE DATABASE prime;

USE prime;

CREATE TABLE accounts (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  balance DECIMAL(10, 2)
);

INSERT INTO accounts (name, balance) VALUES
("Alice", 500.00),
("Bella", 300.00),
("Casey", 1000.00);

SELECT * FROM accounts;

-- Transactions
START TRANSACTION;

UPDATE accounts SET balance = balance - 50 WHERE id = 1;
UPDATE accounts SET balance = balance + 50 WHERE id = 2;

COMMIT;

SELECT * FROM accounts;

-- Rollback
START TRANSACTION;

UPDATE accounts SET balance = balance - 100 WHERE id = 1;
UPDATE accounts SET balance = balance + 100 WHERE id = 3;

SELECT * FROM accounts;

ROLLBACK;

SELECT * FROM accounts;

-- Savepoint
START TRANSACTION;

UPDATE accounts SET balance = balance + 1000 WHERE id = 1;
SAVEPOINT after_wallet_topop;

UPDATE accounts SET balance = balance + 10 WHERE id = 1;

SELECT * FROM accounts;

ROLLBACK TO after_wallet_topop;

SELECT * FROM accounts;

COMMIT;