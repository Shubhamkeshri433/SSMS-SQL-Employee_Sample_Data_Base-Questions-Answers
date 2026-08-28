--Q032. Count the number of employees in each department.

SELECT
	DepartmentID,
	COUNT(EmployeeID) Num_Emp
FROM Employees
GROUP BY DepartmentID
ORDER BY Num_Emp DESC;