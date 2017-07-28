# Transforming `ceds-nds-v7.sql` 
### and its Element and Ref Populate Scripts into snake_case, Redshift-ready, postgreSQL

## Steps

### 1) Load the Original v7 TSQL CamelCase Script
#### Debug the Original Source File loading scripts before making any substantive modifications
###### Tool Used: DbSchema 7.5.2
1) Converted create script from `UTF-16 BE` into `UTF-8`
2) `\nGO$` switched to `;\n`
3) Extra white space removed until the interpreter stopped throwing errors on these issues
4) Scripts split into < 10,000 line blocks (parts 1-11)
5) Removed semicolons and line-endings in the Element Tables
6) Confirmed that the Populate scripts were in `Western (Windows 1252)` or converted them.
7) Confirm that all tables have foreign keys attached and are fully loaded.
8) Use the script below to determine all tables that are empty.
```
SELECT 
    T.NAME AS 'TABLE NAME',
    P.[ROWS] AS 'NO OF ROWS'
FROM SYS.TABLES T 
INNER JOIN  SYS.PARTITIONS P ON T.OBJECT_ID = P.OBJECT_ID
WHERE T.NAME like ('Ref%')
    AND P.[ROWS] = 0;
```
9) Search and confirm that these tables are not in the load script. Contacted CEDS to confirm that these tables are not available: Duane Brown has been extremely receptive and helpful and many improvements have been made in the current 7th release.

### 2) Collect All Debugged Files and Convert to SnakeCase
1) load and bind all .sql script blocks - [1.TSQLv7camelCaseLoadScriptCollectBind](https://github.com/leerssej/aws_ceds_v7/blob/master/1.TSQLv7camelCaseLoadScriptCollectBind.R)
2) Convert all camelCase and PascalCase into snake_case (the capitalization will disappear in the course of loading into the case insensitive postgres compatible environments)[2.TSQLv7camel2snakeConvert.R](https://github.com/leerssej/aws_ceds_v7/blob/master/2.TSQLv7camel2snakeConvert.R)
    * Abbreviation collisions and other exceptions handled
    * Complete script sliced down into <10k line blocks.
    
### 3) Load up snake_case version into DatabaseTool
1) Convert project to Redshift.
2) Export data and files
3) Slice up into <10K line chunks
4) Load into SQL designing tool (I used DbSchema 7.6.0)or another SQL flavor conversion device.
5) Check that all tables are full: query is the same as above as we are still in TSQL.
6) Convert project properties into AmazonRedshift
7) Export Schema and Data

### 4) Debug schema in the postgres compatible Amazon Redshift environment
1) Change names of schemas to match postgresql standards
2) 