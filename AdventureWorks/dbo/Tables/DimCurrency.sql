CREATE TABLE [dbo].[DimCurrency] (
    [CurrencyKey]          INT           NOT NULL,
    [CurrencyAlternateKey] NCHAR (3)     NOT NULL,
    [CurrencyName]         NVARCHAR (50) NOT NULL,
    CONSTRAINT [DimCurrency_CurrencyKey] PRIMARY KEY CLUSTERED ([CurrencyKey] ASC)
);

