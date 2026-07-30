--Q14. Calculate the salary gap (Highest Salary - Lowest Salary) for every department.

SELECT DepartmentID, (MAX(Salary)-MIN(Salary)) AS Salary_Gap FROM Employees
GROUP BY DepartmentID;
