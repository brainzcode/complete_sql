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
WHERE country != 'United States'

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
WHERE individualTotalEarnings >= 1000000

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
WHERE country <> 'United States'
