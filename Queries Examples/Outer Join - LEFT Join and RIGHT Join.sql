-- Inner Join Query--
select p.product_id, name, quantity
from products p
join order_items o
on p.product_id = o.product_id;
-- In the above INNER JOIN query, The `product_id` no. 7 is not displayed in the result as it does not have any order_id
Result:
# product_id	name	quantity
1	Foam Dinner Plate	2
1	Foam Dinner Plate	4
1	Foam Dinner Plate	10
2	Pork - Bacon,back Peameal	3
2	Pork - Bacon,back Peameal	4
3	Lettuce - Romaine, Heart	10
3	Lettuce - Romaine, Heart	7
3	Lettuce - Romaine, Heart	4
3	Lettuce - Romaine, Heart	7
4	Brocolinni - Gaylan, Chinese	4
4	Brocolinni - Gaylan, Chinese	4
5	Sauce - Ranch Dressing	1
5	Sauce - Ranch Dressing	2
6	Petit Baguette	2
6	Petit Baguette	5
8	Island Oasis - Raspberry	2
9	Longan	9
10	Broom - Push	7

/* So to aee all the `product_id` irrespective of any product has not been ordered,
we will use OUTER JOIN here */

-- LEFT Join Query--
select p.product_id, name, quantity
from products p
LEFT JOIN order_items o -- this LEFT JOIN will return all `product_id` or all items from LEFT table `products`
on p.product_id = o.product_id;

Result:
# product_id	name	quantity
1	Foam Dinner Plate	2
1	Foam Dinner Plate	4
1	Foam Dinner Plate	10
2	Pork - Bacon,back Peameal	3
2	Pork - Bacon,back Peameal	4
3	Lettuce - Romaine, Heart	10
3	Lettuce - Romaine, Heart	7
3	Lettuce - Romaine, Heart	4
3	Lettuce - Romaine, Heart	7
4	Brocolinni - Gaylan, Chinese	4
4	Brocolinni - Gaylan, Chinese	4
5	Sauce - Ranch Dressing	1
5	Sauce - Ranch Dressing	2
6	Petit Baguette	2
6	Petit Baguette	5
7	Sweet Pea Sprouts	
8	Island Oasis - Raspberry	2
9	Longan	9
10	Broom - Push	7

-- RIGHT Join Query--
select p.product_id, name, quantity
from order_items o
RIGHT JOIN products p -- this RIGHT JOIN will return all `product_id` or all items from RIGHT table `products`
on p.product_id = o.product_id;

# product_id, name, quantity
1, Foam Dinner Plate, 2
1, Foam Dinner Plate, 4
1, Foam Dinner Plate, 10
2, Pork - Bacon,back Peameal, 3
2, Pork - Bacon,back Peameal, 4
3, Lettuce - Romaine, Heart, 10
3, Lettuce - Romaine, Heart, 7
3, Lettuce - Romaine, Heart, 4
3, Lettuce - Romaine, Heart, 7
4, Brocolinni - Gaylan, Chinese, 4
4, Brocolinni - Gaylan, Chinese, 4
5, Sauce - Ranch Dressing, 1
5, Sauce - Ranch Dressing, 2
6, Petit Baguette, 2
6, Petit Baguette, 5
7, Sweet Pea Sprouts, 
8, Island Oasis - Raspberry, 2
9, Longan, 9
10, Broom - Push, 7


