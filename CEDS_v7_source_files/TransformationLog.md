#ceds-nds-v7.sql
## Initial Load
#### These modifications dependent upon the tool used to load the script
##### Using DbSchema 7.5.2
1) Script converted from `UTF-16 BE` into UTF-8`
2) `\nGO$` switched to `;\n`
3) extra white space removed to until driver stopped throwing errors on these issues
4) script split into < 10,000 line segments