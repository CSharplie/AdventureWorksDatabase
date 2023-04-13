CREATE TABLE [dbo].[DimScenario] (
    [ScenarioKey]  INT           NOT NULL,
    [ScenarioName] NVARCHAR (50) NULL,
    CONSTRAINT [DimScenario_ScenarioKey] PRIMARY KEY CLUSTERED ([ScenarioKey] ASC)
);

