SELECT BillingCountry, Count(BillingCountry)
FROM Invoice
GROUP BY BillingCountry