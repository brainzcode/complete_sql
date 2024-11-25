SELECT 
	MAX(individualTotalEarnings) AS max_individualEarnings,
	country
FROM freelancers
GROUP BY country
HAVING MAX(individualTotalEarnings) > 1000000
ORDER BY max_individualEarnings DESC
