--Q13. Which department has the highest average salary?

SELECT TOP 1 AVG(Salary) AS AVG_Salary, DepartmentID
FROM Employees E
GROUP BY DepartmentID
ORDER BY AVG_Salary DESC;