SELECT l.InvoiceId, COUNT(l.Quantity) AS LineItems From Invoice i, InvoiceLine l
WHERE i.InvoiceID == l.InvoiceId GROUP BY l.InvoiceId;
