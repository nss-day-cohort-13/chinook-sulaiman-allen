SELECT i.BillingCountry, COUNT(i.InvoiceId) as InvoicesPerCountry
FROM Invoice i GROUP BY i.BillingCountry ORDER BY InvoicesPerCountry DESC;
