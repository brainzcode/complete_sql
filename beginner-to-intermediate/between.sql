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
WHERE individualTotalEarnings BETWEEN 1000000 AND 1500000
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
WHERE individualTotalEarnings >= 1000000 AND individualTotalEarnings <= 1500000
ORDER BY individualTotalEarnings DESC