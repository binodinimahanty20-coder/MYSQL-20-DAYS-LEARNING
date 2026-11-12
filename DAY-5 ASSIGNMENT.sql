USE DA8;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    job_role VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(50)
);

INSERT INTO employees
(emp_id,emp_name,department,job_role,salary,joining_date,city)
VALUES
(101,'Ravi kumar','IT','Developer',45000,'2023-01-15','Vizag'),
(102,'Priya Sharma','HR','HR Manager',55000,'2022-06-20','Hyderabad'),
(103,'Kiran Reddy', 'IT', 'Tester', 40000, '2023-03-10', 'Vizag'),
(104, 'Sneha Rao', 'Finance', 'Accountant', 48000, '2021-11-25', 'Chennai'),
(105, 'Arun Kumar', 'IT', 'Developer', 60000, '2020-08-18', 'Bangalore'),
(106, 'Divya Reddy', 'HR', 'Recruiter', 35000, '2024-01-05', 'Vizag'),
(107, 'Suresh Babu', 'Sales', 'Executive', 42000, '2022-09-12', 'Hyderabad'),
(108, 'Anjali Devi', 'IT', 'Developer', 70000, '2019-05-30', 'Chennai'),
(109, 'Mahesh Kumar', 'Sales', 'Manager', 65000, '2020-02-14', 'Bangalore'),
(110, 'Lakshmi Rao', 'Finance', 'Analyst', 52000, '2023-07-22', 'Hyderabad');

SELECT * FROM employees;
 SET SQL_SAFE_UPDATES=0;
UPDATE employees
SET salary = 50000
WHERE emp_name = 'Ravi Kumar';
UPDATE employees
SET salary = salary * 1.10
WHERE department = 'IT';

UPDATE employees
SET city = 'Vizag'
WHERE emp_name = 'Priya Sharma';

UPDATE employees
SET job_role = 'Senior Tester'
WHERE emp_name = 'Kiran Reddy';

UPDATE employees
SET salary = salary + 5000
WHERE department = 'HR';


UPDATE employees
SET city = 'Hyderabad'
WHERE city = 'Vizag';

UPDATE employees
SET department = 'Development'
WHERE emp_name = 'Arun Kumar';
UPDATE employees
SET salary = salary * 1.15
WHERE salary < 45000;

  UPDATE employees
SET job_role = 'Senior Developer'
WHERE emp_name = 'Anjali Devi';
 UPDATE employees
SET city = 'Bangalore'
WHERE department = 'Finance';
 

delete from employees where emp_id=106;

delete from employees where department='finance';

delete from employees where salary<40000;

delete from employees where city='vizag';
 delete from employees where emp_name='suresh Babu';
 
delete from employees where emp_name='suresh Babu';

delete from employees where joining_date<'2020-01-01';
  delete from employees where job_role ='recuiters';
delete from employees where department='sales' and salary <50000;
DELETE FROM employees WHERE salary = (SELECT MIN(salary)
    FROM employees
);

delete from employees where city='chennai';


SELECT * 
FROM employees;
select* from employees where department='It';

select *from employees where salary>50000;
select emp_name,salary from employees ;
select* from employees where city='vizag';

SELECT * from employees
WHERE joining_date > '2022-01-01';

select* from employees where salary between'40000' and'60000';
select* from employees where emp_name like'%kumar';


SELECT * 
FROM employees
ORDER BY salary DESC;

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1;





 