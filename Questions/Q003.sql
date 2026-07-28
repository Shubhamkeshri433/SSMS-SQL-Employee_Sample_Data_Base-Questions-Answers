/*
==========================================================

Question No : Q003

Business Question:
What is the average salary in every department?

Difficulty:
Easy

Concepts Used:
AVG(), GROUP BY

==========================================================

Answer:
*/

SELECT
    DepartmentID,
    AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID;