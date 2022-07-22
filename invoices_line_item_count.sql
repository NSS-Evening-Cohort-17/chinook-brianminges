SELECT I.InvoiceId, Count(Il.InvoiceId)
FROM Invoice as I
JOIN InvoiceLine as Il 
ON I.InvoiceId = Il.InvoiceId
GROUP By Il.InvoiceId