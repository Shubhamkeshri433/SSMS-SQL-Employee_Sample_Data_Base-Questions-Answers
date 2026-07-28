/*
==========================================================

Question No : Q008

Business Question:
Which department hired the most employees?

Difficulty:
Easy

Concepts Used:
COUNT(), GROUP BY, TOP

==========================================================

Answer:
*/

SELECT TOP 1
    DepartmentID,
    COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY DepartmentID
ORDER BY TotalEmployees DESC;