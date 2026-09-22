SELECT * FROM employee2;


-- 1) Retrieve employees whose salary is between 40,000 and 60,000.

SELECT first_name, last_name, salary 
FROM employee2
WHERE salary BETWEEN 40000 AND 60000;


-- 2) Find employees whose email addresses end with gmail.com 

SELECT first_name, last_name, email 
FROM employee2
WHERE email LIKE '%@gmail.com';


SELECT first_name FROM employee2
WHERE first_name LIKE '%j%';


-- 3) Retrieve employees who belong to either the 'Finance' or 'Marketing' departments

SELECT first_name, last_name, department
FROM employee2
WHERE department IN ('Finance','Marketing', 'IT');
