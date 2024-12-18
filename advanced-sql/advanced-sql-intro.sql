--Find the total Sales Across all Orders
SELECT
SUM(Sales) TotalSales
FROM Sales.Orders

--Find the total Sales for each Product
SELECT
	ProductID,
	SUM(Sales) TotalSales
FROM Sales.Orders
GROUP BY ProductID

--Find the total Sales for each Product, Additionally provide details such as order Id, order date using GroupBy.
SELECT
	OrderID,
	OrderDate,
	ProductID,
	SUM(Sales) TotalSales
FROM Sales.Orders
GROUP BY 
	OrderID,
	OrderDate,
	ProductID

--Find the total Sales for each Product, Additionally provide details such as order Id, order date using PartitionBy.
SELECT
	OrderID,
	OrderDate,
	ProductID,
	SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesByProduct
FROM Sales.Orders

--Find the total sales across all orders and Find the total Sales for each Product, Additionally provide details such as order Id, order date using PartitionBy.
SELECT
	OrderID,
	OrderDate,
	ProductID,
	SUM(Sales) OVER() TotalSales,
	SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesByProduct
FROM Sales.Orders

--Find the total sales across all orders
--Find the total Sales for each Product
--Additionally provide details such as order Id, order date using PartitionBy.
SELECT
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	SUM(Sales) OVER() TotalSales,
	SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesByProduct
FROM Sales.Orders

--Find the total sales across all orders
--Find the total Sales for each Product
--Find the total sales for each combinatiuon of product and order status
--Additionally provide details such as order Id, order date using PartitionBy.
SELECT
	OrderID,
	OrderDate,
	ProductID,
	OrderStatus,
	Sales,
	SUM(Sales) OVER() TotalSales,
	SUM(Sales) OVER(PARTITION BY ProductID) SalesByProduct,
	SUM(Sales) OVER(PARTITION BY ProductID, OrderStatus) SalesByProductAndStatus
FROM Sales.Orders

SELECT * FROM Sales.Orders

-- Rank each order based on their sales from the highest to the lowest.
-- Additionally provide details such as order Id, order date using PartitionBy.
SELECT
	OrderID,
	OrderDate,
	Sales,
	RANK() OVER (ORDER BY Sales DESC) RankSales
FROM Sales.Orders

-- Window Function Frames.
SELECT
	OrderID,
	OrderDate,
	ProductID,
	OrderStatus,
	Sales,
	SUM(Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate
	ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING) TotalSales
FROM Sales.Orders

-- Compact Window Frames.
SELECT
	OrderID,
	OrderDate,
	ProductID,
	OrderStatus,
	Sales,
	SUM(Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate
	ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) TotalSales
FROM Sales.Orders

-- Compact Window Frames Short Cut.
-- Works for only PRECEDING.
SELECT
	OrderID,
	OrderDate,
	ProductID,
	OrderStatus,
	Sales,
	SUM(Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate
	ROWS 2 PRECEDING) TotalSales
FROM Sales.Orders

-- Use Windowed functions only in SELECT or ORDER BY clauses.
-- You cannot use Windowed functions in the context of another Windowed function or aggregate.
-- SQL Executes Windowed functions after WHERE clause.
-- Windowed functions can be used together with the GROUP BY clause in the same query, 
-- ONLY if the the same columns are used.

SELECT
	CustomerID,
	SUM(Sales) TotalSales,
	RANK() OVER(ORDER BY SUM(Sales) DESC) RankCustomers
FROM Sales.Orders
GROUP BY CustomerID
