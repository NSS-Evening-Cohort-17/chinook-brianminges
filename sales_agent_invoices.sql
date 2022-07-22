SELECT E.FirstName, E.LastName, I.InvoiceId
FROM Customer as C 
JOIN Invoice as I
ON C.CustomerId = I.CustomerId
JOIN Employee as E
WHERE E.Title="Sales Support Agent"

 