CREATE DATABASE InsuranceDB;
GO

USE InsuranceDB;
GO

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    CreatedAt DATETIME DEFAULT GETDATE()
);

CREATE TABLE Policies (
    PolicyID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    PolicyType VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    Premium DECIMAL(10,2),
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Claims (
    ClaimID INT PRIMARY KEY IDENTITY(1,1),
    PolicyID INT,
    ClaimDate DATE,
    ClaimAmount DECIMAL(10,2),
    ClaimStatus VARCHAR(20),
    Description TEXT,
    FOREIGN KEY (PolicyID) REFERENCES Policies(PolicyID)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    PolicyID INT,
    PaymentDate DATE,
    Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (PolicyID) REFERENCES Policies(PolicyID)
);
