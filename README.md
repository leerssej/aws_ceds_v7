# Transforming `ceds-nds-v7.sql` 
### and its `Element` and `Ref` Populate Scripts into snake_case, Redshift-ready, postgreSQL

## Steps

### 0) Download the Original v7 TSQL CamelCase Script
Found here: https://ceds.ed.gov/dataModelNDS.aspx

### 1) Prepare T-SQL PascalCase Script for loading
#### Debug the Original Source File loading scripts before making any substantive modifications
###### Tool Used: DbSchema 7.6.0
##### Procedure Log:
1) Convert create script from `UTF-16 BE` into `UTF-8`
2) Switch `\nGO$` to `;\n`
3) Extra white space needs to be removed until the interpreter stopped throwing errors
4) Scripts must be split into < 10,000 line blocks (and labelled parts 1-11) to allow for loading in DbSchema
5) Remove semicolons and line-endings in the Element tables
6) Confirm that the Populate scripts are in `Western (Windows 1252)` or convert them.
7) Confirm that all tables have foreign keys attached and are fully loaded.
8) Use the query below to locate which if any of tables are empty, and note this down so you don't look for them after conversion.
```
SELECT 
    T.NAME AS 'TABLE NAME',
    P.[ROWS] AS 'NO OF ROWS'
FROM SYS.TABLES T 
INNER JOIN  SYS.PARTITIONS P ON T.OBJECT_ID = P.OBJECT_ID
WHERE T.NAME like ('Ref%')
    AND P.[ROWS] = 0;
```
9) Search and confirm that these tables are not in the load script. When I initially performed this, I had contacted the really frienly and helpful folks that are managing the CEDS schema to confirm that these tables are not available: Duane Brown in particular was extremely receptive and helpful, and many improvements were made in the 7th release.

### 2) Collect All Debugged Files and Convert to SnakeCase
1) load and bind together all .sql script blocks - [1.TSQLv7camelCaseLoadScriptCollectBind](https://github.com/leerssej/aws_ceds_v7/blob/master/1.TSQLv7camelCaseLoadScriptCollectBind.R)
2) Convert all camelCase and PascalCase into snake_case (the capitalization will disappear in the course of loading into the case insensitive postgres compatible environments)[2.TSQLv7camel2snakeConvert.R](https://github.com/leerssej/aws_ceds_v7/blob/master/2.TSQLv7camel2snakeConvert.R)
    * Abbreviation collisions and other exceptions are handled in code, albeit as gracefully towards the end when dealing with the small or n = 1 idiosyncratic issues.
    
### 3) Load up snake_case version into DatabaseTool
1) Convert project to Redshift.
2) Export data and files
3) Slice up into <10K line chunks to facilitate loading in DbSchema or your developer of choice.
4) Load into SQL designing tool (I used DbSchema 7.6.0)or another SQL flavor conversion device.
5) Check that all tables are full: query is the same as above as we are still in TSQL.
6) Convert project properties into AmazonRedshift
7) Export Schema and Data

### 4) Debug schema in the postgres compatible Amazon Redshift environment
1) Change names of schemas to match postgresql standards
2) Clean up errors in the translation process [3.redshift_ceds_v7_snake_case_script_clean.R](https://github.com/leerssej/aws_ceds_v7/blob/master/3.redshift_ceds_v7_snake_case_script_clean.R) identified most easily with the help of your favorite text editor's highlighting features. (My preference is Sublime Text 3)
    * possessives inside single apostrophe redshift/postgreSQL insert statement
    * plural abbreviations
    * proper nouns with apostrophes included
3) Trim down into <10k files
4) Load into Redshift environment
5) Fix all errors on Upload
    * resequence the order of table loads where necessary. i.e.: ref_role_status_type table needs to be filled in before the ref_role_status table which possesses a foreign key that references the former.
    * use the interpreter to further identify the syntax errors introduced in the translation process.
6) Check the completeness of the loads with this 
```
SELECT schemaname, relname, n_tup_ins
FROM pg_stat_all_tables 
WHERE schemaname = 'rs_ceds7_sc' 
    and relname like ('ref%') 
ORDER BY n_tup_ins 
```
7) After a complete, correct loading of all the script blocks is achieved, combine the scripts into one single file (that is now in the proper sequence to load correctly.)

##### Please let me know if you have any questions, or encounter any problems. `Issues` and especially `Pull requests` are always appreciated!

    Happy loading! 
