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

--Find the total Sales for each Product, Additionally provide details such as order Id, order date.
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

--Find the total Sales for each Product, Additionally provide details such as order Id, order date.
SELECT
	OrderID,
	OrderDate,
	ProductID,
	SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesByProduct
FROM Sales.Orders
