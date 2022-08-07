﻿CREATE TABLE [dbo].[Word] (
    [ID]   INT           IDENTITY (1, 1) NOT NULL,
    [Word] VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_Word] PRIMARY KEY NONCLUSTERED ([ID] ASC)
);
GO
CREATE UNIQUE CLUSTERED INDEX uidx_Word 
  ON dbo.Word([Word] ASC)
GO