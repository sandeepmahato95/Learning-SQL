select *
from products
where quantity_in_stock in (49,38,72)

-- Using "IN" is essentially the same as writing out several "OR" conditions for the same column, 
but it is considered cleaner syntax, 
where quantity_in_stock = 49 OR quantity_in_stock = 38 OR quantity_in_stock = 72
