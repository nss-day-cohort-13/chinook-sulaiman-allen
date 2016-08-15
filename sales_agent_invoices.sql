SELECT e.FirstName, e.LastName, i.* FROM Employee e, Invoice i,  Customer c
WHERE c.SupportRepId == e.EmployeeId AND i.CustomerID == c.CustomerID;
