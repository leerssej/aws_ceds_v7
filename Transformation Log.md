# Transforming `ceds-nds-v7.sql` 
### and its Element and Ref Populate Scripts into snake_case, Redshift-ready, postgreSQL

## Steps

### 1) Load the Original v7 TSQL CamelCase Script
#### Debug Original Source File loading scripts before any modifications are made.
###### Tool Used: DbSchema 7.5.2
1) Converted create script from `UTF-16 BE` into `UTF-8`
2) `\nGO$` switched to `;\n`
3) Extra white space removed until the interpreter stopped throwing errors on these issues
4) Scripts split into < 10,000 line blocks (parts 1-11)
5) Removed semicolons and line-endings in the Element Tables
6) Confirmed that the Populate scripts were in `Western (Windows 1252)` or converted them.

## 2) Collect All Debugged Files and Convert to SnakeCase
