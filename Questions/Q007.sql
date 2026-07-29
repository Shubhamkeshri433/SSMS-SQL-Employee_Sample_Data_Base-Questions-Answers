--Q7. How many employees were hired each year?

SELECT
    YEAR(HireDate) AS HireYear,
    COUNT(EmployeeID) AS TotalEmployees
FROM Employees
GROUP BY YEAR(HireDate);