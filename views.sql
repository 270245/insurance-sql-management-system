-- Active Policies View
CREATE VIEW ActivePolicies AS
SELECT 
    c.FirstName,
    c.LastName,
    p.PolicyType,
    p.Premium,
    p.Status
FROM Customers c
JOIN Policies p ON c.CustomerID = p.CustomerID
WHERE p.Status = 'Active';
GO

-- Claims Summary View
CREATE VIEW ClaimsSummary AS
SELECT 
    p.PolicyType,
    COUNT(cl.ClaimID) AS TotalClaims,
    SUM(cl.ClaimAmount) AS TotalAmount
FROM Claims cl
JOIN Policies p ON cl.PolicyID = p.PolicyID
GROUP BY p.PolicyType;
GO
