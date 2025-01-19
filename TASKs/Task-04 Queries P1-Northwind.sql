-- [1]
-- Create a report that shows the CategoryName and Description 
-- from the categories table sorted by CategoryName.

    SELECT CategoryName, Description
	FROM categories
	ORDER BY CategoryName;
	
-- [2]
-- Create a report that shows the ContactName, CompanyName, ContactTitle and Phone number 
-- from the customers table sorted by ContactTitle DESC

	SELECT ContactName, CompanyName, ContactTitle,Phone 
	FROM Customers
	ORDER BY ContactTitle DESC
-- [3]
-- Create a report that shows the capitalized FirstName and 
-- capitalized LastName renamed as FirstName and Lastname 
-- respectively and HireDate from the employees table sorted 
-- from the newest to the oldest employee.

	SELECT UPPER(FirstName) ,UPPER(LastName)  , HireDate
	FROM Employees
	ORDER BY HireDate 


-- [4]
-- Create a report that shows the top 10 OrderID, OrderDate, ShippedDate, CustomerID, Freight 
-- from the orders table sorted by Freight in descending order.
   SELECT TOP 10 OrderID, OrderDate, ShippedDate, CustomerID, Freight 
   FROM Orders
   ORDER BY Freight DESC

	

-- [5]
-- Create a report that shows all the CustomerID in lowercase 
-- letter and renamed as ID from the customers table.

	SELECT LOWER(CustomerID) AS ID 
	FROM Customers
		
	
-- [6]
-- Create a report that shows the CompanyName, Fax, Phone, Country, HomePage 
-- from the suppliers table sorted by the Country in descending order then by 
-- CompanyName in ascending order.

	SELECT CompanyName, Fax, Phone, Country, HomePage 
	FROM Suppliers 
	ORDER BY Country DESC , CompanyName 

-- [7]
-- Create a report that shows CompanyName, ContactName of all customers from ‘Buenos Aires' only.
	SELECT CompanyName , ContactName
	FROM Customers
	WHERE City = 'Buenos Aires'
-- [8]
-- Create a report showing ProductName, UnitPrice, QuantityPerUnit of 
-- products that are out of stock.
	
	SELECT ProductName, UnitPrice, QuantityPerUnit
	FROM Products
	WHERE UnitsInStock = 0
	
	
-- [9]
-- Create a report showing all the ContactName, Address, City 
-- of all customers not from Germany, Mexico, Spain.
	
	SELECT ContactName, Address, City 
	FROM Customers
	WHERE Country NOT IN ('Germany','Mexico','Spain')


-- [10]
-- Create a report showing OrderDate, ShippedDate, CustomerID, Freight of 
-- all orders placed on 04 Feb 1997.

	SELECT OrderDate, ShippedDate, CustomerID, Freight
	FROM Orders
	WHERE OrderDate = '1997-02-04' 
	
	
-- [11]
-- Create a report showing FirstName, LastName, Country from the employees not from United States.

	SELECT FirstName, LastName, Country
	FROM Employees
	WHERE Country  != 'USA'
	
	
-- [12]
-- Create a report that shows the EmployeeID, OrderID, CustomerID, RequiredDate, 
-- ShippedDate from all orders shipped later than the required date.

	SELECT EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate
	FROM Orders
	WHERE ShippedDate > RequiredDate
	
	
-- [13]
-- Create a report that shows the City, CompanyName, ContactName of customers from 
-- cities starting with A or B.

	SELECT City, CompanyName, ContactName
	FROM Customers
	WHERE City LIKE '[AB]%'
	
	
-- [14]
-- Create a report showing all the even numbers of OrderID from the orders table

	SELECT OrderID 
	FROM Orders
	WHERE OrderID % 2 = 0


-- [15]
-- Create a report that shows all the orders where the freight cost more than $500
 
	 SELECT * FROM Orders
	 WHERE Freight > 500
	 
-- [16]
-- Create a report that shows ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel  when 
-- inventory items on hand quantity are below the reorder level.
	
	SELECT ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel
	FROM Products 
	WHERE UnitsInStock < ReorderLevel

-- [17]
-- Create a report that shows the CompanyName, ContactName number of 
-- all customer that have no fax number
 
	SELECT CompanyName, ContactName , COUNT(*) AS [number of emplyees with no fax] 
	FROM Customers
	WHERE FAX IS NULL
	GROUP BY CompanyName, ContactName
-- [18]
--  Create a report that shows the FirstName, LastName of all employees 
-- that do not report to anybody

	SELECT FirstName, LastName
	FROM Employees
	WHERE ReportsTo IS NULL
	
	
-- [19]
-- Create a report showing Products that we don't sell any more
	
	SELECT * FROM Products
	WHERE Discontinued = 1
	
	
-- [20]
-- Create a report that shows the CompanyName, ContactName
-- Fax of all customers that do not have Fax number AND Live in USA and sorted by ContactName.
	
	SELECT CompanyName, ContactName
	FROM Customers
	WHERE Fax IS NULL AND Country = 'USA'
	ORDER BY ContactName

-- [21]
-- Create a report that shows the City, CompanyName, ContactName of customers from cities that has 
-- letter L in the name sorted by ContactName.

	SELECT City, CompanyName, ContactName
	FROM Customers
	WHERE City LIKE '%L%'
	ORDER BY ContactName

-- [22]
--  Create a report that shows the FirstName, LastName, BirthDate of employees born in the 1950s.

	SELECT FirstName, LastName, BirthDate
	FROM Employees
	WHERE YEAR(BirthDate) BETWEEN 1950 AND 1959
	 
-- [23]
-- Create a report that shows the FirstName, LastName, the year of Birthdate as 
-- birth year from the employees table.
	
	SELECT FirstName, LastName , YEAR(BirthDate) AS [Birth year]
	FROM Employees
	
	
-- [24]
-- Create a report showing OrderID, total number of items in the order as NumberofItems 
-- from the orderdetails table grouped by OrderID and sorted by NumberofOrders in descending order. 

	
	 SELECT OrderID, COUNT(Quantity) AS NumberofItems 
	 FROM [Order Details]
	 GROUP BY OrderID
	 ORDER BY NumberofItems DESC

	 
-- [25]
-- Create a report that shows the SupplierID, ProductName, CompanyName 
-- from all product Supplied by 
-- Exotic Liquids, Specialty Biscuits, Ltd., Escargots Nouveaux sorted by the supplier ID 
 
	
	SELECT P.SupplierID, P.ProductName,S.CompanyName 
	FROM 
	Products AS P 
	INNER JOIN 
	Suppliers AS S
	ON P.SupplierID = S.SupplierID
	WHERE CompanyName IN ('Exotic Liquids', 'Specialty Biscuits Ltd.', 'Escargots Nouveaux')
	ORDER BY P.SupplierID
	