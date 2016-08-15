SELECT l.InvoiceLineId, t.Name FROM Track t, InvoiceLine l  WHERE t.TrackId == l.TrackId
GROUP BY l.InvoiceLineId;
