SELECT T.TrackId, count(T.TrackId) count
FROM Track as T 
JOIN InvoiceLine as Il
ON T.TrackId = Il.TrackId
GROUP BY T.TrackId
ORDER BY count DESC  


-- This needs to limit to the top five, but there are way more that sold 2 than just five so LIMIT 5 won't work