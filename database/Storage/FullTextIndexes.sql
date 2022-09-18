CREATE FULLTEXT INDEX ON [dbo].[Word]
    ([Word] LANGUAGE 1033)
    KEY INDEX [PK_Word]
    ON [FulltextCatalog];
GO
CREATE FULLTEXT INDEX ON [dbo].[Definition]
    ([Definition] LANGUAGE 1033, [PartOfSpeech] LANGUAGE 1033)
    KEY INDEX [PK_Definition]
    ON [FulltextCatalog];
