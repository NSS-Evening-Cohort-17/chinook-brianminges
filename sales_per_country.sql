SELECT I.BillingCountry, count(I.BillingCountry)
FROM Invoice as I
GROUP BY I.BillingCountry
 