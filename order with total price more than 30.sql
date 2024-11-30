-- select product_id, order_id, quantity * unit_price as 'total price'

select * , quantity * unit_price as 'total price'
from order_items
where order_id = 6 and quantity * unit_price > 30