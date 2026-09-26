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

--LEFT ANTI JOIN
--Get all customers who haven'y placed any order

SELECT * FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL;

--RIGHT ANTI JOIN
--Get all orders where we don't have a matching customers

SELECT * FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL;

--FULL ANTI JOIN
--Find customers without orders and orders without customers

SELECT * FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL;

--CROSS JOIN
--Generate all possible combinations of customers and orders

SELECT * FROM customers
CROSS JOIN orders;
