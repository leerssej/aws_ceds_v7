# Transforming `ceds-nds-v7.sql` and its Element and Ref Populate Scripts into snake_case, Redshift-ready, postgreSQL

## 1) Load the Original v7 TSQL CamelCase Script
### Debug the Loading of the Original Source Files before any modifications are made.
##### NB Some modifications are necessary solely to satisfy the needs of the tool used to load the script: DbSchema 7.5.2

#### Steps

1) Script converted from `UTF-16 BE` into UTF-8`
2) `\nGO$` switched to `;\n`
3) extra white space removed to until interpreter stops throwing errors on these issues
4) script split into < 10,000 line segments
5) semicolons and line-endings in the Element Tables removed
6) Confirm or convert Populate scripts are in or into `Western (Windows 1252)`

## 2) Collect All Debugged Files and Convert to SnakeCase
