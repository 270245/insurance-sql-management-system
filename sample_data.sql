INSERT INTO Customers (FirstName, LastName, Email, Phone)
VALUES 
('John', 'Doe', 'john@example.com', '1234567890'),
('Jane', 'Smith', 'jane@example.com', '0987654321');

INSERT INTO Policies (CustomerID, PolicyType, StartDate, EndDate, Premium, Status)
VALUES
(1, 'Auto', '2025-01-01', '2026-01-01', 500.00, 'Active'),
(2, 'Home', '2025-02-01', '2026-02-01', 800.00, 'Active');

INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus, Description)
VALUES
(1, '2025-03-01', 1500.00, 'Pending', 'Accident damage'),
(2, '2025-03-05', 3000.00, 'Approved', 'Water leak damage');

INSERT INTO Payments (PolicyID, PaymentDate, Amount, PaymentMethod)
VALUES
(1, '2025-01-05', 500.00, 'Credit Card'),
(2, '2025-02-05', 800.00, 'Bank Transfer');
