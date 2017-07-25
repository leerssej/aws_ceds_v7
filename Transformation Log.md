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

### 2) Collect All Debugged Files and Convert to SnakeCase
1) load and bind all .sql script blocks - [1.TSQLv7camelCaseLoadScriptCollectBind](https://github.com/leerssej/aws_ceds_v7/blob/master/1.TSQLv7camelCaseLoadScriptCollectBind.R)
2) Convert all camelCase and PascalCase into snake_case (the capitalization will disappear in the course of loading into the case insensitive postgres compatible environments)[2.TSQLv7camel2snakeConvert.R](https://github.com/leerssej/aws_ceds_v7/blob/master/2.TSQLv7camel2snakeConvert.R)
    * Abbreviation collisions and other exceptions handled
    * Complete script sliced down into <10k line blocks.
    
### 3) Load up snake_case version into DatabaseTool
1) Convert project to alternative SQL flavor.
2) Check that all files are present
3) Export data and files
