--Q031. Show every employee along with their department name.

SELECT
	E.EmployeeID,
	E.FirstName,
	E.LastName,
	D.DepartmentName,
	E.Salary
FROM Employees E
JOIN Departments D
ON E.DepartmentID = D.DepartmentID;