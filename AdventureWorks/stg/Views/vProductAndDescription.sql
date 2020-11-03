CREATE VIEW [stg].[vProductAndDescription]
WITH SCHEMABINDING
AS
-- View (indexed or standard) to display products and product descriptions by language.
SELECT
    p.[ProductID]
    ,p.[Name]
    ,pm.[Name] AS [ProductModel]
    ,pmx.[Culture]
    ,pd.[Description]
FROM [stg].[Product] p
    INNER JOIN [stg].[ProductModel] pm
    ON p.[ProductModelID] = pm.[ProductModelID]
    INNER JOIN [stg].[ProductModelProductDescription] pmx
    ON pm.[ProductModelID] = pmx.[ProductModelID]
    INNER JOIN [stg].[ProductDescription] pd
    ON pmx.[ProductDescriptionID] = pd.[ProductDescriptionID];


GO
CREATE UNIQUE CLUSTERED INDEX [IX_vProductAndDescription]
    ON [stg].[vProductAndDescription]([Culture] ASC, [ProductID] ASC);

