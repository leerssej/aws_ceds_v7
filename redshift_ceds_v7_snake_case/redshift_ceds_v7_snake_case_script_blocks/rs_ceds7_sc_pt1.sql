CREATE SCHEMA rs_ceds7_sc;

CREATE TABLE rs_ceds7_sc.eligibility_evaluation ( 
	eligibility_evaluation_id integer  NOT NULL,
	description        text  ,
	evaluation_date    date  ,
	CONSTRAINT pk_eligibility_evaluation PRIMARY KEY ( eligibility_evaluation_id )
 );

CREATE TABLE rs_ceds7_sc.ref_assessment_accommodation_category ( 
	ref_assessment_accommodation_category_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_accommodation_category PRIMARY KEY ( ref_assessment_accommodation_category_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_accommodation_category IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_accommodation_category.ref_assessment_accommodation_category_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_accommodation_category.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_accommodation_category.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_accommodation_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc._ceds_elements ( 
	term_id            integer  NOT NULL,
	global_id          varchar(20)  ,
	element_name       varchar(150)  NOT NULL,
	alt_name           varchar(150)  ,
	definition         varchar  NOT NULL,
	format             varchar(150)  ,
	has_option_set     bool  NOT NULL,
	usage_notes        varchar  ,
	url                varchar(512)  ,
	version            varchar(20)  ,
	CONSTRAINT pk_ceds_elements PRIMARY KEY ( term_id )
 );

CREATE TABLE rs_ceds7_sc._ceds_to_nds_mapping ( 
	global_id            varchar(20)  NOT NULL,
	table_name         varchar(100)  NOT NULL,
	column_name        varchar(100)  ,
	CONSTRAINT ix_global_id_table_name_column_name UNIQUE ( global_id, table_name, column_name ) 
 );

CREATE TABLE rs_ceds7_sc.application ( 
	application_id       integer  NOT NULL,
	name                 varchar(120)  NOT NULL,
	uri                  varchar(512)  ,
	CONSTRAINT pk_application PRIMARY KEY ( application_id )
 );

COMMENT ON TABLE rs_ceds7_sc.application IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.application.application_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.application.name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.application.uri IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_personal_needs_profile ( 
	assessment_personal_needs_profile_id integer  NOT NULL,
	assessment_need_type text  NOT NULL,
	assigned_support_flag bool  ,
	activate_by_default  bool  ,
	CONSTRAINT pk_assessment_needs_profile PRIMARY KEY ( assessment_personal_needs_profile_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_personal_needs_profile IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile.assessment_personal_needs_profile_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile.assessment_need_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile.assigned_support_flag IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile.activate_by_default IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_personal_needs_profile_control ( 
	assessment_personal_needs_profile_control_id integer  NOT NULL,
	assessment_personal_needs_profile_id integer  NOT NULL,
	CONSTRAINT pk_assessment_personal_needs_profile_control PRIMARY KEY ( assessment_personal_needs_profile_control_id ),
	CONSTRAINT fk_assessment_needs_profile_control_assessment_needs_profile FOREIGN KEY ( assessment_personal_needs_profile_id ) REFERENCES rs_ceds7_sc.assessment_personal_needs_profile( assessment_personal_needs_profile_id )    
 );

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile_control.assessment_personal_needs_profile_control_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile_control.assessment_personal_needs_profile_id IS 'Foreign key - Assessment_Personal_Needs_Profile';

CREATE TABLE rs_ceds7_sc.assessment_personal_needs_profile_screen_enhancement ( 
	assessment_personal_needs_profile_screen_enhancement_id integer  NOT NULL,
	assessment_personal_needs_profile_id integer  NOT NULL,
	CONSTRAINT pk_assessment_personal_needs_profile_screen_enhancement PRIMARY KEY ( assessment_personal_needs_profile_screen_enhancement_id ),
	CONSTRAINT fk_anp_screen_enhancement_assessment_needs_profile FOREIGN KEY ( assessment_personal_needs_profile_id ) REFERENCES rs_ceds7_sc.assessment_personal_needs_profile( assessment_personal_needs_profile_id )    
 );

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile_screen_enhancement.assessment_personal_needs_profile_screen_enhancement_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile_screen_enhancement.assessment_personal_needs_profile_id IS 'Foreign key - Assessment_Personal_Needs_Profile';

CREATE TABLE rs_ceds7_sc.financial_account_program ( 
	financial_account_program_id integer  NOT NULL,
	name                 varchar(100)  ,
	program_number       varchar(30)  ,
	CONSTRAINT pk_financial_account_program PRIMARY KEY ( financial_account_program_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.financial_account_program.financial_account_program_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.financial_account_program.name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_account_program.program_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.location ( 
	location_id          integer  NOT NULL,
	CONSTRAINT pk_location PRIMARY KEY ( location_id )
 );

COMMENT ON TABLE rs_ceds7_sc.location IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.location.location_id IS 'Surrogate Key';

CREATE TABLE rs_ceds7_sc.peer_rating_system ( 
	peer_rating_system_id integer  NOT NULL,
	name                 varchar(60)  NOT NULL,
	maximum_value        numeric(18,4)  ,
	minimum_value        numeric(18,4)  NOT NULL,
	optimum_value        numeric(18,4)  ,
	CONSTRAINT pk_peer_rating_system PRIMARY KEY ( peer_rating_system_id )
 );

COMMENT ON TABLE rs_ceds7_sc.peer_rating_system IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.peer_rating_system.peer_rating_system_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.peer_rating_system.name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.peer_rating_system.maximum_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.peer_rating_system.minimum_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.peer_rating_system.optimum_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ref_employment_location ( 
	ref_employment_location_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_employment_location PRIMARY KEY ( ref_employment_location_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_employment_location IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_location.ref_employment_location_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_location.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_location.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_location.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_state_ansi_code ( 
	code                 char(2)  NOT NULL,
	state_name           varchar(100)  ,
	CONSTRAINT pk_ref_state_ansi_code PRIMARY KEY ( code )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_state_ansi_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_state_ansi_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_state_ansi_code.state_name IS 'State name';

CREATE TABLE rs_ceds7_sc.rubric ( 
	rubric_id            integer  NOT NULL,
	identifier           varchar(40)  ,
	title                varchar(30)  ,
	url_reference        varchar(512)  ,
	description          text  ,
	CONSTRAINT pk_rubric PRIMARY KEY ( rubric_id )
 );

COMMENT ON TABLE rs_ceds7_sc.rubric IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.rubric.rubric_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.rubric.identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.rubric.title IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.rubric.url_reference IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.rubric.description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_personal_needs_profile_display ( 
	assessment_personal_needs_profile_display_id integer  NOT NULL,
	assessment_personal_needs_profile_id integer  NOT NULL,
	CONSTRAINT pk_assessment_personal_needs_profile_display PRIMARY KEY ( assessment_personal_needs_profile_display_id ),
	CONSTRAINT fk_assessment_needs_profile_display_assessment_needs_profile FOREIGN KEY ( assessment_personal_needs_profile_id ) REFERENCES rs_ceds7_sc.assessment_personal_needs_profile( assessment_personal_needs_profile_id )    
 );

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile_display.assessment_personal_needs_profile_display_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile_display.assessment_personal_needs_profile_id IS 'Foreign key - Assessment_Personal_Needs_Profile';

CREATE TABLE rs_ceds7_sc.rubric_criterion ( 
	rubric_criterion_id integer  NOT NULL,
	category           varchar(30)  ,
	title              varchar(60)  ,
	description        text  ,
	weight             decimal(18,0)  ,
	position           integer  ,
	rubric_id          integer  NOT NULL,
	CONSTRAINT pk_rubric_criterion PRIMARY KEY ( rubric_criterion_id ),
	CONSTRAINT fk_rubric_criterion_rubric FOREIGN KEY ( rubric_id ) REFERENCES rs_ceds7_sc.rubric( rubric_id )    
 );

COMMENT ON COLUMN rs_ceds7_sc.rubric_criterion.rubric_criterion_id IS 'Surrogate key.';

COMMENT ON COLUMN rs_ceds7_sc.rubric_criterion.category IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.rubric_criterion.title IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.rubric_criterion.description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.rubric_criterion.weight IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.rubric_criterion.position IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_need_screen_enhancement ( 
	assessment_need_screen_enhancement_id integer  NOT NULL,
	assessment_personal_needs_profile_display_id integer  NOT NULL,
	invert_color_choice  bool  ,
	magnification        decimal(10,4)  ,
	assessment_personal_needs_profile_screen_enhancement_id integer  ,
	foreground_color     char(6)  ,
	CONSTRAINT pk_assessment_need_screen_enhancement PRIMARY KEY ( assessment_need_screen_enhancement_id ),
	CONSTRAINT fk_assess_need_screen_enhancement_assess_personal_need_profile_display FOREIGN KEY ( assessment_personal_needs_profile_display_id ) REFERENCES rs_ceds7_sc.assessment_personal_needs_profile_display( assessment_personal_needs_profile_display_id )    ,
	CONSTRAINT fk_assess_need_screen_enhancement_apn_profile_screen_enhancement FOREIGN KEY ( assessment_personal_needs_profile_screen_enhancement_id ) REFERENCES rs_ceds7_sc.assessment_personal_needs_profile_screen_enhancement( assessment_personal_needs_profile_screen_enhancement_id )    
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_need_screen_enhancement IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_screen_enhancement.assessment_need_screen_enhancement_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_screen_enhancement.assessment_personal_needs_profile_display_id IS 'Foreign key - Assessment_Personal_Needs_Profile_Display';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_screen_enhancement.invert_color_choice IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_screen_enhancement.magnification IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_screen_enhancement.assessment_personal_needs_profile_screen_enhancement_id IS 'Foreign key - Assessment_Personal_Needs_Profile_Screen_Enhancement';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_screen_enhancement.foreground_color IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.classroom ( 
	location_id          integer  NOT NULL,
	classroom_identifier varchar(40)  ,
	CONSTRAINT pk_classroom PRIMARY KEY ( location_id ),
	CONSTRAINT fk_classroom_location FOREIGN KEY ( location_id ) REFERENCES rs_ceds7_sc.location( location_id )    
 );

COMMENT ON TABLE rs_ceds7_sc.classroom IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.classroom.location_id IS 'Foreign key - Location';

COMMENT ON COLUMN rs_ceds7_sc.classroom.classroom_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.rubric_criterion_level ( 
	rubric_criterion_level_id integer  NOT NULL,
	description          text  ,
	quality              text  ,
	score                decimal(18,0)  ,
	feedback             text  ,
	position           integer  ,
	rubric_criterion_id  integer  NOT NULL,
	CONSTRAINT pk_rubric_criterion_level PRIMARY KEY ( rubric_criterion_level_id ),
	CONSTRAINT fk_rubric_criterion_level_rubric_criterion FOREIGN KEY ( rubric_criterion_id ) REFERENCES rs_ceds7_sc.rubric_criterion( rubric_criterion_id )    
 );

COMMENT ON COLUMN rs_ceds7_sc.rubric_criterion_level.rubric_criterion_level_id IS 'Surrogate key.';

COMMENT ON COLUMN rs_ceds7_sc.rubric_criterion_level.description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.rubric_criterion_level.quality IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.rubric_criterion_level.score IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.rubric_criterion_level.feedback IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.rubric_criterion_level.position IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.activity_recognition ( 
	activity_recognition_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_activity_recognition_type_id integer  NOT NULL,
	CONSTRAINT pk_activity_recognition PRIMARY KEY ( activity_recognition_id )
 );

COMMENT ON TABLE rs_ceds7_sc.activity_recognition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.activity_recognition.activity_recognition_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.activity_recognition.organization_person_role_id IS 'Surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN rs_ceds7_sc.activity_recognition.ref_activity_recognition_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ae_provider ( 
	organization_id    integer  NOT NULL,
	ref_level_of_institution_id integer  NOT NULL,
	CONSTRAINT pk_ae_provider PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ae_provider IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ae_provider.organization_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ae_provider.ref_level_of_institution_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ae_student_academic_record ( 
	organization_person_role_id integer  NOT NULL,
	ref_high_school_diploma_type_id integer  ,
	diploma_or_credential_award_date char(7)  ,
	ref_professional_technical_credential_type_id integer  ,
	CONSTRAINT pk_ae_student_academic_record PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ae_student_academic_record IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ae_student_academic_record.organization_person_role_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ae_student_academic_record.ref_high_school_diploma_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ae_student_academic_record.diploma_or_credential_award_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ae_student_academic_record.ref_professional_technical_credential_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.apip_interaction ( 
	apip_interaction_id integer  NOT NULL,
	assessment_item_id integer  NOT NULL,
	ref_apip_interaction_type_id integer  ,
	xml                text  ,
	sequence_number    integer  ,
	apip_interaction_sequence_number decimal(9,2)  ,
	CONSTRAINT pk_apip_interaction PRIMARY KEY ( apip_interaction_id )
 );

COMMENT ON TABLE rs_ceds7_sc.apip_interaction IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.apip_interaction.apip_interaction_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.apip_interaction.assessment_item_id IS 'Foreign key - Assessment_Item';

COMMENT ON COLUMN rs_ceds7_sc.apip_interaction.ref_apip_interaction_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.apip_interaction.xml IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.apip_interaction.apip_interaction_sequence_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment ( 
	assessment_id      integer  NOT NULL,
	identifier         varchar(40)  ,
	identification_system integer  ,
	guid               varchar(40)  ,
	title              varchar(60)  ,
	short_name         varchar(30)  ,
	ref_academic_subject_id integer  NOT NULL,
	objective          varchar(100)  ,
	provider           varchar(30)  ,
	ref_assessment_purpose_id integer  ,
	ref_assessment_type_id integer  ,
	ref_assessment_type_children_with_disabilities_id integer  ,
	assessment_revision_date date  ,
	assessment_family_title varchar(60)  NOT NULL,
	assessment_family_short_name varchar(30)  ,
	CONSTRAINT pk_assessment PRIMARY KEY ( assessment_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment.assessment_id IS 'PK';

COMMENT ON COLUMN rs_ceds7_sc.assessment.identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment.identification_system IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment.guid IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment.title IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment.short_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment.ref_academic_subject_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment.objective IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment.provider IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment.ref_assessment_purpose_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment.ref_assessment_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment.ref_assessment_type_children_with_disabilities_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment.assessment_revision_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment.assessment_family_title IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment.assessment_family_short_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_administration ( 
	assessment_administration_id integer  NOT NULL,
	assessment_id      integer  ,
	name               varchar(30)  ,
	code               varchar(30)  ,
	start_date         date  ,
	start_time         time  ,
	finish_date        date  ,
	finish_time        time  ,
	ref_assessment_reporting_method_id integer  ,
	assessment_secure_indicator bool  ,
	assessment_administration_period_description varchar(300)  ,
	CONSTRAINT pk_assessment_administration PRIMARY KEY ( assessment_administration_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_administration IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_administration.assessment_administration_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_administration.assessment_id IS 'Foreign key - Assessment';

COMMENT ON COLUMN rs_ceds7_sc.assessment_administration.name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_administration.code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_administration.start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_administration.start_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_administration.finish_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_administration.finish_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_administration.ref_assessment_reporting_method_id IS 'Foreign key - Ref_Assessment_Reporting_Method';

COMMENT ON COLUMN rs_ceds7_sc.assessment_administration.assessment_secure_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_administration.assessment_administration_period_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_assessment_administration ( 
	assessment_assessment_administration_id integer  NOT NULL,
	assessment_id      integer  NOT NULL,
	assessment_administration_id integer  NOT NULL,
	CONSTRAINT pk_assessment_assessment_administration PRIMARY KEY ( assessment_assessment_administration_id ),
	CONSTRAINT ix_assessment_assessment_administration UNIQUE ( assessment_id, assessment_administration_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_assessment_administration IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_assessment_administration.assessment_assessment_administration_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_assessment_administration.assessment_id IS 'Foreign key - Assessment';

COMMENT ON COLUMN rs_ceds7_sc.assessment_assessment_administration.assessment_administration_id IS 'Foreign key - Assessment Administration';

CREATE TABLE rs_ceds7_sc.assessment_el_developmental_domain ( 
	assessment_el_developmental_domain_id integer  NOT NULL,
	assessment_id      integer  NOT NULL,
	ref_assessment_el_developmental_domain_id integer  NOT NULL,
	CONSTRAINT pk_assessment_el_developmental_domain PRIMARY KEY ( assessment_el_developmental_domain_id ),
	CONSTRAINT ix_assessment_el_developmental_domain UNIQUE ( assessment_id, ref_assessment_el_developmental_domain_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_el_developmental_domain IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_el_developmental_domain.assessment_el_developmental_domain_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_el_developmental_domain.assessment_id IS 'Foreign key - Assessment';

COMMENT ON COLUMN rs_ceds7_sc.assessment_el_developmental_domain.ref_assessment_el_developmental_domain_id IS 'Foreign key - Ref_Assessment_EL_Developmental_Domain';

CREATE TABLE rs_ceds7_sc.assessment_form_assessment_asset ( 
	assessment_form_assessment_asset_id integer  NOT NULL,
	assessment_form_id integer  NOT NULL,
	assessment_asset_id integer  NOT NULL,
	CONSTRAINT pk_assessment_form_assessment_asset PRIMARY KEY ( assessment_form_assessment_asset_id ),
	CONSTRAINT ix_assessment_form_assessment_asset UNIQUE ( assessment_form_id, assessment_asset_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_form_assessment_asset IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_assessment_asset.assessment_form_assessment_asset_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_assessment_asset.assessment_form_id IS 'Foreign key - Assessment_Form';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_assessment_asset.assessment_asset_id IS 'Foreign key - Assessment_Asset';

CREATE TABLE rs_ceds7_sc.assessment_form_section ( 
	assessment_form_section_id integer  NOT NULL,
	identifier         varchar(40)  ,
	ref_assessment_form_section_identification_system_id integer  ,
	published_date     date  ,
	version            varchar(30)  ,
	section_time_limit time  ,
	section_sealed     bool  ,
	section_reentry    bool  ,
	assessment_item_bank_identifier varchar(40)  ,
	assessment_item_bank_name varchar(60)  ,
	child_of_form_section_id integer  ,
	learning_resource_id integer  ,
	guid               varchar(40)  ,
	CONSTRAINT pk_assessment_form_section PRIMARY KEY ( assessment_form_section_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_form_section IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section.assessment_form_section_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section.identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section.ref_assessment_form_section_identification_system_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section.published_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section.version IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section.section_time_limit IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section.section_sealed IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section.section_reentry IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section.assessment_item_bank_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section.assessment_item_bank_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section.child_of_form_section_id IS 'Foreign key - Assessment_Form_Section (this table)';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section.learning_resource_id IS 'Foreign key - Learning_Resource';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section.guid IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_form_section_assessment_item ( 
	assessment_form_section_item_id integer  NOT NULL,
	sequence_number    integer  NOT NULL,
	assessment_form_section_id integer  NOT NULL,
	assessment_item_id integer  NOT NULL,
	CONSTRAINT pk_assessment_form_section_assessment_item PRIMARY KEY ( assessment_form_section_item_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_form_section_assessment_item IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section_assessment_item.assessment_form_section_item_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section_assessment_item.sequence_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section_assessment_item.assessment_form_section_id IS 'Foreign key - Assessment_Form_Section';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section_assessment_item.assessment_item_id IS 'Foreign key - Assessment_Item';

CREATE TABLE rs_ceds7_sc.assessment_item_apip ( 
	assessment_item_id integer  NOT NULL,
	adaptive_indicator bool  ,
	response_processing_template_url varchar(512)  ,
	response_processing_xml text  ,
	response_declaration_xml text  ,
	outcome_declaration_xml text  ,
	template_declaration_xml text  ,
	template_processing_xml text  ,
	modal_feedback_xml text  ,
	item_body_xml      text  ,
	CONSTRAINT pk_assessment_item_body PRIMARY KEY ( assessment_item_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_item_apip IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_apip.assessment_item_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_apip.adaptive_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_apip.response_processing_template_url IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_apip.response_processing_xml IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_apip.response_declaration_xml IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_apip.outcome_declaration_xml IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_apip.template_declaration_xml IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_apip.template_processing_xml IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_apip.modal_feedback_xml IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_apip.item_body_xml IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_item_characteristic ( 
	assessment_item_characteristic_id integer  NOT NULL,
	assessment_item_id integer  NOT NULL,
	ref_assessment_item_characteristic_type_id integer  ,
	value              varchar(30)  ,
	response_choice_pattern varchar(100)  ,
	CONSTRAINT pk_assessment_item_characteristic PRIMARY KEY ( assessment_item_characteristic_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_item_characteristic IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_characteristic.assessment_item_characteristic_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_characteristic.assessment_item_id IS 'Foreign key - Assessment_Item';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_characteristic.ref_assessment_item_characteristic_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_characteristic.value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_characteristic.response_choice_pattern IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_item_response ( 
	assessment_item_response_id integer  NOT NULL,
	value              varchar(300)  ,
	score_value        varchar(60)  ,
	ref_assess_item_response_status_id integer  ,
	ref_proficiency_status_id integer  ,
	aid_set_used       varchar(30)  ,
	descriptive_feedback varchar(300)  ,
	scaffolding_item_flag bool  ,
	hint_count         integer  ,
	hint_included_answer bool  ,
	duration           time  ,
	first_attempt_duration time  ,
	start_time         time  ,
	start_date         date  ,
	security_issue     varchar(300)  ,
	assessment_item_id integer  NOT NULL,
	assessment_participant_session_id integer  NOT NULL,
	result_xml         text  ,
	assessment_item_response_descriptive_feedback_date date  ,
	ref_assessment_item_response_score_status_id integer  ,
	CONSTRAINT pk_assessment_item_response PRIMARY KEY ( assessment_item_response_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_item_response IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.assessment_item_response_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.score_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.ref_assess_item_response_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.ref_proficiency_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.aid_set_used IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.descriptive_feedback IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.scaffolding_item_flag IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.hint_count IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.hint_included_answer IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.duration IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.first_attempt_duration IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.start_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.security_issue IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.assessment_item_id IS 'Foreign key - Assessment_Item.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.assessment_participant_session_id IS 'Foreign key - Assessment_Participant_Session';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.result_xml IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.assessment_item_response_descriptive_feedback_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response.ref_assessment_item_response_score_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_item_rubric_criterion_result ( 
	assessment_item_response_id integer  NOT NULL,
	rubric_criterion_level_id integer  NOT NULL,
	CONSTRAINT pk_assessment_item_rubric_criterion_result PRIMARY KEY ( assessment_item_response_id, rubric_criterion_level_id )
 );

CREATE TABLE rs_ceds7_sc.assessment_levels_for_which_designed ( 
	assessment_levels_for_which_designed_id integer  NOT NULL,
	assessment_id      integer  NOT NULL,
	ref_grade_level_id integer  NOT NULL,
	CONSTRAINT pk_assessment_levels_for_which_designed PRIMARY KEY ( assessment_levels_for_which_designed_id ),
	CONSTRAINT ix_assessment_levels_for_which_designed UNIQUE ( assessment_id, ref_grade_level_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_levels_for_which_designed IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_levels_for_which_designed.assessment_levels_for_which_designed_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_levels_for_which_designed.assessment_id IS 'Foreign key - Assessment';

COMMENT ON COLUMN rs_ceds7_sc.assessment_levels_for_which_designed.ref_grade_level_id IS 'Foreign key - Ref_Grade_Level';

CREATE TABLE rs_ceds7_sc.assessment_need_apip_control ( 
	assessment_need_apip_control_id integer  NOT NULL,
	assessment_personal_needs_profile_control_id integer  NOT NULL,
	assessment_need_time_multiplier varchar(9)  ,
	line_reader_highlight_color char(6)  ,
	overlay_color      char(6)  ,
	background_color   char(6)  ,
	ref_assessment_need_increased_whitespacing_type_id integer  ,
	CONSTRAINT pk_assessment_need_apip_control PRIMARY KEY ( assessment_need_apip_control_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_need_apip_control IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_control.assessment_need_apip_control_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_control.assessment_personal_needs_profile_control_id IS 'Foreign key - Assessment_Personal_Needs_Profile_Control';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_control.assessment_need_time_multiplier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_control.line_reader_highlight_color IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_control.overlay_color IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_control.background_color IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_control.ref_assessment_need_increased_whitespacing_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_need_braille ( 
	assessment_need_braille_id integer  NOT NULL,
	assessment_personal_needs_profile_display_id integer  ,
	ref_assessment_need_usage_type_id integer  ,
	ref_assessment_need_braille_grade_type_id integer  ,
	ref_assessment_need_number_of_braille_dots_id integer  ,
	number_of_braille_cells integer  ,
	ref_assessment_need_braille_mark_type_id integer  ,
	braille_dot_pressure decimal(10,4)  ,
	ref_assessment_need_braille_status_cell_type_id integer  ,
	CONSTRAINT pk_assessment_need_braille PRIMARY KEY ( assessment_need_braille_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_need_braille IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_braille.assessment_need_braille_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_braille.assessment_personal_needs_profile_display_id IS 'Foreign key - Assessment_Person_Need_Profile_Display.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_braille.ref_assessment_need_usage_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_braille.ref_assessment_need_braille_grade_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_braille.ref_assessment_need_number_of_braille_dots_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_braille.number_of_braille_cells IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_braille.ref_assessment_need_braille_mark_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_braille.braille_dot_pressure IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_braille.ref_assessment_need_braille_status_cell_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_participant_session ( 
	assessment_participant_session_id integer  NOT NULL,
	actual_start_date_time date  ,
	actual_end_date_time date  ,
	time_assessed      varchar(30)  ,
	ref_assessment_platform_type_id integer  ,
	delivery_device_details varchar(300)  ,
	security_issue     varchar(300)  ,
	ref_assessment_session_special_circumstance_type_id integer  ,
	special_event_description varchar(60)  ,
	location_id        integer  ,
	ref_language_id    integer  ,
	assessment_form_section_id integer  ,
	assessment_session_id integer  NOT NULL,
	assessment_registration_id integer  ,
	assessment_participant_session_database_name varchar(300)  ,
	assessment_participant_session_guid varchar(40)  ,
	platform_user_agent varchar(512)  ,
	CONSTRAINT pk_assessment_participant_session PRIMARY KEY ( assessment_participant_session_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_participant_session IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.assessment_participant_session_id IS 'PK';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.actual_start_date_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.actual_end_date_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.time_assessed IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.ref_assessment_platform_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.delivery_device_details IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.security_issue IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.ref_assessment_session_special_circumstance_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.special_event_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.location_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.ref_language_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.assessment_form_section_id IS 'Foreign key - Assessment_Form_Section';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.assessment_session_id IS 'Foreign key - Assessment_Session';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.assessment_registration_id IS 'Foreign key - Assessment_Registration';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.assessment_participant_session_database_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session.assessment_participant_session_guid IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_performance_level ( 
	assessment_performance_level_id integer  NOT NULL,
	identifier         varchar(40)  ,
	assessment_subtest_id integer  ,
	score_metric       varchar(30)  ,
	label              varchar(20)  ,
	lower_cut_score    varchar(30)  ,
	upper_cut_score    varchar(30)  ,
	descriptive_feedback text  ,
	CONSTRAINT pk_assessment_performance_level PRIMARY KEY ( assessment_performance_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_performance_level IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_performance_level.assessment_performance_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_performance_level.identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_performance_level.assessment_subtest_id IS 'Foreign key - Assessment_Subtest';

COMMENT ON COLUMN rs_ceds7_sc.assessment_performance_level.score_metric IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_performance_level.label IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_performance_level.lower_cut_score IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_performance_level.upper_cut_score IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_performance_level.descriptive_feedback IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_personal_need_screen_reader ( 
	assessment_personal_need_screen_reader_id integer  NOT NULL,
	assessment_personal_needs_profile_display_id integer  NOT NULL,
	ref_assessment_need_usage_type_id integer  ,
	speech_rate        integer  ,
	pitch              decimal(10,4)  ,
	volume             decimal(10,4)  ,
	ref_assessment_need_link_indication_type_id integer  ,
	CONSTRAINT pk_assessment_personal_need_screen_reader PRIMARY KEY ( assessment_personal_need_screen_reader_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_personal_need_screen_reader IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_need_screen_reader.assessment_personal_need_screen_reader_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_need_screen_reader.assessment_personal_needs_profile_display_id IS 'Foreign key - Assessment_Personnal_Needs_Profile_Display';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_need_screen_reader.ref_assessment_need_usage_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_need_screen_reader.speech_rate IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_need_screen_reader.pitch IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_need_screen_reader.volume IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_personal_needs_profile_content ( 
	assessment_personal_needs_profile_content_id integer  NOT NULL,
	assessment_personal_needs_profile_id integer  NOT NULL,
	ref_assessment_need_hazard_type_id integer  ,
	ref_assessment_need_support_tool_id integer  ,
	cognitive_guidance_activate_by_default_indicator bool  ,
	cognitive_guidance_assigned_support_indicator bool  ,
	scaffolding_assigned_support_indicator bool  ,
	scaffolding_activate_by_default_indicator bool  ,
	chunking_assigned_support_indicator bool  ,
	chunking_activate_by_default_indicator bool  ,
	keyword_emphasis_assigned_support_indicator bool  ,
	keyword_emphasis_activate_by_default_indicator bool  ,
	reduced_answers_assigned_support_indicator bool  ,
	reduced_answers_activate_by_default_indicator bool  ,
	negatives_removed_assigned_support_indicator bool  ,
	negatives_removed_activate_by_default_indicator bool  ,
	ref_keyword_translations_language_id integer  ,
	keyword_translations_assigned_support_indicator bool  ,
	keyword_translations_activate_by_default_indicator bool  ,
	CONSTRAINT pk_assessment_needs_profile_content PRIMARY KEY ( assessment_personal_needs_profile_content_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile_content.assessment_personal_needs_profile_content_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile_content.assessment_personal_needs_profile_id IS 'Foreign key - Assessment_Personal_Needs_Profile';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile_content.ref_assessment_need_hazard_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile_content.ref_assessment_need_support_tool_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_needs_profile_content.ref_keyword_translations_language_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_registration ( 
	assessment_registration_id integer  NOT NULL,
	creation_date      date  ,
	days_of_instruction_prior_to_assessment integer  ,
	score_publish_date date  ,
	test_attempt_identifier varchar(40)  ,
	retest_indicator   bool  ,
	course_section_organization_id integer  ,
	ref_assessment_participation_indicator_id integer  ,
	testing_indicator  varchar(300)  ,
	ref_assessment_purpose_id integer  ,
	ref_assessment_reason_not_tested_id integer  ,
	ref_assessment_reason_not_completing_id integer  ,
	ref_grade_level_to_be_assessed_id integer  ,
	ref_grade_level_when_assessed_id integer  ,
	person_id          integer  NOT NULL,
	assessment_form_id integer  NOT NULL,
	organization_id    integer  ,
	school_organization_id integer  ,
	lea_organization_id integer  ,
	assessment_administration_id integer  ,
	assigned_by_person_id integer  ,
	assessment_registration_completion_status_date_time date  ,
	ref_assessment_registration_completion_status_id integer  ,
	lea_full_academic_year bool  ,
	school_full_academic_year bool  ,
	state_full_academic_year bool  ,
	CONSTRAINT pk_assessment_registration PRIMARY KEY ( assessment_registration_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_registration IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.assessment_registration_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.creation_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.days_of_instruction_prior_to_assessment IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.score_publish_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.test_attempt_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.retest_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.course_section_organization_id IS 'Foreign key - Course_Section';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.ref_assessment_participation_indicator_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.testing_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.ref_assessment_purpose_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.ref_assessment_reason_not_tested_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.ref_assessment_reason_not_completing_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.ref_grade_level_to_be_assessed_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.ref_grade_level_when_assessed_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.person_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.assessment_form_id IS 'Foreign key - Assessment_Form';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.school_organization_id IS 'Foreign key - Organization.  Identifies the school.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.lea_organization_id IS 'Foreign key - Organization.  Identifies the LEA.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.assessment_administration_id IS 'Foreign key - Assessment_Administration';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.assigned_by_person_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.assessment_registration_completion_status_date_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration.ref_assessment_registration_completion_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_result ( 
	assessment_result_id integer  NOT NULL,
	score_value        varchar(35)  ,
	ref_score_metric_type_id integer  ,
	preliminary_indicator bool  ,
	ref_assessment_pretest_outcome_id integer  ,
	number_of_responses integer  ,
	diagnostic_statement text  ,
	diagnostic_statement_source varchar(300)  ,
	descriptive_feedback varchar(300)  ,
	descriptive_feedback_source varchar(60)  ,
	instructional_recommendation varchar(100)  ,
	included_in_ayp_calculation bool  ,
	date_updated       date  ,
	date_created       date  ,
	assessment_subtest_id integer  NOT NULL,
	assessment_registration_id integer  NOT NULL,
	ref_el_outcome_measurement_level_id integer  ,
	ref_outcome_time_point_id integer  ,
	assessment_result_descriptive_feedback_date_time date  ,
	assessment_result_score_standard_error decimal(9,2)  ,
	ref_assessment_result_data_type_id integer  ,
	ref_assessment_result_score_type_id integer  ,
	CONSTRAINT pk_assessment_result PRIMARY KEY ( assessment_result_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_result IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.assessment_result_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.score_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.ref_score_metric_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.preliminary_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.ref_assessment_pretest_outcome_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.number_of_responses IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.diagnostic_statement IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.diagnostic_statement_source IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.descriptive_feedback IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.descriptive_feedback_source IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.instructional_recommendation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.included_in_ayp_calculation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.date_updated IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.date_created IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.assessment_subtest_id IS 'Foreign key - Assessment_Subtest';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.assessment_registration_id IS 'Foreign key - Assessment_Registration';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.ref_el_outcome_measurement_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.ref_outcome_time_point_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.assessment_result_descriptive_feedback_date_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.assessment_result_score_standard_error IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.ref_assessment_result_data_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result.ref_assessment_result_score_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_result_rubric_criterion_result ( 
	assessment_result_rubric_criterion_result_id integer  NOT NULL,
	assessment_result_id integer  NOT NULL,
	rubric_criterion_level_id integer  NOT NULL,
	CONSTRAINT pk_assessment_result_rubric_criterion_result PRIMARY KEY ( assessment_result_rubric_criterion_result_id ),
	CONSTRAINT ix_assessment_result_rubric_criterion_level UNIQUE ( assessment_result_id, rubric_criterion_level_id ) 
 );

COMMENT ON COLUMN rs_ceds7_sc.assessment_result_rubric_criterion_result.assessment_result_rubric_criterion_result_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result_rubric_criterion_result.assessment_result_id IS 'Foreign key - Assessment_Result.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result_rubric_criterion_result.rubric_criterion_level_id IS 'Foreign key - Rubric_Criterion_Level.';

CREATE TABLE rs_ceds7_sc.assessment_session_staff_role ( 
	assessment_session_staff_role_id integer  NOT NULL,
	ref_assessment_session_staff_role_type_id integer  ,
	person_id          integer  NOT NULL,
	assessment_session_id integer  ,
	assessment_participant_session_id integer  ,
	CONSTRAINT pk_assessment_session_staff_role PRIMARY KEY ( assessment_session_staff_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_session_staff_role IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session_staff_role.assessment_session_staff_role_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session_staff_role.ref_assessment_session_staff_role_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session_staff_role.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session_staff_role.assessment_session_id IS 'Foreign key - Assessment_Session';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session_staff_role.assessment_participant_session_id IS 'Foreign key - Assessment_Participant_Session';

CREATE TABLE rs_ceds7_sc.assessment_subtest_assessment_item ( 
	assessment_subtest_item_id integer  NOT NULL,
	assessment_subtest_id integer  NOT NULL,
	assessment_item_id integer  NOT NULL,
	item_weight_correct decimal(3,2)  ,
	item_weight_incorrect decimal(3,2)  ,
	item_weight_not_attempted decimal(3,2)  ,
	CONSTRAINT pk_assessment_subtest_assessment_item PRIMARY KEY ( assessment_subtest_item_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_subtest_assessment_item IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest_assessment_item.assessment_subtest_item_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest_assessment_item.assessment_subtest_id IS 'Foreign key - Assessment_Subtest';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest_assessment_item.assessment_item_id IS 'Foreign key - Assessment_Item';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest_assessment_item.item_weight_correct IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest_assessment_item.item_weight_incorrect IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest_assessment_item.item_weight_not_attempted IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_subtest_el_developmental_domain ( 
	assessment_subtest_el_developmental_domain_id integer  NOT NULL,
	assessment_subtest_id integer  NOT NULL,
	ref_assessment_el_developmental_domain_id integer  NOT NULL,
	CONSTRAINT pk_assessment_subtest_el_developmental_domain PRIMARY KEY ( assessment_subtest_el_developmental_domain_id ),
	CONSTRAINT ix_assessment_subtest_el_developmental_domain UNIQUE ( assessment_subtest_id, ref_assessment_el_developmental_domain_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_subtest_el_developmental_domain IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest_el_developmental_domain.assessment_subtest_el_developmental_domain_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest_el_developmental_domain.assessment_subtest_id IS 'Foreign key - Assessment';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest_el_developmental_domain.ref_assessment_el_developmental_domain_id IS 'Foreign key - Ref_Assessment_EL_Developmental_Domain';

CREATE TABLE rs_ceds7_sc.authentication ( 
	authentication_id  integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	identity_provider_name varchar(60)  ,
	identity_provider_uri varchar(512)  ,
	login_identifier   varchar(40)  ,
	start_date         date  ,
	end_date           date  ,
	CONSTRAINT pk_authentication PRIMARY KEY ( authentication_id )
 );

COMMENT ON TABLE rs_ceds7_sc.authentication IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.authentication.authentication_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.authentication.organization_person_role_id IS 'Foreign key - Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.authentication.identity_provider_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.authentication.identity_provider_uri IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.authentication.login_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.authentication.start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.authentication.end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.authorization_document ( 
	authorization_document_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	acceptance_indicator bool  ,
	authorization_date date  ,
	decision_explanation text  ,
	ref_authorizer_type_id integer  ,
	CONSTRAINT pk_authorization_document PRIMARY KEY ( authorization_document_id )
 );

CREATE TABLE rs_ceds7_sc.competency_framework ( 
	competency_framework_id integer  NOT NULL,
	uri                varchar(512)  ,
	title              varchar(120)  ,
	subject            varchar(30)  ,
	version            varchar(30)  ,
	creator            varchar(120)  ,
	jurisdiction       varchar(120)  ,
	description        varchar(300)  ,
	publisher          varchar(30)  ,
	ref_competency_framework_publication_status_id integer  ,
	valid_start_date   date  NOT NULL,
	valid_end_date     date  NOT NULL,
	ref_language_id    integer  ,
	license            varchar(300)  ,
	rights             varchar(300)  ,
	rights_holder      varchar(30)  ,
	competency_framework_publication_date date  ,
	CONSTRAINT pk_competency_framework PRIMARY KEY ( competency_framework_id )
 );

CREATE TABLE rs_ceds7_sc.competency_framework_item_association ( 
	competency_framework_item_association_id integer  NOT NULL,
	competency_framework_item_id integer  NOT NULL,
	ref_entity_type_id integer  NOT NULL,
	associated_entity_id integer  NOT NULL,
	ref_competency_framework_item_association_type_id integer  ,
	competency_framework_item_association_identifier_uri varchar(512)  ,
	connection_citation varchar(300)  ,
	origin_node_name   varchar(30)  ,
	origin_node_uri    varchar(512)  ,
	destination_node_name varchar(30)  ,
	destination_node_uri varchar(512)  ,
	weight             decimal(9,3)  ,
	CONSTRAINT pk_competency_framework_item_association PRIMARY KEY ( competency_framework_item_association_id )
 );

CREATE TABLE rs_ceds7_sc.competency_item_competency_set ( 
	competency_item_competency_set_id integer  NOT NULL,
	competency_set_id  integer  NOT NULL,
	competency_framework_item_id integer  NOT NULL,
	CONSTRAINT pk_competency_item_competency_set PRIMARY KEY ( competency_item_competency_set_id ),
	CONSTRAINT ix_competency_framework_item_competency_set UNIQUE ( competency_framework_item_id, competency_set_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.competency_item_competency_set IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.competency_item_competency_set.competency_item_competency_set_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.competency_item_competency_set.competency_set_id IS 'Foreign key - Competency_Set';

CREATE TABLE rs_ceds7_sc.core_knowledge_area ( 
	core_knowledge_area_id integer  NOT NULL,
	professional_development_activity_id integer  NOT NULL,
	ref_core_knowledge_area_id integer  NOT NULL,
	CONSTRAINT pk_core_knowledge_area PRIMARY KEY ( core_knowledge_area_id ),
	CONSTRAINT ix_core_knowledge_area UNIQUE ( professional_development_activity_id, ref_core_knowledge_area_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.core_knowledge_area IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.core_knowledge_area.core_knowledge_area_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.core_knowledge_area.professional_development_activity_id IS 'Foreign key - Ref_Professional_Development_Activity';

COMMENT ON COLUMN rs_ceds7_sc.core_knowledge_area.ref_core_knowledge_area_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.course_section ( 
	organization_id    integer  NOT NULL,
	available_carnegie_unit_credit decimal(9,2)  ,
	ref_course_section_delivery_mode_id integer  ,
	ref_single_sex_class_status_id integer  ,
	time_required_for_completion decimal(9,0)  ,
	course_id          integer  NOT NULL,
	ref_additional_credit_type_id integer  ,
	ref_instruction_language_id integer  ,
	virtual_indicator  bool  ,
	organization_calendar_session_id integer  ,
	ref_credit_type_earned_id integer  ,
	ref_advanced_placement_course_code_id integer  ,
	maximum_capacity   integer  ,
	related_competency_framework_items varchar(60)  ,
	CONSTRAINT pk_course_section PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.course_section IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.course_section.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN rs_ceds7_sc.course_section.available_carnegie_unit_credit IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course_section.ref_course_section_delivery_mode_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course_section.ref_single_sex_class_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course_section.time_required_for_completion IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course_section.course_id IS 'Foreign key - Course.';

COMMENT ON COLUMN rs_ceds7_sc.course_section.ref_additional_credit_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course_section.ref_instruction_language_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course_section.virtual_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course_section.organization_calendar_session_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course_section.ref_credit_type_earned_id IS 'Foreign key - Ref_Credit_Type_Earned';

COMMENT ON COLUMN rs_ceds7_sc.course_section.ref_advanced_placement_course_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course_section.maximum_capacity IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.course_section_location ( 
	course_section_location_id integer  NOT NULL,
	location_id        integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_instruction_location_type_id integer  ,
	CONSTRAINT pk_course_section_location PRIMARY KEY ( course_section_location_id )
 );

COMMENT ON TABLE rs_ceds7_sc.course_section_location IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.course_section_location.course_section_location_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.course_section_location.location_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course_section_location.organization_id IS 'Surrogate key from Course_Section.';

COMMENT ON COLUMN rs_ceds7_sc.course_section_location.ref_instruction_location_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.credential ( 
	credential_id      integer  NOT NULL,
	alternate_name     varchar(300)  ,
	credential_naics_industry_type varchar(6)  ,
	description        varchar(300)  ,
	employment_naics_code varchar(6)  ,
	image_url          varchar(512)  ,
	jurisdiction_region varchar(2000)  ,
	jurisdiction_region_exception varchar(2000)  ,
	keywords           text  ,
	title              varchar(300)  ,
	validation_method_description text  ,
	version            decimal(9,2)  ,
	ref_career_cluster_id integer  ,
	ref_cip_code_id    integer  ,
	ref_credential_intended_purpose_type_id integer  ,
	ref_credential_status_type_id integer  ,
	ref_credential_verification_type_id integer  ,
	ref_onetsoc_occupation_type_id integer  ,
	CONSTRAINT pk_credential PRIMARY KEY ( credential_id )
 );

CREATE TABLE rs_ceds7_sc.credential_award_credit ( 
	credential_award_credit_id integer  NOT NULL,
	credential_award_id integer  NOT NULL,
	credential_criteria_course_id integer  ,
	organization_person_role_id integer  ,
	CONSTRAINT pk_credential_award_credit PRIMARY KEY ( credential_award_credit_id )
 );

CREATE TABLE rs_ceds7_sc.credential_category ( 
	credential_category_id integer  NOT NULL,
	credential_id      integer  NOT NULL,
	category           varchar(60)  ,
	category_system    varchar(30)  ,
	CONSTRAINT pk_credential_category PRIMARY KEY ( credential_category_id )
 );

CREATE TABLE rs_ceds7_sc.credential_creator_credential ( 
	credential_creator_credential_id integer  NOT NULL,
	credential_id      integer  NOT NULL,
	organization_id    integer  NOT NULL,
	CONSTRAINT pk_credential_creator_credential PRIMARY KEY ( credential_creator_credential_id ),
	CONSTRAINT ix_credential_credential_creator UNIQUE ( credential_id, organization_id ) 
 );

CREATE TABLE rs_ceds7_sc.credential_criteria_course ( 
	credential_criteria_course_id integer  NOT NULL,
	credential_criteria_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	CONSTRAINT pk_credential_criteria_course PRIMARY KEY ( credential_criteria_course_id ),
	CONSTRAINT ix_course_credential_criteria UNIQUE ( organization_id, credential_criteria_id ) 
 );

CREATE TABLE rs_ceds7_sc.credential_issuer ( 
	organization_id    integer  NOT NULL,
	award_issuer_origin_url varchar(512)  ,
	revocation_list_url varchar(512)  ,
	ref_ctdl_organization_type_id integer  ,
	CONSTRAINT pk_credential_issuer PRIMARY KEY ( organization_id )
 );

CREATE TABLE rs_ceds7_sc.cte_course ( 
	organization_id    integer  NOT NULL,
	available_carnegie_unit_credit decimal(9,2)  ,
	ref_additional_credit_type_id integer  ,
	ref_credit_type_earned_id integer  ,
	high_school_course_requirement bool  ,
	ref_course_gpa_applicability_id integer  ,
	core_academic_course bool  ,
	ref_curriculum_framework_type_id integer  ,
	course_aligned_with_standards bool  ,
	sced_course_code   char(5)  ,
	ref_sced_course_level_id integer  ,
	ref_sced_course_subject_area_id integer  ,
	ref_career_cluster_id integer  ,
	course_department_name varchar(60)  ,
	CONSTRAINT pk_cte_course PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.cte_course IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.cte_course.organization_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.cte_course.available_carnegie_unit_credit IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_course.ref_additional_credit_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_course.ref_credit_type_earned_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_course.high_school_course_requirement IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_course.ref_course_gpa_applicability_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_course.core_academic_course IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_course.ref_curriculum_framework_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_course.course_aligned_with_standards IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_course.sced_course_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_course.ref_sced_course_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_course.ref_sced_course_subject_area_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_course.ref_career_cluster_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_course.course_department_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_child_demographic ( 
	person_id          integer  NOT NULL,
	foster_care_start_date date  ,
	foster_care_end_date date  ,
	other_race_indicator bool  ,
	CONSTRAINT pk_el_child_demographic PRIMARY KEY ( person_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_child_demographic.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_demographic.foster_care_start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_demographic.foster_care_end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_demographic.other_race_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_child_health ( 
	person_id          integer  NOT NULL,
	well_child_screening_received_date date  ,
	ref_scheduled_well_child_screening_id integer  ,
	CONSTRAINT pk_el_child_health PRIMARY KEY ( person_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_child_health.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_health.well_child_screening_received_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_health.ref_scheduled_well_child_screening_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_child_outcome_summary ( 
	person_id          integer  NOT NULL,
	cos_progress_a_indicator bool  ,
	cos_progress_b_indicator bool  ,
	cos_progress_c_indicator bool  ,
	cos_rating_a_id    integer  ,
	cos_rating_b_id    integer  ,
	cos_rating_c_id    integer  ,
	CONSTRAINT pk_el_child_outcome_summary PRIMARY KEY ( person_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_child_outcome_summary.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_outcome_summary.cos_progress_a_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_outcome_summary.cos_progress_b_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_outcome_summary.cos_progress_c_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_outcome_summary.cos_rating_a_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_outcome_summary.cos_rating_b_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_outcome_summary.cos_rating_c_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_child_service ( 
	organization_person_role_id integer  NOT NULL,
	eceap_eligibility  bool  ,
	eligibility_priority_points varchar(100)  ,
	service_date       date  ,
	ref_early_childhood_services_offered_id integer  ,
	ref_early_childhood_services_received_id integer  ,
	ref_el_service_type_id integer  ,
	CONSTRAINT pk_el_child_service PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_child_service.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.el_child_service.eceap_eligibility IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_service.eligibility_priority_points IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_service.service_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_service.ref_early_childhood_services_offered_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_service.ref_early_childhood_services_received_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_service.ref_el_service_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_child_transition_plan ( 
	person_id          integer  NOT NULL,
	part_b619_potential_eligibility_ind bool  ,
	idea_part_c_to_part_b_notification_date date  ,
	transition_conference_date date  ,
	transition_conference_decline_date date  ,
	date_of_transition_plan date  ,
	idea_part_c_to_part_b_notification_opt_out_date date  ,
	idea_part_c_to_part_b_notification_opt_out_indicator bool  ,
	ref_reason_delay_transition_conf_id integer  ,
	individualized_program_id integer  ,
	CONSTRAINT pk_el_child_idea PRIMARY KEY ( person_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_child_transition_plan.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_transition_plan.part_b619_potential_eligibility_ind IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_transition_plan.idea_part_c_to_part_b_notification_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_transition_plan.transition_conference_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_transition_plan.transition_conference_decline_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_transition_plan.date_of_transition_plan IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_transition_plan.idea_part_c_to_part_b_notification_opt_out_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_transition_plan.idea_part_c_to_part_b_notification_opt_out_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_transition_plan.ref_reason_delay_transition_conf_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_transition_plan.individualized_program_id IS 'Foreign key - Individualized_Program';

CREATE TABLE rs_ceds7_sc.el_class_section_service ( 
	el_class_section_service_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	youngest_age_served integer  ,
	oldest_age_served  integer  ,
	serves_children_with_special_needs bool  ,
	ref_el_group_size_standard_met_id integer  ,
	el_class_group_curriculum_type varchar(60)  ,
	ref_frequency_of_service_id integer  ,
	CONSTRAINT pk_el_class_section_service PRIMARY KEY ( el_class_section_service_id )
 );

COMMENT ON TABLE rs_ceds7_sc.el_class_section_service IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section_service.el_class_section_service_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section_service.organization_id IS 'Foreign key - EL_Class_Section';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section_service.youngest_age_served IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section_service.oldest_age_served IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section_service.serves_children_with_special_needs IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section_service.ref_el_group_size_standard_met_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section_service.el_class_group_curriculum_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section_service.ref_frequency_of_service_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_enrollment_other_funding ( 
	el_enrollment_other_funding_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	ref_el_other_federal_funding_sources_id integer  NOT NULL,
	CONSTRAINT pk_el_enrollment_other_funding PRIMARY KEY ( el_enrollment_other_funding_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_enrollment_other_funding.el_enrollment_other_funding_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.el_enrollment_other_funding.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN rs_ceds7_sc.el_enrollment_other_funding.ref_el_other_federal_funding_sources_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_organization ( 
	organization_id    integer  NOT NULL,
	ref_profit_status_id integer  ,
	CONSTRAINT pk_el_organization PRIMARY KEY ( organization_id )
 );

CREATE TABLE rs_ceds7_sc.el_organization_funds ( 
	organization_id    integer  NOT NULL,
	ref_el_federal_funding_type_id integer  ,
	ref_el_local_revenue_source_id integer  ,
	ref_el_other_federal_funding_sources_id integer  ,
	ref_el_state_revenue_source_id integer  ,
	ref_billable_basis_type_id integer  ,
	ref_reimbursement_type_id integer  ,
	CONSTRAINT pk_el_organization_funds PRIMARY KEY ( organization_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_organization_funds.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_funds.ref_el_federal_funding_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_funds.ref_el_local_revenue_source_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_funds.ref_el_other_federal_funding_sources_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_funds.ref_el_state_revenue_source_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_funds.ref_billable_basis_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_funds.ref_reimbursement_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_program_licensing ( 
	el_program_licensing_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_el_program_license_status_id integer  ,
	initial_license_date date  ,
	continuing_license_date date  ,
	license_suspension_status bool  ,
	license_revocation_status bool  ,
	number_of_fatalities integer  ,
	number_of_injuries integer  ,
	ref_license_exempt_id integer  ,
	CONSTRAINT pk_el_program_licensing PRIMARY KEY ( el_program_licensing_id )
 );

COMMENT ON TABLE rs_ceds7_sc.el_program_licensing IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.el_program_licensing.el_program_licensing_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.el_program_licensing.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN rs_ceds7_sc.el_program_licensing.ref_el_program_license_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_program_licensing.initial_license_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_program_licensing.continuing_license_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_program_licensing.license_suspension_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_program_licensing.license_revocation_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_program_licensing.number_of_fatalities IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_program_licensing.number_of_injuries IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_program_licensing.ref_license_exempt_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_quality_rating_improvement ( 
	el_quality_rating_improvement_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	number_qris_levels integer  ,
	qris_award_date    date  ,
	qris_expiration_date date  ,
	ref_qris_participation_id integer  ,
	qris_score         varchar(45)  ,
	CONSTRAINT pk_el_quality_rating_improvement PRIMARY KEY ( el_quality_rating_improvement_id )
 );

COMMENT ON TABLE rs_ceds7_sc.el_quality_rating_improvement IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.el_quality_rating_improvement.el_quality_rating_improvement_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.el_quality_rating_improvement.organization_id IS 'Surrogate key from Organization.';

COMMENT ON COLUMN rs_ceds7_sc.el_quality_rating_improvement.number_qris_levels IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_quality_rating_improvement.qris_award_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_quality_rating_improvement.qris_expiration_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_quality_rating_improvement.ref_qris_participation_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_quality_rating_improvement.qris_score IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_staff ( 
	organization_person_role_id integer  NOT NULL,
	ref_child_development_associate_type_id integer  ,
	CONSTRAINT pk_el_staff PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.el_staff IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff.organization_person_role_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff.ref_child_development_associate_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_staff_education ( 
	organization_person_role_id integer  NOT NULL,
	ec_degree_or_certificate_holder bool  ,
	total_college_credits_earned decimal(10,2)  ,
	ref_el_level_of_specialization_id integer  ,
	total_approved_ec_credits_earned decimal(10,2)  ,
	school_age_education_ps_credits decimal(10,2)  ,
	ref_el_professional_development_topic_area_id integer  ,
	CONSTRAINT pk_el_staff_education PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.el_staff_education IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_education.organization_person_role_id IS 'PK';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_education.ec_degree_or_certificate_holder IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_education.total_college_credits_earned IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_education.ref_el_level_of_specialization_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_education.total_approved_ec_credits_earned IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_education.school_age_education_ps_credits IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_education.ref_el_professional_development_topic_area_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.early_childhood_credential ( 
	person_credential_id integer  NOT NULL,
	ref_early_childhood_credential_id integer  NOT NULL,
	CONSTRAINT pk_early_childhood_credential PRIMARY KEY ( person_credential_id )
 );

COMMENT ON TABLE rs_ceds7_sc.early_childhood_credential IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.early_childhood_credential.person_credential_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.early_childhood_credential.ref_early_childhood_credential_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.financial_account ( 
	financial_account_id integer  NOT NULL,
	name               varchar(100)  NOT NULL,
	description        varchar(300)  ,
	account_number     varchar(30)  ,
	ref_financial_account_category_id integer  ,
	ref_financial_account_fund_classification_id integer  ,
	ref_financial_account_program_code_id integer  ,
	ref_financial_account_balance_sheet_code_id integer  ,
	ref_financial_expenditure_function_code_id integer  ,
	ref_financial_expenditure_object_code_id integer  ,
	financial_account_number varchar(30)  ,
	financial_expenditure_project_reporting_code decimal(3,0)  ,
	ref_financial_expenditure_level_of_instruction_code_id integer  ,
	ref_financial_account_revenue_code_id integer  ,
	CONSTRAINT pk_financial_account PRIMARY KEY ( financial_account_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.financial_account.financial_account_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.financial_account.name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_account.description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_account.ref_financial_account_category_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_account.ref_financial_account_fund_classification_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_account.ref_financial_account_program_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_account.ref_financial_account_balance_sheet_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_account.ref_financial_expenditure_function_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_account.ref_financial_expenditure_object_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_account.financial_account_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_account.financial_expenditure_project_reporting_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_account.ref_financial_expenditure_level_of_instruction_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_account.ref_financial_account_revenue_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.financial_aid_application ( 
	financial_aid_application_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_financial_aid_application_type_id integer  NOT NULL,
	financial_aid_year_designator char(9)  ,
	CONSTRAINT pk_financial_aid_application PRIMARY KEY ( financial_aid_application_id )
 );

COMMENT ON TABLE rs_ceds7_sc.financial_aid_application IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.financial_aid_application.financial_aid_application_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.financial_aid_application.organization_person_role_id IS 'Foreign key - Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.financial_aid_application.ref_financial_aid_application_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_aid_application.financial_aid_year_designator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.goal ( 
	goal_id            integer  NOT NULL,
	description        varchar(300)  ,
	start_date         date  ,
	end_date           date  ,
	organization_person_role_id integer  ,
	competency_set_id  integer  ,
	CONSTRAINT pk_goal PRIMARY KEY ( goal_id )
 );

CREATE TABLE rs_ceds7_sc.goal_measurement_criterion ( 
	goal_measurement_criterion_id integer  NOT NULL,
	goal_measurement_id integer  NOT NULL,
	accuracy_percent   decimal(3,2)  ,
	attempts_count     integer  ,
	metric             varchar(60)  ,
	success_count      integer  ,
	CONSTRAINT pk_goal_measurement_criterion PRIMARY KEY ( goal_measurement_criterion_id )
 );

CREATE TABLE rs_ceds7_sc.idea_eligibility_evaluation_category ( 
	idea_eligibility_evaluation_category_id integer  NOT NULL,
	eligibility_evaluation_id integer  NOT NULL,
	ref_idea_eligibility_evaluation_category_id integer  NOT NULL,
	CONSTRAINT pk_idea_eligibility_evaluation_category PRIMARY KEY ( idea_eligibility_evaluation_category_id ),
	CONSTRAINT ix_eligibility_evaluation_ref_idea_eligibility_evaluation_category UNIQUE ( eligibility_evaluation_id, ref_idea_eligibility_evaluation_category_id ) 
 );

CREATE TABLE rs_ceds7_sc.iep_authorization_rejected ( 
	iep_authorization_rejected_id integer  NOT NULL,
	iep_authorization_id integer  NOT NULL,
	portion_description text  ,
	portion_explanation text  ,
	CONSTRAINT pk_iep_authorization_rejected PRIMARY KEY ( iep_authorization_rejected_id )
 );

CREATE TABLE rs_ceds7_sc.ipeds_finance ( 
	organization_financial_id integer  NOT NULL,
	ref_ipedsfasb_financial_position_id integer  ,
	ref_ipedsfasb_functional_expense_id integer  ,
	ref_ipedsfasb_pell_grant_transactions_id integer  ,
	ref_ipedsfasb_revenue_id integer  ,
	ref_ipedsfasb_revenue_restriction_id integer  ,
	ref_ipedsfasb_scholarshipsand_fellowships_revenue_id integer  ,
	ref_ipedsgasb_financial_position_id integer  ,
	ref_ipedsgasb_functional_expense_id integer  ,
	ref_ipedsgasb_revenue_id integer  ,
	ref_ipedsgasb_scholarshipsand_fellowships_revenue_id integer  ,
	ref_ipeds_intercollegiate_athletics_expenses_id integer  ,
	ref_ipeds_natural_expense_id integer  ,
	CONSTRAINT pk_ipeds_finance PRIMARY KEY ( organization_financial_id )
 );

CREATE TABLE rs_ceds7_sc.incident_person ( 
	incident_id        integer  NOT NULL,
	person_id          integer  NOT NULL,
	ref_incident_person_role_type_id integer  NOT NULL,
	identifier         varchar(40)  ,
	ref_incident_person_type_id integer  ,
	CONSTRAINT pk_incident_person PRIMARY KEY ( incident_id, person_id, ref_incident_person_role_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.incident_person.ref_incident_person_role_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident_person.identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident_person.ref_incident_person_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.individualized_program_accommodation ( 
	individualized_program_accommodation_id integer  NOT NULL,
	individualized_program_id integer  NOT NULL,
	description        text  ,
	applicability      text  ,
	ref_accommodation_type_id integer  ,
	CONSTRAINT pk_individualized_program_accommodation PRIMARY KEY ( individualized_program_accommodation_id )
 );

CREATE TABLE rs_ceds7_sc.individualized_program_amendment ( 
	individualized_program_amendment_id integer  NOT NULL,
	individualized_program_id integer  NOT NULL,
	description        text  ,
	reason_description text  ,
	CONSTRAINT pk_individualized_program_amendment PRIMARY KEY ( individualized_program_amendment_id )
 );

CREATE TABLE rs_ceds7_sc.individualized_program_assessment_accommodation ( 
	individualized_program_assessment_accommodation_id integer  NOT NULL,
	assessment_accommodation_id integer  NOT NULL,
	individualized_program_assessment_id integer  NOT NULL,
	CONSTRAINT pk_individualized_program_assessment_accommodation PRIMARY KEY ( individualized_program_assessment_accommodation_id ),
	CONSTRAINT ix_assessment_accommodation_individualized_program_assessment UNIQUE ( assessment_accommodation_id, individualized_program_assessment_id ) 
 );

CREATE TABLE rs_ceds7_sc.individualized_program_eligibility_evaluation ( 
	individualized_program_eligibility_evaluation_id integer  NOT NULL,
	eligibility_evaluation_id integer  NOT NULL,
	individualized_program_eligibility_id integer  NOT NULL,
	ref_iep_eligibility_evaluation_type_id integer  ,
	CONSTRAINT pk_individualized_program_eligibility_evaluation PRIMARY KEY ( individualized_program_eligibility_evaluation_id )
 );

CREATE TABLE rs_ceds7_sc.individualized_program_meeting ( 
	individualized_program_meeting_id integer  NOT NULL,
	individualized_program_id integer  NOT NULL,
	meeting_date       date  ,
	CONSTRAINT pk_individualized_program_meeting PRIMARY KEY ( individualized_program_meeting_id )
 );

CREATE TABLE rs_ceds7_sc.individualized_program_progress_goal ( 
	individualized_program_progress_goal_id integer  NOT NULL,
	goal_performance_id integer  NOT NULL,
	individualized_program_progress_report_id integer  NOT NULL,
	CONSTRAINT pk_individualized_program_progress_goal PRIMARY KEY ( individualized_program_progress_goal_id ),
	CONSTRAINT ix_goal_performance_individualized_program_progress_report UNIQUE ( goal_performance_id, individualized_program_progress_report_id ) 
 );

CREATE TABLE rs_ceds7_sc.individualized_program_progress_report_plan ( 
	individualized_program_progress_report_plan_id integer  NOT NULL,
	individualized_program_id integer  NOT NULL,
	ref_ipsp_progress_report_schedule_id integer  ,
	ref_ipsp_progress_report_type_id integer  ,
	CONSTRAINT pk_individualized_program_progress_report_plan PRIMARY KEY ( individualized_program_progress_report_plan_id )
 );

CREATE TABLE rs_ceds7_sc.individualized_program_services_received ( 
	individualized_program_services_received_id integer  NOT NULL,
	individualized_program_id integer  NOT NULL,
	services_received_id integer  NOT NULL,
	CONSTRAINT pk_individualized_program_services_received PRIMARY KEY ( individualized_program_services_received_id ),
	CONSTRAINT ix_individualized_program_services_received UNIQUE ( individualized_program_id, services_received_id ) 
 );

CREATE TABLE rs_ceds7_sc.k12_lea ( 
	organization_id    integer  NOT NULL,
	ref_lea_type_id    integer  ,
	supervisory_union_identification_number char(3)  ,
	ref_lea_improvement_status_id integer  ,
	ref_public_school_choice_status_id integer  ,
	CONSTRAINT xpk_k12_lea PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_lea IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea.organization_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea.ref_lea_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea.supervisory_union_identification_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea.ref_lea_improvement_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea.ref_public_school_choice_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_lea_federal_reporting ( 
	organization_id    integer  NOT NULL,
	ref_barrier_to_educating_homeless_id integer  ,
	desegregation_order_or_plan bool  ,
	harassment_or_bullying_policy bool  ,
	ref_integrated_technology_status_id integer  ,
	state_assessment_admin_funding numeric(5,2)  ,
	state_assess_standards_funding numeric(5,2)  ,
	terminated_title_iii_program_failure bool  ,
	interscholastic_sports_male_only integer  ,
	interscholastic_sports_female_only integer  ,
	interscholastic_teams_male_only integer  ,
	interscholastic_teams_female_only integer  ,
	interscholastic_sport_participants_male integer  ,
	interscholastic_sport_participants_female integer  ,
	CONSTRAINT pk_k12_lea_federal_reporting PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_lea_federal_reporting IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_reporting.organization_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_reporting.ref_barrier_to_educating_homeless_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_reporting.desegregation_order_or_plan IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_reporting.harassment_or_bullying_policy IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_reporting.ref_integrated_technology_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_reporting.state_assessment_admin_funding IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_reporting.state_assess_standards_funding IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_reporting.terminated_title_iii_program_failure IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_reporting.interscholastic_sports_male_only IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_reporting.interscholastic_sports_female_only IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_reporting.interscholastic_teams_male_only IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_reporting.interscholastic_teams_female_only IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_reporting.interscholastic_sport_participants_male IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_reporting.interscholastic_sport_participants_female IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_lea_pre_k_eligible_ages_idea ( 
	k12_lea_pre_k_eligible_ages_idea_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_pre_k_eligible_ages_non_idea_id integer  NOT NULL,
	CONSTRAINT pk_k12_lea_pre_k_eligible_ages_idea PRIMARY KEY ( k12_lea_pre_k_eligible_ages_idea_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_lea_pre_k_eligible_ages_idea IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_pre_k_eligible_ages_idea.k12_lea_pre_k_eligible_ages_idea_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_pre_k_eligible_ages_idea.organization_id IS 'Surrogate key from K12_LEA';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_pre_k_eligible_ages_idea.ref_pre_k_eligible_ages_non_idea_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_lea_title_iii_professional_development ( 
	k12_lea_title_iii_professional_development_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_title_iii_professional_development_type_id integer  NOT NULL,
	CONSTRAINT pk_k12_lea_title_iii_professional_dev PRIMARY KEY ( k12_lea_title_iii_professional_development_id ),
	CONSTRAINT ix_k12_lea_title_iii_professional_development UNIQUE ( organization_id, ref_title_iii_professional_development_type_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.k12_lea_title_iii_professional_development IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_title_iii_professional_development.k12_lea_title_iii_professional_development_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_title_iii_professional_development.organization_id IS 'Surrogate key from K12_LEA';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_title_iii_professional_development.ref_title_iii_professional_development_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_organization_student_responsibility ( 
	k12_organization_student_responsibility_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_k12_responsibility_type_id integer  NOT NULL,
	CONSTRAINT pk_k12_org_student_responsibility PRIMARY KEY ( k12_organization_student_responsibility_id ),
	CONSTRAINT ix_k12_organization_student_responsibility UNIQUE ( organization_person_role_id, ref_k12_responsibility_type_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.k12_organization_student_responsibility IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_organization_student_responsibility.k12_organization_student_responsibility_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_organization_student_responsibility.organization_person_role_id IS 'Surrogate key - Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.k12_organization_student_responsibility.ref_k12_responsibility_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_school ( 
	organization_id    integer  NOT NULL,
	ref_school_type_id integer  ,
	ref_school_level_id integer  ,
	ref_administrative_funding_control_id integer  ,
	charter_school_indicator bool  ,
	ref_charter_school_type_id integer  ,
	ref_increased_learning_time_type_id integer  ,
	ref_state_poverty_designation_id integer  ,
	charter_school_approval_year varchar(9)  ,
	ref_charter_school_approval_agency_type_id integer  ,
	accreditation_agency_name varchar(300)  ,
	charter_school_open_enrollment_indicator bool  ,
	charter_school_contract_approval_date date  ,
	charter_school_contract_id_number varchar(30)  ,
	charter_school_contract_renewal_date date  ,
	ref_charter_school_management_organization_type_id integer  ,
	CONSTRAINT xpk_k12_school PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_school IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.organization_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.ref_school_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.ref_school_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.ref_administrative_funding_control_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.charter_school_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.ref_charter_school_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.ref_increased_learning_time_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.ref_state_poverty_designation_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.charter_school_approval_year IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.ref_charter_school_approval_agency_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.accreditation_agency_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.charter_school_open_enrollment_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.charter_school_contract_approval_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.charter_school_contract_id_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.charter_school_contract_renewal_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school.ref_charter_school_management_organization_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_school_grade_offered ( 
	k12_school_grade_offered_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_grade_level_id integer  NOT NULL,
	CONSTRAINT pk_k12_school_grade_offered PRIMARY KEY ( k12_school_grade_offered_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_school_grade_offered IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_grade_offered.k12_school_grade_offered_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_grade_offered.organization_id IS 'Foreign key - K12 School.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_grade_offered.ref_grade_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_school_status ( 
	organization_id    integer  NOT NULL,
	ref_magnet_special_program_id integer  ,
	ref_alternative_school_focus_id integer  ,
	ref_internet_access_id integer  ,
	ref_restructuring_action_id integer  ,
	ref_title_i_school_status_id integer  ,
	consolidated_mep_funds_status bool  ,
	CONSTRAINT pk_k12_school_status PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_school_status IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_status.organization_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_status.ref_magnet_special_program_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_status.ref_alternative_school_focus_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_status.ref_internet_access_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_status.ref_restructuring_action_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_status.ref_title_i_school_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_status.consolidated_mep_funds_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_sea_alternate_fund_use ( 
	k12_se_alternate_fund_use_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_alternate_fund_uses_id integer  NOT NULL,
	CONSTRAINT pk_k12_sea_alternate_fund_use PRIMARY KEY ( k12_se_alternate_fund_use_id ),
	CONSTRAINT ix_k12_sea_alternate_fund_use UNIQUE ( organization_id, ref_alternate_fund_uses_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.k12_sea_alternate_fund_use IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea_alternate_fund_use.k12_se_alternate_fund_use_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea_alternate_fund_use.organization_id IS 'Surrogate key from K12_SEA_Federal_Funds';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea_alternate_fund_use.ref_alternate_fund_uses_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_sea_federal_funds ( 
	organization_id    integer  NOT NULL,
	state_transferability_of_funds bool  ,
	date_state_received_title_iii_allocation date  ,
	date_title_iii_funds_available_to_subgrantees date  ,
	number_of_days_for_title_iii_subgrants numeric(6,2)  ,
	CONSTRAINT pk_k12_sea_federal_funds PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_sea_federal_funds IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea_federal_funds.organization_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea_federal_funds.state_transferability_of_funds IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea_federal_funds.date_state_received_title_iii_allocation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea_federal_funds.date_title_iii_funds_available_to_subgrantees IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea_federal_funds.number_of_days_for_title_iii_subgrants IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_staff_employment ( 
	staff_employment_id integer  NOT NULL,
	ref_k12_staff_classification_id integer  ,
	ref_employment_status_id integer  ,
	contract_days_of_service_per_year decimal(5,2)  ,
	staff_compensation_base_salary decimal(9,2)  ,
	staff_compensation_retirement_benefits decimal(9,2)  ,
	staff_compensation_health_benefits decimal(9,2)  ,
	staff_compensation_other_benefits decimal(9,2)  ,
	staff_compensation_total_benefits decimal(9,2)  ,
	staff_compensation_total_salary decimal(9,2)  ,
	mep_personnel_indicator bool  ,
	title_i_targeted_assistance_staff_funded bool  ,
	salary_for_teaching_assignment_only_indicator bool  ,
	CONSTRAINT pk_k12_staff_employment PRIMARY KEY ( staff_employment_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_staff_employment IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_employment.staff_employment_id IS 'Foreign key - Staff_Employment';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_employment.ref_k12_staff_classification_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_employment.ref_employment_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_employment.contract_days_of_service_per_year IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_employment.staff_compensation_base_salary IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_employment.staff_compensation_retirement_benefits IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_employment.staff_compensation_health_benefits IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_employment.staff_compensation_other_benefits IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_employment.staff_compensation_total_benefits IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_employment.staff_compensation_total_salary IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_employment.mep_personnel_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_employment.title_i_targeted_assistance_staff_funded IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_employment.salary_for_teaching_assignment_only_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_student_academic_record ( 
	organization_person_role_id integer  NOT NULL,
	credits_attempted_cumulative decimal(9,2)  ,
	credits_earned_cumulative decimal(9,2)  ,
	grade_points_earned_cumulative decimal(9,2)  ,
	grade_point_average_cumulative decimal(9,4)  ,
	ref_gpa_weighted_indicator_id integer  ,
	projected_graduation_date char(7)  ,
	high_school_student_class_rank integer  ,
	class_ranking_date varchar(10)  ,
	total_number_in_class integer  ,
	diploma_or_credential_award_date char(7)  ,
	ref_high_school_diploma_type_id integer  ,
	ref_high_school_diploma_distinction_type_id integer  ,
	ref_technology_literacy_status_id integer  ,
	ref_ps_enrollment_action_id integer  ,
	ref_pre_and_post_test_indicator_id integer  ,
	ref_professional_technical_credential_type_id integer  ,
	ref_progress_level_id integer  ,
	CONSTRAINT pk_k12_student_academic_record PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_student_academic_record IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.organization_person_role_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.credits_attempted_cumulative IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.credits_earned_cumulative IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.grade_points_earned_cumulative IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.grade_point_average_cumulative IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.ref_gpa_weighted_indicator_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.projected_graduation_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.high_school_student_class_rank IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.class_ranking_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.total_number_in_class IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.diploma_or_credential_award_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.ref_high_school_diploma_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.ref_high_school_diploma_distinction_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.ref_technology_literacy_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.ref_ps_enrollment_action_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.ref_pre_and_post_test_indicator_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.ref_professional_technical_credential_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_record.ref_progress_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_student_cohort ( 
	organization_person_role_id integer  NOT NULL,
	cohort_year        char(4)  ,
	cohort_graduation_year char(4)  ,
	graduation_rate_survey_cohort_year char(4)  ,
	graduation_rate_survey_indicator bool  ,
	cohort_description varchar(30)  ,
	CONSTRAINT pk_k12_student_cohort PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_student_cohort IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_cohort.organization_person_role_id IS 'Surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_cohort.cohort_year IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_cohort.cohort_graduation_year IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_cohort.graduation_rate_survey_cohort_year IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_cohort.graduation_rate_survey_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_cohort.cohort_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_student_course_section_mark ( 
	k12_student_course_section_mark_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	marking_period_name varchar(30)  ,
	final_indicator    bool  ,
	grade_earned       varchar(15)  ,
	mid_term_mark      varchar(15)  ,
	grade_value_qualifier varchar(100)  ,
	student_course_section_grade_narrative varchar(300)  ,
	CONSTRAINT pk_k12_student_course_section_mark PRIMARY KEY ( k12_student_course_section_mark_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_student_course_section_mark IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section_mark.k12_student_course_section_mark_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section_mark.organization_person_role_id IS 'Foreign key - K12_Student_Course_Section';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section_mark.marking_period_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section_mark.final_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section_mark.grade_earned IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section_mark.mid_term_mark IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section_mark.grade_value_qualifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section_mark.student_course_section_grade_narrative IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_student_employment ( 
	organization_person_role_id integer  NOT NULL,
	ref_employed_while_enrolled_id integer  ,
	ref_employed_after_exit_id integer  ,
	employment_naics_code char(6)  ,
	CONSTRAINT pk_k12_student_employment PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_student_employment IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_employment.organization_person_role_id IS 'Surrogate Key - Foreign key: Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_employment.ref_employed_while_enrolled_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_employment.ref_employed_after_exit_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_employment.employment_naics_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_student_graduation_plan ( 
	organization_person_role_id integer  NOT NULL,
	k12_course_id      integer  NOT NULL,
	credits_required   decimal(9,2)  ,
	ref_sced_course_subject_area_id integer  ,
	ref_grade_level_when_course_taken_id integer  ,
	CONSTRAINT pk_k12_student_graduation_plan PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.k12_student_graduation_plan.organization_person_role_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_graduation_plan.k12_course_id IS 'Foreign key - K12_Course.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_graduation_plan.credits_required IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_graduation_plan.ref_sced_course_subject_area_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_graduation_plan.ref_grade_level_when_course_taken_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_student_session ( 
	k12_student_session_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	organization_calendar_session_id integer  ,
	grade_point_average_given_session decimal(9,4)  ,
	CONSTRAINT pk_k12_student_session PRIMARY KEY ( k12_student_session_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_student_session IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_session.k12_student_session_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_session.organization_person_role_id IS 'Foreign key to Organization_Person_Role.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_session.organization_calendar_session_id IS 'Foreign key to Session.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_session.grade_point_average_given_session IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.learner_action ( 
	learner_action_id  integer  NOT NULL,
	assessment_item_response_id integer  ,
	ref_learner_action_type_id integer  ,
	value              text  ,
	learner_action_date_time date  ,
	learner_action_actor_identifier varchar(40)  ,
	learner_action_object_description varchar(300)  ,
	learner_action_object_identifier varchar(40)  ,
	learner_action_object_type varchar(60)  ,
	CONSTRAINT pk_assessment_item_learner_action PRIMARY KEY ( learner_action_id )
 );

COMMENT ON TABLE rs_ceds7_sc.learner_action IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.learner_action.learner_action_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.learner_action.assessment_item_response_id IS 'Foreign key - Assessment_Item_Response';

COMMENT ON COLUMN rs_ceds7_sc.learner_action.ref_learner_action_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_action.value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_action.learner_action_date_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_action.learner_action_actor_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_action.learner_action_object_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_action.learner_action_object_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_action.learner_action_object_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.learner_activity_learning_resource ( 
	learner_activity_learning_resource_id integer  NOT NULL,
	learner_activity_id integer  NOT NULL,
	learning_resource_id integer  NOT NULL,
	CONSTRAINT pk_learner_activity_learning_resource PRIMARY KEY ( learner_activity_learning_resource_id ),
	CONSTRAINT ix_learner_activity_learning_resource UNIQUE ( learner_activity_id, learning_resource_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.learner_activity_learning_resource IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity_learning_resource.learner_activity_learning_resource_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity_learning_resource.learner_activity_id IS 'Foreign key - Learner_Activity';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity_learning_resource.learning_resource_id IS 'Foreign key - Learning_Resource';

CREATE TABLE rs_ceds7_sc.learning_resource_adaptation ( 
	learning_resource_adaptation_id integer  NOT NULL,
	learning_resource_id integer  NOT NULL,
	adaptation_url     varchar(512)  NOT NULL,
	CONSTRAINT pk_learning_resource_adaptation PRIMARY KEY ( learning_resource_adaptation_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_adaptation.learning_resource_adaptation_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_adaptation.learning_resource_id IS 'Foreign key to Learning_Resource';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_adaptation.adaptation_url IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.learning_resource_media_feature ( 
	learning_resource_media_feature_id integer  NOT NULL,
	learning_resource_id integer  NOT NULL,
	ref_learning_resource_media_feature_type_id integer  NOT NULL,
	CONSTRAINT pk_learning_resource_media_feature PRIMARY KEY ( learning_resource_media_feature_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_media_feature.learning_resource_media_feature_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_media_feature.learning_resource_id IS 'Foreign key to Learning_Resource';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_media_feature.ref_learning_resource_media_feature_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.learning_resource_physical_media ( 
	learning_resource_physical_media_id integer  NOT NULL,
	learning_resource_id integer  NOT NULL,
	ref_learning_resource_physical_media_type_id integer  NOT NULL,
	CONSTRAINT pk_learning_resource_physical_media PRIMARY KEY ( learning_resource_physical_media_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_physical_media.learning_resource_physical_media_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_physical_media.learning_resource_id IS 'Foreign key to Learning_Resource';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_physical_media.ref_learning_resource_physical_media_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.location_address ( 
	location_id        integer  NOT NULL,
	street_number_and_name varchar(40)  ,
	apartment_room_or_suite_number varchar(30)  ,
	building_site_number varchar(30)  ,
	city               varchar(30)  ,
	ref_state_id       integer  ,
	postal_code        varchar(17)  ,
	county_name        varchar(30)  ,
	ref_county_id      integer  ,
	ref_country_id     integer  ,
	latitude           varchar(20)  ,
	longitude          varchar(20)  ,
	ref_ers_rural_urban_continuum_code_id integer  ,
	CONSTRAINT pk_address PRIMARY KEY ( location_id )
 );

COMMENT ON TABLE rs_ceds7_sc.location_address IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.location_address.location_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.location_address.street_number_and_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.location_address.apartment_room_or_suite_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.location_address.building_site_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.location_address.city IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.location_address.ref_state_id IS 'Surrogate key from Ref_State_Abbreviation identifying the state.';

COMMENT ON COLUMN rs_ceds7_sc.location_address.postal_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.location_address.county_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.location_address.ref_county_id IS 'Surrogate key from Ref_County identifying the county code.';

COMMENT ON COLUMN rs_ceds7_sc.location_address.ref_country_id IS 'Surrogate key from Ref_Country identifying the country code.';

COMMENT ON COLUMN rs_ceds7_sc.location_address.latitude IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.location_address.longitude IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.location_address.ref_ers_rural_urban_continuum_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_accreditation ( 
	organization_accreditation_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	accreditation_status bool  ,
	ref_accreditation_agency_id integer  ,
	accreditation_award_date date  ,
	accreditation_expiration_date date  ,
	seeking_accreditation_date date  ,
	ref_higher_education_institution_accreditation_status_id integer  ,
	CONSTRAINT pk_organization_accreditation PRIMARY KEY ( organization_accreditation_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_accreditation IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_accreditation.organization_accreditation_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_accreditation.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN rs_ceds7_sc.organization_accreditation.accreditation_status IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_accreditation.ref_accreditation_agency_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_accreditation.accreditation_award_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_accreditation.accreditation_expiration_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_accreditation.seeking_accreditation_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_calendar_crisis ( 
	organization_calendar_crisis_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	code               varchar(30)  ,
	name               varchar(50)  ,
	start_date         date  ,
	end_date           date  ,
	type               varchar(50)  ,
	crisis_description varchar(300)  ,
	crisis_end_date    date  ,
	CONSTRAINT pk_organization_calendar_crisis PRIMARY KEY ( organization_calendar_crisis_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_calendar_crisis IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_crisis.organization_calendar_crisis_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_crisis.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_crisis.code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_crisis.name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_crisis.start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_crisis.end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_crisis.type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_crisis.crisis_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_crisis.crisis_end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_calendar_event ( 
	organization_calendar_event_id integer  NOT NULL,
	organization_calendar_id integer  NOT NULL,
	name               varchar(30)  NOT NULL,
	event_date         date  NOT NULL,
	ref_calendar_event_type integer  ,
	CONSTRAINT pk_organization_calendar_event PRIMARY KEY ( organization_calendar_event_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_calendar_event IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_event.organization_calendar_event_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_event.organization_calendar_id IS 'Foreign key - Organization_Calendar';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_event.name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_event.event_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_event.ref_calendar_event_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_email ( 
	organization_email_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	electronic_mail_address varchar(128)  ,
	ref_email_type_id  integer  ,
	CONSTRAINT pk_organization_email PRIMARY KEY ( organization_email_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_email IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_email.organization_email_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_email.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.organization_email.electronic_mail_address IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_email.ref_email_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_federal_accountability ( 
	organization_federal_accountability_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_ayp_status_id  integer  ,
	alternate_ayp_approach_indicator bool  ,
	ayp_appeal_changed_designation bool  ,
	ayp_appeal_process_date date  ,
	ayp_appeal_process_designation bool  ,
	amao_ayp_progress_attainment_lep_students integer  ,
	amao_proficiency_attainment_lep_students integer  ,
	amao_progress_attainment_lep_students integer  ,
	ref_gun_free_schools_act_status_reporting_id integer  ,
	ref_high_school_graduation_rate_indicator integer  ,
	ref_participation_status_math_id integer  ,
	ref_participation_status_rla_id integer  ,
	ref_proficiency_target_status_math_id integer  ,
	ref_proficiency_target_status_rla_id integer  ,
	persistently_dangerous_status bool  ,
	ref_reconstituted_status_id integer  ,
	ref_elementary_middle_additional_id integer  ,
	accountability_report_title varchar(80)  ,
	ref_cte_graduation_rate_inclusion_id integer  ,
	CONSTRAINT pk_organization_federal_accountability PRIMARY KEY ( organization_federal_accountability_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_federal_accountability IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.organization_federal_accountability_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.organization_id IS 'Surrogate key from Organization.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.ref_ayp_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.alternate_ayp_approach_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.ayp_appeal_changed_designation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.ayp_appeal_process_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.ayp_appeal_process_designation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.amao_ayp_progress_attainment_lep_students IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.amao_proficiency_attainment_lep_students IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.amao_progress_attainment_lep_students IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.ref_gun_free_schools_act_status_reporting_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.ref_high_school_graduation_rate_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.ref_participation_status_math_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.ref_participation_status_rla_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.ref_proficiency_target_status_math_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.ref_proficiency_target_status_rla_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.persistently_dangerous_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.ref_reconstituted_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.ref_elementary_middle_additional_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.accountability_report_title IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_federal_accountability.ref_cte_graduation_rate_inclusion_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_identifier ( 
	organization_identifier_id integer  NOT NULL,
	identifier         varchar(40)  ,
	ref_organization_identification_system_id integer  ,
	organization_id    integer  NOT NULL,
	ref_organization_identifier_type_id integer  ,
	CONSTRAINT pk_organization_identifier PRIMARY KEY ( organization_identifier_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_identifier IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_identifier.organization_identifier_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_identifier.identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_identifier.ref_organization_identification_system_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_identifier.organization_id IS 'Foreign key - Organization.';

COMMENT ON COLUMN rs_ceds7_sc.organization_identifier.ref_organization_identifier_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_indicator ( 
	organization_indicator_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	indicator_value    varchar(50)  NOT NULL,
	ref_organization_indicator_id integer  NOT NULL,
	CONSTRAINT pk_organization_indicator PRIMARY KEY ( organization_indicator_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_indicator IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_indicator.organization_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_indicator.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.organization_indicator.ref_organization_indicator_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_operational_status ( 
	organization_operational_status_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_operational_status_id integer  NOT NULL,
	operational_status_effective_date date  ,
	CONSTRAINT pk_organization_operational_status PRIMARY KEY ( organization_operational_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_operational_status IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_operational_status.organization_operational_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_operational_status.organization_id IS 'Surrogate key from Organization.';

COMMENT ON COLUMN rs_ceds7_sc.organization_operational_status.ref_operational_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_operational_status.operational_status_effective_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_policy ( 
	organization_policy_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	policy_type        varchar(100)  NOT NULL,
	value              varchar(100)  NOT NULL,
	CONSTRAINT pk_organization_policy PRIMARY KEY ( organization_policy_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_policy IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_policy.organization_policy_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_policy.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN rs_ceds7_sc.organization_policy.policy_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_policy.value IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.organization_relationship ( 
	organization_relationship_id integer  NOT NULL,
	parent_organization_id integer  NOT NULL,
	organization_id    integer  ,
	ref_organization_relationship_id integer  NOT NULL,
	CONSTRAINT pk_organization_relationship PRIMARY KEY ( organization_relationship_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_relationship IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_relationship.organization_relationship_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_relationship.parent_organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.organization_relationship.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.organization_relationship.ref_organization_relationship_id IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.organization_technical_assistance ( 
	organization_technical_assistance_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_technical_assistance_type_id integer  ,
	ref_technical_assistance_delivery_type_id integer  ,
	technical_assistance_approved_ind bool  ,
	CONSTRAINT pk_organization_technical_assistance PRIMARY KEY ( organization_technical_assistance_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.organization_technical_assistance.organization_technical_assistance_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.organization_technical_assistance.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN rs_ceds7_sc.organization_technical_assistance.ref_technical_assistance_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_technical_assistance.ref_technical_assistance_delivery_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_technical_assistance.technical_assistance_approved_ind IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_website ( 
	organization_id    integer  NOT NULL,
	website            varchar(300)  ,
	CONSTRAINT pk_organization_website PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_website IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_website.organization_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_website.website IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_student_program ( 
	ps_student_program_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_cip_use_id     integer  ,
	ps_program_id      integer  ,
	ref_workbased_learning_opportunity_type_id integer  ,
	ref_transfer_out_indicator_id integer  ,
	CONSTRAINT pk_ps_student_enrollment_cip PRIMARY KEY ( ps_student_program_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_student_program IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_program.ps_student_program_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_program.organization_person_role_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_program.ref_cip_use_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_program.ps_program_id IS 'Foreign key - Ps_Program';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_program.ref_workbased_learning_opportunity_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_program.ref_transfer_out_indicator_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person ( 
	person_id          integer  NOT NULL,
	first_name         varchar(35)  ,
	middle_name        varchar(35)  ,
	last_name          varchar(35)  NOT NULL,
	generation_code    varchar(10)  ,
	prefix             varchar(30)  ,
	birthdate          date  ,
	ref_sex_id         integer  ,
	hispanic_latino_ethnicity bool  ,
	ref_us_citizenship_status_id integer  ,
	ref_visa_type_id   integer  ,
	ref_state_of_residence_id integer  ,
	ref_proof_of_residency_type_id integer  ,
	ref_highest_education_level_completed_id integer  ,
	ref_personal_information_verification_id integer  ,
	birthdate_verification varchar(60)  ,
	ref_tribal_affiliation_id integer  ,
	CONSTRAINT xpk_person PRIMARY KEY ( person_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person.person_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.person.first_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.middle_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.last_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.generation_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.prefix IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.birthdate IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.ref_sex_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.hispanic_latino_ethnicity IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.ref_us_citizenship_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.ref_visa_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.ref_state_of_residence_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.ref_proof_of_residency_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.ref_highest_education_level_completed_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.ref_personal_information_verification_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.birthdate_verification IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person.ref_tribal_affiliation_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_allergy ( 
	person_allergy_id  integer  NOT NULL,
	person_id          integer  NOT NULL,
	ref_allergy_type_id integer  NOT NULL,
	ref_allergy_severity_id integer  ,
	reaction_description varchar(2000)  ,
	CONSTRAINT pk_person_allergy PRIMARY KEY ( person_allergy_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.person_allergy.person_allergy_id IS 'Surrogate key.';

COMMENT ON COLUMN rs_ceds7_sc.person_allergy.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN rs_ceds7_sc.person_allergy.ref_allergy_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_allergy.ref_allergy_severity_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_allergy.reaction_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_birthplace ( 
	person_id          integer  NOT NULL,
	city               varchar(30)  ,
	ref_state_id       integer  ,
	ref_country_id     integer  ,
	CONSTRAINT xpk_person_birthplace PRIMARY KEY ( person_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_birthplace IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_birthplace.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN rs_ceds7_sc.person_birthplace.city IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_birthplace.ref_state_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_birthplace.ref_country_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_credential ( 
	person_credential_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	credential_name    varchar(60)  ,
	ref_credential_type_id integer  ,
	issuance_date      date  ,
	expiration_date    date  ,
	ref_issuing_state_id integer  ,
	professional_certificate_or_license_number varchar(30)  ,
	credential_or_license_award_entity varchar(60)  ,
	CONSTRAINT pk_person_credential PRIMARY KEY ( person_credential_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_credential IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_credential.person_credential_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.person_credential.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN rs_ceds7_sc.person_credential.credential_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_credential.ref_credential_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_credential.issuance_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_credential.expiration_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_credential.ref_issuing_state_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_credential.professional_certificate_or_license_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_credential.credential_or_license_award_entity IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_demographic_race ( 
	person_demographic_race_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	ref_race_id        integer  NOT NULL,
	CONSTRAINT xpk_demographic_race PRIMARY KEY ( person_demographic_race_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_demographic_race IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_demographic_race.person_demographic_race_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.person_demographic_race.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN rs_ceds7_sc.person_demographic_race.ref_race_id IS 'Foreign key - Ref_Race.';

CREATE TABLE rs_ceds7_sc.person_email_address ( 
	person_email_address_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	email_address      varchar(128)  ,
	ref_email_type_id  integer  ,
	CONSTRAINT pk_person_email_address PRIMARY KEY ( person_email_address_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_email_address IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_email_address.person_email_address_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.person_email_address.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN rs_ceds7_sc.person_email_address.email_address IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_email_address.ref_email_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_health ( 
	person_health_id   integer  NOT NULL,
	person_id          integer  NOT NULL,
	vision_screening_date date  ,
	ref_vision_screening_status_id integer  ,
	hearing_screening_date date  ,
	ref_hearing_screening_status_id integer  ,
	dental_screening_date date  NOT NULL,
	ref_dental_screening_status_id integer  ,
	ref_health_insurance_coverage_id integer  ,
	ref_dental_insurance_coverage_type_id integer  ,
	ref_medical_alert_indicator_id integer  ,
	health_screening_equipment_used varchar(300)  ,
	health_screening_follow_up_recommendation text  ,
	CONSTRAINT xpk_person_health PRIMARY KEY ( person_health_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_health IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_health.person_health_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.person_health.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN rs_ceds7_sc.person_health.vision_screening_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_health.ref_vision_screening_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_health.hearing_screening_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_health.ref_hearing_screening_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_health.dental_screening_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_health.ref_dental_screening_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_health.ref_health_insurance_coverage_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_health.ref_dental_insurance_coverage_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_health.ref_medical_alert_indicator_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_health.health_screening_equipment_used IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_health.health_screening_follow_up_recommendation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_homelessness ( 
	person_id          integer  NOT NULL,
	homelessness_status bool  NOT NULL,
	ref_homeless_nighttime_residence_id integer  NOT NULL,
	CONSTRAINT pk_homeless_primary_nighttime_residence PRIMARY KEY ( person_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_homelessness IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_homelessness.person_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_homelessness.homelessness_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_homelessness.ref_homeless_nighttime_residence_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_immunization ( 
	person_immunization_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	immunization_date  date  NOT NULL,
	ref_immunization_type_id integer  NOT NULL,
	CONSTRAINT pk_person_immunization PRIMARY KEY ( person_immunization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_immunization IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_immunization.person_immunization_id IS 'PK';

COMMENT ON COLUMN rs_ceds7_sc.person_immunization.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN rs_ceds7_sc.person_immunization.immunization_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_immunization.ref_immunization_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_military ( 
	person_id          integer  NOT NULL,
	ref_military_active_student_indicator_id integer  ,
	ref_military_connected_student_indicator_id integer  ,
	ref_military_veteran_student_indicator_id integer  ,
	ref_military_branch_id integer  ,
	CONSTRAINT pk_person_military PRIMARY KEY ( person_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.person_military.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN rs_ceds7_sc.person_military.ref_military_active_student_indicator_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_military.ref_military_connected_student_indicator_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_military.ref_military_veteran_student_indicator_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_military.ref_military_branch_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_program_participation ( 
	organization_person_role_id integer  NOT NULL,
	ref_participation_type_id integer  ,
	ref_program_exit_reason_id integer  ,
	participation_status varchar(100)  ,
	CONSTRAINT pk_person_program_participation_1 PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_program_participation IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_program_participation.organization_person_role_id IS 'Surrogate Key from Organization Person Role.  Identifies the Person and the Program with effective dates.';

COMMENT ON COLUMN rs_ceds7_sc.person_program_participation.ref_participation_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_program_participation.ref_program_exit_reason_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_relationship ( 
	person_relationship_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	related_person_id  integer  NOT NULL,
	ref_person_relationship_id integer  ,
	custodial_relationship_indicator bool  ,
	emergency_contact_ind bool  ,
	contact_priority_number integer  ,
	contact_restrictions varchar(2000)  ,
	lives_with_indicator bool  ,
	primary_contact_indicator bool  ,
	CONSTRAINT xpk_person_relationship PRIMARY KEY ( person_relationship_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_relationship IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_relationship.person_relationship_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.person_relationship.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN rs_ceds7_sc.person_relationship.related_person_id IS 'Foreign key - Person.  Identifies the other person.';

COMMENT ON COLUMN rs_ceds7_sc.person_relationship.ref_person_relationship_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_relationship.custodial_relationship_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_relationship.emergency_contact_ind IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_relationship.contact_priority_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_relationship.contact_restrictions IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_relationship.lives_with_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_relationship.primary_contact_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_telephone ( 
	person_telephone_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	telephone_number   varchar(24)  ,
	primary_telephone_number_indicator bool DEFAULT FALSE NOT NULL,
	ref_person_telephone_number_type_id integer  ,
	CONSTRAINT xpk_person_phone PRIMARY KEY ( person_telephone_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_telephone IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_telephone.person_telephone_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.person_telephone.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN rs_ceds7_sc.person_telephone.telephone_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_telephone.primary_telephone_number_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_telephone.ref_person_telephone_number_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.professional_development_requirement ( 
	professional_development_requirement_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	required_training_clock_hours decimal(6,2)  ,
	competency_set_id  integer  ,
	CONSTRAINT pk_professional_development_requirement PRIMARY KEY ( professional_development_requirement_id )
 );

COMMENT ON TABLE rs_ceds7_sc.professional_development_requirement IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_requirement.professional_development_requirement_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_requirement.organization_person_role_id IS 'Foreign key - Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_requirement.required_training_clock_hours IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_requirement.competency_set_id IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.professional_development_session_instructor ( 
	professional_development_session_instructor_id integer  NOT NULL,
	professional_development_session_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	CONSTRAINT pk_professional_development_session_instructor PRIMARY KEY ( professional_development_session_instructor_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session_instructor.professional_development_session_instructor_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session_instructor.professional_development_session_id IS 'Foreign key to Professional_Development_Session';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session_instructor.organization_person_role_id IS 'Foreign key to Organization_Person_Role';

CREATE TABLE rs_ceds7_sc.program_participation_ae ( 
	organization_person_role_id integer  NOT NULL,
	ref_ae_instructional_program_type_id integer  ,
	ref_ae_postsecondary_transition_action_id integer  ,
	postsecondary_transition_date date  ,
	ref_ae_special_program_type_id integer  ,
	ref_ae_functioning_level_at_intake_id integer  ,
	ref_ae_functioning_level_at_posttest_id integer  ,
	ref_goals_for_attending_adult_education_id integer  ,
	displaced_homemaker_indicator bool  ,
	proxy_contact_hours decimal(5,1)  ,
	instructional_activity_hours_completed decimal(9,2)  ,
	ref_correctional_education_facility_type_id integer  ,
	ref_workbased_learning_opportunity_type_id integer  ,
	CONSTRAINT pk_program_participation_ae PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.program_participation_ae IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_ae.organization_person_role_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_ae.ref_ae_instructional_program_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_ae.ref_ae_postsecondary_transition_action_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_ae.postsecondary_transition_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_ae.ref_ae_special_program_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_ae.ref_ae_functioning_level_at_intake_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_ae.ref_ae_functioning_level_at_posttest_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_ae.ref_goals_for_attending_adult_education_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_ae.displaced_homemaker_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_ae.proxy_contact_hours IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_ae.instructional_activity_hours_completed IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_ae.ref_correctional_education_facility_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_ae.ref_workbased_learning_opportunity_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.program_participation_food_service ( 
	program_participation_food_service_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_school_food_service_program_id integer  NOT NULL,
	CONSTRAINT pk_program_participation_food_service PRIMARY KEY ( program_participation_food_service_id )
 );

COMMENT ON TABLE rs_ceds7_sc.program_participation_food_service IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_food_service.program_participation_food_service_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_food_service.organization_person_role_id IS 'Foreign key - Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_food_service.ref_school_food_service_program_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.program_participation_neglected ( 
	organization_person_role_id integer  NOT NULL,
	ref_neglected_program_type_id integer  ,
	achievement_indicator bool  ,
	outcome_indicator  bool  ,
	obtained_employment bool  ,
	CONSTRAINT pk_program_participation_neglected PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.program_participation_neglected IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_neglected.organization_person_role_id IS 'Surrogate key from Person_Program_Participation';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_neglected.ref_neglected_program_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_neglected.achievement_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_neglected.outcome_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_neglected.obtained_employment IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.program_participation_teacher_prep ( 
	organization_person_role_id integer  NOT NULL,
	ref_teacher_prep_enrollment_status_id integer  ,
	ref_teacher_prep_completer_status_id integer  ,
	ref_supervised_clinical_experience_id integer  ,
	clinical_experience_clock_hours integer  ,
	ref_teaching_credential_basis_id integer  ,
	ref_teaching_credential_type_id integer  ,
	ref_critical_teacher_shortage_candidate_id integer  ,
	ref_alt_route_to_certification_or_licensure_id integer  ,
	CONSTRAINT pk_prgm_participation_teacher_prep PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.program_participation_teacher_prep IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_teacher_prep.organization_person_role_id IS 'Surrogate key - Foreign key - Person_Program_Participation';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_teacher_prep.ref_teacher_prep_enrollment_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_teacher_prep.ref_teacher_prep_completer_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_teacher_prep.ref_supervised_clinical_experience_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_teacher_prep.clinical_experience_clock_hours IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_teacher_prep.ref_teaching_credential_basis_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_teacher_prep.ref_teaching_credential_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_teacher_prep.ref_critical_teacher_shortage_candidate_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_teacher_prep.ref_alt_route_to_certification_or_licensure_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.program_participation_title_iii_lep ( 
	organization_person_role_id integer  NOT NULL,
	ref_title_iii_accountability_id integer  ,
	ref_title_iii_language_instruction_program_type_id integer  ,
	CONSTRAINT pk_program_participation_title_iii PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.program_participation_title_iii_lep IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_title_iii_lep.organization_person_role_id IS 'PK';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_title_iii_lep.ref_title_iii_accountability_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_title_iii_lep.ref_title_iii_language_instruction_program_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_institution ( 
	organization_id    integer  NOT NULL,
	ref_carnegie_basic_classification_id integer  ,
	ref_control_of_institution_id integer  ,
	ref_level_of_institution_id integer  ,
	ref_predominant_calendar_system_id integer  ,
	ref_tenure_system_id integer  ,
	virtual_indicator  bool  ,
	institutionally_controlled_housing_status bool  ,
	ref_admission_consideration_level_id integer  ,
	ref_admission_consideration_type_id integer  ,
	CONSTRAINT pk_ps_institution PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_institution IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_institution.organization_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_institution.ref_carnegie_basic_classification_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_institution.ref_control_of_institution_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_institution.ref_level_of_institution_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_institution.ref_predominant_calendar_system_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_institution.ref_tenure_system_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_institution.virtual_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_institution.institutionally_controlled_housing_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_institution.ref_admission_consideration_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_institution.ref_admission_consideration_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_program ( 
	ps_program_id      integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_cip_version_id integer  ,
	ref_cip_code_id    integer  ,
	program_length_hours decimal(9,2)  ,
	ref_program_length_hours_type_id integer  ,
	normal_length_time_for_completion varchar(60)  ,
	ref_time_for_completion_units_id integer  ,
	ref_ps_exit_or_withdrawal_type_id integer  ,
	ref_ps_program_level_id integer  ,
	ref_dqp_categories_of_learning_id integer  ,
	CONSTRAINT pk_ps_program PRIMARY KEY ( ps_program_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_program IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_program.ps_program_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.ps_program.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.ps_program.ref_cip_version_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_program.ref_cip_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_program.program_length_hours IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_program.ref_program_length_hours_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_program.normal_length_time_for_completion IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_program.ref_time_for_completion_units_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_program.ref_ps_exit_or_withdrawal_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_program.ref_ps_program_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_program.ref_dqp_categories_of_learning_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_section_location ( 
	organization_id    integer  NOT NULL,
	course_instruction_site_name varchar(60)  ,
	ref_course_instruction_site_type_id integer  ,
	CONSTRAINT pk_ps_section_location PRIMARY KEY ( organization_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ps_section_location.course_instruction_site_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_section_location.ref_course_instruction_site_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_student_academic_award ( 
	ps_student_academic_award_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	academic_award_date varchar(14)  ,
	ref_academic_award_level_id integer  ,
	academic_award_title varchar(80)  ,
	requirements_url   varchar(512)  ,
	ref_academic_award_prerequisite_type_id integer  ,
	ref_pesc_award_level_type_id integer  ,
	CONSTRAINT pk_ps_student_academic_award PRIMARY KEY ( ps_student_academic_award_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_student_academic_award IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_award.ps_student_academic_award_id IS 'Surrogate key.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_award.organization_person_role_id IS 'Foreign key - Organization_Person_Role.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_award.academic_award_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_award.ref_academic_award_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_award.academic_award_title IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_student_admission_test ( 
	ps_student_admission_test_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_standardized_admission_test_id integer  NOT NULL,
	standardized_admission_test_score decimal(9,2)  ,
	CONSTRAINT pk_ps_admission_test PRIMARY KEY ( ps_student_admission_test_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_student_admission_test IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_admission_test.ps_student_admission_test_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_admission_test.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_admission_test.ref_standardized_admission_test_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_admission_test.standardized_admission_test_score IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_student_cohort ( 
	organization_person_role_id integer  NOT NULL,
	cohort_graduation_year char(4)  ,
	CONSTRAINT pk_ps_student_cohort PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ps_student_cohort.organization_person_role_id IS 'Surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_cohort.cohort_graduation_year IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_student_demographic ( 
	organization_person_role_id integer  NOT NULL,
	ref_dependency_status_id integer  ,
	ref_tuition_residency_type_id integer  ,
	ref_campus_residency_type_id integer  ,
	ref_ps_lep_type_id integer  ,
	ref_paternal_education_level_id integer  ,
	ref_maternal_education_level_id integer  ,
	ref_cohort_exclusion_id integer  ,
	number_of_dependents integer  ,
	CONSTRAINT pk_ps_student_demographic PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_student_demographic IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_demographic.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_demographic.ref_dependency_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_demographic.ref_tuition_residency_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_demographic.ref_campus_residency_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_demographic.ref_ps_lep_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_demographic.ref_paternal_education_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_demographic.ref_maternal_education_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_demographic.ref_cohort_exclusion_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_demographic.number_of_dependents IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_student_enrollment ( 
	ps_student_enrollment_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_ps_enrollment_type_id integer  ,
	ref_ps_enrollment_status_id integer  ,
	degree_or_certificate_seeking_student bool  ,
	first_time_postsecondary_student bool  ,
	ref_ps_student_level_id integer  ,
	ref_ps_enrollment_award_type_id integer  ,
	initial_enrollment_term varchar(30)  ,
	ref_transfer_ready_id integer  ,
	instructional_activity_hours_attempted decimal(9,2)  ,
	instructional_activity_hours_completed decimal(9,2)  ,
	ref_instructional_activity_hours_id integer  ,
	ref_distance_education_course_enrollment_id integer  ,
	housing_on_campus  bool  ,
	fraternity_participation_status bool  ,
	sorority_participation_status bool  ,
	entry_date_into_postsecondary date  ,
	distance_education_program_enrollment_ind bool  ,
	doctoral_candidacy_admit_ind bool  ,
	doctoral_candidacy_date date  ,
	doctoral_exam_taken_date date  ,
	ref_doctoral_exams_required_code_id integer  ,
	ref_graduate_or_doctoral_exam_results_status_id integer  ,
	oral_defense_completed_indicator bool  ,
	oral_defense_date  date  ,
	postsecondary_entering_student_ind bool  ,
	thesis_or_dissertation_title varchar(300)  ,
	ref_developmental_education_referral_status_id integer  ,
	ref_developmental_education_type_id integer  ,
	CONSTRAINT pk_ps_student_enrollment PRIMARY KEY ( ps_student_enrollment_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_student_enrollment IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.ps_student_enrollment_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.ref_ps_enrollment_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.ref_ps_enrollment_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.degree_or_certificate_seeking_student IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.first_time_postsecondary_student IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.ref_ps_student_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.ref_ps_enrollment_award_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.initial_enrollment_term IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.ref_transfer_ready_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.instructional_activity_hours_attempted IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.instructional_activity_hours_completed IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.ref_instructional_activity_hours_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.ref_distance_education_course_enrollment_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.housing_on_campus IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.fraternity_participation_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.sorority_participation_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.entry_date_into_postsecondary IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.distance_education_program_enrollment_ind IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.doctoral_candidacy_admit_ind IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.doctoral_candidacy_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.doctoral_exam_taken_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.ref_doctoral_exams_required_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.ref_graduate_or_doctoral_exam_results_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.oral_defense_completed_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.oral_defense_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.postsecondary_entering_student_ind IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.thesis_or_dissertation_title IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.ref_developmental_education_referral_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_enrollment.ref_developmental_education_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_student_section ( 
	organization_person_role_id integer  NOT NULL,
	course_override_school varchar(80)  ,
	degree_applicability bool  ,
	academic_grade     varchar(15)  ,
	number_of_credits_earned decimal(9,2)  ,
	quality_points_earned decimal(9,2)  ,
	ref_course_repeat_code_id integer  ,
	ref_course_academic_grade_status_code_id integer  ,
	CONSTRAINT pk_ps_student_section PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_student_section IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_section.organization_person_role_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_section.course_override_school IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_section.degree_applicability IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_section.academic_grade IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_section.number_of_credits_earned IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_section.quality_points_earned IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_section.ref_course_repeat_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_section.ref_course_academic_grade_status_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ref_absent_attendance_category ( 
	ref_absent_attendance_category_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_absent_attendance_category PRIMARY KEY ( ref_absent_attendance_category_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_absent_attendance_category IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_absent_attendance_category.ref_absent_attendance_category_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_absent_attendance_category.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_absent_attendance_category.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_absent_attendance_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_academic_award_prerequisite_type ( 
	ref_academic_award_prerequisite_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_academic_award_prerequisite_type PRIMARY KEY ( ref_academic_award_prerequisite_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_award_prerequisite_type.ref_academic_award_prerequisite_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_award_prerequisite_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_award_prerequisite_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_award_prerequisite_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_award_prerequisite_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_award_prerequisite_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_academic_rank ( 
	ref_academic_rank_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_academic_rank PRIMARY KEY ( ref_academic_rank_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_academic_rank IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_rank.ref_academic_rank_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_rank.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_rank.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_rank.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_academic_term_designator ( 
	ref_academic_term_designator_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_academic_term_designator PRIMARY KEY ( ref_academic_term_designator_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_academic_term_designator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_term_designator.ref_academic_term_designator_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_term_designator.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_term_designator.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_term_designator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_accommodations_needed_type ( 
	ref_accommodations_needed_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_accommodations_needed_type PRIMARY KEY ( ref_accommodations_needed_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_accommodations_needed_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_accommodations_needed_type.ref_accommodations_needed_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_accommodations_needed_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_accommodations_needed_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_accommodations_needed_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_activity_recognition_type ( 
	ref_activity_recognition_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_activity_recognition_type PRIMARY KEY ( ref_activity_recognition_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_activity_recognition_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_activity_recognition_type.ref_activity_recognition_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_activity_recognition_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_activity_recognition_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_activity_recognition_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_additional_credit_type ( 
	ref_additional_credit_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_additional_credit_type PRIMARY KEY ( ref_additional_credit_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_additional_credit_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_additional_credit_type.ref_additional_credit_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_additional_credit_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_additional_credit_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_additional_credit_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_administrative_funding_control ( 
	ref_administrative_funding_control_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_admin_funding_control PRIMARY KEY ( ref_administrative_funding_control_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_administrative_funding_control IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_administrative_funding_control.ref_administrative_funding_control_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_administrative_funding_control.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_administrative_funding_control.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_administrative_funding_control.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_admission_consideration_type ( 
	ref_admission_consideration_type_id integer  NOT NULL,
	description        varchar(150)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_admission_consideration_type PRIMARY KEY ( ref_admission_consideration_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_admission_consideration_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_admission_consideration_type.ref_admission_consideration_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_admission_consideration_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_admission_consideration_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_admission_consideration_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_advanced_placement_course_code ( 
	ref_advanced_placement_course_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_advanced_placement_course_code PRIMARY KEY ( ref_advanced_placement_course_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_advanced_placement_course_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_advanced_placement_course_code.ref_advanced_placement_course_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_advanced_placement_course_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_advanced_placement_course_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_advanced_placement_course_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ae_functioning_level_at_intake ( 
	ref_ae_functioning_level_at_intake_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ae_functioning_level_at_intake PRIMARY KEY ( ref_ae_functioning_level_at_intake_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ae_functioning_level_at_intake IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_functioning_level_at_intake.ref_ae_functioning_level_at_intake_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_functioning_level_at_intake.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_functioning_level_at_intake.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_functioning_level_at_intake.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ae_instructional_program_type ( 
	ref_ae_instructional_program_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ae_instructional_program_type PRIMARY KEY ( ref_ae_instructional_program_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ae_instructional_program_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_instructional_program_type.ref_ae_instructional_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_instructional_program_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_instructional_program_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_instructional_program_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ae_special_program_type ( 
	ref_ae_special_program_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ae_special_program_type PRIMARY KEY ( ref_ae_special_program_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ae_special_program_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_special_program_type.ref_ae_special_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_special_program_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_special_program_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_special_program_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ae_staff_employment_status ( 
	ref_ae_staff_employment_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ae_staff_employment_status PRIMARY KEY ( ref_ae_staff_employment_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ae_staff_employment_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_staff_employment_status.ref_ae_staff_employment_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_staff_employment_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_staff_employment_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_staff_employment_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_allergy_type ( 
	ref_allergy_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_allergy_type PRIMARY KEY ( ref_allergy_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_allergy_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_allergy_type.ref_allergy_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_allergy_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_allergy_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_allergy_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_alternate_fund_uses ( 
	ref_alternate_fund_uses_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_alternate_fund_uses PRIMARY KEY ( ref_alternate_fund_uses_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_alternate_fund_uses IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_alternate_fund_uses.ref_alternate_fund_uses_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_alternate_fund_uses.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_alternate_fund_uses.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_alternate_fund_uses.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_amao_attainment_status ( 
	ref_amao_attainment_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_amao_attainment_status PRIMARY KEY ( ref_amao_attainment_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_amao_attainment_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_amao_attainment_status.ref_amao_attainment_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_amao_attainment_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_amao_attainment_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_amao_attainment_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_asset_type ( 
	ref_assessment_asset_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_asset_type PRIMARY KEY ( ref_assessment_asset_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_asset_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_asset_type.ref_assessment_asset_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_asset_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_asset_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_asset_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_form_section_identification_system ( 
	ref_assessment_form_section_identification_system_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_form_section_identification_system PRIMARY KEY ( ref_assessment_form_section_identification_system_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_form_section_identification_system IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_form_section_identification_system.ref_assessment_form_section_identification_system_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_form_section_identification_system.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_form_section_identification_system.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_form_section_identification_system.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_item_response_score_status ( 
	ref_assessment_item_response_score_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_item_response_score_status PRIMARY KEY ( ref_assessment_item_response_score_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_item_response_score_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_response_score_status.ref_assessment_item_response_score_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_response_score_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_response_score_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_response_score_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_item_type ( 
	ref_assessment_item_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_item_type PRIMARY KEY ( ref_assessment_item_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_item_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_type.ref_assessment_item_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_braille_grade_type ( 
	ref_assessment_need_braille_grade_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_assessment_need_braille_grade_type_id PRIMARY KEY ( ref_assessment_need_braille_grade_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_need_braille_grade_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_braille_grade_type.ref_assessment_need_braille_grade_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_braille_grade_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_braille_grade_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_braille_grade_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_braille_status_cell_type ( 
	ref_assessment_need_braille_status_cell_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_braille_status_cell_type PRIMARY KEY ( ref_assessment_need_braille_status_cell_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_need_braille_status_cell_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_braille_status_cell_type.ref_assessment_need_braille_status_cell_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_braille_status_cell_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_braille_status_cell_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_braille_status_cell_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_increased_whitespacing_type ( 
	ref_assessment_need_increased_whitespacing_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_increased_whitespacing_type PRIMARY KEY ( ref_assessment_need_increased_whitespacing_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_need_increased_whitespacing_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_increased_whitespacing_type.ref_assessment_need_increased_whitespacing_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_increased_whitespacing_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_increased_whitespacing_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_increased_whitespacing_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_link_indication_type ( 
	ref_assessment_need_link_indication_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_assessment_need_link_indication_type PRIMARY KEY ( ref_assessment_need_link_indication_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_link_indication_type.ref_assessment_need_link_indication_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_link_indication_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_link_indication_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_link_indication_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_link_indication_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_link_indication_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_number_of_braille_dots ( 
	ref_assessment_need_number_of_braille_dots_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_number_of_braille_dots PRIMARY KEY ( ref_assessment_need_number_of_braille_dots_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_need_number_of_braille_dots IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_number_of_braille_dots.ref_assessment_need_number_of_braille_dots_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_number_of_braille_dots.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_number_of_braille_dots.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_number_of_braille_dots.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_spoken_source_preference_type ( 
	ref_assessment_need_spoken_source_preference_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_spoken_source_preference_type PRIMARY KEY ( ref_assessment_need_spoken_source_preference_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_need_spoken_source_preference_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_spoken_source_preference_type.ref_assessment_need_spoken_source_preference_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_spoken_source_preference_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_spoken_source_preference_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_spoken_source_preference_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_usage_type ( 
	ref_assessment_need_usage_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_usage_type PRIMARY KEY ( ref_assessment_need_usage_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_need_usage_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_usage_type.ref_assessment_need_usage_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_usage_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_usage_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_usage_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_participation_indicator ( 
	ref_assessment_participation_indicator_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_participation_indicator PRIMARY KEY ( ref_assessment_participation_indicator_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_participation_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_participation_indicator.ref_assessment_participation_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_participation_indicator.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_participation_indicator.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_participation_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_pretest_outcome ( 
	ref_assessment_pretest_outcome_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_assessment_pretest_outcome PRIMARY KEY ( ref_assessment_pretest_outcome_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_pretest_outcome IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_pretest_outcome.ref_assessment_pretest_outcome_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_pretest_outcome.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_pretest_outcome.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_pretest_outcome.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_reason_not_completing ( 
	ref_assessment_reason_not_completing_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_reason_not_completing PRIMARY KEY ( ref_assessment_reason_not_completing_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_reason_not_completing IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_reason_not_completing.ref_assessment_reason_not_completing_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_reason_not_completing.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_reason_not_completing.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_reason_not_completing.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_registration_completion_status ( 
	ref_assessment_registration_completion_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_registration_completion_status PRIMARY KEY ( ref_assessment_registration_completion_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_registration_completion_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_registration_completion_status.ref_assessment_registration_completion_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_registration_completion_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_registration_completion_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_registration_completion_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_result_data_type ( 
	ref_assessment_result_data_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_result_data_type PRIMARY KEY ( ref_assessment_result_data_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_result_data_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_result_data_type.ref_assessment_result_data_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_result_data_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_result_data_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_result_data_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_session_special_circumstance_type ( 
	ref_assessment_session_special_circumstance_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_special_circumstance PRIMARY KEY ( ref_assessment_session_special_circumstance_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_session_special_circumstance_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_session_special_circumstance_type.ref_assessment_session_special_circumstance_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_session_special_circumstance_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_session_special_circumstance_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_session_special_circumstance_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_session_type ( 
	ref_assessment_session_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_session_type PRIMARY KEY ( ref_assessment_session_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_session_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_session_type.ref_assessment_session_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_session_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_session_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_session_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_type ( 
	ref_assessment_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_type PRIMARY KEY ( ref_assessment_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_type.ref_assessment_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_attendance_event_type ( 
	ref_attendance_event_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_attendance_event_type PRIMARY KEY ( ref_attendance_event_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_attendance_event_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_attendance_event_type.ref_attendance_event_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_attendance_event_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_attendance_event_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_attendance_event_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_authorizer_type ( 
	ref_authorizer_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_authorizer_type PRIMARY KEY ( ref_authorizer_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_authorizer_type.ref_authorizer_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_authorizer_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_authorizer_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_authorizer_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_authorizer_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_authorizer_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_barrier_to_educating_homeless ( 
	ref_barrier_to_educating_homeless_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_barrier_to_educating_homeless PRIMARY KEY ( ref_barrier_to_educating_homeless_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_barrier_to_educating_homeless IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_barrier_to_educating_homeless.ref_barrier_to_educating_homeless_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_barrier_to_educating_homeless.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_barrier_to_educating_homeless.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_barrier_to_educating_homeless.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_blended_learning_model_type ( 
	ref_blended_learning_model_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_blended_learning_model_type PRIMARY KEY ( ref_blended_learning_model_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_blended_learning_model_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_blended_learning_model_type.ref_blended_learning_model_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_blended_learning_model_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_blended_learning_model_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_blended_learning_model_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_building_use_type ( 
	ref_building_use_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_building_use_type PRIMARY KEY ( ref_building_use_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_building_use_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_building_use_type.ref_building_use_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_building_use_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_building_use_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_building_use_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_calendar_event_type ( 
	ref_calendar_event_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_calendar_event_type PRIMARY KEY ( ref_calendar_event_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_calendar_event_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_calendar_event_type.ref_calendar_event_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_calendar_event_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_calendar_event_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_calendar_event_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_career_cluster ( 
	ref_career_cluster_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_career_cluster PRIMARY KEY ( ref_career_cluster_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_career_cluster IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_career_cluster.ref_career_cluster_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_career_cluster.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_career_cluster.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_career_cluster.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_carnegie_basic_classification ( 
	ref_carnegie_basic_classification_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_classification PRIMARY KEY ( ref_carnegie_basic_classification_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_carnegie_basic_classification IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_carnegie_basic_classification.ref_carnegie_basic_classification_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_carnegie_basic_classification.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_carnegie_basic_classification.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_carnegie_basic_classification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_charter_school_management_organization_type ( 
	ref_charter_school_management_organization_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_charter_school_management_organization_type PRIMARY KEY ( ref_charter_school_management_organization_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_charter_school_management_organization_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_charter_school_management_organization_type.ref_charter_school_management_organization_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_charter_school_management_organization_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_charter_school_management_organization_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_charter_school_management_organization_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_child_development_associate_type ( 
	ref_child_development_associate_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_child_e_development_associate_type PRIMARY KEY ( ref_child_development_associate_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_child_development_associate_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_child_development_associate_type.ref_child_development_associate_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_child_development_associate_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_child_development_associate_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_child_development_associate_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_child_outcomes_summary_rating ( 
	ref_child_outcomes_summary_rating_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_child_outcomes_summary_rating PRIMARY KEY ( ref_child_outcomes_summary_rating_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_child_outcomes_summary_rating IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_child_outcomes_summary_rating.ref_child_outcomes_summary_rating_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_child_outcomes_summary_rating.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_child_outcomes_summary_rating.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_child_outcomes_summary_rating.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_cip_use ( 
	ref_cip_use_id     integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_cip_use PRIMARY KEY ( ref_cip_use_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_cip_use IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cip_use.ref_cip_use_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_cip_use.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cip_use.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cip_use.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_classroom_position_type ( 
	ref_classroom_position_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_classroom_position_type PRIMARY KEY ( ref_classroom_position_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_classroom_position_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_classroom_position_type.ref_classroom_position_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_classroom_position_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_classroom_position_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_classroom_position_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_communication_method ( 
	ref_communication_method_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_communication_method PRIMARY KEY ( ref_communication_method_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_communication_method IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_communication_method.ref_communication_method_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_communication_method.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_communication_method.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_communication_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_competency_framework_item_association_type ( 
	ref_competency_framework_item_association_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_competency_framework_item_association_type PRIMARY KEY ( ref_competency_framework_item_association_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_association_type.ref_competency_framework_item_association_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_association_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_association_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_association_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_association_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_association_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_competency_framework_item_testability_type ( 
	ref_competency_framework_item_testability_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_competency_framework_item_testability_type PRIMARY KEY ( ref_competency_framework_item_testability_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_testability_type.ref_competency_framework_item_testability_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_testability_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_testability_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_testability_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_testability_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_testability_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_competency_set_completion_criteria ( 
	ref_competency_set_completion_criteria_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_competency_set_completion_criteria PRIMARY KEY ( ref_competency_set_completion_criteria_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_competency_set_completion_criteria IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_set_completion_criteria.ref_competency_set_completion_criteria_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_set_completion_criteria.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_set_completion_criteria.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_set_completion_criteria.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_continuation_of_services ( 
	ref_continuation_of_services_reason_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_continuation_of_services PRIMARY KEY ( ref_continuation_of_services_reason_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_continuation_of_services IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_continuation_of_services.ref_continuation_of_services_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_continuation_of_services.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_continuation_of_services.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_continuation_of_services.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_core_knowledge_area ( 
	ref_core_knowledge_area_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_core_knowledge_area PRIMARY KEY ( ref_core_knowledge_area_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_core_knowledge_area IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_core_knowledge_area.ref_core_knowledge_area_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_core_knowledge_area.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_core_knowledge_area.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_core_knowledge_area.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_corrective_action_type ( 
	ref_corrective_action_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_corrective_action PRIMARY KEY ( ref_corrective_action_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_corrective_action_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_corrective_action_type.ref_corrective_action_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_corrective_action_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_corrective_action_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_corrective_action_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_county ( 
	ref_county_id      integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_county PRIMARY KEY ( ref_county_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_county IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_county.ref_county_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_county.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_county.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_county.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_applicable_education_level ( 
	ref_course_applicable_education_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_applicable_education_level PRIMARY KEY ( ref_course_applicable_education_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_applicable_education_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_applicable_education_level.ref_course_applicable_education_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_applicable_education_level.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_applicable_education_level.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_applicable_education_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_credit_level_type ( 
	ref_course_credit_level_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_credit_level_type PRIMARY KEY ( ref_course_credit_level_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_credit_level_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_credit_level_type.ref_course_credit_level_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_credit_level_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_credit_level_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_credit_level_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_gpa_applicability ( 
	ref_course_gpa_applicability_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_gpa_applicability PRIMARY KEY ( ref_course_gpa_applicability_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_gpa_applicability IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_gpa_applicability.ref_course_gpa_applicability_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_gpa_applicability.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_gpa_applicability.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_gpa_applicability.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_instruction_method ( 
	ref_course_instruction_method_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_instruction_method PRIMARY KEY ( ref_course_instruction_method_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_instruction_method IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_instruction_method.ref_course_instruction_method_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_instruction_method.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_instruction_method.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_instruction_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_interaction_mode ( 
	ref_course_interaction_mode_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_interaction_mode PRIMARY KEY ( ref_course_interaction_mode_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_interaction_mode IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_interaction_mode.ref_course_interaction_mode_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_interaction_mode.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_interaction_mode.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_interaction_mode.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_level_type ( 
	ref_course_level_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_level_type PRIMARY KEY ( ref_course_level_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_level_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_level_type.ref_course_level_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_level_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_level_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_level_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_section_assessment_reporting_method ( 
	ref_course_section_assessment_reporting_method_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_section_assessment_reporting_method PRIMARY KEY ( ref_course_section_assessment_reporting_method_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_section_assessment_reporting_method IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_assessment_reporting_method.ref_course_section_assessment_reporting_method_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_assessment_reporting_method.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_assessment_reporting_method.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_assessment_reporting_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_section_enrollment_status_type ( 
	ref_course_section_enrollment_status_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_section_enrollment_status PRIMARY KEY ( ref_course_section_enrollment_status_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_section_enrollment_status_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_enrollment_status_type.ref_course_section_enrollment_status_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_enrollment_status_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_enrollment_status_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_enrollment_status_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_section_exit_type ( 
	ref_course_section_exit_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_section_exit_type PRIMARY KEY ( ref_course_section_exit_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_section_exit_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_exit_type.ref_course_section_exit_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_exit_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_exit_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_exit_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_credential_identifier_system ( 
	ref_credential_identifier_system_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_credential_identifier_system PRIMARY KEY ( ref_credential_identifier_system_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_identifier_system.ref_credential_identifier_system_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_identifier_system.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_identifier_system.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_identifier_system.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_identifier_system.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_identifier_system.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_credential_status_type ( 
	ref_credential_status_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_credential_status_type PRIMARY KEY ( ref_credential_status_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_status_type.ref_credential_status_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_status_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_status_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_status_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_status_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_status_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_credential_verification_type ( 
	ref_credential_verification_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_credential_verification_type PRIMARY KEY ( ref_credential_verification_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_verification_type.ref_credential_verification_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_verification_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_verification_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_verification_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_verification_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_verification_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_credit_type_earned ( 
	ref_credit_type_earned_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_credit_type_earned PRIMARY KEY ( ref_credit_type_earned_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_credit_type_earned IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credit_type_earned.ref_credit_type_earned_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_credit_type_earned.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credit_type_earned.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credit_type_earned.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_cte_graduation_rate_inclusion ( 
	ref_cte_graduation_rate_inclusion_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_cte_graduation_rate_inclusion PRIMARY KEY ( ref_cte_graduation_rate_inclusion_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_cte_graduation_rate_inclusion IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cte_graduation_rate_inclusion.ref_cte_graduation_rate_inclusion_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_cte_graduation_rate_inclusion.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cte_graduation_rate_inclusion.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cte_graduation_rate_inclusion.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_curriculum_framework_type ( 
	ref_curriculum_framework_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_curriculum_framework_type PRIMARY KEY ( ref_curriculum_framework_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_curriculum_framework_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_curriculum_framework_type.ref_curriculum_framework_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_curriculum_framework_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_curriculum_framework_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_curriculum_framework_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_degree_or_certificate_type ( 
	ref_degree_or_certificate_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_degree_or_certificate_type PRIMARY KEY ( ref_degree_or_certificate_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_degree_or_certificate_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_degree_or_certificate_type.ref_degree_or_certificate_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_degree_or_certificate_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_degree_or_certificate_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_degree_or_certificate_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_dental_screening_status ( 
	ref_dental_screening_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_dental_screen PRIMARY KEY ( ref_dental_screening_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_dental_screening_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_dental_screening_status.ref_dental_screening_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_dental_screening_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_dental_screening_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_dental_screening_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_developmental_education_referral_status ( 
	ref_developmental_education_referral_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_developmental_education_referral_status PRIMARY KEY ( ref_developmental_education_referral_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_developmental_education_referral_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_developmental_education_referral_status.ref_developmental_education_referral_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_developmental_education_referral_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_developmental_education_referral_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_developmental_education_referral_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_developmental_evaluation_finding ( 
	ref_developmental_evaluation_finding_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_developmental_evaluation_finding PRIMARY KEY ( ref_developmental_evaluation_finding_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_developmental_evaluation_finding IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_developmental_evaluation_finding.ref_developmental_evaluation_finding_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_developmental_evaluation_finding.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_developmental_evaluation_finding.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_developmental_evaluation_finding.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_disability_condition_status_code ( 
	ref_disability_condition_status_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_disability_condition_status_code PRIMARY KEY ( ref_disability_condition_status_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_disability_condition_status_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_condition_status_code.ref_disability_condition_status_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_condition_status_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_condition_status_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_condition_status_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_disability_determination_source_type ( 
	ref_disability_determination_source_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_disability_determination_source_type PRIMARY KEY ( ref_disability_determination_source_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_disability_determination_source_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_determination_source_type.ref_disability_determination_source_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_determination_source_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_determination_source_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_determination_source_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_disciplinary_action_taken ( 
	ref_disciplinary_action_taken_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_disciplinary_action_taken PRIMARY KEY ( ref_disciplinary_action_taken_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_disciplinary_action_taken IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disciplinary_action_taken.ref_disciplinary_action_taken_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_disciplinary_action_taken.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disciplinary_action_taken.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disciplinary_action_taken.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_discipline_method_firearms ( 
	ref_discipline_method_firearms_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_discine_method_firearms PRIMARY KEY ( ref_discipline_method_firearms_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_discipline_method_firearms IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_method_firearms.ref_discipline_method_firearms_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_method_firearms.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_method_firearms.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_method_firearms.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_discipline_reason ( 
	ref_discipline_reason_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_discipline_reason PRIMARY KEY ( ref_discipline_reason_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_discipline_reason IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_reason.ref_discipline_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_reason.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_reason.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_doctoral_exams_required_code ( 
	ref_doctoral_exams_required_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_doctoral_exams_required_code PRIMARY KEY ( ref_doctoral_exams_required_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_doctoral_exams_required_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_doctoral_exams_required_code.ref_doctoral_exams_required_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_doctoral_exams_required_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_doctoral_exams_required_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_doctoral_exams_required_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_employment_separation_reason ( 
	ref_el_employment_separation_reason_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_employment_separation_reason PRIMARY KEY ( ref_el_employment_separation_reason_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_employment_separation_reason IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_employment_separation_reason.ref_el_employment_separation_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_employment_separation_reason.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_employment_separation_reason.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_employment_separation_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_federal_funding_type ( 
	ref_el_federal_funding_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_federal_funding_type PRIMARY KEY ( ref_el_federal_funding_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_federal_funding_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_federal_funding_type.ref_el_federal_funding_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_federal_funding_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_federal_funding_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_federal_funding_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_level_of_specialization ( 
	ref_el_level_of_specialization_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_level_of_specialization PRIMARY KEY ( ref_el_level_of_specialization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_level_of_specialization IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_level_of_specialization.ref_el_level_of_specialization_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_level_of_specialization.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_level_of_specialization.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_level_of_specialization.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_other_federal_funding_sources ( 
	ref_el_other_federal_funding_sources_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_other_federal_funding_sources PRIMARY KEY ( ref_el_other_federal_funding_sources_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_other_federal_funding_sources IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_other_federal_funding_sources.ref_el_other_federal_funding_sources_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_other_federal_funding_sources.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_other_federal_funding_sources.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_other_federal_funding_sources.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_professional_development_topic_area ( 
	ref_el_professional_development_topic_area_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_professional_development_topic_area PRIMARY KEY ( ref_el_professional_development_topic_area_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_professional_development_topic_area IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_professional_development_topic_area.ref_el_professional_development_topic_area_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_professional_development_topic_area.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_professional_development_topic_area.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_professional_development_topic_area.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_program_eligibility_status ( 
	ref_el_program_eligibility_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_program_eligibility_status PRIMARY KEY ( ref_el_program_eligibility_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_program_eligibility_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_program_eligibility_status.ref_el_program_eligibility_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_program_eligibility_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_program_eligibility_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_program_eligibility_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_service_professional_staff_classification ( 
	ref_el_service_professional_staff_classification_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_service_professional_staff_classification PRIMARY KEY ( ref_el_service_professional_staff_classification_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_service_professional_staff_classification IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_service_professional_staff_classification.ref_el_service_professional_staff_classification_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_service_professional_staff_classification.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_service_professional_staff_classification.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_service_professional_staff_classification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_state_revenue_source ( 
	ref_el_state_revenue_source_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_state_revenue_source PRIMARY KEY ( ref_el_state_revenue_source_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_state_revenue_source IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_state_revenue_source.ref_el_state_revenue_source_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_state_revenue_source.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_state_revenue_source.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_state_revenue_source.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ers_rural_urban_continuum_code ( 
	ref_ers_rural_urban_continuum_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ers_rural_urban_continuum_code PRIMARY KEY ( ref_ers_rural_urban_continuum_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ers_rural_urban_continuum_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ers_rural_urban_continuum_code.ref_ers_rural_urban_continuum_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ers_rural_urban_continuum_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ers_rural_urban_continuum_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ers_rural_urban_continuum_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_early_childhood_credential ( 
	ref_early_childhood_credential_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_early_childhood_credential PRIMARY KEY ( ref_early_childhood_credential_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_early_childhood_credential IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_early_childhood_credential.ref_early_childhood_credential_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_early_childhood_credential.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_early_childhood_credential.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_early_childhood_credential.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_early_childhood_services ( 
	ref_early_childhood_services_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_early_childhood_services PRIMARY KEY ( ref_early_childhood_services_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_early_childhood_services IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_early_childhood_services.ref_early_childhood_services_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_early_childhood_services.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_early_childhood_services.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_early_childhood_services.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_education_level_type ( 
	ref_education_level_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_education_level_type PRIMARY KEY ( ref_education_level_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_education_level_type IS 'List of identification system types.';

COMMENT ON COLUMN rs_ceds7_sc.ref_education_level_type.ref_education_level_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_education_level_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_education_level_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_education_level_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_elementary_middle_additional ( 
	ref_elementary_middle_additional_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_elementary_middle_additional PRIMARY KEY ( ref_elementary_middle_additional_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_elementary_middle_additional IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_elementary_middle_additional.ref_elementary_middle_additional_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_elementary_middle_additional.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_elementary_middle_additional.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_elementary_middle_additional.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_employed_after_exit ( 
	ref_employed_after_exit_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_employed_after_exit PRIMARY KEY ( ref_employed_after_exit_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_employed_after_exit IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employed_after_exit.ref_employed_after_exit_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_employed_after_exit.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employed_after_exit.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employed_after_exit.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_employed_while_enrolled ( 
	ref_employed_while_enrolled_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_employed_while_enrolled PRIMARY KEY ( ref_employed_while_enrolled_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_employed_while_enrolled IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employed_while_enrolled.ref_employed_while_enrolled_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_employed_while_enrolled.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employed_while_enrolled.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employed_while_enrolled.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_employment_contract_type ( 
	ref_employment_contract_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_employment_contract_type PRIMARY KEY ( ref_employment_contract_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_employment_contract_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_contract_type.ref_employment_contract_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_contract_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_contract_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_contract_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_employment_separation_reason ( 
	ref_employment_separation_reason_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_employment_separation_reason PRIMARY KEY ( ref_employment_separation_reason_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_employment_separation_reason IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_separation_reason.ref_employment_separation_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_separation_reason.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_separation_reason.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_separation_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_employment_status ( 
	ref_employment_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_employment_status PRIMARY KEY ( ref_employment_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_employment_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_status.ref_employment_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_end_of_term_status ( 
	ref_end_of_term_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_end_of_term_status PRIMARY KEY ( ref_end_of_term_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_end_of_term_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_end_of_term_status.ref_end_of_term_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_end_of_term_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_end_of_term_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_end_of_term_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_entity_type ( 
	ref_entity_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_associated_entity_type PRIMARY KEY ( ref_entity_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_entity_type IS 'CEDS entities. Used when the relationship of data requires the associated entity to be specified.';

COMMENT ON COLUMN rs_ceds7_sc.ref_entity_type.ref_entity_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_entity_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_entity_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_environment_setting ( 
	ref_environment_setting_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_environment_setting PRIMARY KEY ( ref_environment_setting_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_environment_setting IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_environment_setting.ref_environment_setting_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_environment_setting.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_environment_setting.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_environment_setting.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_exit_or_withdrawal_type ( 
	ref_exit_or_withdrawal_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_exit_or_withdrawal_type PRIMARY KEY ( ref_exit_or_withdrawal_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_exit_or_withdrawal_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_exit_or_withdrawal_type.ref_exit_or_withdrawal_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_exit_or_withdrawal_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_exit_or_withdrawal_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_exit_or_withdrawal_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_federal_program_funding_allocation_type ( 
	ref_federal_program_funding_allocation_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_federal_program_funding_allocation_type PRIMARY KEY ( ref_federal_program_funding_allocation_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_federal_program_funding_allocation_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_federal_program_funding_allocation_type.ref_federal_program_funding_allocation_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_federal_program_funding_allocation_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_federal_program_funding_allocation_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_federal_program_funding_allocation_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_financial_account_category ( 
	ref_financial_account_category_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_account_category PRIMARY KEY ( ref_financial_account_category_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_financial_account_category IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_category.ref_financial_account_category_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_category.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_category.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_financial_account_program_code ( 
	ref_financial_account_program_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_account_program_code PRIMARY KEY ( ref_financial_account_program_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_financial_account_program_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_program_code.ref_financial_account_program_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_program_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_program_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_program_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_financial_aid_application_type ( 
	ref_financial_aid_application_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_aid_appl_type PRIMARY KEY ( ref_financial_aid_application_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_financial_aid_application_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_application_type.ref_financial_aid_application_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_application_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_application_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_application_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_financial_aid_award_type ( 
	ref_financial_aid_award_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_aid_award_type PRIMARY KEY ( ref_financial_aid_award_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_financial_aid_award_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_award_type.ref_financial_aid_award_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_award_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_award_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_award_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_financial_aid_veterans_benefit_type ( 
	ref_financial_aid_veterans_benefit_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_aid_veterans_benefit_type PRIMARY KEY ( ref_financial_aid_veterans_benefit_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_financial_aid_veterans_benefit_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_veterans_benefit_type.ref_financial_aid_veterans_benefit_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_veterans_benefit_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_veterans_benefit_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_veterans_benefit_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_financial_expenditure_level_of_instruction_code ( 
	ref_financial_expenditure_level_of_instruction_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_expenditure_level_of_instruction_code PRIMARY KEY ( ref_financial_expenditure_level_of_instruction_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_financial_expenditure_level_of_instruction_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_expenditure_level_of_instruction_code.ref_financial_expenditure_level_of_instruction_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_expenditure_level_of_instruction_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_expenditure_level_of_instruction_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_expenditure_level_of_instruction_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_firearm_type ( 
	ref_firearm_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_firearm_type PRIMARY KEY ( ref_firearm_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_firearm_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_firearm_type.ref_firearm_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_firearm_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_firearm_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_firearm_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_food_service_participation ( 
	ref_food_service_participation_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_food_service_participation PRIMARY KEY ( ref_food_service_participation_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_food_service_participation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_food_service_participation.ref_food_service_participation_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_food_service_participation.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_food_service_participation.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_food_service_participation.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_frequency_unit ( 
	ref_frequency_unit_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_frequency_unit PRIMARY KEY ( ref_frequency_unit_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_frequency_unit.ref_frequency_unit_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_frequency_unit.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_frequency_unit.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_frequency_unit.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_frequency_unit.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_frequency_unit.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_goal_measurement_type ( 
	ref_goal_measurement_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_goal_measurement_type PRIMARY KEY ( ref_goal_measurement_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_goal_measurement_type.ref_goal_measurement_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_goal_measurement_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_goal_measurement_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_goal_measurement_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_goal_measurement_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_goal_measurement_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_goals_for_attending_adult_education ( 
	ref_goals_for_attending_adult_education_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_goals_for_attending_adult_education PRIMARY KEY ( ref_goals_for_attending_adult_education_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_goals_for_attending_adult_education IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_goals_for_attending_adult_education.ref_goals_for_attending_adult_education_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_goals_for_attending_adult_education.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_goals_for_attending_adult_education.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_goals_for_attending_adult_education.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_grade_level ( 
	ref_grade_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	ref_grade_level_type_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_grade PRIMARY KEY ( ref_grade_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_grade_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_grade_level.ref_grade_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_grade_level.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_grade_level.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_grade_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_grade_point_average_domain ( 
	ref_grade_point_average_domain_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_grade_point_average_domain PRIMARY KEY ( ref_grade_point_average_domain_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_grade_point_average_domain IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_grade_point_average_domain.ref_grade_point_average_domain_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_grade_point_average_domain.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_grade_point_average_domain.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_grade_point_average_domain.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_graduate_or_doctoral_exam_results_status ( 
	ref_graduate_or_doctoral_exam_results_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_graduate_or_doctoral_exam_results_status PRIMARY KEY ( ref_graduate_or_doctoral_exam_results_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_graduate_or_doctoral_exam_results_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_graduate_or_doctoral_exam_results_status.ref_graduate_or_doctoral_exam_results_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_graduate_or_doctoral_exam_results_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_graduate_or_doctoral_exam_results_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_graduate_or_doctoral_exam_results_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_health_insurance_coverage ( 
	ref_health_insurance_coverage_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_insurance PRIMARY KEY ( ref_health_insurance_coverage_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_health_insurance_coverage IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_health_insurance_coverage.ref_health_insurance_coverage_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_health_insurance_coverage.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_health_insurance_coverage.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_health_insurance_coverage.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_high_school_diploma_distinction_type ( 
	ref_high_school_diploma_distinction_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_hs_diploma_distinction_type PRIMARY KEY ( ref_high_school_diploma_distinction_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_high_school_diploma_distinction_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_high_school_diploma_distinction_type.ref_high_school_diploma_distinction_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_high_school_diploma_distinction_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_high_school_diploma_distinction_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_high_school_diploma_distinction_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_high_school_graduation_rate_indicator ( 
	ref_hs_graduation_rate_indicator_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_hs_graduation_rate_indicator PRIMARY KEY ( ref_hs_graduation_rate_indicator_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_high_school_graduation_rate_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_high_school_graduation_rate_indicator.ref_hs_graduation_rate_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_high_school_graduation_rate_indicator.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_high_school_graduation_rate_indicator.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_high_school_graduation_rate_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_homeless_nighttime_residence ( 
	ref_homeless_nighttime_residence_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_homeless_nighttime_residence PRIMARY KEY ( ref_homeless_nighttime_residence_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_homeless_nighttime_residence IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_homeless_nighttime_residence.ref_homeless_nighttime_residence_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_homeless_nighttime_residence.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_homeless_nighttime_residence.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_homeless_nighttime_residence.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_idea_discipline_method_firearm ( 
	ref_idea_discipline_method_firearm_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_idea_discipline_method_firearm PRIMARY KEY ( ref_idea_discipline_method_firearm_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_idea_discipline_method_firearm IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_discipline_method_firearm.ref_idea_discipline_method_firearm_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_discipline_method_firearm.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_discipline_method_firearm.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_discipline_method_firearm.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_idea_educational_environment_school_age ( 
	ref_ides_educational_environment_school_age integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_idea_educational_environment_school_age PRIMARY KEY ( ref_ides_educational_environment_school_age )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_idea_educational_environment_school_age IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_educational_environment_school_age.ref_ides_educational_environment_school_age IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_educational_environment_school_age.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_educational_environment_school_age.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_educational_environment_school_age.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_idea_environment_el ( 
	ref_idea_environment_el_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_idea_environment_el PRIMARY KEY ( ref_idea_environment_el_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_idea_environment_el IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_environment_el.ref_idea_environment_el_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_environment_el.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_environment_el.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_environment_el.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_idea_interim_removal ( 
	ref_idea_interim_removal_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_idea_interim_removal_id PRIMARY KEY ( ref_idea_interim_removal_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_idea_interim_removal IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_interim_removal.ref_idea_interim_removal_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_interim_removal.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_interim_removal.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_interim_removal.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_idea_part_c_eligibility_category ( 
	ref_idea_part_c_eligibility_category_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_idea_part_c_eligibility_category PRIMARY KEY ( ref_idea_part_c_eligibility_category_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_idea_part_c_eligibility_category IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_part_c_eligibility_category.ref_idea_part_c_eligibility_category_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_part_c_eligibility_category.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_part_c_eligibility_category.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_part_c_eligibility_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_iep_eligibility_evaluation_type ( 
	ref_iep_eligibility_evaluation_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_iep_eligibility_evaluation_type PRIMARY KEY ( ref_iep_eligibility_evaluation_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_eligibility_evaluation_type.ref_iep_eligibility_evaluation_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_eligibility_evaluation_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_eligibility_evaluation_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_eligibility_evaluation_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_eligibility_evaluation_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_eligibility_evaluation_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_ipedsfasb_financial_position ( 
	ref_ipedsfasb_financial_position_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_ipedsfasb_financial_position PRIMARY KEY ( ref_ipedsfasb_financial_position_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_financial_position.ref_ipedsfasb_financial_position_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_financial_position.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_financial_position.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_financial_position.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_financial_position.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_financial_position.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_ipedsfasb_pell_grant_transactions ( 
	ref_ipedsfasb_pell_grant_transactions_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_ipedsfasb_pell_grant_transactions PRIMARY KEY ( ref_ipedsfasb_pell_grant_transactions_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_pell_grant_transactions.ref_ipedsfasb_pell_grant_transactions_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_pell_grant_transactions.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_pell_grant_transactions.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_pell_grant_transactions.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_pell_grant_transactions.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_pell_grant_transactions.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_ipedsfasb_revenue_restriction ( 
	ref_ipedsfasb_revenue_restriction_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_ipedsfasb_revenue_restriction PRIMARY KEY ( ref_ipedsfasb_revenue_restriction_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_revenue_restriction.ref_ipedsfasb_revenue_restriction_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_revenue_restriction.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_revenue_restriction.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_revenue_restriction.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_revenue_restriction.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_revenue_restriction.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_ipedsgasb_financial_position ( 
	ref_ipedsgasb_financial_position_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_ipedsgasb_financial_position PRIMARY KEY ( ref_ipedsgasb_financial_position_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_financial_position.ref_ipedsgasb_financial_position_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_financial_position.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_financial_position.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_financial_position.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_financial_position.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_financial_position.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_ipedsgasb_revenue ( 
	ref_ipedsgasb_revenue_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_ipedsgasb_revenue PRIMARY KEY ( ref_ipedsgasb_revenue_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_revenue.ref_ipedsgasb_revenue_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_revenue.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_revenue.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_revenue.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_revenue.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_revenue.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_ipeds_intercollegiate_athletics_expenses ( 
	ref_ipeds_intercollegiate_athletics_expenses_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_ipeds_intercollegiate_athletics_expenses PRIMARY KEY ( ref_ipeds_intercollegiate_athletics_expenses_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_intercollegiate_athletics_expenses.ref_ipeds_intercollegiate_athletics_expenses_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_intercollegiate_athletics_expenses.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_intercollegiate_athletics_expenses.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_intercollegiate_athletics_expenses.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_intercollegiate_athletics_expenses.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_intercollegiate_athletics_expenses.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_ipsp_progress_report_schedule ( 
	ref_ipsp_progress_report_schedule_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_ipsp_progress_report_schedule PRIMARY KEY ( ref_ipsp_progress_report_schedule_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ipsp_progress_report_schedule.ref_ipsp_progress_report_schedule_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipsp_progress_report_schedule.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipsp_progress_report_schedule.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipsp_progress_report_schedule.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipsp_progress_report_schedule.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipsp_progress_report_schedule.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_iso6392_language ( 
	ref_iso6392_language_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_iso6392_language PRIMARY KEY ( ref_iso6392_language_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_iso6392_language IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iso6392_language.ref_iso6392_language_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_iso6392_language.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iso6392_language.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iso6392_language.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_iso6395_language_family ( 
	ref_iso6395_language_family_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_iso6395_language_family PRIMARY KEY ( ref_iso6395_language_family_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_iso6395_language_family IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iso6395_language_family.ref_iso6395_language_family_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_iso6395_language_family.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iso6395_language_family.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iso6395_language_family.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_incident_behavior ( 
	ref_incident_behavior_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_incident_behavior PRIMARY KEY ( ref_incident_behavior_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_incident_behavior IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_behavior.ref_incident_behavior_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_behavior.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_behavior.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_behavior.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_incident_injury_type ( 
	ref_incident_injury_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_incident_injury_type PRIMARY KEY ( ref_incident_injury_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_incident_injury_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_injury_type.ref_incident_injury_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_injury_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_injury_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_injury_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_incident_multiple_offense_type ( 
	ref_incident_multiple_offense_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_incident_multiple_offense_type PRIMARY KEY ( ref_incident_multiple_offense_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_incident_multiple_offense_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_multiple_offense_type.ref_incident_multiple_offense_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_multiple_offense_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_multiple_offense_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_multiple_offense_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_incident_person_role_type ( 
	ref_incident_person_role_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_incident_person_role_type PRIMARY KEY ( ref_incident_person_role_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_incident_person_role_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_person_role_type.ref_incident_person_role_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_person_role_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_person_role_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_person_role_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_incident_reporter_type ( 
	ref_incident_reporter_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_incident_reporter_type PRIMARY KEY ( ref_incident_reporter_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_incident_reporter_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_reporter_type.ref_incident_reporter_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_reporter_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_reporter_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_reporter_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_income_calculation_method ( 
	ref_income_calculation_method_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_income_calculation PRIMARY KEY ( ref_income_calculation_method_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_income_calculation_method IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_income_calculation_method.ref_income_calculation_method_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_income_calculation_method.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_income_calculation_method.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_income_calculation_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_individualized_program_date_type ( 
	ref_individualized_program_date_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_individualized_program_date_type PRIMARY KEY ( ref_individualized_program_date_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_individualized_program_date_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_date_type.ref_individualized_program_date_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_date_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_date_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_date_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_individualized_program_planned_service_type ( 
	ref_individualized_program_planned_service_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_individualized_program_planned_service_type PRIMARY KEY ( ref_individualized_program_planned_service_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_individualized_program_planned_service_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_planned_service_type.ref_individualized_program_planned_service_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_planned_service_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_planned_service_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_planned_service_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_individualized_program_type ( 
	ref_individualized_program_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_individualized_program_type PRIMARY KEY ( ref_individualized_program_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_individualized_program_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_type.ref_individualized_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_instruction_credit_type ( 
	ref_instruction_credit_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_instruction_credit_type PRIMARY KEY ( ref_instruction_credit_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_instruction_credit_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instruction_credit_type.ref_instruction_credit_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_instruction_credit_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instruction_credit_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instruction_credit_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_instructional_activity_hours ( 
	ref_instructional_activity_hours_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_instructional_activity_hours PRIMARY KEY ( ref_instructional_activity_hours_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_instructional_activity_hours IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instructional_activity_hours.ref_instructional_activity_hours_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_instructional_activity_hours.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instructional_activity_hours.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instructional_activity_hours.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_instructional_staff_faculty_tenure ( 
	ref_instructional_staff_faculty_tenure_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_instruct_staff_faculty_tenure PRIMARY KEY ( ref_instructional_staff_faculty_tenure_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_instructional_staff_faculty_tenure IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instructional_staff_faculty_tenure.ref_instructional_staff_faculty_tenure_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_instructional_staff_faculty_tenure.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instructional_staff_faculty_tenure.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instructional_staff_faculty_tenure.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_internet_access ( 
	ref_internet_access_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_internet_access PRIMARY KEY ( ref_internet_access_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_internet_access IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_internet_access.ref_internet_access_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_internet_access.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_internet_access.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_internet_access.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_item_response_theory_difficulty_category ( 
	ref_item_response_theory_difficulty_category_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_item_responsse_theory_difficulty_category PRIMARY KEY ( ref_item_response_theory_difficulty_category_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_item_response_theory_difficulty_category IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_item_response_theory_difficulty_category.ref_item_response_theory_difficulty_category_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_item_response_theory_difficulty_category.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_item_response_theory_difficulty_category.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_item_response_theory_difficulty_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_k12_end_of_course_requirement ( 
	ref_k12_end_of_course_requirement_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_k12_end_of_course_requirement PRIMARY KEY ( ref_k12_end_of_course_requirement_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_k12_end_of_course_requirement IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_end_of_course_requirement.ref_k12_end_of_course_requirement_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_end_of_course_requirement.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_end_of_course_requirement.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_end_of_course_requirement.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_k12_responsibility_type ( 
	ref_k12_responsibility_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_k12_responsibility_type PRIMARY KEY ( ref_k12_responsibility_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_k12_responsibility_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_responsibility_type.ref_k12_responsibility_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_responsibility_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_responsibility_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_responsibility_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_language ( 
	ref_language_id    integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         text  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_language PRIMARY KEY ( ref_language_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_language IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_language.ref_language_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_language.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_language.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_language.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_lea_funds_transfer_type ( 
	ref_lea_funds_transfer_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_lea_funds_transfer_type PRIMARY KEY ( ref_lea_funds_transfer_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_lea_funds_transfer_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_lea_funds_transfer_type.ref_lea_funds_transfer_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_lea_funds_transfer_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_lea_funds_transfer_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_lea_funds_transfer_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_lea_type ( 
	ref_lea_type_id    integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_lea_type PRIMARY KEY ( ref_lea_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_lea_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_lea_type.ref_lea_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_lea_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_lea_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_lea_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learner_activity_add_to_grade_book_flag ( 
	ref_learner_activity_add_to_grade_book_flag_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_learner_activity_add_to_grade_book_flag PRIMARY KEY ( ref_learner_activity_add_to_grade_book_flag_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_activity_add_to_grade_book_flag.ref_learner_activity_add_to_grade_book_flag_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_activity_add_to_grade_book_flag.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_activity_add_to_grade_book_flag.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_activity_add_to_grade_book_flag.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_activity_add_to_grade_book_flag.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_activity_add_to_grade_book_flag.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_learner_activity_type ( 
	ref_learner_activity_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learner_activity_type PRIMARY KEY ( ref_learner_activity_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learner_activity_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_activity_type.ref_learner_activity_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_activity_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_activity_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_activity_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_access_hazard_type ( 
	ref_learning_resource_access_hazard_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_access_hazard_type PRIMARY KEY ( ref_learning_resource_access_hazard_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_access_hazard_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_hazard_type.ref_learning_resource_access_hazard_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_hazard_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_hazard_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_hazard_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_access_rights_url ( 
	ref_learning_resource_access_rights_url_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_access_rights_url PRIMARY KEY ( ref_learning_resource_access_rights_url_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_access_rights_url IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_rights_url.ref_learning_resource_access_rights_url_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_rights_url.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_rights_url.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_rights_url.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_book_format_type ( 
	ref_learning_resource_book_format_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_book_format_type PRIMARY KEY ( ref_learning_resource_book_format_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_book_format_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_book_format_type.ref_learning_resource_book_format_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_book_format_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_book_format_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_book_format_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_control_flexibility_type ( 
	ref_learning_resource_control_flexibility_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_control_flexibility_type PRIMARY KEY ( ref_learning_resource_control_flexibility_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_control_flexibility_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_control_flexibility_type.ref_learning_resource_control_flexibility_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_control_flexibility_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_control_flexibility_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_control_flexibility_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_digital_media_type ( 
	ref_learning_resource_digital_media_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_digital_media_type PRIMARY KEY ( ref_learning_resource_digital_media_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_digital_media_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_digital_media_type.ref_learning_resource_digital_media_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_digital_media_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_digital_media_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_digital_media_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_intended_end_user_role ( 
	ref_learning_resource_intended_end_user_role_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_intended_use PRIMARY KEY ( ref_learning_resource_intended_end_user_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_intended_end_user_role IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_intended_end_user_role.ref_learning_resource_intended_end_user_role_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_intended_end_user_role.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_intended_end_user_role.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_intended_end_user_role.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_interactivity_type ( 
	ref_learning_resource_interactivity_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_interactivity_type PRIMARY KEY ( ref_learning_resource_interactivity_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_interactivity_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_interactivity_type.ref_learning_resource_interactivity_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_interactivity_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_interactivity_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_interactivity_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_physical_media_type ( 
	ref_learning_resource_physical_media_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_physical_media_type PRIMARY KEY ( ref_learning_resource_physical_media_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_physical_media_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_physical_media_type.ref_learning_resource_physical_media_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_physical_media_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_physical_media_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_physical_media_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_leave_event_type ( 
	ref_leave_event_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_leave_event_type PRIMARY KEY ( ref_leave_event_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_leave_event_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_leave_event_type.ref_leave_event_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_leave_event_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_leave_event_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_leave_event_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_license_exempt ( 
	ref_license_exempt_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_license_exempt PRIMARY KEY ( ref_license_exempt_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_license_exempt IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_license_exempt.ref_license_exempt_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_license_exempt.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_license_exempt.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_license_exempt.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_magnet_special_program ( 
	ref_magnet_special_program_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_magnet_status PRIMARY KEY ( ref_magnet_special_program_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_magnet_special_program IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_magnet_special_program.ref_magnet_special_program_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_magnet_special_program.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_magnet_special_program.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_magnet_special_program.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_mep_enrollment_type ( 
	ref_mep_enrollment_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_mep_enrollment_type PRIMARY KEY ( ref_mep_enrollment_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_mep_enrollment_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_enrollment_type.ref_mep_enrollment_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_enrollment_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_enrollment_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_enrollment_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_mep_project_type ( 
	ref_mep_project_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_mep_project_type PRIMARY KEY ( ref_mep_project_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_project_type.ref_mep_project_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_project_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_project_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_project_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_mep_session_type ( 
	ref_mep_session_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_mep_session_type PRIMARY KEY ( ref_mep_session_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_mep_session_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_session_type.ref_mep_session_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_session_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_session_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_session_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_method_of_service_delivery ( 
	ref_method_of_service_delivery_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_method_of_service_delivery PRIMARY KEY ( ref_method_of_service_delivery_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_method_of_service_delivery IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_method_of_service_delivery.ref_method_of_service_delivery_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_method_of_service_delivery.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_method_of_service_delivery.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_method_of_service_delivery.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_military_branch ( 
	ref_military_branch_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_military_branch PRIMARY KEY ( ref_military_branch_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_military_branch IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_branch.ref_military_branch_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_branch.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_branch.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_branch.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_military_veteran_student_indicator ( 
	ref_military_veteran_student_indicator_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_military_veteran_student_indicator PRIMARY KEY ( ref_military_veteran_student_indicator_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_military_veteran_student_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_veteran_student_indicator.ref_military_veteran_student_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_veteran_student_indicator.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_veteran_student_indicator.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_veteran_student_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_nces_college_course_map_code ( 
	ref_nces_college_course_map_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_nces_college_course_map_code PRIMARY KEY ( ref_nces_college_course_map_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_nces_college_course_map_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_nces_college_course_map_code.ref_nces_college_course_map_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_nces_college_course_map_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_nces_college_course_map_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_nces_college_course_map_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_naep_math_complexity_level ( 
	ref_naep_math_complexity_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_naep_math_complexity PRIMARY KEY ( ref_naep_math_complexity_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_naep_math_complexity_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_naep_math_complexity_level.ref_naep_math_complexity_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_naep_math_complexity_level.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_naep_math_complexity_level.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_naep_math_complexity_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_neglected_program_type ( 
	ref_neglected_program_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_neglected_program_type PRIMARY KEY ( ref_neglected_program_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_neglected_program_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_neglected_program_type.ref_neglected_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_neglected_program_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_neglected_program_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_neglected_program_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_non_traditional_gender_status ( 
	ref_non_traditional_gender_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_non_traditional_gender_status PRIMARY KEY ( ref_non_traditional_gender_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_non_traditional_gender_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_non_traditional_gender_status.ref_non_traditional_gender_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_non_traditional_gender_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_non_traditional_gender_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_non_traditional_gender_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_operational_status ( 
	ref_operational_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	ref_operational_status_type_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_operational_status PRIMARY KEY ( ref_operational_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_operational_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_operational_status.ref_operational_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_operational_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_operational_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_operational_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_organization_element_type ( 
	ref_organization_element_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_organization_element_type PRIMARY KEY ( ref_organization_element_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_organization_element_type IS 'List of identification system types.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_element_type.ref_organization_element_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_element_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_element_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_element_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_organization_identifier_type ( 
	ref_organization_identifier_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_organization_identifier_type PRIMARY KEY ( ref_organization_identifier_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_organization_identifier_type IS 'List of identification system types.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_identifier_type.ref_organization_identifier_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_identifier_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_identifier_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_identifier_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_organization_location_type ( 
	ref_organization_location_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_organization_location PRIMARY KEY ( ref_organization_location_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_organization_location_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_location_type.ref_organization_location_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_location_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_location_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_location_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_organization_relationship ( 
	ref_organization_relationship_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_organization_relationship PRIMARY KEY ( ref_organization_relationship_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_organization_relationship IS 'The type of relationship of one organization to another.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_relationship.ref_organization_relationship_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_relationship.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_relationship.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_relationship.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_other_name_type ( 
	ref_other_name_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_other_name_type PRIMARY KEY ( ref_other_name_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_other_name_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_other_name_type.ref_other_name_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_other_name_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_other_name_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_other_name_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_pd_activity_approved_purpose ( 
	ref_pd_activity_approved_for_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_activity_approved_for PRIMARY KEY ( ref_pd_activity_approved_for_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_pd_activity_approved_purpose IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_approved_purpose.ref_pd_activity_approved_for_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_approved_purpose.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_approved_purpose.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_approved_purpose.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_pd_activity_education_levels_addressed ( 
	ref_pd_activity_education_levels_addressed_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_activity_education_levels_addressed PRIMARY KEY ( ref_pd_activity_education_levels_addressed_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_pd_activity_education_levels_addressed IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_education_levels_addressed.ref_pd_activity_education_levels_addressed_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_education_levels_addressed.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_education_levels_addressed.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_education_levels_addressed.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_pd_activity_target_audience ( 
	ref_pd_activity_target_audience_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_activity_target_audience PRIMARY KEY ( ref_pd_activity_target_audience_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_pd_activity_target_audience IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_target_audience.ref_pd_activity_target_audience_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_target_audience.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_target_audience.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_target_audience.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_pd_audience_type ( 
	ref_pd_audience_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_audience_type PRIMARY KEY ( ref_pd_audience_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_pd_audience_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_audience_type.ref_pd_audience_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_audience_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_audience_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_audience_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_pd_instructional_delivery_mode ( 
	ref_pd_instructional_delivery_mode_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_instructional_delivery_mode PRIMARY KEY ( ref_pd_instructional_delivery_mode_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_pd_instructional_delivery_mode IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_instructional_delivery_mode.ref_pd_instructional_delivery_mode_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_instructional_delivery_mode.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_instructional_delivery_mode.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_instructional_delivery_mode.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_pesc_award_level_type ( 
	ref_pesc_award_level_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_pesc_award_level_type PRIMARY KEY ( ref_pesc_award_level_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_pesc_award_level_type.ref_pesc_award_level_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pesc_award_level_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pesc_award_level_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pesc_award_level_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pesc_award_level_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pesc_award_level_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_ps_program_level ( 
	ref_ps_program_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_program_level PRIMARY KEY ( ref_ps_program_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ps_program_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_program_level.ref_ps_program_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_program_level.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_program_level.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_program_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_participation_status_ayp ( 
	ref_participation_status_ayp_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_participation_status_ayp PRIMARY KEY ( ref_participation_status_ayp_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_participation_status_ayp IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_participation_status_ayp.ref_participation_status_ayp_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_participation_status_ayp.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_participation_status_ayp.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_participation_status_ayp.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_person_identification_system ( 
	ref_person_identification_system_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	ref_person_identifier_type_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_identifier PRIMARY KEY ( ref_person_identification_system_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_person_identification_system IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_identification_system.ref_person_identification_system_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_identification_system.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_identification_system.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_identification_system.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_identification_system.ref_person_identifier_type_id IS 'List of identification system types.';

CREATE TABLE rs_ceds7_sc.ref_person_location_type ( 
	ref_person_location_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	role_id            integer  ,
	ref_address_type_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_person_location PRIMARY KEY ( ref_person_location_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_person_location_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_location_type.ref_person_location_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_location_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_location_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_location_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_location_type.role_id IS 'Surrogate key from Role identifying the type of person (Child, Student, Staff, Parent, etc.).';

CREATE TABLE rs_ceds7_sc.ref_person_status_type ( 
	ref_person_status_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_person_status_type PRIMARY KEY ( ref_person_status_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_person_status_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_status_type.ref_person_status_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_status_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_status_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_status_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_personal_information_verification ( 
	ref_personal_information_verification_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_personal_inforrmation_verification_type PRIMARY KEY ( ref_personal_information_verification_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_personal_information_verification IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_personal_information_verification.ref_personal_information_verification_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_personal_information_verification.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_personal_information_verification.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_personal_information_verification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_pre_and_post_test_indicator ( 
	ref_pre_and_post_test_indicator_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_pre_and_post_test_indicator PRIMARY KEY ( ref_pre_and_post_test_indicator_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_pre_and_post_test_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pre_and_post_test_indicator.ref_pre_and_post_test_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_pre_and_post_test_indicator.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pre_and_post_test_indicator.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pre_and_post_test_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_pre_kindergarten_eligibility ( 
	ref_pre_kindergarten_eligibility_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_pre_kindergarten_eligibility PRIMARY KEY ( ref_pre_kindergarten_eligibility_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_pre_kindergarten_eligibility IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pre_kindergarten_eligibility.ref_pre_kindergarten_eligibility_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_pre_kindergarten_eligibility.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pre_kindergarten_eligibility.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pre_kindergarten_eligibility.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_present_attendance_category ( 
	ref_present_attendance_category_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_present_attendance_category PRIMARY KEY ( ref_present_attendance_category_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_present_attendance_category IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_present_attendance_category.ref_present_attendance_category_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_present_attendance_category.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_present_attendance_category.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_present_attendance_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_professional_education_job_classification ( 
	ref_professional_education_job_classification_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_professional_education_job_classification PRIMARY KEY ( ref_professional_education_job_classification_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_professional_education_job_classification IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_professional_education_job_classification.ref_professional_education_job_classification_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_professional_education_job_classification.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_professional_education_job_classification.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_professional_education_job_classification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_proficiency_status ( 
	ref_proficiency_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_proficiency_status PRIMARY KEY ( ref_proficiency_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_proficiency_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_proficiency_status.ref_proficiency_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_proficiency_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_proficiency_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_proficiency_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_profit_status ( 
	ref_profit_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_profit_status PRIMARY KEY ( ref_profit_status_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_profit_status.ref_profit_status_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_profit_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_profit_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_profit_status.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_profit_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_profit_status.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_program_exit_reason ( 
	ref_program_exit_reason_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_program_exit_reason PRIMARY KEY ( ref_program_exit_reason_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_program_exit_reason IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_exit_reason.ref_program_exit_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_exit_reason.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_exit_reason.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_exit_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_program_length_hours_type ( 
	ref_program_length_hours_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_program_length PRIMARY KEY ( ref_program_length_hours_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_program_length_hours_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_length_hours_type.ref_program_length_hours_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_length_hours_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_length_hours_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_length_hours_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_program_type ( 
	ref_program_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_program_type PRIMARY KEY ( ref_program_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_program_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_type.ref_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.
';

CREATE TABLE rs_ceds7_sc.ref_promotion_reason ( 
	ref_promotion_reason_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_promotion_reason PRIMARY KEY ( ref_promotion_reason_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_promotion_reason IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_promotion_reason.ref_promotion_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_promotion_reason.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_promotion_reason.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_promotion_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ps_enrollment_action ( 
	ref_ps_enrollment_action_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction   integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_enrollment_action PRIMARY KEY ( ref_ps_enrollment_action_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ps_enrollment_action IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_action.ref_ps_enrollment_action_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_action.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_action.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_action.ref_jurisdiction IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ps_enrollment_status ( 
	ref_ps_enrollment_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_enrollment_status_1 PRIMARY KEY ( ref_ps_enrollment_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ps_enrollment_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_status.ref_ps_enrollment_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ps_lep_type ( 
	ref_ps_lep_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_lep_type PRIMARY KEY ( ref_ps_lep_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ps_lep_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_lep_type.ref_ps_lep_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_lep_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_lep_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_lep_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_public_school_choice_status ( 
	ref_public_school_choice_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_public_school_choice_status PRIMARY KEY ( ref_public_school_choice_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_public_school_choice_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_public_school_choice_status.ref_public_school_choice_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_public_school_choice_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_public_school_choice_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_public_school_choice_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_purpose_of_monitoring_visit ( 
	ref_purpose_of_monitoring_visit_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_purpose_of_monitoring_visit PRIMARY KEY ( ref_purpose_of_monitoring_visit_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_purpose_of_monitoring_visit IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_purpose_of_monitoring_visit.ref_purpose_of_monitoring_visit_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_purpose_of_monitoring_visit.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_purpose_of_monitoring_visit.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_purpose_of_monitoring_visit.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_race ( 
	ref_race_id        integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_race PRIMARY KEY ( ref_race_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_race IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_race.ref_race_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_race.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_race.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_race.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_reason_delay_transition_conf ( 
	ref_reason_delay_transition_conf_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_reason_delay_transition_conf PRIMARY KEY ( ref_reason_delay_transition_conf_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_reason_delay_transition_conf IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_reason_delay_transition_conf.ref_reason_delay_transition_conf_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_reason_delay_transition_conf.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_reason_delay_transition_conf.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_reason_delay_transition_conf.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_referral_outcome ( 
	ref_referral_outcome_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_referral_outcome PRIMARY KEY ( ref_referral_outcome_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_referral_outcome IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_referral_outcome.ref_referral_outcome_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_referral_outcome.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_referral_outcome.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_referral_outcome.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_restructuring_action ( 
	ref_restructuring_action_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_restructuring_action PRIMARY KEY ( ref_restructuring_action_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_restructuring_action IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_restructuring_action.ref_restructuring_action_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_restructuring_action.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_restructuring_action.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_restructuring_action.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_role_status ( 
	ref_role_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	ref_role_status_type_id integer  ,
	CONSTRAINT pk_ref_role_status PRIMARY KEY ( ref_role_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_role_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_role_status.ref_role_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_role_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_role_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_role_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_role_status.ref_role_status_type_id IS 'List of role status types.';

CREATE TABLE rs_ceds7_sc.ref_sced_course_level ( 
	ref_sced_course_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_sced_course_level PRIMARY KEY ( ref_sced_course_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_sced_course_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_sced_course_level.ref_sced_course_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_sced_course_level.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_sced_course_level.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_sced_course_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_scheduled_well_child_screening ( 
	ref_scheduled_well_child_screening_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_scheduled_well_child_screening PRIMARY KEY ( ref_scheduled_well_child_screening_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_scheduled_well_child_screening IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_scheduled_well_child_screening.ref_scheduled_well_child_screening_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_scheduled_well_child_screening.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_scheduled_well_child_screening.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_scheduled_well_child_screening.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_school_improvement_funds ( 
	ref_school_improvement_funds_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_school_improvement_funds PRIMARY KEY ( ref_school_improvement_funds_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_school_improvement_funds IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_improvement_funds.ref_school_improvement_funds_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_improvement_funds.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_improvement_funds.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_improvement_funds.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_school_level ( 
	ref_school_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_school_level PRIMARY KEY ( ref_school_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_school_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_level.ref_school_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_level.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_level.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_score_metric_type ( 
	ref_score_metric_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_score_metric_type PRIMARY KEY ( ref_score_metric_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_score_metric_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_score_metric_type.ref_score_metric_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_score_metric_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_score_metric_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_score_metric_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_service_option ( 
	ref_service_option_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_service_option PRIMARY KEY ( ref_service_option_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_service_option IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_service_option.ref_service_option_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_service_option.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_service_option.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_service_option.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_session_type ( 
	ref_session_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_session_type PRIMARY KEY ( ref_session_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_session_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_session_type.ref_session_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_session_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_session_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_session_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_sig_intervention_type ( 
	ref_sig_intervention_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_sig_intervention_type PRIMARY KEY ( ref_sig_intervention_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_sig_intervention_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_sig_intervention_type.ref_sig_intervention_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_sig_intervention_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_sig_intervention_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_sig_intervention_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_space_use_type ( 
	ref_space_use_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_space_use_type PRIMARY KEY ( ref_space_use_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_space_use_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_space_use_type.ref_space_use_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_space_use_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_space_use_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_space_use_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_special_education_exit_reason ( 
	ref_special_education_exit_reason_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_special_education_exit_reason PRIMARY KEY ( ref_special_education_exit_reason_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_special_education_exit_reason IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_special_education_exit_reason.ref_special_education_exit_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_special_education_exit_reason.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_special_education_exit_reason.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_special_education_exit_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_staff_performance_level ( 
	ref_staff_performance_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_staff_performance_level PRIMARY KEY ( ref_staff_performance_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_staff_performance_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_staff_performance_level.ref_staff_performance_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_staff_performance_level.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_staff_performance_level.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_staff_performance_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_state ( 
	ref_state_id       integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_state PRIMARY KEY ( ref_state_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_state IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_state.ref_state_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_state.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_state.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_state.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_state_poverty_designation ( 
	ref_state_poverty_designation_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_state_poverty_designation PRIMARY KEY ( ref_state_poverty_designation_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_state_poverty_designation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_state_poverty_designation.ref_state_poverty_designation_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_state_poverty_designation.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_state_poverty_designation.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_state_poverty_designation.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_supervised_clinical_experience ( 
	ref_supervised_clinical_experience_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_supervised_clinical_experience PRIMARY KEY ( ref_supervised_clinical_experience_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_supervised_clinical_experience IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_supervised_clinical_experience.ref_supervised_clinical_experience_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_supervised_clinical_experience.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_supervised_clinical_experience.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_supervised_clinical_experience.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_teacher_education_exam_score_type ( 
	ref_teacher_education_exam_score_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_teacher_education_exam_score_type PRIMARY KEY ( ref_teacher_education_exam_score_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_teacher_education_exam_score_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_education_exam_score_type.ref_teacher_education_exam_score_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_education_exam_score_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_education_exam_score_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_education_exam_score_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_teacher_prep_completer_status ( 
	ref_teacher_prep_completer_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_teacher_prep_completer_status PRIMARY KEY ( ref_teacher_prep_completer_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_teacher_prep_completer_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_prep_completer_status.ref_teacher_prep_completer_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_prep_completer_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_prep_completer_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_prep_completer_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_teaching_assignment_role ( 
	ref_teaching_assignment_role_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_teaching_assignment_role PRIMARY KEY ( ref_teaching_assignment_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_teaching_assignment_role IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teaching_assignment_role.ref_teaching_assignment_role_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_teaching_assignment_role.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teaching_assignment_role.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teaching_assignment_role.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_teaching_credential_type ( 
	ref_teaching_credential_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_teaching_credential_type PRIMARY KEY ( ref_teaching_credential_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_teaching_credential_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teaching_credential_type.ref_teaching_credential_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_teaching_credential_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teaching_credential_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teaching_credential_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_technical_assistance_type ( 
	ref_technical_assistance_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_technical_assistance_type PRIMARY KEY ( ref_technical_assistance_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_technical_assistance_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_technical_assistance_type.ref_technical_assistance_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_technical_assistance_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_technical_assistance_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_technical_assistance_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_telephone_number_type ( 
	ref_telephone_number_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_telephone_number_type PRIMARY KEY ( ref_telephone_number_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_telephone_number_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_telephone_number_type.ref_telephone_number_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_telephone_number_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_telephone_number_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_telephone_number_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_text_complexity_system ( 
	ref_text_complexity_system_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_text_complexity_system PRIMARY KEY ( ref_text_complexity_system_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_text_complexity_system IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_text_complexity_system.ref_text_complexity_system_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_text_complexity_system.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_text_complexity_system.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_text_complexity_system.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_title_iii_accountability ( 
	ref_title_iii_accountability_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_title_iii_accountability PRIMARY KEY ( ref_title_iii_accountability_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_title_iii_accountability IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_iii_accountability.ref_title_iii_accountability_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_iii_accountability.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_iii_accountability.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_iii_accountability.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_title_iii_professional_development_type ( 
	ref_title_iii_professional_development_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_title_iii_professional_dev_type PRIMARY KEY ( ref_title_iii_professional_development_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_title_iii_professional_development_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_iii_professional_development_type.ref_title_iii_professional_development_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_iii_professional_development_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_iii_professional_development_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_iii_professional_development_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_title_i_instructional_services ( 
	ref_title_i_instructional_services_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_title_i_instructional_services PRIMARY KEY ( ref_title_i_instructional_services_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_title_i_instructional_services IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_instructional_services.ref_title_i_instructional_services_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_instructional_services.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_instructional_services.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_instructional_services.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_title_i_program_type ( 
	ref_title_i_program_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_title_i_program_type PRIMARY KEY ( ref_title_i_program_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_title_i_program_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_program_type.ref_title_i_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_program_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_program_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_program_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_transfer_out_indicator ( 
	ref_transfer_out_indicator_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_transfer_out_indicator PRIMARY KEY ( ref_transfer_out_indicator_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_transfer_out_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_transfer_out_indicator.ref_transfer_out_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_transfer_out_indicator.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_transfer_out_indicator.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_transfer_out_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_tribal_affiliation ( 
	ref_tribal_affiliation_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_tribal_affiliation PRIMARY KEY ( ref_tribal_affiliation_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_tribal_affiliation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_tribal_affiliation.ref_tribal_affiliation_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_tribal_affiliation.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_tribal_affiliation.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_tribal_affiliation.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_tuition_residency_type ( 
	ref_tuition_residency_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_tuition_residency_type PRIMARY KEY ( ref_tuition_residency_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_tuition_residency_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_tuition_residency_type.ref_tuition_residency_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_tuition_residency_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_tuition_residency_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_tuition_residency_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_us_citizenship_status ( 
	ref_us_citizenship_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_us_citizen_status PRIMARY KEY ( ref_us_citizenship_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_us_citizenship_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_us_citizenship_status.ref_us_citizenship_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_us_citizenship_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_us_citizenship_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_us_citizenship_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_vision_screening_status ( 
	ref_vision_screening_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_vision_screen PRIMARY KEY ( ref_vision_screening_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_vision_screening_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_vision_screening_status.ref_vision_screening_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_vision_screening_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_vision_screening_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_vision_screening_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_wage_verification ( 
	ref_wage_verification_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_wage_verification PRIMARY KEY ( ref_wage_verification_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_wage_verification IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_wage_verification.ref_wage_verification_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_wage_verification.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_wage_verification.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_wage_verification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_wf_program_participation ( 
	ref_wf_program_participation_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_wf_program_participation PRIMARY KEY ( ref_wf_program_participation_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_wf_program_participation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_wf_program_participation.ref_wf_program_participation_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_wf_program_participation.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_wf_program_participation.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_wf_program_participation.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.required_immunization ( 
	required_immunization_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_immunization_type_id integer  NOT NULL,
	CONSTRAINT pk_required_immunization PRIMARY KEY ( required_immunization_id ),
	CONSTRAINT ix_required_immunization UNIQUE ( organization_id, ref_immunization_type_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.required_immunization IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.required_immunization.required_immunization_id IS 'Surrogate key.';

COMMENT ON COLUMN rs_ceds7_sc.required_immunization.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.required_immunization.ref_immunization_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.role_attendance ( 
	role_attendance_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	number_of_days_in_attendance decimal(9,2)  ,
	number_of_days_absent decimal(9,2)  ,
	attendance_rate    decimal(5,4)  ,
	CONSTRAINT pk_role_attendance PRIMARY KEY ( role_attendance_id )
 );

COMMENT ON TABLE rs_ceds7_sc.role_attendance IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.role_attendance.role_attendance_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.role_attendance.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.role_attendance.number_of_days_in_attendance IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.role_attendance.number_of_days_absent IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.role_attendance.attendance_rate IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.role_status ( 
	role_status_id     integer  NOT NULL,
	status_start_date  date  NOT NULL,
	status_end_date    date  ,
	ref_role_status_id integer  ,
	organization_person_role_id integer  NOT NULL,
	CONSTRAINT pk_role_status PRIMARY KEY ( role_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.role_status IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.role_status.role_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.role_status.status_start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.role_status.status_end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.role_status.ref_role_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.role_status.organization_person_role_id IS 'Foreign key - Organization_Person_Role.';

CREATE TABLE rs_ceds7_sc.service_frequency ( 
	service_frequency_id integer  NOT NULL,
	service_plan_id    integer  NOT NULL,
	duration_in_minutes integer  ,
	frequency_length   integer  ,
	instances_per_cycle integer  ,
	ref_frequency_unit_id integer  ,
	CONSTRAINT pk_service_frequency PRIMARY KEY ( service_frequency_id )
 );

CREATE TABLE rs_ceds7_sc.service_provided ( 
	service_provided_id integer  NOT NULL,
	services_received_id integer  NOT NULL,
	ref_services_id    integer  ,
	ref_student_support_service_type_id integer  ,
	CONSTRAINT pk_service_provided PRIMARY KEY ( service_provided_id )
 );

CREATE TABLE rs_ceds7_sc.service_staff ( 
	service_staff_id   integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_special_education_staff_category_id integer  NOT NULL,
	CONSTRAINT pk_service_staff PRIMARY KEY ( service_staff_id ),
	CONSTRAINT ix_organization_person_role_ref_special_education_staff_category UNIQUE ( organization_person_role_id, ref_special_education_staff_category_id ) 
 );

CREATE TABLE rs_ceds7_sc.staff_credential ( 
	person_credential_id integer  NOT NULL,
	ref_teaching_credential_type_id integer  ,
	ref_teaching_credential_basis_id integer  ,
	ref_child_dev_associate_type_id integer  ,
	ref_paraprofessional_qualification_id integer  ,
	technology_skills_standards_met bool  ,
	diploma_or_credential_award_date varchar(7)  ,
	ref_program_sponsor_type_id integer  ,
	cte_instructor_industry_certification bool  ,
	cardiopulmonary_resuscitation_certification date  ,
	first_aid_certification date  ,
	CONSTRAINT pk_staff_credential PRIMARY KEY ( person_credential_id )
 );

COMMENT ON TABLE rs_ceds7_sc.staff_credential IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.staff_credential.person_credential_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.staff_credential.ref_teaching_credential_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_credential.ref_teaching_credential_basis_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_credential.ref_child_dev_associate_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_credential.ref_paraprofessional_qualification_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_credential.technology_skills_standards_met IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_credential.diploma_or_credential_award_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_credential.ref_program_sponsor_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_credential.cte_instructor_industry_certification IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.staff_evaluation ( 
	staff_evaluation_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	system             varchar(60)  ,
	scale              varchar(80)  ,
	score_or_rating    varchar(60)  ,
	outcome            varchar(80)  ,
	ref_staff_performance_level_id integer  ,
	CONSTRAINT pk_staff_evaluation PRIMARY KEY ( staff_evaluation_id )
 );

COMMENT ON TABLE rs_ceds7_sc.staff_evaluation IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.staff_evaluation.staff_evaluation_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.staff_evaluation.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.staff_evaluation.system IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_evaluation.scale IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_evaluation.score_or_rating IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_evaluation.outcome IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_evaluation.ref_staff_performance_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.staff_professional_development_activity ( 
	staff_professional_development_activity_id integer  NOT NULL,
	professional_development_requirement_id integer  NOT NULL,
	activity_title     varchar(60)  ,
	activity_identifier varchar(40)  ,
	activity_start_date date  ,
	activity_completion_date date  ,
	scholarship_status bool  ,
	ref_professional_development_financial_support_id integer  ,
	number_of_credits_earned decimal(10,2)  ,
	ref_course_credit_unit_id integer  ,
	professional_development_activity_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	professional_development_session_id integer  NOT NULL,
	CONSTRAINT pk_staff_professional_development_activity PRIMARY KEY ( staff_professional_development_activity_id )
 );

COMMENT ON TABLE rs_ceds7_sc.staff_professional_development_activity IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.staff_professional_development_activity.staff_professional_development_activity_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.staff_professional_development_activity.professional_development_requirement_id IS 'Foreign key - Professiona_Development.';

COMMENT ON COLUMN rs_ceds7_sc.staff_professional_development_activity.activity_title IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_professional_development_activity.activity_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_professional_development_activity.activity_start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_professional_development_activity.activity_completion_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_professional_development_activity.scholarship_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_professional_development_activity.ref_professional_development_financial_support_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_professional_development_activity.number_of_credits_earned IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_professional_development_activity.ref_course_credit_unit_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_professional_development_activity.professional_development_session_id IS 'Foreign key - Professional Development Session';

CREATE TABLE rs_ceds7_sc.teacher_education_credential_exam ( 
	teacher_education_credential_exam_id integer  NOT NULL,
	organization_person_role_id integer  ,
	ref_teacher_education_credential_exam_id integer  ,
	ref_teacher_education_exam_score_type_id integer  ,
	ref_teacher_education_test_company_id integer  ,
	CONSTRAINT pk_teacher_edu_credential_exam PRIMARY KEY ( teacher_education_credential_exam_id )
 );

COMMENT ON TABLE rs_ceds7_sc.teacher_education_credential_exam IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.teacher_education_credential_exam.teacher_education_credential_exam_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.teacher_education_credential_exam.organization_person_role_id IS 'Foreign key - Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.teacher_education_credential_exam.ref_teacher_education_credential_exam_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.teacher_education_credential_exam.ref_teacher_education_exam_score_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.teacher_education_credential_exam.ref_teacher_education_test_company_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.workforce_employment_quarterly_data ( 
	organization_person_role_id integer  NOT NULL,
	ref_employed_while_enrolled_id integer  ,
	ref_employed_after_exit_id integer  ,
	employed_in_multiple_jobs_count decimal(2,0)  ,
	military_enlistment_after_exit bool  ,
	CONSTRAINT pk_workforce_employment_quarterly_data PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.workforce_employment_quarterly_data IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.workforce_employment_quarterly_data.organization_person_role_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.workforce_employment_quarterly_data.ref_employed_while_enrolled_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.workforce_employment_quarterly_data.ref_employed_after_exit_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.workforce_employment_quarterly_data.employed_in_multiple_jobs_count IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.workforce_employment_quarterly_data.military_enlistment_after_exit IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.activity ( 
	organization_id      integer  NOT NULL,
	activity_description varchar(300)  ,
	CONSTRAINT pk_activity PRIMARY KEY ( organization_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.activity.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN rs_ceds7_sc.activity.activity_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ae_course ( 
	organization_id      integer  NOT NULL,
	ref_course_level_type_id integer  ,
	ref_career_cluster_id integer  ,
	CONSTRAINT pk_ae_course PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ae_course IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ae_course.organization_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ae_course.ref_course_level_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ae_course.ref_career_cluster_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ae_staff ( 
	organization_person_role_id integer  NOT NULL,
	ref_ae_staff_classification_id integer  ,
	ref_ae_staff_employment_status_id integer  ,
	years_of_prior_ae_teaching_experience decimal(4,2)  ,
	ref_ae_certification_type_id integer  ,
	CONSTRAINT pk_ae_staff PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ae_staff IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ae_staff.organization_person_role_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ae_staff.ref_ae_staff_classification_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ae_staff.ref_ae_staff_employment_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ae_staff.years_of_prior_ae_teaching_experience IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ae_staff.ref_ae_certification_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ae_student_employment ( 
	organization_person_role_id integer  NOT NULL,
	ref_employed_while_enrolled_id integer  ,
	ref_employed_after_exit_id integer  ,
	employment_naics_code char(6)  ,
	CONSTRAINT pk_ae_student_employment PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ae_student_employment IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ae_student_employment.organization_person_role_id IS 'Surrogate Key - Foreign key: Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.ae_student_employment.ref_employed_while_enrolled_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ae_student_employment.ref_employed_after_exit_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ae_student_employment.employment_naics_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_accommodation ( 
	assessment_accommodation_id integer  NOT NULL,
	other_description    varchar(30)  ,
	ref_accommodation_type_id integer  ,
	ref_assessment_accommodation_category_id integer  ,
	CONSTRAINT pk_assessment_accommodation PRIMARY KEY ( assessment_accommodation_id )
 );

CREATE TABLE rs_ceds7_sc.assessment_administration_organization ( 
	assessment_administration_organization_id integer  NOT NULL,
	assessment_administration_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	CONSTRAINT pk_assessment_administration_organization PRIMARY KEY ( assessment_administration_organization_id ),
	CONSTRAINT ix_assessment_administration_organization UNIQUE ( assessment_administration_id, organization_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_administration_organization IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_administration_organization.assessment_administration_organization_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_administration_organization.assessment_administration_id IS 'Foreign key - Assessment_Administration';

COMMENT ON COLUMN rs_ceds7_sc.assessment_administration_organization.organization_id IS 'Foreign key - Organization';

CREATE TABLE rs_ceds7_sc.assessment_asset ( 
	assessment_asset_id  integer  NOT NULL,
	version            varchar(30)  ,
	published_date       date  ,
	identifier           varchar(40)  ,
	ref_assessment_assest_identifier_type integer  ,
	name                 varchar(60)  ,
	ref_assessment_asset_type_id integer  ,
	owner              varchar(60)  ,
	ref_assessment_language_id integer  ,
	content_xml          text  ,
	content_mime_type    text  ,
	content_url          varchar(512)  ,
	learning_resource_id integer  ,
	CONSTRAINT pk_assessment_asset PRIMARY KEY ( assessment_asset_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_asset IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_asset.assessment_asset_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_asset.version IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_asset.published_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_asset.identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_asset.ref_assessment_assest_identifier_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_asset.name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_asset.ref_assessment_asset_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_asset.owner IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_asset.ref_assessment_language_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_asset.content_xml IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_asset.content_mime_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_asset.content_url IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_asset.learning_resource_id IS 'Foreign key - Learning_Resource.';

CREATE TABLE rs_ceds7_sc.assessment_form ( 
	assessment_form_id   integer  NOT NULL,
	assessment_id        integer  NOT NULL,
	form_number          varchar(30)  ,
	name                 varchar(40)  ,
	version            varchar(30)  ,
	published_date       date  ,
	accommodation_list   text  ,
	intended_administration_start_date date  ,
	intended_administration_end_date date  ,
	assessment_item_bank_identifier varchar(40)  ,
	assessment_item_bank_name varchar(60)  ,
	platforms_supported  text  ,
	ref_assessment_language_id integer  ,
	assessment_secure_indicator bool  ,
	learning_resource_id integer  ,
	assessment_form_adaptive_indicator bool  ,
	assessment_form_algorithm_identifier varchar(40)  ,
	assessment_form_algorithm_version varchar(40)  ,
	assessment_form_guid varchar(40)  ,
	CONSTRAINT pk_assessment_form PRIMARY KEY ( assessment_form_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_form IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.assessment_form_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.assessment_id IS 'Foreign key - Assessment';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.form_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.version IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.published_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.accommodation_list IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.intended_administration_start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.intended_administration_end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.assessment_item_bank_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.assessment_item_bank_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.platforms_supported IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.ref_assessment_language_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.assessment_secure_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.learning_resource_id IS 'Foreign key - Learning_Resouce';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.assessment_form_adaptive_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.assessment_form_algorithm_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.assessment_form_algorithm_version IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form.assessment_form_guid IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_form_assessment_form_section ( 
	assessment_form_assessment_form_section_id integer  NOT NULL,
	assessment_form_id   integer  NOT NULL,
	assessment_form_section_id integer  NOT NULL,
	sequence_number      integer  ,
	CONSTRAINT pk_assessment_form_assessment_form_section PRIMARY KEY ( assessment_form_assessment_form_section_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_form_assessment_form_section IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_assessment_form_section.assessment_form_assessment_form_section_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_assessment_form_section.assessment_form_id IS 'Foreign key - Assessment_Form.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_assessment_form_section.assessment_form_section_id IS 'Foreign key - Assessment_Form_Section';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_assessment_form_section.sequence_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_form_section_assessment_asset ( 
	assessment_form_section_assessment_asset_id integer  NOT NULL,
	assessment_form_section_id integer  NOT NULL,
	assessment_asset_id  integer  NOT NULL,
	CONSTRAINT pk_assessment_form_section_assessment_asset_1 PRIMARY KEY ( assessment_form_section_assessment_asset_id ),
	CONSTRAINT ix_assessment_form_section_assessment_asset UNIQUE ( assessment_form_section_id, assessment_asset_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_form_section_assessment_asset IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section_assessment_asset.assessment_form_section_assessment_asset_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section_assessment_asset.assessment_form_section_id IS 'Foreign key - Assessment_Form_Section';

COMMENT ON COLUMN rs_ceds7_sc.assessment_form_section_assessment_asset.assessment_asset_id IS 'Foreign key - Assessment_Asset';

CREATE TABLE rs_ceds7_sc.assessment_item ( 
	assessment_item_id   integer  NOT NULL,
	identifier           varchar(40)  ,
	assessment_item_bank_identifier varchar(40)  ,
	assessment_item_bank_name varchar(60)  ,
	ref_assessment_item_type_id integer  ,
	body_text            text  ,
	stimulus             text  ,
	stem                 text  ,
	adaptive_indicator   bool  ,
	maximum_score        varchar(300)  ,
	minimum_score        varchar(300)  ,
	distractor_analysis  varchar(100)  ,
	allotted_time        time  ,
	ref_naep_math_complexity_level_id integer  ,
	ref_naep_aspects_of_reading_id integer  ,
	difficulty           decimal(5,2)  ,
	ref_text_complexity_system_id integer  ,
	text_complexity_value varchar(30)  ,
	linking_item_indicator bool  ,
	release_status       bool  ,
	rubric_id            integer  ,
	learning_resource_id integer  ,
	assessment_form_section_item_field_test_indicator bool  ,
	CONSTRAINT pk_assessment_item PRIMARY KEY ( assessment_item_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_item IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.assessment_item_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.assessment_item_bank_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.assessment_item_bank_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.ref_assessment_item_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.body_text IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.stimulus IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.stem IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.adaptive_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.maximum_score IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.minimum_score IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.distractor_analysis IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.allotted_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.ref_naep_math_complexity_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.ref_naep_aspects_of_reading_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.difficulty IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.ref_text_complexity_system_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.text_complexity_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.linking_item_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.release_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.rubric_id IS 'Foreign key - Assessment_Item_Rubric';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.learning_resource_id IS 'Foreign key - Learning_Resource';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item.assessment_form_section_item_field_test_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_item_apip_description ( 
	assessment_item_id   integer  NOT NULL,
	ref_hazard_type_id   integer  ,
	ref_support_tool_type_id integer  ,
	cognitive_guidance_activate_by_default_indicator bool  ,
	cognitive_guidance_assigned_support_indicator bool  ,
	scaffolding_assigned_support_indicator bool  ,
	scaffolding_activate_by_default_indicator bool  ,
	chunking_assigned_support_indicator bool  ,
	chunking_activate_by_default_indicator bool  ,
	keyword_emphasis_assigned_support_indicator bool  ,
	keyword_emphasis_activate_by_default_indicator bool  ,
	reduced_answers_assigned_support_indicator bool  ,
	reduced_answers_activate_by_default_indicator bool  ,
	negatives_removed_assigned_support_indicator bool  ,
	negatives_removed_activate_by_default_indicator bool  ,
	ref_keyword_translation_language_id integer  ,
	keyword_translations_assigned_support_indicator bool  ,
	keyword_translations_activate_by_default_indicator bool  ,
	braille_indicator    bool  ,
	text_only_indicator  bool  ,
	text_only_on_demand_indicator bool  ,
	text_graphics_indicator bool  ,
	graphics_only_indicator bool  ,
	non_visual_indicator bool  ,
	asl_indicator        bool  ,
	asl_on_demand_indicator bool  ,
	signed_english_indicator bool  ,
	signed_english_on_demand_indicator bool  ,
	CONSTRAINT pk_assessment_item_apip_description PRIMARY KEY ( assessment_item_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_apip_description.assessment_item_id IS 'Surrogate key from Assessment_Item';

CREATE TABLE rs_ceds7_sc.assessment_item_possible_response ( 
	assessment_item_possible_response_id integer  NOT NULL,
	assessment_item_id   integer  NOT NULL,
	possible_response_option text  ,
	value              varchar(300)  ,
	correct_indicator    bool  ,
	feedback_message     varchar(300)  ,
	sequence_number      integer  ,
	CONSTRAINT pk_assessment_item_possible_response PRIMARY KEY ( assessment_item_possible_response_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_item_possible_response IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_possible_response.assessment_item_possible_response_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_possible_response.assessment_item_id IS 'Foreign key - Assessment_Item.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_possible_response.possible_response_option IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_possible_response.value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_possible_response.correct_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_possible_response.feedback_message IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_possible_response.sequence_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_item_response_theory ( 
	assessment_item_id   integer  NOT NULL,
	parameter_a          integer  ,
	parameter_b          integer  ,
	ref_item_response_theory_difficulty_category_id integer  ,
	parameter_c          integer  ,
	parameter_d1         integer  ,
	parameter_d2         integer  ,
	parameter_d3         integer  ,
	parameter_d4         integer  ,
	parameter_d5         integer  ,
	parameter_d6         integer  ,
	point_biserial_correlation_value integer  ,
	dif_value            integer  ,
	kappa_value          integer  ,
	ref_item_response_theory_kappa_algorithm_id integer  ,
	CONSTRAINT pk_assessment_item_response_theory PRIMARY KEY ( assessment_item_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.assessment_item_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.parameter_a IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.parameter_b IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.ref_item_response_theory_difficulty_category_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.parameter_c IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.parameter_d1 IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.parameter_d2 IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.parameter_d3 IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.parameter_d4 IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.parameter_d5 IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.parameter_d6 IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.point_biserial_correlation_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.dif_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.kappa_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_item_response_theory.ref_item_response_theory_kappa_algorithm_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_language ( 
	assessment_language_id integer  NOT NULL,
	assessment_id        integer  NOT NULL,
	ref_language_id      integer  NOT NULL,
	CONSTRAINT pk_assessment_language_1 PRIMARY KEY ( assessment_language_id ),
	CONSTRAINT ix_assessment_language UNIQUE ( assessment_id, ref_language_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_language IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_language.assessment_language_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_language.assessment_id IS 'Foreign key - Assessment';

COMMENT ON COLUMN rs_ceds7_sc.assessment_language.ref_language_id IS 'Foreign key - Ref_Language';

CREATE TABLE rs_ceds7_sc.assessment_need_apip_content ( 
	assessment_need_apip_content_id integer  NOT NULL,
	assessment_personal_needs_profile_content_id integer  NOT NULL,
	item_translation_display_language_type_id integer  ,
	keyword_translation_language_type_id integer  ,
	ref_assessment_need_signing_type_id integer  ,
	ref_assessment_need_alternative_representation_type_id integer  ,
	ref_assessment_need_spoken_source_preference_type_id integer  ,
	read_at_start_preference_indicator bool  ,
	ref_assessment_need_user_spoken_preference_type_id integer  ,
	assessment_need_directions_only_indicator bool  ,
	CONSTRAINT pk_assessment_need_apip_content PRIMARY KEY ( assessment_need_apip_content_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_need_apip_content IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_content.assessment_need_apip_content_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_content.assessment_personal_needs_profile_content_id IS 'Foreign key - Assessment_Personal_Needs_Profile_Content';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_content.item_translation_display_language_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_content.keyword_translation_language_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_content.ref_assessment_need_signing_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_content.ref_assessment_need_alternative_representation_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_content.ref_assessment_need_spoken_source_preference_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_content.read_at_start_preference_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_content.ref_assessment_need_user_spoken_preference_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_content.assessment_need_directions_only_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_need_apip_display ( 
	assessment_need_apip_display_id integer  NOT NULL,
	assessment_personal_needs_profile_display_id integer  NOT NULL,
	masking_assigned_support_indicator bool  ,
	masking_activate_by_default_indicator bool  ,
	ref_assessment_need_masking_type_id integer  ,
	encouragement_assigned_support_indicator bool  ,
	encouragement_activate_by_default_indicator bool  ,
	encouragement_text_messaging_string varchar(4000)  ,
	encouragement_sound_file_url varchar(512)  ,
	CONSTRAINT pk_assessment_need_apip_display PRIMARY KEY ( assessment_need_apip_display_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_need_apip_display IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_display.assessment_need_apip_display_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_display.assessment_personal_needs_profile_display_id IS 'Foreign key - Assessment_Personal_Needs_Profile_Display';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_display.masking_assigned_support_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_display.masking_activate_by_default_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_display.ref_assessment_need_masking_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_display.encouragement_assigned_support_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_display.encouragement_activate_by_default_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_display.encouragement_text_messaging_string IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_need_apip_display.encouragement_sound_file_url IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_participant_session_accommodation ( 
	assessment_participant_session_accommodation_id integer  NOT NULL,
	assessment_participant_session_id integer  NOT NULL,
	assessment_accommodation_id integer  NOT NULL,
	CONSTRAINT pk_assessment_participant_session_accomodation PRIMARY KEY ( assessment_participant_session_accommodation_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_participant_session_accommodation IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session_accommodation.assessment_participant_session_accommodation_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_participant_session_accommodation.assessment_participant_session_id IS 'Foreign key - Assessment_Participant_Session';

CREATE TABLE rs_ceds7_sc.assessment_personal_need_language_learner ( 
	assessment_personal_need_language_learner_id integer  NOT NULL,
	assessment_needs_profile_content_id integer  NOT NULL,
	assigned_support     bool  ,
	activate_by_default  bool  ,
	ref_assessment_needs_profile_content_language_learner_type_id integer  NOT NULL,
	CONSTRAINT pk_assessment_needs_profile_content_language_learner PRIMARY KEY ( assessment_personal_need_language_learner_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_need_language_learner.assessment_personal_need_language_learner_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_need_language_learner.assessment_needs_profile_content_id IS 'Foreign key - Assessment_Needs_Profile_Content';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_need_language_learner.assigned_support IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_need_language_learner.activate_by_default IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_personal_need_language_learner.ref_assessment_needs_profile_content_language_learner_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.assessment_registration_accommodation ( 
	assessment_registration_accommodation_id integer  NOT NULL,
	assessment_registration_id integer  NOT NULL,
	assessment_accommodation_id integer  NOT NULL,
	CONSTRAINT pk_assessment_registration_accommodation PRIMARY KEY ( assessment_registration_accommodation_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_registration_accommodation IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration_accommodation.assessment_registration_accommodation_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_registration_accommodation.assessment_registration_id IS 'Foreign key - Assessment_Registration';

CREATE TABLE rs_ceds7_sc.assessment_result_performance_level ( 
	assessment_result_performance_level_id integer  NOT NULL,
	assessment_result_id integer  NOT NULL,
	assessment_performance_level_id integer  NOT NULL,
	CONSTRAINT pk_assessment_result_performance_level PRIMARY KEY ( assessment_result_performance_level_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.assessment_result_performance_level.assessment_result_id IS 'Foreign key to Assessment_Result.  [Related CEDS Elements: Developmental Evaluation Finding (000315), Early Learning Child Developmental Screening Status (000314)]';

COMMENT ON COLUMN rs_ceds7_sc.assessment_result_performance_level.assessment_performance_level_id IS 'Foreign key to Assessment_Performance_Level.  [Related CEDS Elements: Developmental Evaluation Finding (000315), Early Learning Child Developmental Screening Status (000314)]';

CREATE TABLE rs_ceds7_sc.assessment_session ( 
	assessment_session_id integer  NOT NULL,
	assessment_administration_id integer  ,
	scheduled_start_date_time date  ,
	scheduled_end_date_time date  ,
	actual_start_date_time date  ,
	actual_end_date_time date  ,
	allotted_time        time  ,
	ref_assessment_session_type_id integer  ,
	security_issue       varchar(300)  ,
	ref_assessment_session_special_circumstance_type_id integer  ,
	special_event_description varchar(60)  ,
	location           varchar(45)  ,
	organization_id      integer  ,
	lea_organization_id  integer  ,
	school_organization_id integer  ,
	CONSTRAINT pk_assessment_session PRIMARY KEY ( assessment_session_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_session IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.assessment_session_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.assessment_administration_id IS 'Foreign key - Assessment_Administration.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.scheduled_start_date_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.scheduled_end_date_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.actual_start_date_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.actual_end_date_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.allotted_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.ref_assessment_session_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.security_issue IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.ref_assessment_session_special_circumstance_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.special_event_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.location IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.lea_organization_id IS 'Foreign key - Organization : Local Education Agency';

COMMENT ON COLUMN rs_ceds7_sc.assessment_session.school_organization_id IS 'Foreign key - Organization : School';

CREATE TABLE rs_ceds7_sc.assessment_subtest ( 
	assessment_subtest_id integer  NOT NULL,
	identifier           varchar(40)  ,
	ref_assessment_subtest_identifier_type_id integer  ,
	title                varchar(60)  ,
	version            varchar(30)  ,
	published_date       date  ,
	abbreviation         varchar(30)  ,
	ref_score_metric_type_id integer  ,
	minimum_value        varchar(30)  ,
	maximum_value        varchar(30)  ,
	optimal_value        varchar(30)  ,
	tier                 integer  ,
	container_only       varchar(30)  ,
	ref_assessment_purpose_id integer  ,
	description          varchar(60)  ,
	rules                text  ,
	ref_content_standard_type_id integer  ,
	ref_academic_subject_id integer  ,
	child_of_assessment_subtest_id integer  ,
	assessment_form_id   integer  ,
	CONSTRAINT xpk_assessment_sub_test PRIMARY KEY ( assessment_subtest_id )
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_subtest IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.assessment_subtest_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.ref_assessment_subtest_identifier_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.title IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.version IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.published_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.abbreviation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.ref_score_metric_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.minimum_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.maximum_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.optimal_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.tier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.container_only IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.ref_assessment_purpose_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.rules IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.ref_content_standard_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.ref_academic_subject_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.child_of_assessment_subtest_id IS 'Foreign key - Assessment_Subtest ';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest.assessment_form_id IS 'Foreign key - Assessment_Form';

CREATE TABLE rs_ceds7_sc.assessment_subtest_competency_framework_item ( 
	assessment_sub_test_competency_framework_item_id integer  NOT NULL,
	assessment_subtest_id integer  NOT NULL,
	competency_framework_item_id integer  NOT NULL,
	CONSTRAINT pk_assessment_subtest_competency_framework_item PRIMARY KEY ( assessment_sub_test_competency_framework_item_id ),
	CONSTRAINT ix_assessment_subtest_competency_framework_item UNIQUE ( assessment_subtest_id, competency_framework_item_id ) 
 );

CREATE TABLE rs_ceds7_sc.assessment_subtest_levels_for_which_designed ( 
	assessment_subtest_levels_for_which_designed_id integer  NOT NULL,
	assessment_sub_test_id integer  NOT NULL,
	ref_grade_id         integer  NOT NULL,
	CONSTRAINT pk_assessment_subtest_levels_for_which_designed PRIMARY KEY ( assessment_subtest_levels_for_which_designed_id ),
	CONSTRAINT ix_assessment_subtest_levels_for_which_designed UNIQUE ( assessment_sub_test_id, ref_grade_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.assessment_subtest_levels_for_which_designed IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest_levels_for_which_designed.assessment_subtest_levels_for_which_designed_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest_levels_for_which_designed.assessment_sub_test_id IS 'Foreign key - Assessment_Subtest';

COMMENT ON COLUMN rs_ceds7_sc.assessment_subtest_levels_for_which_designed.ref_grade_id IS 'Foreign key - Ref_Grade_Level';

CREATE TABLE rs_ceds7_sc.authorization ( 
	authorization_id     integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	application_id       integer  ,
	application_role_name varchar(60)  NOT NULL,
	start_date           date  ,
	end_date             date  ,
	CONSTRAINT pk_authorization PRIMARY KEY ( authorization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.authorization IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.authorization.authorization_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.authorization.organization_person_role_id IS 'Foreign key - Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.authorization.application_id IS 'Foreign key - Application';

COMMENT ON COLUMN rs_ceds7_sc.authorization.application_role_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.authorization.start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.authorization.end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.competency_framework_item ( 
	competency_framework_item_id integer  NOT NULL,
	identifier           varchar(40)  ,
	code                 varchar(30)  ,
	url                  varchar(512)  ,
	type               varchar(60)  ,
	statement          text  ,
	version            text  ,
	typical_age_range    varchar(20)  ,
	ref_language_id      integer  ,
	text_complexity_system varchar(30)  ,
	text_complexity_minimum_value decimal(18,4)  ,
	text_complexity_maximum_value decimal(18,4)  ,
	ref_blooms_taxonomy_domain_id integer  ,
	ref_multiple_intelligence_type_id integer  ,
	concept_term         varchar(30)  ,
	concept_keyword      varchar(300)  ,
	license              varchar(300)  ,
	notes                text  ,
	competency_framework_item_parent_id varchar(40)  ,
	competency_framework_item_parent_code varchar(30)  ,
	competency_framework_item_parent_url varchar(512)  ,
	child_of_competency_framework_item integer  ,
	competency_framework_id integer  NOT NULL,
	current_version_indicator bool  ,
	previous_version_identifier varchar(40)  ,
	valid_start_date     date  ,
	valid_end_date       date  ,
	node_name            varchar(30)  ,
	ref_competency_framework_item_node_accessibility_profile_id integer  ,
	ref_competency_framework_item_testability_type_id integer  ,
	competency_framework_item_sequence varchar(60)  ,
	type_url             varchar(512)  ,
	CONSTRAINT xpk_competency_framework_item PRIMARY KEY ( competency_framework_item_id )
 );

CREATE TABLE rs_ceds7_sc.competency_framework_item_education_level ( 
	competency_framework_item_education_level_id integer  NOT NULL,
	competency_framework_item_id integer  NOT NULL,
	ref_education_level_id integer  NOT NULL,
	CONSTRAINT pk_competency_framework_item_education_level PRIMARY KEY ( competency_framework_item_education_level_id ),
	CONSTRAINT ix_competency_framework_item_ref_education_level UNIQUE ( competency_framework_item_id, ref_education_level_id ) 
 );

CREATE TABLE rs_ceds7_sc.competency_set ( 
	competency_set_id    integer  NOT NULL,
	child_of_competency_set integer  ,
	ref_completion_criteria_id integer  ,
	completion_criteria_threshold integer  ,
	CONSTRAINT pk_competency_set PRIMARY KEY ( competency_set_id )
 );

COMMENT ON TABLE rs_ceds7_sc.competency_set IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.competency_set.competency_set_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.competency_set.child_of_competency_set IS 'Foreign key - Compentency_Set (this table)';

COMMENT ON COLUMN rs_ceds7_sc.competency_set.ref_completion_criteria_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.competency_set.completion_criteria_threshold IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.course ( 
	organization_id      integer  NOT NULL,
	description          varchar(60)  ,
	subject_abbreviation varchar(50)  ,
	sced_sequence_of_course varchar(50)  ,
	instructional_minutes integer  ,
	ref_course_level_characteristics_id integer  ,
	ref_course_credit_unit_id integer  ,
	credit_value         decimal(9,2)  ,
	ref_instruction_language integer  ,
	certification_description varchar(300)  ,
	ref_course_applicable_education_level_id integer  ,
	repeatability_maximum_number integer  ,
	CONSTRAINT pk_course PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.course IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.course.organization_id IS 'Surrogate key from Organization.';

COMMENT ON COLUMN rs_ceds7_sc.course.description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course.subject_abbreviation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course.sced_sequence_of_course IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course.instructional_minutes IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course.ref_course_level_characteristics_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course.ref_course_credit_unit_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course.credit_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course.ref_instruction_language IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course.certification_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course.ref_course_applicable_education_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.course_section_assessment_reporting ( 
	course_section_assessment_reporting_id integer  NOT NULL,
	organization_id      integer  ,
	ref_course_section_assessment_reporting_method_id integer  ,
	CONSTRAINT pk_course_section_assessment_reporting PRIMARY KEY ( course_section_assessment_reporting_id )
 );

COMMENT ON TABLE rs_ceds7_sc.course_section_assessment_reporting IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.course_section_assessment_reporting.course_section_assessment_reporting_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.course_section_assessment_reporting.organization_id IS 'Surrogate key from Course_Section.';

COMMENT ON COLUMN rs_ceds7_sc.course_section_assessment_reporting.ref_course_section_assessment_reporting_method_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.course_section_schedule ( 
	course_section_schedule_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	class_meeting_days   varchar(60)  ,
	class_beginning_time time  ,
	class_ending_time    time  ,
	class_period         varchar(30)  ,
	time_day_identifier  varchar(40)  ,
	CONSTRAINT pk_course_section_schedule PRIMARY KEY ( course_section_schedule_id )
 );

COMMENT ON TABLE rs_ceds7_sc.course_section_schedule IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.course_section_schedule.course_section_schedule_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.course_section_schedule.organization_id IS 'Surrogate key from Course_Section.';

COMMENT ON COLUMN rs_ceds7_sc.course_section_schedule.class_meeting_days IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course_section_schedule.class_beginning_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course_section_schedule.class_ending_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course_section_schedule.class_period IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.course_section_schedule.time_day_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.credential_award ( 
	credential_award_id  integer  NOT NULL,
	credential_id        integer  NOT NULL,
	organization_id      integer  NOT NULL,
	person_id            integer  NOT NULL,
	advanced_standing_description text  ,
	advanced_standing_url varchar(512)  ,
	approver_name        varchar(300)  ,
	completion_date      date  ,
	end_date             date  ,
	evidence_url         varchar(512)  ,
	revoked_date         date  ,
	revoked_indicator    bool  ,
	revoked_reason       text  ,
	start_date           date  ,
	CONSTRAINT pk_credential_award PRIMARY KEY ( credential_award_id )
 );

CREATE TABLE rs_ceds7_sc.credential_award_evidence ( 
	credential_award_evidence_id integer  NOT NULL,
	credential_award_id  integer  NOT NULL,
	statement          varchar(300)  ,
	assessment_result_id integer  ,
	CONSTRAINT pk_credential_award_evidence PRIMARY KEY ( credential_award_evidence_id )
 );

CREATE TABLE rs_ceds7_sc.credential_creator ( 
	organization_id      integer  NOT NULL,
	ref_ctdl_organization_type_id integer  ,
	CONSTRAINT pk_credential_creator PRIMARY KEY ( organization_id )
 );

CREATE TABLE rs_ceds7_sc.credential_criteria ( 
	credential_criteria_id integer  NOT NULL,
	credential_id        integer  NOT NULL,
	competency_set_id    integer  ,
	criteria             varchar(300)  ,
	criteria_url         varchar(512)  ,
	estimated_duration   char(5)  ,
	maximum_duration     char(5)  ,
	minimum_age          integer  ,
	minimum_duration     char(5)  ,
	ref_credential_assessment_method_type_id integer  ,
	CONSTRAINT pk_credential_criteria PRIMARY KEY ( credential_criteria_id )
 );

CREATE TABLE rs_ceds7_sc.credential_identifier ( 
	credential_identifier_id integer  NOT NULL,
	credential_id        integer  NOT NULL,
	identifier           varchar(512)  ,
	ref_credential_identifier_system_id integer  ,
	CONSTRAINT pk_credential_identifier PRIMARY KEY ( credential_identifier_id )
 );

CREATE TABLE rs_ceds7_sc.credential_issuer_credential ( 
	credential_issuer_credential_id integer  NOT NULL,
	credential_id        integer  NOT NULL,
	organization_id      integer  NOT NULL,
	CONSTRAINT pk_credential_issuer_credential PRIMARY KEY ( credential_issuer_credential_id ),
	CONSTRAINT ix_credential_credential_issuer UNIQUE ( credential_id, organization_id ) 
 );

CREATE TABLE rs_ceds7_sc.cte_student_academic_record ( 
	organization_person_role_id integer  NOT NULL,
	credits_attempted_cumulative decimal(9,2)  ,
	credits_earned_cumulative decimal(9,2)  ,
	ref_professional_technical_credential_type_id integer  ,
	diploma_or_credential_award_date char(7)  ,
	CONSTRAINT pk_cte_student_academic_record PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.cte_student_academic_record IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.cte_student_academic_record.organization_person_role_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.cte_student_academic_record.credits_attempted_cumulative IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_student_academic_record.credits_earned_cumulative IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_student_academic_record.ref_professional_technical_credential_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.cte_student_academic_record.diploma_or_credential_award_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.early_childhood_program_type_offered ( 
	early_childhood_program_type_offered_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_early_childhood_program_enrollment_type_id integer  NOT NULL,
	inclusive_setting_indicator bool  ,
	ref_community_based_type_id integer  ,
	CONSTRAINT pk_early_childhood_program_type_offered PRIMARY KEY ( early_childhood_program_type_offered_id ),
	CONSTRAINT ix_early_childhood_program_type_offered UNIQUE ( organization_id, ref_early_childhood_program_enrollment_type_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.early_childhood_program_type_offered IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.early_childhood_program_type_offered.early_childhood_program_type_offered_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.early_childhood_program_type_offered.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.early_childhood_program_type_offered.ref_early_childhood_program_enrollment_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.early_childhood_program_type_offered.inclusive_setting_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.early_childhood_program_type_offered.ref_community_based_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_child_developmental_assessment ( 
	person_id            integer  NOT NULL,
	ref_child_developmental_screening_status_id integer  ,
	ref_developmental_evaluation_finding_id integer  ,
	CONSTRAINT pk_el_child_developmental_assessment PRIMARY KEY ( person_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_child_developmental_assessment.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_developmental_assessment.ref_child_developmental_screening_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_developmental_assessment.ref_developmental_evaluation_finding_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_child_individualized_program ( 
	person_id            integer  NOT NULL,
	ref_idea_iep_status_id integer  ,
	individualized_program_id integer  ,
	ref_idea_part_c_eligibility_category_id integer  ,
	CONSTRAINT pk_el_child_individualized_program PRIMARY KEY ( person_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_child_individualized_program.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_individualized_program.ref_idea_iep_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_individualized_program.individualized_program_id IS 'Foreign key - Individualized_Program';

COMMENT ON COLUMN rs_ceds7_sc.el_child_individualized_program.ref_idea_part_c_eligibility_category_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_child_program_eligibility ( 
	organization_person_role_id integer  NOT NULL,
	ref_el_program_eligibility_status_id integer  ,
	status_date          date  ,
	expiration_date      date  ,
	CONSTRAINT pk_el_child_program_eligibility PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_child_program_eligibility.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.el_child_program_eligibility.ref_el_program_eligibility_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_program_eligibility.status_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_program_eligibility.expiration_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_child_services_application ( 
	organization_person_role_id integer  NOT NULL,
	el_application_identifier varchar(40)  ,
	application_date     date  ,
	el_enrollment_application_document_identifier varchar(40)  ,
	el_enrollment_application_document_name varchar(60)  ,
	el_enrollment_application_document_type varchar(100)  ,
	el_application_required_document bool  ,
	el_enrollment_application_verification_date date  ,
	el_enrollment_application_verification_reason_type varchar(100)  ,
	site_preference_rank varchar(300)  ,
	CONSTRAINT pk_el_child_services_application PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_child_services_application.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.el_child_services_application.el_application_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_services_application.application_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_services_application.el_enrollment_application_document_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_services_application.el_enrollment_application_document_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_services_application.el_enrollment_application_document_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_services_application.el_application_required_document IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_services_application.el_enrollment_application_verification_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_services_application.el_enrollment_application_verification_reason_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_child_services_application.site_preference_rank IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_class_section ( 
	organization_id      integer  NOT NULL,
	ref_service_option_id integer  ,
	hours_available_per_day decimal(4,2)  ,
	days_available_per_week integer  ,
	ref_environment_setting_id integer  ,
	el_program_annual_operating_weeks integer  ,
	language_translation_policy bool  ,
	group_size           integer  ,
	CONSTRAINT pk_el_class_section PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.el_class_section IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section.ref_service_option_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section.hours_available_per_day IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section.days_available_per_week IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section.ref_environment_setting_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section.el_program_annual_operating_weeks IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section.language_translation_policy IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_class_section.group_size IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

INSERT INTO rs_ceds7_sc.ref_grade_level_type( Ref_Grade_Level_Type_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 1, 'Entry Grade Level', '000100', null, null, null ); 
INSERT INTO rs_ceds7_sc.ref_grade_level_type( Ref_Grade_Level_Type_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 2, 'Grade Level When Course Taken', '000125', null, null, null ); 
INSERT INTO rs_ceds7_sc.ref_grade_level_type( Ref_Grade_Level_Type_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 3, 'Grade Level When Assessed', '000126', null, null, null ); 
INSERT INTO rs_ceds7_sc.ref_grade_level_type( Ref_Grade_Level_Type_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 4, 'Grades Offered', '000131', null, null, null ); 
INSERT INTO rs_ceds7_sc.ref_grade_level_type( Ref_Grade_Level_Type_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 5, 'Assessment Level for Which Designed', '000177', null, null, null ); 
INSERT INTO rs_ceds7_sc.ref_grade_level_type( Ref_Grade_Level_Type_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6, 'Assessment Registration Grade Level To Be Assessed', '001057', null, null, null ); 
INSERT INTO rs_ceds7_sc.ref_grade_level_type( Ref_Grade_Level_Type_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7, 'Exit Grade Level', '001210', null, null, null ); 

