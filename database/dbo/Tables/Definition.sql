CREATE TABLE [dbo].[Definition] (
    [ID]           INT            IDENTITY (1, 1) NOT NULL,
    [Word]         VARCHAR (100)  NOT NULL,
    [PartOfSpeech] VARCHAR (10)   NULL,
    [Definition]   VARCHAR (5000) NULL,
    CONSTRAINT [PK_Definition] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Definition_Word] FOREIGN KEY ([Word]) REFERENCES [dbo].[Word] ([Word])
);

