SELECT COUNT(c.CustomerId) AS CustomerCount, e.FirstName || ' ' || e.LastName AS EmployeeName
FROM Employee e, Customer c WHERE c.SupportRepId == e.EmployeeId GROUP BY EmployeeName;
