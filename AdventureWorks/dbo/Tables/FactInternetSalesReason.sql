CREATE TABLE [dbo].[FactInternetSalesReason] (
    [SalesOrderNumber]     NVARCHAR (20) NOT NULL,
    [SalesOrderLineNumber] TINYINT       NOT NULL,
    [SalesReasonKey]       INT           NOT NULL,
    CONSTRAINT [FactInternetSalesReason_SalesReasonKey] PRIMARY KEY CLUSTERED ([SalesReasonKey] ASC)
);

