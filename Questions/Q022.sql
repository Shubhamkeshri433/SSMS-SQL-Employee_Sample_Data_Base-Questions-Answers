--Q22. Which top 20% of employees account for the highest salary expenses?

SELECT TOP 20 PERCENT *
FROM Employees
ORDER BY Salary DESC;