CREATE TABLE customers (
    id INT PRIMARY KEY,
    first_name VARCHAR(100),
    area VARCHAR(50)
);

INSERT INTO customers (id, first_name, area) VALUES
(1, 'Aarav Sharma', 'Dilshuknagar'),
(2, 'Ishita Verma', 'Malakpet'),
(3, 'Kabir Patel', 'Abids'),
(4, 'Ananya Desai', 'Himayath Nagar'),
(5, 'Rahul Gupta', 'Nampally');

SELECT * FROM customers;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date date,
	sales INT
);

INSERT INTO orders (order_id, customer_id, order_date,sales) VALUES
(1001, 1, '11/1/2026',35),
(1002, 2, '12-02-2026',15), 
(1003, 3, '11-03-2026',20),
(1004, 6, '8-06-2026',10);

SELECT * FROM orders;

update customers set first_name=' Ishita ' where id=2;

-- CONCAT
-- show a list of customers first name together with their area in one column

SELECT first_name,area, 
CONCAT(first_name,' - ',area) AS name_area
FROM customers;

--LOWER & UPPER 
--Transform the customer's first name to lower case and upper case

SELECT first_name,
LOWER(first_name) AS low_name,
UPPER(first_name) AS up_name
FROM customers;

--TRIM
--Find customer's whose first_name contains leading or trainling spaces

SELECT first_name,
LENGTH(first_name) len_name,
LENGTH(TRIM(first_name)) len_trim_name,
LENGTH(first_name) -  LENGTH(TRIM(first_name)) flag
FROM customers
WHERE LENGTH(first_name) !=  LENGTH(TRIM(first_name));

--REPLACE
--Remove '-' from a phone number

SELECT '123-456-7890' AS phone,
REPLACE('123-456-7890','-','') AS clean_phone;

--Replace file extence from txt to csv

SELECT 'report.txt' AS old_filename,
REPLACE('report.txt','txt','csv') AS new_filename;

--LEFT & RIGHT
--Retrive the first and last two characters of each first name

SELECT first_name,
LEFT(TRIM(first_name),2) AS first_2_char,
RIGHT(TRIM(first_name),2) AS last_2_char
FROM customers;

--SUBSTRING
--Retrive a list of customers first names removing the first character

SELECT first_name,
SUBSTRING(TRIM(first_name),2,LENGTH(first_name)) AS sub_name
FROM customers;
