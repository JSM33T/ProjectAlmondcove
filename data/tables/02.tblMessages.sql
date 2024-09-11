CREATE TABLE [dbo].[tblMessages]
(
	---------------------------------------------------------------------------
    Id              INT					NOT NULL,
	---------------------------------------------------------------------------
    Content			NVARCHAR(512)		NOT NULL,
	---------------------------------------------------------------------------
	[Name]          NVARCHAR(128)		NOT NULL	DEFAULT 'anonymous',
	---------------------------------------------------------------------------
	Email			NVARCHAR(128)		NOT NULL	DEFAULT 'na',
	---------------------------------------------------------------------------
    Topic           NVARCHAR(128)		NOT NULL	DEFAULT 'general',
	---------------------------------------------------------------------------
    Origin          NVARCHAR(256)		NOT NULL	DEFAULT '/',
	---------------------------------------------------------------------------
    DateAdded       DATETIME			NOT NULL	DEFAULT GETDATE(),
	---------------------------------------------------------------------------
    CONSTRAINT      PK_MessageTable		PRIMARY KEY (Id),
	---------------------------------------------------------------------------
    CONSTRAINT      UQ_MessageContent	UNIQUE (Content)
	---------------------------------------------------------------------------
);