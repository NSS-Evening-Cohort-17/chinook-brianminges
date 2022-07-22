SELECT Il.TrackId, T.Name, count(Il.TrackId)  
FROM InvoiceLine as Il 
JOIN Invoice as I
ON Il.InvoiceId = I.InvoiceId
JOIN Track as T 
ON Il.TrackId = T.TrackId
WHERE I.InvoiceDate LIKE "%2013%"
GROUP BY Il.TrackId
HAVING count(Il.TrackId) = (
    SELECT max(Total) 
        FROM (SELECT Il.TrackId, T.Name, count(Il.TrackId) Total 
        FROM InvoiceLine as Il 
        JOIN Invoice as I
        ON Il.InvoiceId = I.InvoiceId
        JOIN Track as T 
        ON Il.TrackId = T.TrackId
        WHERE I.InvoiceDate LIKE "%2013%"
        GROUP BY Il.TrackId
    )
)
 