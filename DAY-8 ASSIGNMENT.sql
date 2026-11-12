USE DA8;
drop table products;
CREATE TABLE Products (
 id INT,
 name VARCHAR(100),
 price DECIMAL(10,2),
 qty INT
 );


INSERT INTO Products VALUES
 (1, 'Pen', 10.00, 100),
 (2, 'Notebook', 25.00, 50),
 (3, 'Pencil', 5.00, 200),
 (4, 'Eraser', 3.00, 300),
 (5, 'Marker', 15.00, 80),
 (6, 'Scale', 20.00, 150),
 (7, 'Sharpener', 8.00, 120),
 (8, 'Geometry Box', 120.00, 40),
 (9, 'Sketch Pen', 60.00, 75),
 (10, 'Crayons', 90.00, 55);
 SELECT*FROM PRODUCTS;
SELECT NAME,QTY,PRICE,PRICE+20 AS UPDATED_PRICE FROM PRODUCTS;
SELECT NAME,PRICE,QTY,QTY/2 AS HALF_QTY FROM PRODUCTS;
SELECT NAME,PRICE,QTY,QTY*2 AS DOUBLE_QTY FROM PRODUCTS;
SELECT NAME,QTY,PRICE,PRICE/5 AS PRICE_PER_PERSON FROM PRODUCTS;
SELECT*FROM PRODUCTS WHERE PRICE%2=0;
SELECT*FROM PRODUCTS WHERE QTY%5=0;
SELECT NAME,QTY,PRICE,PRICE-(PRICE*10/100) AS DISCOUNTED_PRICE FROM PRODUCTS;
SELECT NAME,PRICE,QTY, QTY-(QTY / 2) AS REMAINING_QTY FROM PRODUCTS;
SET SQL_SAFE_UPDATES=0;
UPDATE PRODUCTS SET QTY=QTY+50 WHERE NAME='PEN';
UPDATE Products SET qty = qty - 25 WHERE name = 'Pencil';
UPDATE Products SET price = price * 1.10 WHERE name = 'Scale';
UPDATE Products SET qty = qty * 2 WHERE name = 'Sharpener';
UPDATE Products SET price = price - 15 WHERE name = 'Crayons';
DELETE FROM Products WHERE price < 10;
DELETE FROM Products WHERE name = 'Marker';
DELETE FROM Products WHERE qty > 300;
DELETE FROM Products WHERE price > 100;
drop table studentScores;
CREATE TABLE StudentScores (
 id INT,
 name VARCHAR(100),
 subject VARCHAR(50),
 marks INT
 );

INSERT INTO StudentScores VALUES
 (1, 'Alice', 'Math', 95),
 (2, 'Bob', 'Math', 76),
 (3, 'Charlie', 'Math', 59),
 (4, 'Diana', 'Math', 88),
 (5, 'Eve', 'Math', 40),
 (6, 'Frank', 'Math', 95),
 (7, 'Grace', 'Science', 67),
 (8, 'Henry', 'Science', 82),
 (9, 'Ivy', 'English', 91),
 (10, 'Jack', 'English', 55),
 (11, 'Kevin', 'Math', 73),
 (12, 'Lily', 'Science', 48),
 (13, 'Mia', 'English', 100),
 (14, 'Noah', 'Math', 64),
 (15, 'Olivia', 'Science', 79);
SELECT*FROM STUDENTSCORES;
SELECT * FROM StudentScores WHERE marks <= 60;
SELECT * FROM StudentScores WHERE marks > 70;
SELECT * FROM StudentScores WHERE marks <= 75;
SELECT * FROM StudentScores WHERE marks = 100;
SELECT * FROM StudentScores WHERE marks != 40;
SELECT * FROM StudentScores WHERE marks >= 90;
SELECT * FROM StudentScores WHERE marks < 65;

SET SQL_SAFE_UPDATES=0;
UPDATE StudentScores SET marks = 100 WHERE marks = 95;
UPDATE StudentScores SET marks = marks + 15 WHERE marks < 60;
UPDATE StudentScores SET marks = marks + 5 WHERE marks > 75;
UPDATE StudentScores SET marks = marks - 3 WHERE marks > 95;
UPDATE StudentScores SET marks = 75 WHERE marks < 50;
UPDATE StudentScores SET marks = marks + 8 WHERE marks = 64;
UPDATE StudentScores SET marks = marks - 5 WHERE marks = 100;

DELETE FROM StudentScores WHERE marks = 76;
DELETE FROM StudentScores WHERE marks = 100;
DELETE FROM StudentScores WHERE marks < 65;
DELETE FROM StudentScores WHERE marks >= 90;
DELETE FROM StudentScores WHERE marks = 73;
DELETE FROM StudentScores WHERE marks = 48;
DELETE FROM StudentScores WHERE marks >= 70 AND marks <= 80;
drop table employees;
CREATE TABLE Employees (
 id INT,
 name VARCHAR(100),
 department VARCHAR(100),
 salary INT,
 isactive BOOLEAN
 );

INSERT INTO Employees VALUES
 (1, 'Rahul Sharma', 'IT', 50000, TRUE),
 (2, 'Priya Reddy', 'HR', 30000, TRUE),
 (3, 'Amit Kumar', 'Finance', 45000, FALSE),
 (4, 'Sneha Patel', 'IT', 35000, TRUE),
 (5, 'Vikram Singh', 'Finance', 28000, TRUE),
 (6, 'Anjali Mehta', 'HR', 32000, FALSE),
 (7, 'Kiran Rao', 'IT', 60000, TRUE),
 (8, 'Pooja Verma', 'Marketing', 27000, TRUE),
 (9, 'Ramesh Naidu', 'Sales', 38000, TRUE),
 (10, 'Deepika Joshi', 'Finance', 52000, TRUE),
 (11, 'Suresh Babu', 'Marketing', 29000, FALSE),
 (12, 'Neha Kapoor', 'HR', 41000, TRUE),
 (13, 'Arjun Reddy', 'IT', 55000, FALSE),
 (14, 'Lakshmi Devi', 'Sales', 33000, TRUE),
 (15, 'Nikhil Jain', 'IT', 47000, TRUE);

DROP TABLE EMPLOYEES;
SELECT*FROM EMPLOYEES;
SET SQL_SAFE_UPDATES=0;

UPDATE Employees SET isactive = TRUE WHERE isactive = FALSE AND department = 'Marketing';
UPDATE Employees SET salary = salary - 2000 WHERE isactive = FALSE;
UPDATE Employees SET salary = salary * 1.15 WHERE isactive = TRUE AND salary > 50000;
UPDATE Employees SET isactive = TRUE WHERE department = 'Finance';
UPDATE Employees SET salary = salary + 1000 WHERE department = 'IT' OR department = 'Sales';

DELETE FROM Employees WHERE department = 'Sales' OR isactive = FALSE;
DELETE FROM Employees WHERE isactive = TRUE AND salary > 55000;
DELETE FROM Employees WHERE department NOT IN ('IT', 'HR');
DELETE FROM Employees WHERE salary < 30000 AND isactive = FALSE;
DELETE FROM Employees WHERE department = 'Marketing' OR salary > 50000;