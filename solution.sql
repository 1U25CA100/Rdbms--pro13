--- 1. Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    CourseID INT
);

-- 2. Course Table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    FacultyID INT,
    DepartmentID INT
);

-- 3. Faculty Table
CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50)
);

-- 4. Department Table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);- Lab Program 13
-- Normalize the Sdent table up to Third Normal Form (3NF).
--
-- Write your solution below.
--
-- Functional Dependencies:
-- StudentID -> StudentName, CourseName
-- CourseName -> FacultyName
-- FacultyName -> DepartmentName
--
-- Requirements:
-- 1. Create normalized tables.
-- 2. Define primary keys.
-- 3. Define foreign keys.
-- 4. Insert sample data.
--
-- Do not modify test.sh or .github/workflows/autograding.yml.

USE CollegeDB;

-- Write your 3NF solution here.INSERT INTO Student VALUES
(101, 'Arun', 1),
(102, 'Kumar', 2);

INSERT INTO Course VALUES
(1, 'BCA', 101, 201),
(2, 'BSc', 102, 202);

INSERT INTO Faculty VALUES
(101, 'Ravi'),
(102, 'Priya');

INSERT INTO Department VALUES
(201, 'Computer Science'),
(202, 'Mathematics');
ALTER TABLE Student
ADD FOREIGN KEY (CourseID) REFERENCES Course(CourseID);

ALTER TABLE Course
ADD FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID);

ALTER TABLE Course
ADD FOREIGN KEY (DepartmentID)
REFERENCES Department(DepartmentID);
