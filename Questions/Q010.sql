--Q10. Find the lowest-paid employee in each department.


SELECT *
FROM Employees
WHERE Salary IN
(
    SELECT MIN(Salary)
    FROM Employees
    GROUP BY DepartmentID
);