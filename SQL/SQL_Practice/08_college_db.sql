CREATE DATABASE IF NOT EXISTS college;

USE college;

CREATE TABLE teacher (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    salary INT 
);

INSERT INTO teacher
(id, name, subject, salary)
VALUES
(23, "Kendell", "maths", 50000),
(47, "Bella", "english", 60000),
(18, "Gigi", "chemistry", 45000),
(11, "Hailey", "physics", 75000);

SELECT * FROM teacher;

SELECT * FROM teacher
WHERE salary > 55000;

ALTER TABLE teacher
CHANGE COLUMN salary ctc INT;

SET SQL_SAFE_UPDATES = 0;

UPDATE teacher
SET ctc = ctc + ctc * 0.25;

ALTER TABLE teacher
ADD COLUMN city VARCHAR(50) DEFAULT "Indore";

ALTER TABLE teacher
DROP COLUMN ctc;

SELECT * FROM teacher;

CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(30),
    city VARCHAR(30),
    marks INT 
);

INSERT INTO student
(rollno, name, city, marks)
VALUES
(110, "Anok", "Indore", 76),
(108, "Naomi", "Mumbai", 65),
(124, "Grace", "Noida", 94),
(112, "Liza", "Banglore", 88);

SELECT * FROM student;

SELECT * FROM student
WHERE marks > 75;

SELECT DISTINCT city
FROM student;

SELECT city, max(marks)
FROM student
GROUP BY city;

SELECT AVG(marks)
FROM student;

ALTER TABLE student
ADD COLUMN grade VARCHAR(2);

UPDATE student
SET grade = "O" 
WHERE marks >= 88;

UPDATE student
SET grade = "A" 
WHERE marks >= 70 AND marks < 80;

UPDATE student
SET grade = "B" 
WHERE marks >= 60 AND marks < 70;

SET SQL_SAFE_UPDATES = 1;
