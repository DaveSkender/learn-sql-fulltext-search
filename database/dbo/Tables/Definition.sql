CREATE TABLE [dbo].[Definition] (
    [ID]           INT            IDENTITY (1, 1) NOT NULL,
    [WordID]       INT            NOT NULL,
    [PartOfSpeech] VARCHAR (50)   NULL,
    [Definition]   VARCHAR (2500) NULL,
    CONSTRAINT [PK_Definition] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Definition_Word] FOREIGN KEY ([WordID]) REFERENCES [dbo].[Word] ([ID]) ON DELETE CASCADE
);
