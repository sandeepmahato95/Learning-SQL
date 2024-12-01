# select product_id, order_id, quantity * unit_price as 'total price'

select * , quantity * unit_price as 'total price'
from order_items
where order_id = 6 and quantity * unit_price > 30;

/*
The issue with the SQL query is that you're trying to use the alias 'total price' in the WHERE clause, 
which is not allowed directly in SQL. In SQL, the WHERE clause is processed before the SELECT clause, 
so you cannot refer to the alias total price in the WHERE clause.
*/

SELECT *
FROM (
    SELECT *, quantity * unit_price AS 'total price'
    FROM order_items
    WHERE order_id = 6
) AS subquery
WHERE 'total price' > 30; -- No output displayed with single quote

SELECT *
FROM (
    SELECT *, quantity * unit_price AS `total price`
    FROM order_items
    WHERE order_id = 6
) AS subquery
WHERE `total price` > 30; -- output displayed with backticks

