SELECT M.Name, count(Il.TrackId) TotalTracksSold
FROM MediaType as M
JOIN Track as T 
ON M.MediaTypeId = T.MediaTypeId
JOIN InvoiceLine as Il 
ON T.TrackId = Il.TrackId
GROUP BY M.Name