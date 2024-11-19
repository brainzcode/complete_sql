SELECT
  c.customer_id,
  c.first_name,
  o.order_id,
  o.quantity
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
UNION
SELECT
  c.customer_id,
  c.first_name,
  o.order_id,
  o.quantity
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id