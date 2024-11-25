-- Basic Update
UPDATE customers
SET country = 'Nigeria'
WHERE customer_id = 8

UPDATE customers
SET country = 'Nigeria',
	score = 600
WHERE customer_id = 6