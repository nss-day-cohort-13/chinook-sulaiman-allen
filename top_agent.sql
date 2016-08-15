SELECT MAX(Sales.TotalSales) AS TopSales, Sales.EmployeeName
FROM (SELECT SUM(i.Total) TotalSales, e.FirstName || ' ' || e.LastName AS EmployeeName, STRFTIME('%Y', i.InvoiceDate) AS InvoiceYear
FROM Invoice i, Employee e, Customer c WHERE i.CustomerId = c.CustomerId AND c.SupportRepId = e. EmployeeId
GROUP BY EmployeeName ORDER BY TotalSales DESC) AS Sales;
