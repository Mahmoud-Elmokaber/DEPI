-- 1- creating the database and the structure of the table.
CREATE DATABASE DEPI_DB_2
GO

USE DEPI_DB_2

CREATE TABLE Books ( 
BookID INT Primary Key, 
Title VARCHAR(50) , 
Author VARCHAR(50),
PublishedYear INT , 
Price Decimal(5,2) ,
);

-- 2- inserting records into the table
INSERT INTO Books
VALUES
( 5  , 'Book1' , 'Author1' ,2004 , 30.95 ) , 
( 10 , 'Book2' , 'Author2' ,2010 , 20.60 ) ,
( 15 , 'Book3' , 'Author3' , 2008 , 60.55 ) ,
( 20 , 'Book4' , 'Author4' , 1998 , 40.65 ) ,
( 25 , 'Book5' , 'Author5' , 1973 , 51.8 ) ;

--3- preforming queries
-- a- Update the price of a book. 
UPDATE  Books
SET Price = 55.45
WHERE BookID = 25
;
-- b- Delete a book from the database. 
DELETE FROM Books 
WHERE BookID = 15
;
-- c - Select all books, sorted by PublishedYear.
SELECT * 
FROM Books
ORDER BY PublishedYear 
;
-- d- Select books that were published before the year 2000. 
SELECT * 
FROM Books
WHERE PublishedYear < 2000
;