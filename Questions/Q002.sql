--Q2. What is the total salary expense for each department?

SELECT
    DepartmentID,
    SUM(Salary) AS TotalSalaryExpense
FROM Employees
GROUP BY DepartmentID;