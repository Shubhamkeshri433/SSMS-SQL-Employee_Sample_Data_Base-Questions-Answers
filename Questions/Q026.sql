--Q26. Which employees have completed more than 3 years in the company?

SELECT
	EmployeeID,
	FirstName,
	LastName,
	DepartmentID
FROM Employees
WHERE DATEDIFF(YYYY,HireDate,GETDATE())>3;