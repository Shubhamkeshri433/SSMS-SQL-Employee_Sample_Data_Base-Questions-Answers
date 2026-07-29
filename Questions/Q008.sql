--Q8. Which department hired the most employees?


SELECT TOP 1
    DepartmentID,
    COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY DepartmentID
ORDER BY TotalEmployees DESC;