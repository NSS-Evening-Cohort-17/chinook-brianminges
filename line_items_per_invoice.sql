SELECT InvoiceId, Count(InvoiceLineId)
FROM InvoiceLine
GROUP BY InvoiceId