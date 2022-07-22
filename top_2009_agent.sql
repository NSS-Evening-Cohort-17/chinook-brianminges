SELECT E.FirstName, E.LastName, I.InvoiceId, I.InvoiceDate, sum(I.Total) TotalSold
FROM Employee as E 
JOIN Customer as C
ON E.EmployeeId = C.SupportRepId
JOIN Invoice as I 
ON C.CustomerId = I.CustomerId
WHERE I.InvoiceDate LIKE "%2009%"
AND Title="Sales Support Agent"
GROUP BY E.LastName
HAVING sum(I.Total) = (
    SELECT max(TotalSold) 
    FROM (SELECT E.FirstName, E.LastName, I.InvoiceId, I.InvoiceDate, sum(I.Total) TotalSold
    FROM Employee as E 
    JOIN Customer as C
    ON E.EmployeeId = C.SupportRepId
    JOIN Invoice as I 
    ON C.CustomerId = I.CustomerId
    WHERE I.InvoiceDate LIKE "%2009%"
    AND Title="Sales Support Agent"
    GROUP BY E.LastName)
)
 

 
