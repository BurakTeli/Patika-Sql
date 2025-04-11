-- ==========================================
-- employee_table_full_operations.sql
-- Description: Create employee table, insert data from Mockaroo,
-- perform 5 UPDATE and 5 DELETE operations
-- ==========================================

-- 1. Create the employee table
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

-- 2. Insert 50 rows of mock data (generate from https://mockaroo.com in PostgreSQL format)
-- Below are 5 example rows — continue with the rest of the 50 rows from Mockaroo

INSERT INTO employee (id, name, birthday, email) VALUES
(1, 'John Doe', '1990-01-01', 'john.doe@gmail.com'),
(2, 'Alice Smith', '1985-05-20', 'alice.smith@yahoo.com'),
(3, 'Bob Johnson', '1993-08-15', 'bob.johnson@example.com'),
(4, 'Andrew Adams', '1988-03-10', 'andrew.adams@gmail.com'),
(5, 'Carol White', '1999-11-30', 'carol.white@gmail.com');
-- (Add 45 more rows from Mockaroo output here)

-- 3. UPDATE Operations

-- 3.1 Update name where id is 1
UPDATE employee
SET name = 'Updated Name'
WHERE id = 1;

-- 3.2 Update email where name is 'Alice Smith'
UPDATE employee
SET email = 'alice.updated@example.com'
WHERE name = 'Alice Smith';

-- 3.3 Update birthday for employees born before 1990
UPDATE employee
SET birthday = '1990-01-01'
WHERE birthday < '1990-01-01';

-- 3.4 Update name where email domain is gmail.com
UPDATE employee
SET name = 'Gmail User'
WHERE email LIKE '%@gmail.com';

-- 3.5 Set email to NULL where name starts with 'A'
UPDATE employee
SET email = NULL
WHERE name LIKE 'A%';

-- 4. DELETE Operations

-- 4.1 Delete employee with id = 2
DELETE FROM employee
WHERE id = 2;

-- 4.2 Delete employees with NULL email
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
