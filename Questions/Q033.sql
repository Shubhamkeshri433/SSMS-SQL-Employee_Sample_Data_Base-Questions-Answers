--Q033. Which department has the highest total salary expense?

SELECT
	DepartmentID,
	SUM(Salary) Highest_sal
FROM Employees
GROUP BY DepartmentID
ORDER BY Highest_sal DESC;