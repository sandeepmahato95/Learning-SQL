-- Get top 3 Loyal Customers 

select * 
from customers
order by points desc 
limit 3;  -- top 3 customers will be displayed only

select * 
from customers
order by points desc 
limit 2, 3; -- leave first top 2 customers and display next 3 top customers