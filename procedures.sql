-- Add a new claim
CREATE PROCEDURE AddClaim
    @PolicyID INT,
    @Amount DECIMAL(10,2),
    @Description TEXT
AS
BEGIN
    INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus, Description)
    VALUES (@PolicyID, GETDATE(), @Amount, 'Pending', @Description);
END;
GO

-- Make a payment
CREATE PROCEDURE MakePayment
    @PolicyID INT,
    @Amount DECIMAL(10,2),
    @Method VARCHAR(50)
AS
BEGIN
    INSERT INTO Payments (PolicyID, PaymentDate, Amount, PaymentMethod)
    VALUES (@PolicyID, GETDATE(), @Amount, @Method);
END;
GO
