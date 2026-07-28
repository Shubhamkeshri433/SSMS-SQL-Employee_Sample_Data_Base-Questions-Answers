-- Create the sample database
CREATE DATABASE Employee_Sample;
GO

-- Use the newly created database
USE Employee_Sample;
GO

-- Create the Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName VARCHAR(50) NOT NULL
);
GO

-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DepartmentID INT NOT NULL,
    HireDate DATE NOT NULL,
	Salary DECIMAL(10,2) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    CONSTRAINT FK_Employees_Departments FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
GO

-- Create the Projects table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY IDENTITY(1,1),
    ProjectName VARCHAR(100) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NULL
);
GO

-- Create the EmployeeProjects table to associate employees with projects
CREATE TABLE EmployeeProjects (
    EmployeeProjectID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT NOT NULL,
    ProjectID INT NOT NULL,
    AssignmentDate DATE NOT NULL,
    CONSTRAINT FK_EmployeeProjects_Employees FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    CONSTRAINT FK_EmployeeProjects_Projects FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);
GO
