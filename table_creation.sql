CREATE TABLE Customers(
	CustomerKey SERIAL PRIMARY KEY,
	Prefix VARCHAR(10) NOT NULL,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	BirthDate DATE NOT NULL,
	MaritalStatus VARCHAR(10) NOT NULL,
	Gender CHAR(1) NOT NULL,
	EmailAddress VARCHAR(100) NOT NULL,
	AnnualIncome INT NOT NULL,
	TotalChildren INT NOT NULL,
	EducationLevel VARCHAR(50),
	Occupation VARCHAR(50),
	HomeOwner CHAR(1) NOT NULL
);

CREATE TABLE Products(
	ProductKey SERIAL PRIMARY KEY,
	ProductSubcategoryKey INT NOT NULL,
	ProductSKU VARCHAR(50) NOT NULL,
	ProductName VARCHAR(100) NOT NULL,
	ModelName VARCHAR(100),
	ProductDescription TEXT NOT NULL,
	ProductColor VARCHAR(50) NOT NULL,
	ProductSize VARCHAR(10) NOT NULL,
	ProductStyle VARCHAR(10) NOT NULL,
	ProductCost DECIMAL(9,4) NOT NULL,
	ProductPrice DECIMAL(7,2) NOT NULL
);

CREATE TABLE Sales(
	OrderDate DATE NOT NULL,
	StockDate DATE NOT NULL,
	OrderNumber VARCHAR(50) NOT NULL,
	ProductKey INT NOT NULL,
	CustomerKey INT NOT NULL,
	TerritoryKey INT NOT NULL,
	OrderLineItem INT NOT NULL,
	OrderQuantity INT NOT NULL
);