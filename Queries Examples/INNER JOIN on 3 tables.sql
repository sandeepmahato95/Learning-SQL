# Inner Joined 3 tables in the same database

USE sql_store;

SELECT 
      o.order_id, 
      o.order_date, 
      c.first_name, 
      c.last_name, 
      os.name AS status
      
FROM customers c

JOIN orders o
    ON c.customer_id = o.customer_id
    
JOIN order_statuses os
    ON os.order_status_id = o.status
    
ORDER BY order_id;

/*
Tips:
1. Write down SELECT coloumns name to be displayed from the respective tables and use Alias for easy to understand the result 
2. Always join tables with Column having similar values
*/
