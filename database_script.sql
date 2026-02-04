-- Employee Management System Database Script
-- Developed by: Nimra Asim

-- 1. Create the Departments Table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL
);

-- 2. Create the Employees Table (with Foreign Key)
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    salary DECIMAL(10,2),
    dept_id INT,
    -- Linking employees to their respective departments
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- 3. Insert Data into Departments
INSERT INTO departments (dept_name) VALUES 
('Software Engineering'), 
('HR'), 
('Marketing'), 
('Finance'), 
('Quality Assurance');

-- 4. Insert Data into Employees
INSERT INTO employees (first_name, last_name, email, salary, dept_id) VALUES 
('Nimra', 'Asim', 'nimra@example.com', 85000, 1),
('Sara', 'Khan', 'sara.k@example.com', 65000, 2),
('Ali', 'Raza', 'ali.raza@example.com', 70000, 1),
('Zainab', 'Sheikh', 'zainab.s@example.com', 55000, 3),
('Hamza', 'Ahmed', 'hamza.a@example.com', 60000, 4),
('Dua', 'Fatima', 'dua.f@example.com', 45000, 5);

-- 5. Sample Join Query for Reporting
-- This combines names from the Employee table with Department names
SELECT e.first_name, e.last_name, d.dept_name 
FROM employees e 
JOIN departments d ON e.dept_id = d.dept_id;