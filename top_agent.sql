SELECT E.FirstName, E.LastName, sum(I.Total) Total
FROM Employee as E 
JOIN Customer as C
ON E.EmployeeId = C.SupportRepId
JOIN Invoice as I 
ON C.CustomerId = I.CustomerId
WHERE Title="Sales Support Agent"
GROUP BY E.LastName
HAVING sum(I.Total) = (
    SELECT max(Total) 
    FROM (
        SELECT E.FirstName, E.LastName, sum(I.Total) Total
        FROM Employee as E 
        JOIN Customer as C
        ON E.EmployeeId = C.SupportRepId
        JOIN Invoice as I 
        ON C.CustomerId = I.CustomerId
        WHERE Title="Sales Support Agent"
        GROUP BY E.LastName
    )
)
