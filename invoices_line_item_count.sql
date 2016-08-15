SELECT COUNT(i.InvoiceId) AS InvoiceCount, i.InvoiceDate AS Date, i.BillingAddress AS Address, i.Total AS Total
FROM Invoice i, InvoiceLine il WHERE i.InvoiceId == il.InvoiceId GROUP BY i.InvoiceId;
