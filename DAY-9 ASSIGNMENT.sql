
USE da8;
SHOW TABLES;
DROP TABLE ORDERS;
CREATE TABLE Orders (
 id INT,
 customer_name VARCHAR(100),
 order_date DATE,
 total_amount DECIMAL(10,2)
 );


INSERT INTO Orders VALUES
 (1, 'Alice', '2024-03-01', 1500.00),
 (2, 'Bob', '2024-03-05', 450.00),
 (3, 'Charlie', '2024-03-10', 2500.00),
 (4, 'Diana', '2024-03-15', 800.00),
 (5, 'Eve', '2024-03-20', 1200.00),
 (6, 'Frank', '2024-03-25', 3000.00),
 (7, 'Grace', '2024-04-02', 1800.00),
 (8, 'Henry', '2024-04-08', 950.00),
 (9, 'Ivy', '2024-04-12', 2750.00),
 (10, 'Jack', '2024-04-18', 650.00),
 (11, 'Kevin', '2024-04-22', 4200.00),
 (12, 'Lily', '2024-05-01', 1350.00),
 (13, 'Michael', '2024-05-08', 5000.00),
 (14, 'Nancy', '2024-05-15', 2250.00),
 (15, 'Oliver', '2024-05-25', 900.00);
 SELECT*FROM ORDERS;

 -- BETWEEN Operator 
 -- SELECT QUERIES
SELECT customer_name FROM Orders WHERE total_amount BETWEEN 2000 AND 5000;
SELECT * FROM Orders WHERE order_date BETWEEN '2024-03-15' AND '2024-04-15';
SELECT * FROM Orders WHERE total_amount BETWEEN 800 AND 1800;
SELECT * FROM Orders WHERE order_date BETWEEN '2024-04-10' AND '2024-05-10';
SELECT * FROM Orders WHERE total_amount BETWEEN 2500 AND 5000;

-- UPDATE QUERIES
SET SQL_SAFE_UPDATES=0;

UPDATE Orders SET total_amount = total_amount - 100 WHERE order_date BETWEEN '2024-03-15' AND '2024-03-31';
UPDATE Orders SET total_amount = total_amount + 750 WHERE total_amount BETWEEN 800 AND 1500;
UPDATE Orders SET total_amount = total_amount - 500 WHERE total_amount BETWEEN 3000 AND 5000;
UPDATE Orders SET total_amount = total_amount + 250 WHERE order_date BETWEEN '2024-04-20' AND '2024-05-10';
UPDATE Orders SET total_amount = total_amount + 100 WHERE order_date BETWEEN '2024-03-01' AND '2024-05-31';

-- DELETE QUERIES
DELETE FROM Orders WHERE total_amount BETWEEN 1000 AND 2000;
DELETE FROM Orders WHERE order_date BETWEEN '2024-03-01' AND '2024-03-05';
DELETE FROM Orders WHERE order_date BETWEEN '2024-04-18' AND '2024-05-08';
DELETE FROM Orders WHERE total_amount BETWEEN 1800 AND 3000;
DELETE FROM Orders WHERE order_date BETWEEN '2024-03-25' AND '2024-04-08';

-- IN OPERATOR

-- SELECT QUERIES
SELECT * FROM Emp WHERE dept IN ('Sales', 'Marketing', 'Finance');
SELECT * FROM Emp WHERE dept IN ('Admin');
SELECT * FROM Emp WHERE salary IN (39000, 43000, 52000);
SELECT * FROM Emp WHERE dept IN ('IT', 'Admin', 'Sales');
SELECT * FROM Emp WHERE salary IN (40000, 45000, 50000);

-- UPDATE QUERIES
UPDATE Emp SET salary = salary + 2500 WHERE salary IN (45000, 48000, 52000);
UPDATE Emp SET salary = salary + 4000 WHERE dept IN ('Admin');
UPDATE Emp SET salary = salary + 3500 WHERE dept IN ('Marketing', 'Finance');
UPDATE Emp SET salary = salary + 500 WHERE salary IN (40000, 41000, 42000);
UPDATE Emp SET salary = salary + 2000 WHERE dept IN ('IT', 'Sales', 'Admin');

-- DELETE QUERIES
DELETE FROM Emp WHERE salary IN (45000, 50000, 55000);
DELETE FROM Emp WHERE dept IN ('Marketing', 'HR');
DELETE FROM Emp WHERE dept IN ('Admin');
DELETE FROM Emp WHERE salary IN (37000, 38000, 41000);
DELETE FROM Emp WHERE dept IN ('IT', 'Finance', 'Sales');

-- CASE OPERATOR

SELECT emp_name, department, salary,
CASE 
 WHEN department = 'IT' THEN salary * 0.20
 WHEN department = 'Finance' THEN salary * 0.15
 WHEN department = 'HR' THEN salary * 0.10
 ELSE salary * 0.05
END AS bonus_amount
FROM employees;

SELECT emp_name, age,
CASE 
 WHEN age >= 18 THEN 'Eligible'
 ELSE 'Not Eligible'
END AS voting_status
FROM employees;

SELECT emp_name, salary,
CASE 
 WHEN salary >= 80000 THEN 'Grade A'
 WHEN salary >= 60000 THEN 'Grade B'
 WHEN salary >= 50000 THEN 'Grade C'
 ELSE 'Grade D'
END AS grade
FROM employees;

SELECT * FROM employees
ORDER BY CASE WHEN department = 'IT' THEN 0 ELSE 1 END;

UPDATE employees SET salary = salary + 
CASE 
 WHEN experience >= 10 THEN 10000
 WHEN experience >= 5 THEN 5000
 ELSE 2000
END;

SELECT SUM(CASE WHEN department = 'IT' THEN salary ELSE 0 END) AS total_it_salary FROM employees;