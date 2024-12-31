CREATE DATABASE Company;
use Company;
-- 1. Create the Managers table
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    DOB DATE,
    Age INT CHECK (Age >= 18), -- Check constraint to ensure valid age
    Last_Update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Gender CHAR(1),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2) NOT NULL
);

-- 2. Insert 10 rows
INSERT INTO Managers (Manager_Id, First_Name, Last_Name, DOB, Age, Gender, Department, Salary) VALUES
(1, 'Anju', 'Nair', '1985-06-15', 39, 'F', 'HR', 40000),
(2, 'Akhil', 'Menon', '1990-04-22', 34, 'M', 'IT', 35000),
(3, 'Rajesh', 'Pillai', '1980-12-10', 44, 'M', 'Finance', 50000),
(4, 'Deepa', 'Varma', '1992-11-18', 32, 'F', 'IT', 30000),
(5, 'Vivek', 'Krishnan', '1988-09-05', 36, 'M', 'Marketing', 25000),
(6, 'Lekha', 'Rajan', '1995-07-25', 29, 'F', 'Sales', 28000),
(7, 'Suresh', 'Panicker', '1975-01-15', 49, 'M', 'Finance', 60000),
(8, 'Anitha', 'Kumar', '1998-03-12', 26, 'F', 'IT', 27000),
(9, 'Mohan', 'Das', '1982-08-21', 42, 'M', 'HR', 38000),
(10, 'Latha', 'Mohan', '1987-02-03', 37, 'F', 'Marketing', 32000);

-- 3. Query to retrieve the name and date of birth of the manager with Manager_Id 1
SELECT First_Name, Last_Name, DOB 
FROM Managers 
WHERE Manager_Id = 1;

-- 4. Query to display the annual income of all managers
SELECT Manager_Id, First_Name, Last_Name, (Salary * 12) AS Annual_Income
FROM Managers;

-- 5. Query to display records of all managers except ‘Aaliya’
SELECT *
FROM Managers
WHERE First_Name != 'Aaliya';

-- 6. Query to display details of managers whose department is IT and earns more than 25000 per month
SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

-- 7. Query to display details of managers whose salary is between 10000 and 35000
SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;
