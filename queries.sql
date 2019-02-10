-- HOW TO SELECT NTH MAX FROM A COLUMN OF A TABLE
SELECT 
	*
FROM
	HumanResources.EmployeePayHistory
ORDER BY
	Rate DESC;

-- CODE FOR 2ND MAX

SELECT MAX(Rate) FROM HumanResources.EmployeePayHistory
WHERE Rate < (
SELECT MAX(Rate) FROM HumanResources.EmployeePayHistory);

-- CODE FOR NTH VALUE

SELECT TOP (1) RATE
FROM (
SELECT DISTINCT TOP (N) RATE
FROM HumanResources.EmployeePayHistory
ORDER BY RATE DESC
) AS RESULT
ORDER BY RATE;
