SELECT 
	COUNT(*) AS totalFreelancers,
	country
FROM freelancers
GROUP BY country
ORDER BY COUNT(*) DESC

-- Find the Highest Earner for each country
SELECT 
	MAX(individualTotalEarnings) AS max_individualEarnings,
	country
FROM freelancers
GROUP BY country
ORDER BY max_individualEarnings DESC