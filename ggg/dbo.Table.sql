CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Email] NVARCHAR(50) NULL, 
    [Photo] IMAGE NULL, 
    [Specialization] NVARCHAR(50) NOT NULL, 
    [CV] NVARCHAR(MAX) NULL, 
    [experience] NVARCHAR(50) NOT NULL, 
    [Phone] NCHAR(10) NOT NULL
)
