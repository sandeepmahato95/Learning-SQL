USE sql_store;

SELECT oin.note, oi.quantity, oi.unit_price
FROM order_items oi
JOIN order_item_notes oin
     ON oi.order_id = oin.order_id 
     AND oi.product_id = oin.product_id;
  


