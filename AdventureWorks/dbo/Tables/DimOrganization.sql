CREATE TABLE [dbo].[DimOrganization] (
    [OrganizationKey]       INT           NOT NULL,
    [ParentOrganizationKey] INT           NULL,
    [PercentageOfOwnership] NVARCHAR (16) NULL,
    [OrganizationName]      NVARCHAR (50) NULL,
    [CurrencyKey]           INT           NULL,
    CONSTRAINT [DimOrganization_OrganizationKey] PRIMARY KEY CLUSTERED ([OrganizationKey] ASC)
);

