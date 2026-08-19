--Q24. Identify salary outliers using: Salary > Average Salary + (2 × Standard Deviation)

SELECT
	Employeeid,
	FirstName,
	LastName,
	Salary
FROM Employees
WHERE Salary > (
	SELECT 
	AVG(Salary) + ( 2 * STDEV(Salary))
	FROM Employees);