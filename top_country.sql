SELECT I.BillingCountry, sum(I.Total) Total
FROM Invoice as I
GROUP BY I.BillingCountry
HAVING sum(I.Total) = (
    SELECT max(Total) 
        FROM (SELECT I.BillingCountry, sum(I.Total) Total
        FROM Invoice as I
        GROUP BY I.BillingCountry
    )
)
 