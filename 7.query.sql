SELECT DISTINCT c.ClientName, c.ContactName, c.ContactEmail
FROM Clients c
JOIN Projects p ON c.ClientID = p.ClientID
WHERE p.Deadline > '2024-10-31';
