CREATE TABLE [stg].[ProductCategory] (
    [ProductCategoryID]       INT              IDENTITY (1, 1) NOT NULL,
    [ParentProductCategoryID] INT              NULL,
    [Name]                    NVARCHAR (50)    NOT NULL,
    [rowguid]                 UNIQUEIDENTIFIER CONSTRAINT [DF_ProductCategory_rowguid] DEFAULT (newid()) NOT NULL,
    [ModifiedDate]            DATETIME         CONSTRAINT [DF_ProductCategory_ModifiedDate] DEFAULT (getdate()) NOT NULL
);

