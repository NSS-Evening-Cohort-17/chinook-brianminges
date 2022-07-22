SELECT A.Name, Il.TrackId, count(Il.TrackId) TracksSold
FROM Artist as A
JOIN Album as Al 
ON A.ArtistId = Al.ArtistId
JOIN Track as T 
ON Al.AlbumId = T.AlbumId
JOIN InvoiceLine as Il 
ON T.TrackId = Il.TrackId
GROUP BY A.Name
ORDER BY TracksSold DESC Limit 3