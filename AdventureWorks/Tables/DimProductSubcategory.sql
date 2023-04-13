CREATE TABLE [dbo].[DimProductSubcategory] (
    [ProductSubcategoryKey]          INT           NOT NULL,
    [ProductSubcategoryAlternateKey] INT           NULL,
    [EnglishProductSubcategoryName]  NVARCHAR (50) NOT NULL,
    [SpanishProductSubcategoryName]  NVARCHAR (50) NOT NULL,
    [FrenchProductSubcategoryName]   NVARCHAR (50) NOT NULL,
    [ProductCategoryKey]             INT           NULL,
    CONSTRAINT [DimProductSubcategory_ProductSubcategoryKey] PRIMARY KEY CLUSTERED ([ProductSubcategoryKey] ASC)
);

