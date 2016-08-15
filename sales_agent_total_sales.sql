SELECT e.EmployeeId AS EmployeeID, e.FirstName AS FirstName, e.LastName AS LastName, SUM(i.Total) AS Total
FROM Employee e, Invoice i WHERE e.EmployeeId == i.CustomerId
AND (e.Title == "Sales Manager" OR e.Title == "Sales Support Agent")
GROUP BY EmployeeId;
