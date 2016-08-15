SELECT t.Name AS TrackName, a.Title AS AlbumTitle, mt.Name AS MediaType, g.Name AS Genre
FROM Track t, Album a, MediaType mt, Genre g WHERE t.AlbumId == a.AlbumId
AND t.MediaTypeId == mt.MediaTypeID AND t.GenreId == g.GenreId ORDER BY AlbumTitle;
