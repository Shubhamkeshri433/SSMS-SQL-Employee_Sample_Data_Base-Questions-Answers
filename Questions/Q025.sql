--Q25. Calculate the estimated annual payroll cost for every department.

SELECT
	SUM(Salary) annual_payroll,
	DepartmentID
FROM Employees
GROUP BY DepartmentID;