/*
==========================================================

Question No : Q002

Business Question:
What is the total salary expense for each department?

Difficulty:
Easy

Concepts Used:
SUM(), GROUP BY

==========================================================

Answer:
*/

SELECT
    DepartmentID,
    SUM(Salary) AS TotalSalaryExpense
FROM Employees
GROUP BY DepartmentID;