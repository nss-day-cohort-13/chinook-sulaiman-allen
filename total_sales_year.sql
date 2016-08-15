SELECT SUM(i.Total) AS TotalSales, STRFTIME('%Y', i.InvoiceDate) AS InvoiceYear
FROM Invoice i WHERE InvoiceYear == '2011' OR InvoiceYear == '2013' GROUP BY InvoiceYear;
