SELECT 
	firstName,
	SUBSTRING(firstName, 2, 3) AS sub_firstName
FROM freelancers