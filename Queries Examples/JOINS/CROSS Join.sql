-- CROSS JOIN -------------------

USE sql_store;

SELECT c.first_name AS customer, p.name AS product
FROM customers c
CROSS JOIN products p  
ORDER BY c.first_name;

-- **CROSS JOIN** combines/joins every record from 1st table with every record in the 2nd table.  

# customer	product 
Ambur	Pork - Bacon,back Peameal
Ambur	Sauce - Ranch Dressing
Ambur	Island Oasis - Raspberry
Ambur	Longan
Ambur	Broom - Push
Ambur	Brocolinni - Gaylan, Chinese
Ambur	Foam Dinner Plate
Ambur	Petit Baguette
Ambur	Lettuce - Romaine, Heart
Ambur	Sweet Pea Sprouts
Babara	Broom - Push
Babara	Foam Dinner Plate
Babara	Sweet Pea Sprouts
Babara	Pork - Bacon,back Peameal
Babara	Petit Baguette
Babara	Sauce - Ranch Dressing
Babara	Lettuce - Romaine, Heart
Babara	Brocolinni - Gaylan, Chinese
Babara	Island Oasis - Raspberry
Babara	Longan
Clemmie	Sweet Pea Sprouts
Clemmie	Foam Dinner Plate
Clemmie	Island Oasis - Raspberry
Clemmie	Pork - Bacon,back Peameal
Clemmie	Petit Baguette
Clemmie	Sauce - Ranch Dressing
Clemmie	Lettuce - Romaine, Heart
Clemmie	Brocolinni - Gaylan, Chinese
Clemmie	Longan
Clemmie	Broom - Push
Elka	Sweet Pea Sprouts
Elka	Foam Dinner Plate
Elka	Lettuce - Romaine, Heart
Elka	Island Oasis - Raspberry
Elka	Pork - Bacon,back Peameal
Elka	Sauce - Ranch Dressing
Elka	Longan
Elka	Petit Baguette
Elka	Broom - Push
Elka	Brocolinni - Gaylan, Chinese
Freddi	Pork - Bacon,back Peameal
Freddi	Sauce - Ranch Dressing
Freddi	Petit Baguette
Freddi	Lettuce - Romaine, Heart
Freddi	Longan
Freddi	Brocolinni - Gaylan, Chinese
Freddi	Sweet Pea Sprouts
Freddi	Foam Dinner Plate
Freddi	Island Oasis - Raspberry
Freddi	Broom - Push
Ilene	Island Oasis - Raspberry
Ilene	Sweet Pea Sprouts
Ilene	Foam Dinner Plate
Ilene	Longan
Ilene	Lettuce - Romaine, Heart
Ilene	Petit Baguette
Ilene	Sauce - Ranch Dressing
Ilene	Broom - Push
Ilene	Brocolinni - Gaylan, Chinese
Ilene	Pork - Bacon,back Peameal
Ines	Brocolinni - Gaylan, Chinese
Ines	Sauce - Ranch Dressing
Ines	Island Oasis - Raspberry
Ines	Lettuce - Romaine, Heart
Ines	Petit Baguette
Ines	Pork - Bacon,back Peameal
Ines	Foam Dinner Plate
Ines	Sweet Pea Sprouts
Ines	Broom - Push
Ines	Longan
Levy	Brocolinni - Gaylan, Chinese
Levy	Sauce - Ranch Dressing
Levy	Broom - Push
Levy	Island Oasis - Raspberry
Levy	Longan
Levy	Foam Dinner Plate
Levy	Sweet Pea Sprouts
Levy	Pork - Bacon,back Peameal
Levy	Lettuce - Romaine, Heart
Levy	Petit Baguette
Romola	Longan
Romola	Foam Dinner Plate
Romola	Sauce - Ranch Dressing
Romola	Brocolinni - Gaylan, Chinese
Romola	Island Oasis - Raspberry
Romola	Broom - Push
Romola	Lettuce - Romaine, Heart
Romola	Petit Baguette
Romola	Sweet Pea Sprouts
Romola	Pork - Bacon,back Peameal
Thacher	Foam Dinner Plate
Thacher	Longan
Thacher	Petit Baguette
Thacher	Sauce - Ranch Dressing
Thacher	Brocolinni - Gaylan, Chinese
Thacher	Island Oasis - Raspberry
Thacher	Broom - Push
Thacher	Pork - Bacon,back Peameal
Thacher	Lettuce - Romaine, Heart
Thacher	Sweet Pea Sprouts
