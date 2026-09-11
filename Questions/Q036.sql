--Q036. Show each project with the total number of assigned employees.

SELECT
	P.ProjectID,
	P.ProjectName,
	Count(EP.EmployeeID) N_emp
FROM Projects P
LEFT JOIN EmployeeProjects EP
ON EP.ProjectID = P.ProjectID
GROUP BY P.ProjectID, P.ProjectName;