SELECT SUM(Total)
FROM INVOICE
WHERE Invoice.InvoiceDate LIKE "%2009%" OR Invoice.InvoiceDate LIKE "%2011%"