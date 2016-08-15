/* 1. SELECT c.* FROM Customer c WHERE c.Country != "USA" ORDER BY c.Country ASC;*/
/* 2. SELECT c.* FROM Customer c WHERE c.Country == "Brazil" ORDER BY c.Country ASC; */
/* 3. SELECT c.FirstName || ' ' ||  c.LastName AS EmployeeName, i.InvoiceID, i.InvoiceDate, i.BillingCountry
FROM  Customer c, Invoice i  WHERE i.BillingCountry="Brazil" ORDER BY EmployeeName, i.BillingCountry, i.Total DESC;*/
/* 4. SELECT * FROM Employee WHERE Title="Sales Support Agent"; */
/* 5. SELECT DISTINCT BillingCountry FROM Invoice; */
/* 6. SELECT e.FirstName, e.LastName, i.* FROM Employee e, Invoice i,  Customer c 
WHERE c.SupportRepId == e.EmployeeId AND i.CustomerID == c.CustomerID; */
/* 7. SELECT i.Total, c.FirstName, c.LastName, c.Country,  e.FirstName, e.LastName 
FROM Customer c, Invoice i, Employee e WHERE e.EmployeeId == c.SupportRepId AND c.CustomerId == i.CustomerId; */
/* 8. SELECT COUNT(i.InvoiceId) AS TotalInvoices, STRFTIME('%Y', i.InvoiceDate) AS InvoiceYear
FROM Invoice i WHERE InvoiceYear == '2011' OR InvoiceYear == '2009' GROUP BY InvoiceYear; */
/* 9. SELECT SUM(i.Total) AS TotalSales, STRFTIME('%Y', i.InvoiceDate) AS InvoiceYear 
FROM Invoice i WHERE InvoiceYear == '2011' OR InvoiceYear == '2013' GROUP BY InvoiceYear; */
/* 10. SELECT COUNT(l.Quantity) AS LineItems From Invoice i, InvoiceLine l 
WHERE i.InvoiceId == 37 AND l.InvoiceId == 37; */
/* 11. SELECT l.InvoiceId, COUNT(l.Quantity) AS LineItems From Invoice i, InvoiceLine l 
WHERE i.InvoiceID == l.InvoiceId GROUP BY l.InvoiceId; */
/* 12. SELECT l.InvoiceLineId, t.Name FROM Track t, InvoiceLine l  WHERE t.TrackId == l.TrackId 
GROUP BY l.InvoiceLineId; */
/* 13. SELECT ar.ArtistId, ar.Name, t.Name FROM Track t, InvoiceLine l, Album a, Artist ar  
WHERE t.TrackId == l.TrackId AND t.AlbumId == a.AlbumId AND a.ArtistId == ar.ArtistId
GROUP BY ar.ArtistId; */
/* 14. SELECT i.BillingCountry, COUNT(i.InvoiceId) as InvoicesPerCountry 
FROM Invoice i GROUP BY i.BillingCountry ORDER BY InvoicesPerCountry DESC; */
/* 15. SELECT pl.Name AS PlaylistName, COUNT(t.Name) AS TrackNumber FROM Playlist pl, PlaylistTrack pt, Track t 
WHERE t.TrackId == pt.TrackId AND pl.PlaylistId == pt.PlaylistId GROUP BY pl.Name; */
/* 16.  SELECT t.Name AS TrackName, a.Title AS AlbumTitle, mt.Name AS MediaType, g.Name AS Genre 
FROM Track t, Album a, MediaType mt, Genre g WHERE t.AlbumId == a.AlbumId 
AND t.MediaTypeId == mt.MediaTypeID AND t.GenreId == g.GenreId ORDER BY AlbumTitle; */
/* 17. SELECT COUNT(i.InvoiceId) AS InvoiceCount, i.InvoiceDate AS Date, i.BillingAddress AS Address, i.Total AS Total 
FROM Invoice i, InvoiceLine il WHERE i.InvoiceId == il.InvoiceId GROUP BY i.InvoiceId; */
 /* 18. SELECT e.EmployeeId AS EmployeeID, e.FirstName AS FirstName, e.LastName AS LastName, SUM(i.Total) AS Total
FROM Employee e, Invoice i WHERE e.EmployeeId == i.CustomerId 
AND (e.Title == "Sales Manager" OR e.Title == "Sales Support Agent")
GROUP BY EmployeeId; */
/* 19. SELECT MAX(Sales.TotalSales) AS TopSales, Sales.EmployeeName
FROM (SELECT SUM(i.Total) TotalSales, e.FirstName || ' ' || e.LastName AS EmployeeName, STRFTIME('%Y', i.InvoiceDate) AS InvoiceYear
FROM Invoice i, Employee e, Customer c WHERE i.CustomerId = c.CustomerId AND c.SupportRepId = e. EmployeeId AND InvoiceYear = '2009'
GROUP BY EmployeeName ORDER BY TotalSales DESC) AS Sales; */
/* 20. SELECT MAX(Sales.TotalSales) AS TopSales, Sales.EmployeeName
FROM (SELECT SUM(i.Total) TotalSales, e.FirstName || ' ' || e.LastName AS EmployeeName, STRFTIME('%Y', i.InvoiceDate) AS InvoiceYear
FROM Invoice i, Employee e, Customer c WHERE i.CustomerId = c.CustomerId AND c.SupportRepId = e. EmployeeId
GROUP BY EmployeeName ORDER BY TotalSales DESC) AS Sales; */
/* 21. SELECT COUNT(c.CustomerId) AS CustomerCount, e.FirstName || ' ' || e.LastName AS EmployeeName
FROM Employee e, Customer c WHERE c.SupportRepId == e.EmployeeId GROUP BY EmployeeName; */
/* 22. SELECT i.BillingCountry AS Country, SUM(i.Total) FROM Invoice i GROUP BY Country; */ 
/* 23. SELECT MAX(Total.TotalSpent) AS TotalSales, Country
FROM (SELECT i.BillingCountry AS Country, SUM(i.Total) AS TotalSpent
FROM Invoice i GROUP BY Country ORDER BY TotalSpent DESC) AS Total; */
/* 24. SELECT MAX(TOPSOLD.NumberSold) AS UnitsSold, TOPSOLD.Name
FROM(SELECT COUNT(il.Quantity) AS NumberSold, t.Name AS Name FROM InvoiceLine il, Track t WHERE il.TrackId == t.TrackId
GROUP BY Name ORDER BY NumberSold DESC) AS TOPSOLD; */
/* 25. SELECT SUM(il.Quantity) AS NumberSold, t.Name FROM InvoiceLine il, Track t 
WHERE il.TrackId == t.TrackId GROUP BY t.Name ORDER BY NumberSold DESC LIMIT 5; */
/* 26. SELECT COUNT(il.Quantity) AS UnitsSold,  a.Name AS Name FROM InvoiceLine il, Artist a, Track t, Album al
WHERE il.TrackId == t.TrackId AND t.AlbumId == al.AlbumId AND al.ArtistId == a.ArtistId
GROUP BY a.Name ORDER BY UnitsSold DESC LIMIT 3; */
/* 27. SELECT COUNT(il.Quantity) AS UnitsSold, mt.Name FROM InvoiceLine il, Track t, MediaType mt
WHERE il.TrackId == t.TrackId AND t.MediaTypeId == mt.MediaTypeId
GROUP BY mt.Name ORDER BY UnitsSold DESC LIMIT 1; */