-- Automatically update policy status when expired
CREATE TRIGGER UpdatePolicyStatus
ON Policies
AFTER UPDATE
AS
BEGIN
    UPDATE Policies
    SET Status = 'Expired'
    WHERE EndDate < GETDATE();
END;
GO
