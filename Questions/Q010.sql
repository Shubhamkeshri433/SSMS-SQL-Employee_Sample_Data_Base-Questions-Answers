/*
==========================================================

Question No : Q010

Business Question:
Find the lowest-paid employee in each department.

Difficulty:
Medium

Concepts Used:
MIN(), Subquery

==========================================================

Answer:
*/

SELECT *
FROM Employees
WHERE Salary IN
(
    SELECT MIN(Salary)
    FROM Employees
    GROUP BY DepartmentID
);