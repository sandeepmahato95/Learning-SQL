select *
from customers
order by first_name; -- sorting in Ascending order (by default)

select *
from customers
ORDER BY last_name DESC; -- sorting in Descending order by using 'DESC' keyword

select first_name, last_name, state, 25+5 AS `marks`
from customers
ORDER BY marks, state;

-- select all items with order_id = 2 and sort them by 'total price' in descending order
select *, (quantity * unit_price) AS 'total price'
from order_items
where order_id = 2
ORDER BY 'total price' DESC;