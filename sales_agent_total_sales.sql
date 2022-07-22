SELECT E.FirstName, E.LastName, Sum(I.Total)
FROM Employee as E 
JOIN Customer as C 
ON E.EmployeeId = C.SupportRepId
JOIN Invoice as I 
ON I.CustomerId = C.CustomerId
WHERE E.Title = "Sales Support Agent"
GROUP BY E.LastName