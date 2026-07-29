--Q3. What is the average salary in every department?


SELECT
    DepartmentID,
    AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID;