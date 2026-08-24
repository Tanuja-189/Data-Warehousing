/*

Creating the initial database and schemas for the DataWarehouse
Created three schemas bronze, silver and gold for the further layers of the data warehouse.


IMPORTANT NOTE:
Running this script will drop the entire database "DataWarehouse" and any data residing on it will be lost.


*/

USE master;
GO

--Drop and recreate the 'DataWarehouse' database

IF EXISTS(SELECT 1 FROM sys.databases WHERE name ='DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO