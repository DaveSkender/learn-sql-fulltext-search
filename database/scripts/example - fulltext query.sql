USE learnDB
GO

DECLARE @searchterm VARCHAR(100) = 'brewing beer'

SELECT 
   d.[WordID],
   d.[ID] AS DefID,
   w.[Word],
   d.[PartOfSpeech] AS Pos,
   d.[Definition]
FROM dbo.[Word] w
INNER JOIN dbo.[Definition] d
  ON w.[ID] = d.[WordID]
LEFT JOIN 
   FREETEXTTABLE(dbo.[Word],[Word], @searchterm) ftw
   ON w.[ID] = ftw.[Key]
LEFT JOIN
   FREETEXTTABLE(dbo.[Definition], [Definition], @searchterm) ftd
   ON d.[ID] = ftd.[Key]
WHERE ftw.Rank IS NOT NULL 
   OR ftd.Rank IS NOT NULL
ORDER BY
   ftw.Rank DESC, 
   ftd.Rank DESC