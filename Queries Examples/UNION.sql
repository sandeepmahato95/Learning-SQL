-- **UNION** combines rows or results from different Tables and Queries 

-- Filter Customers into 3 catagories as 'Gold' (> 3000 points), 'Silver' (2000-3000 points) and 'Bronze' (<2000 points)

USE sql_store;

(SELECT customer_id, first_name, points, 'Gold' as type
FROM customers
WHERE points >3000) # --> Query 1

UNION 

(SELECT customer_id, first_name, points, 'Silver' as type
FROM customers
WHERE points BETWEEN 2000 AND 3000) # --> Query 2

UNION

(SELECT customer_id, first_name, points, 'Bronze' as type
FROM customers
WHERE points < 2000) # --> Query 3

ORDER BY customer_id

-----------------XXXXXXX---------------------------
# customer_id	first_name	points	type
1	Babara	2273	Silver
2	Ines	947	Bronze
3	Freddi	2967	Silver
4	Ambur	457	Bronze
5	Clemmie	3675	Gold
6	Elka	3073	Gold
7	Ilene	1672	Bronze
8	Thacher	205	Bronze
9	Romola	1486	Bronze
10	Levy	796	Bronze
