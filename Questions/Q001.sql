--Q1. How many employees are there in each department?

SELECT
    DepartmentID,
    COUNT(EmployeeID) AS TotalEmployees
FROM Employees
GROUP BY DepartmentID;