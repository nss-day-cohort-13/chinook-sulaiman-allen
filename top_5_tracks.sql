SELECT SUM(il.Quantity) AS NumberSold, t.Name FROM InvoiceLine il, Track t
WHERE il.TrackId == t.TrackId GROUP BY t.Name ORDER BY NumberSold DESC LIMIT 5;
