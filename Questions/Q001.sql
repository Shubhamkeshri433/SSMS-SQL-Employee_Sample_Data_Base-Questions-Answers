/*
========================================================

Question No : 001

Business Question:
Q1. How many employees are there in each department?

Difficulty:
Easy

Concepts:
COUNT(), GROUP BY

========================================================
*/

SELECT
    DepartmentID,
    COUNT(EmployeeID) AS TotalEmployees
FROM Employees
GROUP BY DepartmentID;