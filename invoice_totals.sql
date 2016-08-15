SELECT i.Total, c.FirstName, c.LastName, c.Country,  e.FirstName, e.LastName
FROM Customer c, Invoice i, Employee e WHERE e.EmployeeId == c.SupportRepId
AND c.CustomerId == i.CustomerId;
