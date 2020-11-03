CREATE VIEW [stg].[vGetAllCategories]
WITH SCHEMABINDING
AS
-- Returns the CustomerID, first name, and last name for the specified customer.
WITH CategoryCTE([ParentProductCategoryID], [ProductCategoryID], [Name]) AS
(
    SELECT [ParentProductCategoryID], [ProductCategoryID], [Name]
    FROM stg.ProductCategory
    WHERE ParentProductCategoryID IS NULL

UNION ALL

    SELECT C.[ParentProductCategoryID], C.[ProductCategoryID], C.[Name]
    FROM stg.ProductCategory AS C
    INNER JOIN CategoryCTE AS BC ON BC.ProductCategoryID = C.ParentProductCategoryID
)

SELECT PC.[Name] AS [ParentProductCategoryName], CCTE.[Name] as [ProductCategoryName], CCTE.[ProductCategoryID]
FROM CategoryCTE AS CCTE
JOIN stg.ProductCategory AS PC
ON PC.[ProductCategoryID] = CCTE.[ParentProductCategoryID]