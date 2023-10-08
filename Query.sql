-- Create a new database called 'Programming'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'Programming'
)
CREATE DATABASE Programming
GO

CREATE LOGIN [PythonLogin] WITH PASSWORD = 'E#DI@2ef23fg'
GO

USE Programming
GO

CREATE USER [PythonLogin] FOR LOGIN  PythonLogin
GO

ALTER ROLE DB_OWNER ADD MEMBER PythonLogin
GO


-- Create a new table called '[Customers]' in schema '[dbo]'
-- Drop the table if it already exists
DROP TABLE IF EXISTS [dbo].[Customers]
GO

-- Create the table in the specified schema
CREATE TABLE Customers (
    ID INT IDENTITY PRIMARY KEY,
    FirstName VARCHAR(10),
    LastName VARCHAR(15),
    Address VARCHAR(100),
    Phone VARCHAR(25)
    );
GO

-- Select rows from a Table or View '[Customers]' in schema '[dbo]'
SELECT * FROM [dbo].[Customers]
GO