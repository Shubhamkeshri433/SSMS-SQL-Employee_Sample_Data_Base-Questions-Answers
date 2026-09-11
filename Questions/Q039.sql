--Q039. Find projects that currently have no employees assigned.

SELECT
	P.ProjectID,
	P.ProjectName,
	Count(EP.EmployeeID) N_emp
FROM Projects P
LEFT JOIN EmployeeProjects EP
ON EP.ProjectID = P.ProjectID
GROUP BY P.ProjectID, P.ProjectName
HAVING Count(EP.EmployeeID) = 0;