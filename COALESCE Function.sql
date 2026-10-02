SELECT * FROM products;

ALTER TABLE products 
ADD COLUMN discount_price NUMERIC(10,2);a

UPDATE products
SET discount_price = price*0.9
WHERE product_name NOT IN('Laptop','Desk');

SELECT product_name, price, discount_price 
FROM products;


SELECT product_name, 
		COALESCE(discount_price, price) AS Final_price
FROM products;
