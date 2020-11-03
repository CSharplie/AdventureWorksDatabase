CREATE TABLE [stg].[Address] (
    [AddressID]     INT              IDENTITY (1, 1) NOT NULL,
    [AddressLine1]  NVARCHAR (60)    NOT NULL,
    [AddressLine2]  NVARCHAR (60)    NULL,
    [City]          NVARCHAR (30)    NOT NULL,
    [StateProvince] NVARCHAR (50)    NOT NULL,
    [CountryRegion] NVARCHAR (50)    NOT NULL,
    [PostalCode]    NVARCHAR (15)    NOT NULL,
    [rowguid]       UNIQUEIDENTIFIER NOT NULL,
    [ModifiedDate]  DATETIME         NOT NULL
);

