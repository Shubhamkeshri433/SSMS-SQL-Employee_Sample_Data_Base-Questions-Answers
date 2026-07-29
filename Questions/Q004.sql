--Q4. Which employees earn more than the company's average salary?

SELECT
    EmployeeID,
    FirstName,
    LastName,
    Salary
FROM Employees
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employees
);