SELECT MAX(TOPSOLD.NumberSold) AS UnitsSold, TOPSOLD.Name
FROM(SELECT COUNT(il.Quantity) AS NumberSold, t.Name AS Name FROM InvoiceLine il, Track t WHERE il.TrackId == t.TrackId
GROUP BY Name ORDER BY NumberSold DESC) AS TOPSOLD;
