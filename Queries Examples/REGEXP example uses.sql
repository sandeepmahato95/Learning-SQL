-- Get the customers whose:

-- 1. first names are ELKA or AMBUR
SELECT *
FROM customers
WHERE first_name REGEXP 'elka|ambur'  -- vertical bar ( | ) is logical OR operator

-- 2. last name ends with EY or ON
SELECT *
FROM customers
WHERE last_name REGEXP 'EY$|ON$'  -- dollar symbol ( $ ) is used for end of a string

-- 3. last names start with MY or contains SE
SELECT *
FROM customers
WHERE last_name REGEXP '^MY|SE'  -- carrot symbol ( ^ ) is used for beginning of a string

-- 4. last names contain B followed by R or U
SELECT *
FROM customers
-- where last_name regexp 'br|bu'
WHERE last_name REGEXP 'B[RU]'  -- [abcd] is used to match any single character present inside square brackets

-- 5. last names contain any character A to H followed by B
SELECT *
FROM customers
WHERE last_name REGEXP '[a-h]b'  -- [a-d] is used for any characters from a to d 


