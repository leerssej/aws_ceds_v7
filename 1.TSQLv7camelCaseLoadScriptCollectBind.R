# R Script - dplyr predominant
# Author: leerssej
# Date;  Mon Jul 24 16:33:33 2017 
 
# Desc: Collect all debugged original CEDSv7camelCase loading script blocks
# Desc: In correct order and bind together.
# Desc: 

library(tidyverse)
library(magrittr)

###### 1. Collect Load Script blocks ######
create_pt1 <- read_lines("CEDS_v7_source_files/CreationPopulationScripts/ceds-nds-v7.1_pt1.sql")
create_pt2 <- read_lines("CEDS_v7_source_files/CreationPopulationScripts/ceds-nds-v7.1_pt2.sql")
create_pt3 <- read_lines("CEDS_v7_source_files/CreationPopulationScripts/ceds-nds-v7.1_pt3.sql")
create_pt4 <- read_lines("CEDS_v7_source_files/CreationPopulationScripts/ceds-nds-v7.1_pt4.sql")
create_pt5 <- read_lines("CEDS_v7_source_files/CreationPopulationScripts/ceds-nds-v7.1_pt5.sql")
create_pt6 <- read_lines("CEDS_v7_source_files/CreationPopulationScripts/ceds-nds-v7.1_pt6.sql")
populateElements_pt7 <- read_lines("CEDS_v7_source_files/CreationPopulationScripts/Populate-CEDS-V7-Element-Tables_pt7.sql")
populateRef_pt8 <- read_lines("CEDS_v7_source_files/CreationPopulationScripts/Populate-CEDS-V7-Ref-Tables_pt8.sql")
populateRef_pt9 <- read_lines("CEDS_v7_source_files/CreationPopulationScripts/Populate-CEDS-V7-Ref-Tables_pt9.sql")
populateRef_pt10 <- read_lines("CEDS_v7_source_files/CreationPopulationScripts/Populate-CEDS-V7-Ref-Tables_pt10.sql")
populateRef_pt11<- read_lines("CEDS_v7_source_files/CreationPopulationScripts/Populate-CEDS-V7-Ref-Tables_pt11.sql")


###### 2. Bind text files together in correct order ######
completeCreateInsert_v7 <- c(create_pt1,
                          create_pt2,
                          create_pt3,
                          create_pt4,
                          create_pt5,
                          create_pt6,
                          populateElements_pt7,
                          populateRef_pt8,
                          populateRef_pt9,
                          populateRef_pt10,
                          populateRef_pt11
                          )

###### 3. Write down full script ######
dir.create("TSQLv7_camelCase/")
fileConn <- file("TSQLv7_camelCase/TSQLv7_camelCase_completeDebuggedCreateInsert.sql")
writeLines(completeCreateInsert_v7, fileConn)
close(fileConn)

# End
## Next Step is to convert complete file to snake_case