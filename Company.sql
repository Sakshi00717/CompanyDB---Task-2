--  Create a new database
CREATE DATABASE IF NOT EXISTS CompanyDB;

--  Use the database
USE CompanyDB;

--  Create Employees table
CREATE TABLE IF NOT EXISTS Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    salary INT DEFAULT 30000,
    department VARCHAR(100)
);

--  Insert records
INSERT INTO Employees (emp_id, name, email, salary, department)
VALUES (1, 'Alice', 'alice@example.com', 50000, 'HR');

INSERT INTO Employees (emp_id, name, email, department)
VALUES (2, 'Bob', 'bob@example.com', 'Finance');

INSERT INTO Employees (emp_id, name, email, salary, department)
VALUES (3, 'Charlie', NULL, 45000, 'IT');

INSERT INTO Employees (emp_id, name)
VALUES (4, 'Diana');

INSERT INTO Employees (emp_id, name, email, salary, department)
VALUES (5, 'Esha', 'esha@example.com', 55000, 'Marketing');

INSERT INTO Employees (emp_id, name, email, salary, department)
VALUES (6, 'Fahad', 'fahad@example.com', 48000, NULL);

INSERT INTO Employees (emp_id, name, email, department)
VALUES (7, 'Geeta', NULL, 'HR');

INSERT INTO Employees (emp_id, name, salary)
VALUES (8, 'Harish', 40000);

INSERT INTO Employees (emp_id, name, email)
VALUES (9, 'Ishita', 'ishita@example.com');

INSERT INTO Employees (emp_id, name)
VALUES (10, 'Jay');

--  Update records
SET SQL_SAFE_UPDATES = 0;

UPDATE Employees
SET salary = salary + 5000
WHERE department = 'HR';

UPDATE Employees
SET email = CONCAT(LOWER(name), '@company.com')
WHERE email IS NULL;

UPDATE Employees
SET department = 'Support'
WHERE department IS NULL;

UPDATE Employees
SET salary = 60000
WHERE salary < 45000;

UPDATE Employees
SET salary = 70000, department = 'Operations'
WHERE emp_id = 5;

-- Delete a specific employee based on emp_id
DELETE FROM Employees
WHERE emp_id = 9;

-- Delete all employees in the 'Marketing' department
DELETE FROM Employees
WHERE department = 'HR';

-- Delete employees earning less than 40000
DELETE FROM Employees
WHERE salary < 40000;


