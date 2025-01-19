CREATE DATABASE Company_task01
use Company_task01

CREATE TABLE Customers (
Id int primary key ,
C_name varchar(50) ,
Age int 
);
CREATE TABLE Products(
Id int primary key ,
Price money ,
Quantity int ,
) ;
CREATE TABLE Orders(
Id int primary key ,
Order_Date Date,
Total int ,
Cust_Id int foreign key references Customers
);
CREATE TABLE OrderItem (
Order_Id int foreign key references Orders,
Product_Id int foreign key references Products ,
Amount int 
primary key ( Order_Id , Product_Id)
);
CREATE TABLE Employees (
Id int primary key ,
Emp_name varchar(50)
);
CREATE TABLE Cars(
Id int primary key ,
Model varchar(50),
Color varchar (50),
Emp_Id int 
);
ALTER TABLE Employees ADD Age int;

ALTER TABLE Cars
ADD foreign key (Emp_Id) references Employees; 


