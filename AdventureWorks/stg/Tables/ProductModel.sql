CREATE TABLE [stg].[ProductModel] (
    [ProductModelID]     INT              IDENTITY (1, 1) NOT NULL,
    [Name]               NVARCHAR (50)    NOT NULL,
    [CatalogDescription] XML              NULL,
    [rowguid]            UNIQUEIDENTIFIER CONSTRAINT [DF_ProductModel_rowguid] DEFAULT (newid()) NOT NULL,
    [ModifiedDate]       DATETIME         CONSTRAINT [DF_ProductModel_ModifiedDate] DEFAULT (getdate()) NOT NULL
);

