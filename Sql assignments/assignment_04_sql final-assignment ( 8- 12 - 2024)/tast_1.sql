-- 1- creating the database and the structure of the table
CREATE DATABASE DEPI_DB_1
GO
USE DEPI_DB_1
CREATE TABLE Students (
StudentID INT  Primary Key ,
FirstName VARCHAR(30),
LastName VARCHAR(30) , 
Age INT NOT NULL , 
Grade  NCHAR(1),
)
;
-- 2- inserting records into the table
INSERT INTO Students 
VALUES
( 1 , 'Mahmoud' , 'Elmokaber' , 20 , 'A' ) , 
( 2 , 'Mohamed' , 'Ahmed'     , 17 , 'B' ) ,
( 3 , 'Malik'   , 'Mohamed'   , 23 , 'C' ) ,
( 4 , 'Nader'   , 'AHmed'     , 16 , 'D' ) ,
( 5 , 'Ali'     , 'Mohamed'   , 22 , 'F' ) ;
--3- preforming queries
-- a- Select all columns for all students.
SELECT * 
FROM Students
;
-- b- Select only the first and last names of all students. 
SELECT FirstName + ' ' + LastName AS [Full name]
FROM Students
;
-- c- Select students who are older than 18. 
SELECT * 
FROM Students
WHERE Age > 18;
;
-- d- Select students who have a Grade of 'A'.
SELECT * 
FROM Students
WHERE Grade = 'A'
 