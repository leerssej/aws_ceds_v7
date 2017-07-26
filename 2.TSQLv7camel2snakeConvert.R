# R Script - dplyr predominant
# Author: leerssej
# Date;  Mon Jul 24 22:43:50 2017 
 
# Desc: convert camelCase_TSQL into snake_case (so element and attribute names
# Desc: can be legible in the case insensitive postgres and redshift environmenents.
# Desc: 
# Desc: 

library(tidyverse)
library(magrittr)
# library(RPostgres)
# library(googlesheets)
# library(readxl)
# library(ggmap)
# library(geosphere)
# library(stringdist)
# library(RecordLinkage)

###### 1. load in Full Script ######
createUpdateTSQLCEDSv7 <- read_lines("TSQLv7_camelCase/TSQLv7_camelCase_completeDebuggedCreateInsert.sql")

###### 2. Transform camels to snakes ######
##  humps (extra_Capital_Letters) can be left until last or when the pg_sql ignores them on the transform out of db_schema
# tsql_ceds7_sc <- createUpdateTSQLCEDSv7
# The main transform
tsql_ceds7_sc <- gsub("((?<=[a-z0-9])[A-Z]|(?<![\\[\\'\\s+\\.@\\(\\\"-])[A-Z](?!to)(?=[a-z]))", "_\\1", createUpdateTSQLCEDSv7, perl = T)
# New Identity Resolution
tsql_ceds7_sc %<>% gsub("\\[CEDS-NDS-V7\\]",  "\\[tsql_ceds7_sc\\]", .)

# Sectional Issues
tsql_ceds7_sc %<>% gsub("CEDSto_",  "CEDS_to_", ., perl = T)
# complicated Issues
tsql_ceds7_sc %<>% gsub("Pre_*K(indergarten)*",  "Pre_K\\1_", ., perl = T, ignore.case = T)
tsql_ceds7_sc %<>% gsub("Title_*1",  "Title_1_", ., perl = T, ignore.case = T)
tsql_ceds7_sc %<>% gsub("CENSUSID",  "CENSUS_ID", ., perl = T, ignore.case = T)
tsql_ceds7_sc %<>% gsub(" SE_As ",  " SEA''s ", ., perl = T, ignore.case = T)
tsql_ceds7_sc %<>% gsub("Is_User_Table",  "IsUserTable", ., perl = T, ignore.case = T)

# Abbreviation Issues
sc <- function(dat, ABBR) {
    gsub(paste0("('|_|\\[)", ABBR, "([A-Z])"),  paste0("\\1", ABBR, "_\\2"), dat, perl = T)
}
tsql_ceds7_sc %<>% sc(., "IDEA")
tsql_ceds7_sc %<>% sc(., "IEP")
tsql_ceds7_sc %<>% sc(., "XPK")
tsql_ceds7_sc %<>% sc(., "Part_B")

# Multi underscore clipping
tsql_ceds7_sc %<>% gsub("_+",  "_", .)


###### 3. Write Out into Snake_Case directory ######
# dir.create("tsql_ceds_v7_snake_case")
clippablefile_path <- "tsql_ceds_v7_snake_case/tsql_ceds_v7_snake_case.sql"
write_lines(tsql_ceds7_sc, clippablefile_path)

# the full monty
###### 4. Slice Up Script into DbSchema executable size ######
block_1 <- read_lines(clippablefile_path, n_max = 9993)
block_2 <- read_lines(clippablefile_path, skip = 9993, n_max = 9000)
block_3 <- read_lines(clippablefile_path, skip = 18993, n_max = 9994)
block_4 <- read_lines(clippablefile_path, skip = 28988, n_max = 9988)
block_5 <- read_lines(clippablefile_path, skip = 38977, n_max = 9995)
block_6 <- read_lines(clippablefile_path, skip = 48974, n_max = 9993)
block_7 <- read_lines(clippablefile_path, skip = 58967, n_max = 9946)
block_8 <- read_lines(clippablefile_path, skip = 68915, n_max = 9997)
block_9 <- read_lines(clippablefile_path, skip = 78912, n_max = 9991)
block_10 <- read_lines(clippablefile_path, skip = 88905, n_max = 10000)

###### 5. Write Out the Sliced Files ######
clippablefile_root <- "tsql_ceds_v7_snake_case/tsql_ceds_v7_snake_case_blocks/"
# dir.create(clippablefile_root)
# in DbSchema bite sized blocks
write_lines(block_1, paste0(clippablefile_root, "tsql_ceds_v7_snake_case_pt1.sql"))
write_lines(block_2, paste0(clippablefile_root, "tsql_ceds_v7_snake_case_pt2.sql"))
write_lines(block_3, paste0(clippablefile_root, "tsql_ceds_v7_snake_case_pt3.sql"))
write_lines(block_4, paste0(clippablefile_root, "tsql_ceds_v7_snake_case_pt4.sql"))
write_lines(block_5, paste0(clippablefile_root, "tsql_ceds_v7_snake_case_pt5.sql"))
write_lines(block_6, paste0(clippablefile_root, "tsql_ceds_v7_snake_case_pt6.sql"))
write_lines(block_7, paste0(clippablefile_root, "tsql_ceds_v7_snake_case_pt7.sql"))
write_lines(block_8, paste0(clippablefile_root, "tsql_ceds_v7_snake_case_pt8.sql"))
write_lines(block_9, paste0(clippablefile_root, "tsql_ceds_v7_snake_case_pt9.sql"))
write_lines(block_10, paste0(clippablefile_root, "tsql_ceds_v7_snake_case_pt10.sql"))

