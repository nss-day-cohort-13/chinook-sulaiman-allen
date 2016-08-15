SELECT i.BillingCountry AS Country, SUM(i.Total) FROM Invoice i GROUP BY Country;
