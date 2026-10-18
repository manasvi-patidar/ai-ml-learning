SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS instagram;

USE instagram;

CREATE TABLE user (
	id INT,
    age INT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT,
    CONSTRAINT age_check CHECK (age >= 13),
    PRIMARY KEY (id) 
);

CREATE TABLE post (
	id INT PRIMARY KEY,
    content VARCHAR(100),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user(id)
);

INSERT INTO user
(id, age, name, email, followers, following)
VALUES
(1, 14, "Alice", "alice@yahoo.in", 125, 160),
(2, 15, "Bella", "bella@gmail.com", 200, 250),
(3, 16, "Casey", "casey@yahoo.in", 300, 80),
(4, 17, "David", "david@gmail.com", 480, 240),
(5, 14, "Eve", "eve@gmail.com", 560, 198),
(6, 16, "Farah", "farah@yahoo.in", 800, 140);

-- Select Command
SELECT * FROM user;

SELECT id, name, email FROM user;

SELECT DISTINCT age FROM user;

-- where clause
SELECT name, followers FROM user
WHERE followers >= 200;

SELECT name, age FROM user
WHERE age + 1 = 18;

SELECT name, age, followers FROM user
WHERE age > 15 AND followers > 200;

SELECT name, age, followers FROM user
WHERE age > 15 OR followers > 200;

SELECT name, age FROM user
WHERE age BETWEEN 15 AND 17;

SELECT name, followers, email FROM user
WHERE email IN ("bella@gmail.com", "casey@yahoo.in", "donald@gmail.com");

SELECT name, age, email FROM user
WHERE age IN (14, 16);

SELECT name, age, email FROM user
WHERE age NOT IN (14, 16);

-- limit clause
SELECT name, age, email FROM user
WHERE age > 14
LIMIT 2;

-- order by clause
SELECT name, age, followers FROM user
ORDER BY followers ASC;

SELECT name, age, followers FROM user
ORDER BY followers DESC;

-- aggregate functions
SELECT max(followers) FROM user;

SELECT count(age) FROM user
WHERE age = 16;

SELECT avg(age) FROM user;

SELECT sum(followers) FROM user;

-- group by clause
SELECT age, count(id) FROM user
GROUP BY age;

SELECT age, max(followers) FROM user
GROUP BY age;

-- having clause
SELECT age, max(followers) FROM user
GROUP BY age
HAVING max(followers) > 200;

UPDATE user
SET followers = 600
WHERE age = 16;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM user;

DELETE FROM user
WHERE id = 5;

SELECT * FROM user;

ALTER TABLE user
ADD COLUMN city VARCHAR(25) DEFAULT "Indore";

ALTER TABLE user
DROP COLUMN age;

ALTER TABLE user
CHANGE COLUMN followers subscribers INT DEFAULT 0;

ALTER TABLE user
MODIFY subscribers INT DEFAULT 29;

INSERT INTO user
(id, name, email, following)
VALUES
(7, "Gigi", "gigi@gmail.com", 120);

SELECT * FROM user;

-- TRUNCATE TABLE user;

-- DROP TABLE user;