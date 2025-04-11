-- ==========================================
-- employee_table_crud_operations.sql
-- Full SQL script: Create table, Insert data, Update & Delete operations
-- ==========================================


-- 1. Create the employee table
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

-- 2. Insert 50 rows of mock data
-- (Below is just an example — generate the full data using https://mockaroo.com in PostgreSQL format)

INSERT INTO employee (id, name, birthday, email) VALUES
(1, 'John Doe', '1985-06-15', 'john.doe@gmail.com'),
(2, 'Alice Smith', '1992-09-30', 'alice.smith@yahoo.com'),
(3, 'Bob Johnson', '2000-03-22', 'bob.johnson@example.com'),
(4, 'Andrew Testman', '1980-12-05', 'andrew.testman@testmail.com'),
(5, 'Carol Adams', '1975-07-11', 'carol.adams@gmail.com');
-- Add 45 more rows from Mockaroo here...

-- 3. Perform 5 different UPDATE operations

-- 3.1 Update name for employee with a specific id
UPDATE employee
SET name = 'Updated Name'
WHERE id = 1;

-- 3.2 Update email for all employees named 'John Doe'
UPDATE employee
SET email = 'john.doe@example.com'
WHERE name = 'John Doe';

-- 3.3 Update birthday for employees born before 1990
UPDATE employee
SET birthday = '1990-01-01'
WHERE birthday < '1990-01-01';

-- 3.4 Update name for employees whose email ends with 'gmail.com'
UPDATE employee
SET name = 'Gmail User'
WHERE email LIKE '%@gmail.com';

-- 3.5 Update email to NULL for employees whose name starts with 'A'
UPDATE employee
SET email = NULL
WHERE name LIKE 'A%';


-- 4. Perform 5 different DELETE operations

-- 4.1 Delete employee with specific id
DELETE FROM employee
WHERE id = 2;

-- 4.2 Delete employees with empty email fields
DELETE FROM employee
WHERE email IS NULL;

-- 4.3 Delete employees born after 2010
DELETE FROM employee
WHERE birthday > '2010-01-01';

-- 4.4 Delete employees whose name contains 'Test'
DELETE FROM employee
WHERE name ILIKE '%test%';

-- 4.5 Delete employees with email domain 'example.com'
DELETE FROM employee
WHERE email LIKE '%@example.com';

-- ==========================================
-- END OF SCRIPT
-- ==========================================
