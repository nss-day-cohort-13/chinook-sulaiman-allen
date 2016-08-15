SELECT COUNT(il.Quantity) AS UnitsSold, mt.Name FROM InvoiceLine il, Track t, MediaType mt
WHERE il.TrackId == t.TrackId AND t.MediaTypeId == mt.MediaTypeId
GROUP BY mt.Name ORDER BY UnitsSold DESC LIMIT 1;
