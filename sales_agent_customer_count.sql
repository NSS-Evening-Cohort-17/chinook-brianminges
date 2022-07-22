SELECT E.FirstName, E.LastName, count(C.SupportRepId)
FROM Employee as E
LEFT JOIN Customer as C 
ON E.EmployeeId = C.SupportRepId
GROUP BY E.LastName