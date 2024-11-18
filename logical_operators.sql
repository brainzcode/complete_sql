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
WHERE country = 'India' AND individualTotalEarnings >= 1000000

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
WHERE country = 'United States' AND individualTotalEarnings < 1000000
ORDER BY individualTotalEarnings DESC


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
WHERE country = 'United States' OR individualTotalEarnings < 1000000
ORDER BY individualTotalEarnings DESC

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
WHERE NOT individualTotalEarnings < 1000000
ORDER BY individualTotalEarnings DESC