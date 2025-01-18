-- Creating a Copy of a TABLE
-- In this query, all TABLE values will be copied but not the Column attributes (like Primary key, Auto Increment etc.)

USE sql_store;
CREATE TABLE old_orders AS
SELECT * 
FROM orders
WHERE order_date < '2018-01-01';

SELECT * FROM old_orders;

# order_id	customer_id	order_date	status	comments	shipped_date	shipper_id
3	8	2017-12-01	1			
4	2	2017-01-22	1			
5	5	2017-08-25	2		2017-08-26	3
9	10	2017-07-05	2	Nulla mollis molestie lorem. Quisque ut erat.	2017-07-06	1


TRUNCATE TABLE old_orders; -- It removes all values except the TABLE Structure.

SELECT * FROM old_orders;

# order_id, customer_id, order_date, status, comments, shipped_date, shipper_id

-- No Values in the table, only column names or just the structure of the Table exists.

INSERT INTO old_orders
SELECT * 
FROM orders
WHERE order_date < '2018-01-01';

SELECT * FROM old_orders;

3	8	2017-12-01	1			
4	2	2017-01-22	1			
5	5	2017-08-25	2		2017-08-26	3
9	10	2017-07-05	2	Nulla mollis molestie lorem. Quisque ut erat.	2017-07-06	1





