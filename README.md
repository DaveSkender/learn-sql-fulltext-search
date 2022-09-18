# learn SQL full-text search with fuzzy logic

A hello-world example of the [Azure SQL Database full-text search](https://docs.microsoft.com/en-us/sql/relational-databases/search/get-started-with-full-text-search) capability.

## tools used

- [SQL Server 2019 Developer Edition](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) - Database Engine only with optional Full-Text Search components; *do not install the standalone SQL Server Data Tools (SSDT) component here*.
- [SQL Server Management Studio](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16#download-ssms) (SSMS) 18.x
- [Visual Studio 2022 Community Edition](https://visualstudio.microsoft.com/) with **SQL Server Data Tools** workload turned on (see [license terms](https://visualstudio.microsoft.com/license-terms/vs2022-ga-community/) regarding allowed use for SSDT in orgs).

## target environment

- Azure SQL Database

## synopsis

This full-text search demonstration shows you how to:

1. setup a SQL Server Database project
2. use post-deployment scripts to load data with an [idempotent technique](https://www.sqlservercentral.com/steps/idempotent-ddl-scripts-that-always-achieve-the-same-result-making-changes-only-once-stairway-to-exploring-database-metadata-level-6)
3. create a full-text catalog and index on an indexed view
4. fuzzy search the catalog to return matching records with relevance ranking
5. setup and use SQL deployment configuration settings
6. build and deploy a database using [DACPAC](https://docs.microsoft.com/en-us/sql/relational-databases/data-tier-applications/data-tier-applications)-based publishing

## developer getting started

1. install the tools listed below
2. open learnDB.sln in Visual Studio Community
3. edit the "database.csproj" properties from the Solution Explorer right-click menu; change the Debug deploy target to your local instance of SQL Server
4. click the "start" button to deploy (monitory the Output window for success/failure) -- this will take several minutes due to a large amount of post-deploy data loading
5. open a new query window in SSMS and execute `EXEC dbo.usp_DictionarySearch @searchterm='beer brewing'` to get example search results

## more info on key concepts

- [Querying with full-text search](https://docs.microsoft.com/en-us/sql/relational-databases/search/query-with-full-text-search?view=sql-server-ver15)

## tools used

- [SQL Server 2019 Developer Edition](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) - Database Engine only with optional Full-Text Search components; *do not install the standalone SQL Server Data Tools (SSDT) component here*.
- [SQL Server Management Studio](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16#download-ssms) (SSMS) 18.x
- [Visual Studio 2022 Community Edition](https://visualstudio.microsoft.com/) with **SQL Server Data Tools** workload turned on (see [license terms](https://visualstudio.microsoft.com/license-terms/vs2022-ga-community/) regarding allowed use for SSDT in orgs).
