SELECT COUNT(il.Quantity) AS UnitsSold,  a.Name AS Name FROM InvoiceLine il, Artist a, Track t, Album al
WHERE il.TrackId == t.TrackId AND t.AlbumId == al.AlbumId AND al.ArtistId == a.ArtistId
GROUP BY a.Name ORDER BY UnitsSold DESC LIMIT 3;
