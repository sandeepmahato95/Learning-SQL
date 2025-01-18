SELECT * FROM sql_store.customers;

-- Give any customers born before 1990
-- 50 extra points

UPDATE customers 
SET 
    points = points + 50
WHERE
    birth_date < '1990-01-01'
    
-- Note: To update more than one rows at a time, then change the SAFE UPDATES settings from ribbon (Edit --> Preferences --> SQL Editor)