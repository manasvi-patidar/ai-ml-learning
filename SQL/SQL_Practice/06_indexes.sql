CREATE DATABASE bank;

USE bank;

CREATE TABLE accounts (
	account_id INT PRIMARY KEY,
    name VARCHAR(50),
    balance DECIMAL(10, 2),
    branch VARCHAR(50)
);

INSERT INTO accounts VALUES
(1, "Alice", 500.00, "Indore"),
(2, "Bob", 300.00, "Delhi"),
(3, "Casey", 700.00, "Mumbai"),
(4, "David", 1000.00, "Noice");

SELECT * FROM accounts;

CREATE INDEX idx_branch ON accounts(branch);

SHOW INDEX FROM accounts;

SELECT *
FROM accounts
WHERE branch = "Indore";

-- Composite Index
CREATE INDEX idx2 ON accounts(branch, balance);

SHOW INDEX FROM accounts;

-- DROP INDEX idx2 ON accounts;