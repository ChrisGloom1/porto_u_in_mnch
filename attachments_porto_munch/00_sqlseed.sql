-- Create the MUNCH database
CREATE DATABASE MUNCH;
GO

-- Use the MUNCH database
USE MUNCH;
GO

-- Create the MUNCH schema
CREATE SCHEMA MUNCH;
GO

-- Create the Users table in the MUNCH schema
CREATE TABLE MUNCH.Users (
    UserId INT IDENTITY(1,1) PRIMARY KEY,
    Email VARCHAR(50),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Password VARCHAR(50),
    FullName AS (FirstName + ' ' + LastName),
    DateOfBirth DATE,
    CreatedAt DATETIME
);
GO

-- Create the Infinite_v1 table in the MUNCH schema
CREATE TABLE MUNCH.Infinite_v1 (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    userID INT,
    task1 BIT,
    task2 BIT,
    task3 BIT,
    task4 BIT,
    task5 BIT,
    task6 BIT,
    FOREIGN KEY (userID) REFERENCES MUNCH.Users(UserId)
);
GO

-- Insert data into the Users table
INSERT INTO MUNCH.Users (Email, FirstName, LastName, Password, DateOfBirth, CreatedAt)
VALUES
    ('test@gmail.com', 'Test', 'Testsson', 'ProgrammingIsC00L', '1995-06-09', GETDATE());
GO

-- Insert data into the Infinite_v1 table
INSERT INTO MUNCH.Infinite_v1 (userID, task1, task2, task3, task4, task5, task6)
VALUES (1, 0, 0, 0, 0, 0, 0);
GO