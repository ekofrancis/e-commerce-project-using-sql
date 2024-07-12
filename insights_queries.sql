-- Queries

--Customer Analysis

/* Customers with Annual income greater than $100,000 */

SELECT * FROM Customers
WHERE AnnualIncome > 100000;	


/* Female customers who are homeowners */

SELECT * FROM Customers
WHERE Gender = 'F' AND HomeOwner = 'Y';


--Sales Analysis

/* Total number of orders placed by each customer */
SELECT CustomerKey, COUNT(OrderNumber) AS TotalOrders
FROM Sales
GROUP BY CustomerKey;

/* Total Quantity of products ordered for each month */

SELECT ProductKey, SUM(OrderQuantity) AS TotalQuantityOrdered
FROM Sales
GROUP BY ProductKey;

--Product information

/* Products that have a price greater than $50 */

SELECT * FROM Products
WHERE ProductPrice > 50;

--JOIN Queries

/* Total sales amount for each Customer */

SELECT c.CustomerKey, c.FirstName, c.LastName, SUM(s.OrderQuantity * p.ProductPrice) AS TotalSalesAmount
FROM Sales s
JOIN Customers c ON s.CustomerKey = c.CustomerKey
JOIN Products p ON s.ProductKey = p.ProductKey
GROUP BY c.CustomerKey, c.FirstName, c.LastName;


/*SELECT Customers.CustomerKey, Customers.FirstName, Customers.LastName, SUM(Sales.OrderQuantity * Products.ProductPrice) AS TotalSalesAmount
FROM Sales
JOIN Customers ON Sales.CustomerKey = Customers.CustomerKey
JOIN Products ON Sales.ProductKey = Products.ProductKey
GROUP BY Customers.CustomerKey, Customers.FirstName, Customers.LastName; */


/* Number of orders placed each month */
SELECT EXTRACT(YEAR FROM OrderDate) AS Year, EXTRACT (MONTH FROM OrderDate) AS Month, COUNT(OrderNumber) AS TotalOrders
FROM Sales
GROUP BY EXTRACT(YEAR FROM OrderDate), EXTRACT(MONTH FROM OrderDate)
ORDER  BY Year, Month;

/* Average Product price for each category */
SELECT ProductSubcategoryKey, AVG(ProductPrice) AS AveragePrice
FROM Products
GROUP BY ProductSubcategoryKey;

/* Customers who made more than 5 orders */
SELECT c.CustomerKey, c.FirstName, c.LastName, COUNT(s.OrderNumber) AS TotalOrders
FROM Customers c
JOIN Sales s ON c.CustomerKey = s.CustomerKey
GROUP BY c.CustomerKey, c.FirstName, c.LastName
HAVING COUNT(s.OrderNumber) > 5;

