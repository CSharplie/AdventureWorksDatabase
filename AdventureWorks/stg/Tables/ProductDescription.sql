CREATE TABLE [stg].[ProductDescription] (
    [ProductDescriptionID] INT              IDENTITY (1, 1) NOT NULL,
    [Description]          NVARCHAR (400)   NOT NULL,
    [rowguid]              UNIQUEIDENTIFIER CONSTRAINT [DF_ProductDescription_rowguid] DEFAULT (newid()) NOT NULL,
    [ModifiedDate]         DATETIME         CONSTRAINT [DF_ProductDescription_ModifiedDate] DEFAULT (getdate()) NOT NULL
);

