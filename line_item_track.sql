SELECT T.Name, I.InvoiceLineId, I.InvoiceId, I.UnitPrice, I.Quantity
FROM InvoiceLine as I
JOIN Track as T
WHERE T.TrackId = I.TrackId