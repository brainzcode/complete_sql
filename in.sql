SELECT DISTINCT 
	personId,
	individualTotalEarnings,
	agencyTotalEarnings,
	title,
	firstName,
	description,
	country 
FROM 
	freelancers
WHERE country IN ('United States', 'India', 'Ukraine')
ORDER BY country ASC

