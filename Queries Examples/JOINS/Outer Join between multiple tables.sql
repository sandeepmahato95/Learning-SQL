-- Outer Join between multiple tables --

select o.order_id,
       o.order_date, 
       c.first_name AS customer,
       sh.name AS shipper,
       os.name AS status

from orders o 

join customers c
     on c.customer_id = o.customer_id  -- No LEFT join because all customers have their order_id in `Orders` table.

left join shippers sh       -- we used LEFT Join here because some shipper_id are NULL in `Orders` table. 
     on sh.shipper_id = o.shipper_id
     
join order_statuses os    -- No LEFT join because all order_id in `orders` table have their status in `Orders` table.
     on os.order_status_id = o.status

order by o.order_id;

# order_id	order_date	customer	shipper	status
1	2019-01-30	Elka		Processed
2	2018-08-02	Ilene	Mraz, Renner and Nolan	Shipped
3	2017-12-01	Thacher		Processed
4	2017-01-22	Ines		Processed
5	2017-08-25	Clemmie	Satterfield LLC	Shipped
6	2018-11-18	Levy		Processed
7	2018-09-22	Ines	Mraz, Renner and Nolan	Shipped
8	2018-06-08	Clemmie		Processed
9	2017-07-05	Levy	Hettinger LLC	Shipped
10	2018-04-22	Elka	Schinner-Predovic	Shipped
