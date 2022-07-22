SELECT FirstName, LastName, Country, InvoiceId, InvoiceDate, BillingCountry
FROM Customer as C 
JOIN Invoice as I 
ON C.CustomerId = I.CustomerId
WHERE Country = "Brazil"




