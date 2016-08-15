SELECT MAX(Total.TotalSpent) AS TotalSales, Country
FROM (SELECT i.BillingCountry AS Country, SUM(i.Total) AS TotalSpent
FROM Invoice i GROUP BY Country ORDER BY TotalSpent DESC) AS Total;
