CREATE TABLE [dbo].[Appointments]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [d_id] INT NOT NULL, 
    [ClinicName] NVARCHAR(50) NOT NULL, 
    [Day] NVARCHAR(50) NOT NULL, 
    [StartTime] TIME NOT NULL, 
    [EndTime] TIME NOT NULL, 
    [LastUpdated] NCHAR(10) NULL,

	    CONSTRAINT FK_Doctor FOREIGN KEY (d_id) REFERENCES doctor(id)

)
