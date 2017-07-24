# Transforming `ceds-nds-v7.sql` 
## and its Element and Ref Populate Scripts into snake_case, Redshift-ready, postgreSQL

### Steps

## 1) Load the Original v7 TSQL CamelCase Script
#### Debug the Loading of the Original Source Files before any modifications are made.
##### Tool Used: DbSchema 7.5.2
1) Create script converted from `UTF-16 BE` into `UTF-8`
2) `\nGO$` switched to `;\n`
3) extra white space removed until the interpreter stopped throwing errors on these issues
4) script was split into < 10,000 line blocks (parts 1-11)
5) semicolons and line-endings in the Element Tables were removed
6) Confirmed or converted the Populate scripts were in or turned them into `Western (Windows 1252)`

## 2) Collect All Debugged Files and Convert to SnakeCase
