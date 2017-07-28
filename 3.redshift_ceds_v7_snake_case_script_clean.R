# R Script - dplyr predominant
# Author: leerssej
# Date;  Tue Jul 25 19:23:54 2017 
 
# Desc: Chunk the RedshiftSQL script into executable chunks
# Desc: Debug programmatically if possible
# Desc: If the pomodoro went off, aim for nearly 1 to 1 substitution
# Desc: Better suggestions are welcome w/ forks and PR's highly appreciated

library(tidyverse)
library(magrittr)

###### 1. Load AWSQL & Slice Up Script into DbSchema executable size blocks ######
origscript_path <- "redshift_ceds_v7_snake_case/original/redshift_ceds_v7_snake_case.sql"
# Load full script
rs_ceds_v7_sc_orig <- read_lines(origscript_path)

###### 2. Fix AWSQL environment issues ######
rs_ceds7_sc <- rs_ceds_v7_sc_orig
# Adjust the schema name
rs_ceds7_sc %<>% sub("CREATE SCHEMA dbo;",  "CREATE SCHEMA rs_ceds7_sc;", .)
rs_ceds7_sc %<>% gsub("\\s+dbo\\.",  " rs_ceds7_sc.", .)
rs_ceds7_sc %<>% gsub('"(.*?)"',  "\\L\\1", ., perl = T)
rs_ceds7_sc %<>% gsub("primary_telephone_number_indicator bool DEFAULT 0 NOT NULL",  "primary_telephone_number_indicator bool DEFAULT FALSE NOT NULL", ., perl = T)
rs_ceds7_sc %<>% gsub("(Has_Option_Set, Usage_Notes, URL, Version, Term_ID \\) VALUES \\( '.+', '.+', .+, '.+', .+,) 1, ",  "\\1 TRUE, ", ., perl = T)
rs_ceds7_sc %<>% gsub("(Has_Option_Set, Usage_Notes, URL, Version, Term_ID \\) VALUES \\( '.+', '.+', .+, '.+', .+,) 0, ",  "\\1 FALSE, ", ., perl = T)
rs_ceds7_sc %<>% gsub("fk_ps_section\\s+_ref_course_",  "fk_ps_section_ref_course_", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("student_financial_aid_ref_financial_aid_veterans_benefit",  "student_financial_aid_ref_fin_aid_vtrns_bnft", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("org_identification_system\\s+_ref_organization_identifier_type",  "org_identification_system_ref_organization_identifier_type", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("dentification_system\\s+_ref_person_identifier",  "dentification_system_ref_person_identifier", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("fk_organization_fed(era)*l*_accountability",  "fk_organization_fed_accntblty", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("fk_k12_student_course_section\\s+_ref_course_gpa_applicability ",  "fk_k12_student_course_section_ref_course_gpa_applicability ", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("fk_individualized_program_progress_report_plan",  "fk_individ_prgrm_prog_rprt_pln", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("fk_individualized_program_progress_report_individualized_program_progress_report_plan",  "fk_individ_prgrm_prog_rprt_pln_individ_prgrm_prog_rprt_pln", ., perl = T, ignore.case = T)

# possessives and contractions inside the insert statements
rs_ceds7_sc %<>% gsub("(\\s|'|/)(\\w+)'s(?=\\s+(\\w+|\\(|--))",  "\\1\\2''s", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("='Accrediting Organization' when Accreditation Agency is set to 'Other Accreditation Agency\\.', ",  "=`Accrediting Organization` when Accreditation Agency is set to `Other Accreditation Agency.`',  ", ., perl = T, ignore.case = T)

rs_ceds7_sc %<>% gsub("(\\s|')(\\w+)n't(?=\\s\\w+)",  "\\1\\2n''t", ., perl = T, ignore.case = T)

# plural Abbreviations
rs_ceds7_sc %<>% gsub("(\\s|')([A-Z]{2})'s(?=\\s\\w+)",  "\\1\\2''s", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("(\\s|')([A-Z]{2})'s'",  "\\1\\2''s'", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("(\\s|')(\\w+)s'(?=\\s\\w+)",  "\\1\\2s''", ., perl = T, ignore.case = T)

# Singular instances
rs_ceds7_sc %<>% gsub("Post-master's certificate",  "Post-master''s certificate", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("Doctoral \\(Doctor's\\) degree",  "Doctoral (Doctor''s) degree", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("C\\?te d'Ivoire",  "Cote dIvoire", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("(?<=\\w )'snap'(?= \\w)",  "''snap''", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("'The negotiated annual salary for teaching duties for the school year. The base salary excludes pay for additional duties, such as supervising or directing afterschool activities, school administration activities, and teaching summer school or adult education classes. Bonuses and other incentives are not included in base salaries.'",  "''The negotiated annual salary for teaching duties for the school year. The base salary excludes pay for additional duties, such as supervising or directing afterschool activities, school administration activities, and teaching summer school or adult education classes. Bonuses and other incentives are not included in base salaries.''", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("\\\"part 'n' of 'm' parts.', ",  "''part <n> of <m> parts.''', ", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub(" student's', ",  " student''s', ", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub(" parents' ",  " parents'' ", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("(?<=\\w) 'Accommodation Type' (?=\\w)",  " ''Accommodation Type'' ", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("(?<=\\w) 'Other'(?=\\.)",  " ''Other''.", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub(" 'Learning Standard Item (\\w+) Version I(\\w+)' ",  " ''Learning Standard Item \\1 Version Id\\2'' ", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("(?<=\\w) 'Learning Standard Item Code' (?=\\w)",  " ''Learning Standard Item Code'' ", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("Associate's",  "Associate''s", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("(\\w+)'s Home",  "\\1''s Home", ., perl = T, ignore.case = T)

# Language name idiosyncratic 
# Apostrophe at the end of word
rs_ceds7_sc %<>% gsub("'(\\w+\\?*\\s*\\w+\\?*)''(?=,)",  "'\\1'", ., perl = T, ignore.case = T)
# rs_ceds7_sc %<>% gsub("'(\\w+)''(?=,)",  "'\\1'", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("'(\\w+)'(\\w+)'",  "'\\1 \\2'", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("'(\\w+\\s)(\\w+)'(\\w+)'",  "'\\1 \\2 \\3'", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("'(\\w+)'\\s(\\w+)'",  "'\\1 \\2'", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub(", ''(\\w+)(\\s\\w+)', ",  ", '\\1\\2', ", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub(", ''(\\w+)', ",  ", '\\1', ", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("'(\\w+)'(\\w+\\s\\w+)'",  "'\\1\\2'", ., perl = T, ignore.case = T)

# pomodoro is buzzing - it is long past time to have this script loaded
rs_ceds7_sc %<>% gsub("'Mi'kmaq; Micmac'",  "'Mi''kmaq; Micmac'", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("St. Mary's",  "St. Mary''s", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("Port Gamble S'Klallam Tribe",  "Port Gamble S''Klallam Tribe", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub(" \\(formerly SSIG's\\)",  " (formerly SSIG''s)", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("'Ta'izzi-Adeni Arabic'",  "'Taizzi Adeni Arabic'", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("'Daats'i\\?in'",  "'Daatsi?in'", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("d'Oreille",  "d''Oreille", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("ut-Ma'in",  "ut-Ma in", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("Hawai'i",  "Hawaii", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("Ju/'hoan",  "Ju/hoan", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("Kuuku-Ya'u",  "Kuuku-Yau", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("E'\\?apa Woromaipu",  "Eapa Woromaipu", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("'Zo'\\?'",  "'Zo?'", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("'Toraja-Sa'dan'",  "'Toraja-Sadan'", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("Me'phaa",  "Me phaa", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("'Sun'aq Tribe of Kodiak \\(formerly the Shoonaq' Tribe of Kodiak\\)'",  "'Sun''aq Tribe of Kodiak (formerly the Shoonaq'' Tribe of Kodiak)'", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("'Ts'\\?n-Lao'",  "'Ts ?n-Lao'", ., perl = T, ignore.case = T)
rs_ceds7_sc %<>% gsub("'Wik-Me'anha'",  "'Wik-Me anha'", ., perl = T, ignore.case = T)
# rs_ceds7_sc %<>% gsub(", 'Associate's-",  ", 'Associate''s-", ., perl = T, ignore.case = T)
# rs_ceds7_sc %<>% gsub(" 4-year Primarily Associate's',",  " 4-year Primarily Associate''s', ", ., perl = T, ignore.case = T)
# rs_ceds7_sc %<>% gsub("_Associate's Colleges",  "Associate''s Colleges, ", ., perl = T, ignore.case = T)

###### 3. Write Out the Sliced Files ######
# find the directory to read to
clippable_fileroot <- "redshift_ceds_v7_snake_case/redshift_ceds_v7_snake_case_script_blocks/"
complete_translation <- "rs_ceds7_sc.sql"
completetranslation_filepath <- paste0(clippable_fileroot, complete_translation)
# dir.create(clippable_fileroot)
# the whole script
write_lines(rs_ceds7_sc, completetranslation_filepath)

###### 4. Chop script into DbSchema sized chunks ### ###
# find the file to read from
clippable_filepath <- completetranslation_filepath

# use the above file to read blocks out of and then write them out into the world
block_1  <- read_lines(clippable_filepath, n_max = 9970)
block_2a <- read_lines(clippable_filepath, skip =  9970, n_max = 7789)  # to 17759
block_2b <- read_lines(clippable_filepath, skip = 17836, n_max = 2128)  # to 19964
block_3  <- read_lines(clippable_filepath, skip = 19965, n_max = 9595)  # to 29560
block_4a <- read_lines(clippable_filepath, skip = 29560, n_max = 2983)  # to 32543
block_4b <- read




_lines(clippable_filepath, skip = 32542, n_max = 4)     # to 32545
block_4c <- read_lines(clippable_filepath, skip = 32545, n_max = 2058)  # to 34603-
block_4d <- read_lines(clippable_filepath, skip = 34603, n_max = 8)     # to 34611 (ref_gpa_weighted_indicator_id)
block_4e <- read_lines(clippable_filepath, skip = 34611, n_max = 4945)  # to 39556
block_5a <- read_lines(clippable_filepath, skip = 39556, n_max = 2678)  # to 42234
block_5b <- read_lines(clippable_filepath, skip = 42235, n_max = 4)     # to 42238 (ref_operational_status_type table insert)
block_5c <- read_lines(clippable_filepath, skip = 42238, n_max = 152)   # to 42390
block_5d <- read_lines(clippable_filepath, skip = 42390, n_max = 5)     # to 42395 (ref_person_identifier_type insert) needs to happen before 4
block_5e <- read_lines(clippable_filepath, skip = 42395, n_max = 189)   # to 42584
block_5f <- read_lines(clippable_filepath, skip = 42584, n_max = 6)     # to 42590 (ref_role_status_type)
block_5g <- read_lines(clippable_filepath, skip = 42590, n_max = 10000) # to end

write_lines(block_1,  paste0(clippable_fileroot, "rs_ceds7_sc_pt1.sql"))

write_lines(block_2a, paste0(clippable_fileroot, "rs_ceds7_sc_pt2.sql")) 
# trimming out 7790-7866: the views created with TSQL functions
write_lines(block_2b, paste0(clippable_fileroot, "rs_ceds7_sc_pt2.sql"), append = TRUE)
write_lines(block_4d, paste0(clippable_fileroot, "rs_ceds7_sc_pt2.sql"), append = TRUE)

write_lines(block_3,  paste0(clippable_fileroot, "rs_ceds7_sc_pt3.sql"))
write_lines(block_5b, paste0(clippable_fileroot, "rs_ceds7_sc_pt3.sql"), append = TRUE) # `ref_operational_status_type` inserts
write_lines(block_5d, paste0(clippable_fileroot, "rs_ceds7_sc_pt3.sql"), append = TRUE) # `ref_person_identifier_type` inserts
write_lines(block_4b, paste0(clippable_fileroot, "rs_ceds7_sc_pt3.sql"), append = TRUE) # `ref_address_type` inserts
write_lines(block_5f, paste0(clippable_fileroot, "rs_ceds7_sc_pt3.sql"), append = TRUE) # `ref_Role_status_type` inserts

write_lines(block_4a, paste0(clippable_fileroot, "rs_ceds7_sc_pt4.sql")) # stepping around ref_grade_level insert
write_lines(block_4c, paste0(clippable_fileroot, "rs_ceds7_sc_pt4.sql"), append = TRUE) # ref_gpa_weighted_indicator_id insert
write_lines(block_4e, paste0(clippable_fileroot, "rs_ceds7_sc_pt4.sql"), append = TRUE) 

write_lines(block_5a, paste0(clippable_fileroot, "rs_ceds7_sc_pt5.sql"))
write_lines(block_5c, paste0(clippable_fileroot, "rs_ceds7_sc_pt5.sql"), append = TRUE)
write_lines(block_5e, paste0(clippable_fileroot, "rs_ceds7_sc_pt5.sql"), append = TRUE)
write_lines(block_5g, paste0(clippable_fileroot, "rs_ceds7_sc_pt5.sql"), append = TRUE)


###### 4. Compile Final Results ######
rs_ceds7_sc_pt_1 <- read_lines(paste0(clippable_fileroot, "rs_ceds7_sc_pt1.sql"))
rs_ceds7_sc_pt_2 <- read_lines(paste0(clippable_fileroot, "rs_ceds7_sc_pt2.sql"))
rs_ceds7_sc_pt_3 <- read_lines(paste0(clippable_fileroot, "rs_ceds7_sc_pt3.sql"))
rs_ceds7_sc_pt_4 <- read_lines(paste0(clippable_fileroot, "rs_ceds7_sc_pt4.sql"))
rs_ceds7_sc_pt_5 <- read_lines(paste0(clippable_fileroot, "rs_ceds7_sc_pt5.sql"))

write_lines(rs_ceds7_sc_pt_1, paste0(clippable_fileroot, "rs_ceds7_sc_COMPLETE.sql"))
write_lines(rs_ceds7_sc_pt_2, paste0(clippable_fileroot, "rs_ceds7_sc_COMPLETE.sql"), append = TRUE)
write_lines(rs_ceds7_sc_pt_3, paste0(clippable_fileroot, "rs_ceds7_sc_COMPLETE.sql"), append = TRUE)


write_lines(rs_ceds7_sc_pt_4, paste0(clippable_fileroot, "rs_ceds7_sc_COMPLETE.sql"), append = TRUE)
write_lines(rs_ceds7_sc_pt_5, paste0(clippable_fileroot, "rs_ceds7_sc_COMPLETE.sql"), append = TRUE)

###### 5. Load Up comparison version to allow GitHub to detect changes ######
# more selectively than the name of the Schema 
library(tidyverse)
new_ceds <- read_lines("redshift_ceds_v7_snake_case/rs_ceds7_sc_COMPLETE.sql")
ceds7_comparable_for_ceds6 <- 
    new_ceds %>% gsub("\\s+rs_ceds7_sc\\.", " ceds6.", .)
write_lines(ceds7_comparable_for_ceds6, "redshift_ceds_v7_snake_case/rs_ceds_v7_sc_disguised_as_ceds6_for_GitComparisons")
