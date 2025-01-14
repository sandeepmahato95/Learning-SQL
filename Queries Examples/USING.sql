USE sql_invoicing;

-- USING clause -----------

SELECT p.date, c.name AS client, p.amount, pm.name AS 'payment mode'
from payments p
JOIN clients c
     USING(client_id)  -- both the tables have same column name `client_id`
JOIN payment_methods pm
     ON p.payment_method = pm.payment_method_id; -- can not use USING as they have different names
     
# date	client	amount	payment mode
2019-02-12	Topiclounge	8.18	Credit Card
2019-01-03	Vinte	74.55	Credit Card
2019-01-11	Yadel	0.03	Credit Card
2019-01-26	Topiclounge	87.44	Credit Card
2019-01-15	Yadel	80.31	Credit Card
2019-01-15	Yadel	68.10	Credit Card
2019-01-08	Topiclounge	32.77	Credit Card
2019-01-08	Topiclounge	10.00	Cash

-- USING clause in Compound Join Condition -----------

USE sql_store;

SELECT *
FROM order_items oi
JOIN order_item_notes oin
     -- ON oi.order_id = oin.order_id 
--      AND oi.product_id = oin.product_id
USING(order_id, product_id)
     
	

