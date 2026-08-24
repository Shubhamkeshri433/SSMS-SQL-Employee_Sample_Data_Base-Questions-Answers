--Q29. Which department spends the highest salary amount per employee?

SELECT
	DepartmentID,
	SUM(Salary) / COUNT(EmployeeID) Salary_Per_Employee
FROM Employees
GROUP BY DepartmentID
ORDER BY Salary_Per_Employee DESC;