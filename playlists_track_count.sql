SELECT Pl.Name, Count(Pt.PlaylistId)
FROM Playlist as Pl
JOIN PlaylistTrack as Pt 
ON Pl.PlaylistId = Pt.PlaylistId
GROUP BY Pt.PlaylistId