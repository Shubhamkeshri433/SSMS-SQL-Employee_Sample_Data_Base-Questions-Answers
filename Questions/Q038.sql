--Q038. Show employees and the names of the projects they are working on.

SELECT
	E.EmployeeID,
	E.FirstName,
	E.LastName,
	E.Salary,
	P.ProjectName
FROM Employees E
LEFT JOIN EmployeeProjects EP
ON E.EmployeeID = EP.EmployeeID
LEFT JOIN Projects P
ON EP.ProjectID = P.ProjectID;