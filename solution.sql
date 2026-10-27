CREATE DATABASE CollegeDB;
USE CollegeDB;

-- Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    CourseID INT
);

-- Course Table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    FacultyID INT
);

-- Faculty Table
CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50),
    DepartmentID INT
);

-- Department Table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Insert Department Details
INSERT INTO Department VALUES
(1, 'Computer Science'),
(2, 'Mathematics');

-- Insert Faculty Details
INSERT INTO Faculty VALUES
(101, 'Ravi', 1),
(102, 'Priya', 2);

-- Insert Course Details
INSERT INTO Course VALUES
(201, 'BCA', 101),
(202, 'BSc', 102);

-- Insert Student Details
INSERT INTO Student VALUES
(1001, 'Arun', 201),
(1002, 'Kumar', 202);

-- Display Student Details
SELECT
    s.StudentID,
    s.StudentName,
    c.CourseName,
    f.FacultyName,
    d.DepartmentName
FROM Student s
JOIN Course c ON s.CourseID = c.CourseID
JOIN Faculty f ON c.FacultyID = f.FacultyID
JOIN Department d ON f.DepartmentID = d.DepartmentID;
