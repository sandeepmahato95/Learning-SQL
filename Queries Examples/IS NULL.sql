-- Get the orders that are not shipped

SELECT *
FROM sql_store.orders
-- WHERE shipped_date IS NOT NULL --> orders have been shipped
WHERE shipped_date IS NULL  -- orders not shipped