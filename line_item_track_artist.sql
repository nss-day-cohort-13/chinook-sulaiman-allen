SELECT ar.ArtistId, ar.Name, t.Name FROM Track t, InvoiceLine l, Album a, Artist ar
WHERE t.TrackId == l.TrackId AND t.AlbumId == a.AlbumId AND a.ArtistId == ar.ArtistId
GROUP BY ar.ArtistId;
