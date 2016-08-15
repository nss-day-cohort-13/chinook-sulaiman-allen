SELECT COUNT(l.Quantity) AS LineItems From Invoice i, InvoiceLine l
WHERE i.InvoiceId == 37 AND l.InvoiceId == 37;
