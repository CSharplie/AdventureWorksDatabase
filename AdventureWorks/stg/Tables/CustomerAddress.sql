CREATE TABLE [stg].[CustomerAddress] (
    [CustomerID]   INT              NOT NULL,
    [AddressID]    INT              NOT NULL,
    [AddressType]  NVARCHAR (50)    NOT NULL,
    [rowguid]      UNIQUEIDENTIFIER CONSTRAINT [DF_CustomerAddress_rowguid] DEFAULT (newid()) NOT NULL,
    [ModifiedDate] DATETIME         CONSTRAINT [DF_CustomerAddress_ModifiedDate] DEFAULT (getdate()) NOT NULL
);

