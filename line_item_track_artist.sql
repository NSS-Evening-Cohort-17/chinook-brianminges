SELECT T.Name, Ar.Name, I.InvoiceLineId, I.InvoiceId, I.UnitPrice, I.Quantity
FROM InvoiceLine as I
JOIN Track as T
ON T.TrackId = I.TrackId
JOIN Album as Al
ON Al.AlbumId = T.AlbumId
JOIN Artist as Ar
ON Ar.ArtistId = Al.ArtistId