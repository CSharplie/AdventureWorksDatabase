CREATE TABLE [dbo].[DimDepartmentGroup] (
    [DepartmentGroupKey]       INT           NOT NULL,
    [ParentDepartmentGroupKey] INT           NULL,
    [DepartmentGroupName]      NVARCHAR (50) NULL,
    CONSTRAINT [DimDepartmentGroup_DepartmentGroupKey] PRIMARY KEY CLUSTERED ([DepartmentGroupKey] ASC)
);

