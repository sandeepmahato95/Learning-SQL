USE sql_store; -- sql_store database is currently being used

SELECT order_id, p.product_id, quantity, o.unit_price
FROM order_items o
JOIN sql_inventory.products p -- to join product table from 'sql_inventory' database 
-- (Always prefix the table with database name if it's not from the currently used database)
ON o.product_id = p.product_id