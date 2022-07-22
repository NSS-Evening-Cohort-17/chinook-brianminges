SELECT I.InvoiceId, I.Total, C.FirstName, C.LastName, C.Country, E.FirstName, E.LastName         
FROM Invoice as I
JOIN Customer as C
ON I.CustomerId = C.CustomerId
JOIN Employee as E
ON C.SupportRepId = E.EmployeeId
