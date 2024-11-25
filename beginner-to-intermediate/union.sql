-- Joins all data from both tables including duplicates
SELECT
  first_name
  last_name
  country
FROM
  customers
UNION ALL
SELECT
  first_name
  last_name
  emp_country
FROM
  employees

-- Joins all data from both tables excluding duplicates
SELECT
  first_name
  last_name
  country
FROM
  customers
UNION
SELECT
  first_name
  last_name
  emp_country
FROM
  employees