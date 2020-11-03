CREATE TABLE [stg].[ProductModelProductDescription] (
    [ProductModelID]       INT              NOT NULL,
    [ProductDescriptionID] INT              NOT NULL,
    [Culture]              NCHAR (6)        NOT NULL,
    [rowguid]              UNIQUEIDENTIFIER CONSTRAINT [DF_ProductModelProductDescription_rowguid] DEFAULT (newid()) NOT NULL,
    [ModifiedDate]         DATETIME         CONSTRAINT [DF_ProductModelProductDescription_ModifiedDate] DEFAULT (getdate()) NOT NULL
);

