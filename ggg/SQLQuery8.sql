CREATE TABLE [dbo].[Appointments] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [d_id]        INT           NOT NULL,
    [ClinicName]  NVARCHAR (50) NOT NULL,
    [Day]         NVARCHAR (50) NOT NULL,
    [StartTime]   TIME (7)      NOT NULL,
    [EndTime]     TIME (7)      NOT NULL,
    [LastUpdated] NCHAR (10)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
      CONSTRAINT FK_Appointments FOREIGN KEY ([d_id])
        REFERENCES [dbo].[doctor] ([d_id])
);

