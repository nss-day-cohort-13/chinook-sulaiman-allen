SELECT c.FirstName || ' ' ||  c.LastName AS EmployeeName, i.InvoiceID, i.InvoiceDate, i.BillingCountry
FROM  Customer c, Invoice i  WHERE i.BillingCountry="Brazil" ORDER BY EmployeeName, i.BillingCountry, i.Total DESC;
