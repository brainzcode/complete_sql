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
ORDER BY individualTotalEarnings
DESC