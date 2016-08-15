SELECT pl.Name AS PlaylistName, COUNT(t.Name) AS TrackNumber FROM Playlist pl, PlaylistTrack pt, Track t 
WHERE t.TrackId == pt.TrackId AND pl.PlaylistId == pt.PlaylistId GROUP BY pl.Name;
