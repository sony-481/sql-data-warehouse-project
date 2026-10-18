/*
=============================================
Create Database and schemams
=============================================

Script purpose:
   This script  creates a new database named "Datawarehouse" after checking if it already exists.
If the databased exists, it is dropped and recreated. Aditionally, the script  sets up three schemas within the database : 'bronze', 'silver', ,'gold'.

WARNING:
 Running this script will drop the entire 'Datawarehouse' database if it exists.
All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.

*/




use master;
GO

--Drop and recreate the 'Datawarehouse' database
  IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
  BEGIN 
    ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE 'Datawarehouse';
END;
GO
  --create database Datawarehouse
CREATE DATABASE Datawarehouse;

use Datawarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
