use management;

-- 1. Create Table: 'Students'
DROP TABLE IF EXISTS Students;
CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    grade TEXT DEFAULT 'Not Assigned'
);

-- 2. Insert Records with different scenarios
INSERT INTO Students (student_id, name, age, grade)
VALUES (1, 'Alice', 20, 'A');

-- Insert with NULL value for grade
INSERT INTO Students (student_id, name, age, grade)
VALUES (2, 'Bob', 21, NULL);  -- grade is missing

-- Insert without specifying grade (uses DEFAULT)
INSERT INTO Students (student_id, name, age)
VALUES (3, 'Charlie', 22);  -- grade will be 'Not Assigned'

-- Insert with NULL value for age
INSERT INTO Students (student_id, name, age, grade)
VALUES (4, 'David', NULL, 'B');

-- Insert with NULL for both age and grade
INSERT INTO Students (student_id, name, age, grade)
VALUES (5, 'Eva', NULL, NULL);

-- 3. Update Records
-- Update NULL grade for Bob to 'B+'
UPDATE Students
SET grade = 'B+'
WHERE name = 'Bob' AND grade IS NULL;

-- Update age of David from NULL to 23
UPDATE Students
SET age = 23
WHERE name = 'David' AND age IS NULL;

-- Update Eva’s grade to default manually
UPDATE Students
SET grade = 'Not Assigned'
WHERE name = 'Eva' AND grade IS NULL;

-- 4. Delete Record
-- Delete record of Alice (student_id = 1)
DELETE FROM Students
WHERE student_id = 1;

-- 5.Final Select to View Table Content
SELECT * FROM Students;