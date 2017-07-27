CREATE TABLE rs_ceds7_sc.el_enrollment ( 
	organization_person_role_id integer  NOT NULL,
	application_date     date  ,
	enrollment_date      date  ,
	ref_idea_environment_el_id integer  ,
	number_of_days_in_attendance decimal(8,2)  ,
	ref_food_service_participation_id integer  ,
	ref_service_option_id integer  ,
	el_class_section_id  integer  ,
	ref_el_federal_funding_type_id integer  ,
	CONSTRAINT xpk_ec_enrollment PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.el_enrollment IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.el_enrollment.organization_person_role_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.el_enrollment.application_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_enrollment.enrollment_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_enrollment.ref_idea_environment_el_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_enrollment.number_of_days_in_attendance IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_enrollment.ref_food_service_participation_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_enrollment.ref_service_option_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_enrollment.el_class_section_id IS 'Foreign key - EL_Class_Section.';

COMMENT ON COLUMN rs_ceds7_sc.el_enrollment.ref_el_federal_funding_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_facility_licensing ( 
	el_facility_licensing_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_el_facility_licensing_status_id integer  ,
	state_licensed_facility_capacity integer  ,
	initial_licensing_date date  ,
	continuing_license_date date  ,
	ref_license_exempt_id integer  ,
	CONSTRAINT pk_el_facility_licensing PRIMARY KEY ( el_facility_licensing_id )
 );

COMMENT ON TABLE rs_ceds7_sc.el_facility_licensing IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.el_facility_licensing.el_facility_licensing_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.el_facility_licensing.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN rs_ceds7_sc.el_facility_licensing.ref_el_facility_licensing_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_facility_licensing.state_licensed_facility_capacity IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_facility_licensing.initial_licensing_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_facility_licensing.continuing_license_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_facility_licensing.ref_license_exempt_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_organization_availability ( 
	organization_id      integer  NOT NULL,
	days_available_per_week integer  ,
	hours_available_per_day decimal(5,2)  ,
	youngest_age_served  integer  ,
	oldest_age_served    integer  ,
	age_unit             varchar(10)  ,
	ref_environment_setting_id integer  ,
	number_of_classrooms integer  ,
	ref_service_option_id integer  ,
	ref_population_served_id integer  ,
	annual_operating_weeks integer  ,
	CONSTRAINT pk_el_organization_availability PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.el_organization_availability IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_availability.organization_id IS 'Surrogate key from Orgainzation.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_availability.days_available_per_week IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_availability.hours_available_per_day IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_availability.youngest_age_served IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_availability.oldest_age_served IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_availability.age_unit IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_availability.ref_environment_setting_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_availability.number_of_classrooms IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_availability.ref_service_option_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_availability.ref_population_served_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_availability.annual_operating_weeks IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_organization_monitoring ( 
	el_organization_monitoring_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	visit_start_date     date  ,
	visit_end_date       date  ,
	ref_purpose_of_monitoring_visit_id integer  ,
	type_of_monitoring   varchar(300)  ,
	ref_organization_monitoring_notifications_id integer  ,
	CONSTRAINT pk_el_organization_monitoring PRIMARY KEY ( el_organization_monitoring_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_organization_monitoring.el_organization_monitoring_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_monitoring.organization_id IS 'Surrogate key from Organization.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_monitoring.visit_start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_monitoring.visit_end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_monitoring.ref_purpose_of_monitoring_visit_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_monitoring.type_of_monitoring IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_organization_monitoring.ref_organization_monitoring_notifications_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_quality_initiative ( 
	el_quality_initiative_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	maximum_score        varchar(30)  ,
	minimum_score        varchar(30)  ,
	score_level          varchar(30)  ,
	participation_indicator bool  ,
	participation_start_date date  ,
	participation_end_date date  ,
	CONSTRAINT pk_el_quality_initiative PRIMARY KEY ( el_quality_initiative_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_quality_initiative.el_quality_initiative_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.el_quality_initiative.organization_id IS 'Surrogate key from Organization.';

COMMENT ON COLUMN rs_ceds7_sc.el_quality_initiative.maximum_score IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_quality_initiative.minimum_score IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_quality_initiative.score_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_quality_initiative.participation_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_quality_initiative.participation_start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_quality_initiative.participation_end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_service_partner ( 
	organization_id      integer  NOT NULL,
	service_partner_name varchar(100)  ,
	service_partner_description varchar(300)  ,
	memorandum_of_understanding_end_date date  ,
	memorandum_of_understanding_start_date date  ,
	CONSTRAINT pk_el_service_partner PRIMARY KEY ( organization_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_service_partner.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN rs_ceds7_sc.el_service_partner.service_partner_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_service_partner.service_partner_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_service_partner.memorandum_of_understanding_end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_service_partner.memorandum_of_understanding_start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_staff_assignment ( 
	organization_person_role_id integer  NOT NULL,
	itinerant_provider   bool  NOT NULL,
	CONSTRAINT pk_el_staff_assignment PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.el_staff_assignment.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_assignment.itinerant_provider IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.el_staff_employment ( 
	staff_employment_id  integer  NOT NULL,
	ref_employment_status_id integer  ,
	hours_worked_per_week decimal(5,2)  ,
	hourly_wage          decimal(5,2)  ,
	ref_wage_collection_method_id integer  ,
	ref_wage_verification_id integer  ,
	union_membership_status bool  ,
	staff_approval_indicator bool  ,
	ref_el_education_staff_classification_id integer  ,
	ref_el_employment_separation_reason_id integer  ,
	ref_el_service_professional_staff_classification_id integer  ,
	CONSTRAINT pk_el_staff_employment PRIMARY KEY ( staff_employment_id )
 );

COMMENT ON TABLE rs_ceds7_sc.el_staff_employment IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_employment.staff_employment_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_employment.ref_employment_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_employment.hours_worked_per_week IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_employment.hourly_wage IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_employment.ref_wage_collection_method_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_employment.ref_wage_verification_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_employment.union_membership_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_employment.staff_approval_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_employment.ref_el_education_staff_classification_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_employment.ref_el_employment_separation_reason_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.el_staff_employment.ref_el_service_professional_staff_classification_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.facility ( 
	location_id          integer  NOT NULL,
	identifier           varchar(40)  ,
	building_name        varchar(60)  ,
	space_description    varchar(300)  ,
	ref_space_use_type_id integer  ,
	building_site_number varchar(30)  ,
	ref_building_use_type_id integer  ,
	CONSTRAINT pk_facility PRIMARY KEY ( location_id )
 );

COMMENT ON TABLE rs_ceds7_sc.facility IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.facility.location_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.facility.identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.facility.building_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.facility.space_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.facility.ref_space_use_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.facility.building_site_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.facility.ref_building_use_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.financial_aid_award ( 
	financial_aid_award_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_financial_aid_award_type_id integer  ,
	ref_financial_aid_status_id integer  ,
	financial_aid_award_amount decimal(9,2)  ,
	financial_aid_year_designator char(9)  ,
	CONSTRAINT pk_financial_aid_award PRIMARY KEY ( financial_aid_award_id )
 );

COMMENT ON TABLE rs_ceds7_sc.financial_aid_award IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.financial_aid_award.financial_aid_award_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.financial_aid_award.organization_person_role_id IS 'Surrogate key from Organizatin_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.financial_aid_award.ref_financial_aid_award_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_aid_award.ref_financial_aid_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_aid_award.financial_aid_award_amount IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.financial_aid_award.financial_aid_year_designator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.goal_measurement ( 
	goal_measurement_id  integer  NOT NULL,
	goal_id              integer  NOT NULL,
	description          text  ,
	schedule             text  ,
	success_criteria     varchar(300)  ,
	ref_goal_measurement_type_id integer  ,
	CONSTRAINT pk_goal_measurement PRIMARY KEY ( goal_measurement_id )
 );

CREATE TABLE rs_ceds7_sc.goal_performance ( 
	goal_performance_id  integer  NOT NULL,
	goal_id              integer  NOT NULL,
	current_performance_description text  ,
	date               date  ,
	status               text  ,
	ref_goal_status_type_id integer  ,
	CONSTRAINT pk_goal_performance PRIMARY KEY ( goal_performance_id )
 );

CREATE TABLE rs_ceds7_sc.iep_authorization ( 
	iep_authorization_id integer  NOT NULL,
	authorization_document_id integer  NOT NULL,
	individualized_program_id integer  NOT NULL,
	ref_iep_authorization_document_type_id integer  ,
	CONSTRAINT pk_iep_authorization PRIMARY KEY ( iep_authorization_id )
 );

CREATE TABLE rs_ceds7_sc.iep_present_level ( 
	individualized_program_id integer  NOT NULL,
	academic_description text  ,
	functional_description text  ,
	general_education_description text  ,
	parent_concern_description text  ,
	preschool_description text  ,
	student_concern_description text  ,
	student_strengths_description text  ,
	CONSTRAINT pk_iep_present_level PRIMARY KEY ( individualized_program_id )
 );

CREATE TABLE rs_ceds7_sc.incident ( 
	incident_id          integer  NOT NULL,
	incident_identifier  varchar(40)  ,
	incident_date        date  ,
	incident_time        time  ,
	ref_incident_time_description_code_id integer  ,
	incident_description text  ,
	ref_incident_behavior_id integer  ,
	ref_incident_behavior_secondary_id integer  ,
	ref_incident_injury_type_id integer  ,
	ref_weapon_type_id   integer  ,
	incident_cost        varchar(30)  ,
	organization_person_role_id integer  ,
	incident_reporter_id integer  ,
	ref_incident_reporter_type_id integer  ,
	ref_incident_location_id integer  ,
	ref_firearm_type_id  integer  ,
	regulation_violated_description varchar(100)  ,
	related_to_disability_manifestation_ind bool  ,
	reported_to_law_enforcement_ind bool  ,
	ref_incident_multiple_offense_type_id integer  ,
	ref_incident_perpetrator_injury_type_id integer  ,
	CONSTRAINT pk_incident PRIMARY KEY ( incident_id )
 );

COMMENT ON TABLE rs_ceds7_sc.incident IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.incident.incident_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.incident.incident_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.incident_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.incident_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.ref_incident_time_description_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.incident_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.ref_incident_behavior_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.ref_incident_behavior_secondary_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.ref_incident_injury_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.ref_weapon_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.incident_cost IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.organization_person_role_id IS 'Foreign key - Organization_Person_Role_Id.';

COMMENT ON COLUMN rs_ceds7_sc.incident.incident_reporter_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.ref_incident_reporter_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.ref_incident_location_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.ref_firearm_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.regulation_violated_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.related_to_disability_manifestation_ind IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.reported_to_law_enforcement_ind IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.ref_incident_multiple_offense_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.incident.ref_incident_perpetrator_injury_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.individualized_program ( 
	individualized_program_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_individualized_program_date_type integer  ,
	individualized_program_date date  ,
	non_inclusion_minutes_per_week integer  ,
	inclusion_minutes_per_week integer  ,
	ref_individualized_program_transition_type_id integer  ,
	ref_individualized_program_type_id integer  ,
	service_plan_date    date  ,
	ref_individualized_program_location_id integer  ,
	service_plan_meeting_participants varchar(4000)  ,
	service_plan_signed_by varchar(4000)  ,
	service_plan_signature_date date  ,
	service_plan_reevaluation_date date  ,
	ref_student_support_service_type_id integer  ,
	inclusive_setting_indicator bool  ,
	service_plan_end_date date  ,
	transfer_of_rights_statement text  ,
	CONSTRAINT xpk_individualized_program PRIMARY KEY ( individualized_program_id )
 );

COMMENT ON TABLE rs_ceds7_sc.individualized_program IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.individualized_program_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.organization_person_role_id IS 'Surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.ref_individualized_program_date_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.individualized_program_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.non_inclusion_minutes_per_week IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.inclusion_minutes_per_week IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.ref_individualized_program_transition_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.ref_individualized_program_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.service_plan_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.ref_individualized_program_location_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.service_plan_meeting_participants IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.service_plan_signed_by IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.service_plan_signature_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.service_plan_reevaluation_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program.ref_student_support_service_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.individualized_program_accommodation_subject ( 
	individualized_program_accommodation_subject_id integer  NOT NULL,
	individualized_program_accommodation_id integer  NOT NULL,
	ref_sced_course_subject_area_id integer  NOT NULL,
	CONSTRAINT pk_individualized_program_accommodation_subject PRIMARY KEY ( individualized_program_accommodation_subject_id ),
	CONSTRAINT ix_individualized_program_accommodation_ref_sced_course_subject_area UNIQUE ( individualized_program_accommodation_id, ref_sced_course_subject_area_id ) 
 );

CREATE TABLE rs_ceds7_sc.individualized_program_assessment ( 
	individualized_program_assessment_id integer  NOT NULL,
	assessment_id        integer  NOT NULL,
	individualized_program_id integer  NOT NULL,
	iep_alternative_assessment_rationale text  ,
	CONSTRAINT pk_individualized_program_assessment PRIMARY KEY ( individualized_program_assessment_id )
 );

CREATE TABLE rs_ceds7_sc.individualized_program_eligibility ( 
	individualized_program_eligibility_id integer  NOT NULL,
	individualized_program_id integer  NOT NULL,
	consent_to_evaluate_date date  ,
	consent_to_evaluate_indicator bool  ,
	parent_observations  text  ,
	CONSTRAINT pk_individualized_program_eligibility PRIMARY KEY ( individualized_program_eligibility_id )
 );

CREATE TABLE rs_ceds7_sc.individualized_program_goal ( 
	individualized_program_goal_id integer  NOT NULL,
	goal_id              integer  NOT NULL,
	individualized_program_id integer  NOT NULL,
	ref_iep_goal_type_id integer  ,
	CONSTRAINT pk_individualized_program_goal PRIMARY KEY ( individualized_program_goal_id )
 );

CREATE TABLE rs_ceds7_sc.individualized_program_meeting_attendee ( 
	individualized_program_meeting_attendee_id integer  NOT NULL,
	individualized_program_meeting_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	CONSTRAINT pk_individualized_program_meeting_attendee PRIMARY KEY ( individualized_program_meeting_attendee_id ),
	CONSTRAINT ix_individualized_program_meeting_organization_person_role UNIQUE ( individualized_program_meeting_id, organization_person_role_id ) 
 );

CREATE TABLE rs_ceds7_sc.individualized_program_progress_report ( 
	individualized_program_progress_report_id integer  NOT NULL,
	individualized_program_id integer  NOT NULL,
	individualized_program_progress_report_plan_id integer  NOT NULL,
	progress_description text  ,
	progress_report_date date  ,
	ref_ipsp_progress_report_type_id integer  ,
	CONSTRAINT pk_individualized_program_progress_report PRIMARY KEY ( individualized_program_progress_report_id )
 );

CREATE TABLE rs_ceds7_sc.individualized_program_service ( 
	individualized_program_service_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	ref_individualized_program_planned_service_type_id integer  ,
	ref_method_of_service_delivery_id integer  ,
	ref_service_frequency_id integer  ,
	planned_service_duration decimal(6,2)  ,
	planned_service_start_date date  ,
	CONSTRAINT pk_individualized_program_service PRIMARY KEY ( individualized_program_service_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.individualized_program_service.individualized_program_service_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program_service.person_id IS 'Surrogate key from Person';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program_service.ref_individualized_program_planned_service_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program_service.ref_method_of_service_delivery_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program_service.ref_service_frequency_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program_service.planned_service_duration IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.individualized_program_service.planned_service_start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_course ( 
	organization_id      integer  NOT NULL,
	high_school_course_requirement bool  ,
	ref_additional_credit_type_id integer  ,
	available_carnegie_unit_credit decimal(9,2)  ,
	ref_course_gpa_applicability_id integer  ,
	core_academic_course bool  ,
	ref_curriculum_framework_type_id integer  ,
	course_aligned_with_standards bool  ,
	ref_credit_type_earned_id integer  NOT NULL,
	funding_program      varchar(30)  ,
	family_consumer_sciences_course_ind bool  ,
	sced_course_code     char(5)  ,
	sced_grade_span      char(4)  ,
	ref_sced_course_level_id integer  ,
	ref_sced_course_subject_area_id integer  ,
	ref_career_cluster_id integer  ,
	ref_blended_learning_model_type_id integer  ,
	ref_course_interaction_mode_id integer  ,
	ref_k12_end_of_course_requirement_id integer  ,
	ref_workbased_learning_opportunity_type_id integer  ,
	course_department_name varchar(60)  ,
	CONSTRAINT pk_k12_course PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_course IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.organization_id IS 'Surrogate key from Course.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.high_school_course_requirement IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.ref_additional_credit_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.available_carnegie_unit_credit IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.ref_course_gpa_applicability_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.core_academic_course IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.ref_curriculum_framework_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.course_aligned_with_standards IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.ref_credit_type_earned_id IS 'Foreign key - Ref_Credit_Type_Earned';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.funding_program IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.family_consumer_sciences_course_ind IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.sced_course_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.sced_grade_span IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.ref_sced_course_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.ref_sced_course_subject_area_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.ref_career_cluster_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.ref_blended_learning_model_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.ref_course_interaction_mode_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.ref_k12_end_of_course_requirement_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.ref_workbased_learning_opportunity_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_course.course_department_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_lea_federal_funds ( 
	organization_id      integer  NOT NULL,
	federal_programs_funding_allocation numeric(12,2)  ,
	ref_federal_program_funding_allocation_type_id integer  ,
	funds_transfer_amount numeric(12,2)  ,
	innovative_programs_funds_received numeric(12,2)  ,
	innovative_dollars_spent numeric(12,2)  ,
	innovative_dollars_spent_on_strategic_priorities numeric(12,2)  ,
	lea_transferability_of_funds bool  ,
	ref_lea_funds_transfer_type_id integer  ,
	public_school_choice_funds_spent numeric(12,2)  ,
	school_improvement_reserved_percent numeric(5,2)  ,
	school_improvement_allocation numeric(12,2)  ,
	ses_funds_spent      numeric(12,2)  ,
	ses_per_pupil_expenditure numeric(12,2)  ,
	ses_school_choice20_percent_obligation numeric(12,2)  ,
	ref_rlis_program_use_id integer  ,
	ref_reap_alternative_funding_status_id integer  ,
	number_of_immigrant_program_subgrants integer  ,
	CONSTRAINT pk_k12_lea_federal_funds PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_lea_federal_funds IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.organization_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.federal_programs_funding_allocation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.ref_federal_program_funding_allocation_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.funds_transfer_amount IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.innovative_programs_funds_received IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.innovative_dollars_spent IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.innovative_dollars_spent_on_strategic_priorities IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.lea_transferability_of_funds IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.ref_lea_funds_transfer_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.public_school_choice_funds_spent IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.school_improvement_reserved_percent IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.school_improvement_allocation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.ses_funds_spent IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.ses_per_pupil_expenditure IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.ses_school_choice20_percent_obligation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.ref_rlis_program_use_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.ref_reap_alternative_funding_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_federal_funds.number_of_immigrant_program_subgrants IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_lea_pre_k_eligibility ( 
	k12_lea_pre_k_eligibility_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_pre_kindergarten_eligibility_id integer  NOT NULL,
	CONSTRAINT pk_k12_lea_pre_k_eligibility PRIMARY KEY ( k12_lea_pre_k_eligibility_id ),
	CONSTRAINT ix_k12_lea_pre_k_eligibility UNIQUE ( organization_id, ref_pre_kindergarten_eligibility_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.k12_lea_pre_k_eligibility IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_pre_k_eligibility.k12_lea_pre_k_eligibility_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_pre_k_eligibility.organization_id IS 'Foreign key - K12_LEA';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_pre_k_eligibility.ref_pre_kindergarten_eligibility_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_lea_safe_drug_free ( 
	organization_id      integer  NOT NULL,
	baseline             varchar(60)  ,
	baseline_year        varchar(20)  ,
	collection_frequency varchar(60)  ,
	indicator_name       varchar(60)  ,
	instrument           varchar(100)  ,
	performance          varchar(20)  ,
	target               varchar(20)  ,
	most_recent_collection varchar(20)  ,
	CONSTRAINT xpk_k12_school_safe_drug_free PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_lea_safe_drug_free IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_safe_drug_free.organization_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_safe_drug_free.baseline IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_safe_drug_free.baseline_year IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_safe_drug_free.collection_frequency IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_safe_drug_free.indicator_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_safe_drug_free.instrument IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_safe_drug_free.performance IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_safe_drug_free.target IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_safe_drug_free.most_recent_collection IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_lea_title_i_support_service ( 
	k12_lea_title_i_support_service_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_k12_lea_title_i_support_service_id integer  NOT NULL,
	CONSTRAINT pk_k12_lea_title_i_support_service PRIMARY KEY ( k12_lea_title_i_support_service_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_lea_title_i_support_service IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_title_i_support_service.k12_lea_title_i_support_service_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_title_i_support_service.organization_id IS 'Foreign key - K12_LEA';

COMMENT ON COLUMN rs_ceds7_sc.k12_lea_title_i_support_service.ref_k12_lea_title_i_support_service_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_program_or_service ( 
	organization_id      integer  NOT NULL,
	ref_pre_kindergarten_daily_length_id integer  ,
	ref_kindergarten_daily_length_id integer  ,
	ref_program_gifted_eligibility_id integer  ,
	ref_mep_session_type_id integer  ,
	ref_mep_project_type_id integer  ,
	program_in_multiple_purpose_facility bool  ,
	ref_title_i_instructional_services_id integer  ,
	ref_title_i_program_type_id integer  ,
	CONSTRAINT pk_k12_lea_program PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_program_or_service IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_program_or_service.organization_id IS 'Surrogate key from K12_LEA.';

COMMENT ON COLUMN rs_ceds7_sc.k12_program_or_service.ref_pre_kindergarten_daily_length_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_program_or_service.ref_kindergarten_daily_length_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_program_or_service.ref_program_gifted_eligibility_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_program_or_service.ref_mep_session_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_program_or_service.ref_mep_project_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_program_or_service.program_in_multiple_purpose_facility IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_program_or_service.ref_title_i_instructional_services_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_program_or_service.ref_title_i_program_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_school_corrective_action ( 
	k12_school_corrective_action_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_corrective_action_type_id integer  NOT NULL,
	CONSTRAINT pk_k12_school_corrective_action PRIMARY KEY ( k12_school_corrective_action_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_school_corrective_action IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_corrective_action.k12_school_corrective_action_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_corrective_action.organization_id IS 'Foreign key - K12 School';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_corrective_action.ref_corrective_action_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_school_improvement ( 
	k12_school_improvement_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_school_improvement_status_id integer  ,
	ref_school_improvement_funds_id integer  ,
	ref_sig_intervention_type_id integer  ,
	school_improvement_exit_date date  ,
	CONSTRAINT xpk_k12_school_improvement PRIMARY KEY ( k12_school_improvement_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_school_improvement IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_improvement.k12_school_improvement_id IS 'Surrogate Key.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_improvement.organization_id IS 'Foreign key - K12_School.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_improvement.ref_school_improvement_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_improvement.ref_school_improvement_funds_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_improvement.ref_sig_intervention_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_school_improvement.school_improvement_exit_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_sea ( 
	organization_id      integer  NOT NULL,
	ref_state_ansi_code  char(2)  ,
	CONSTRAINT xpk_k12_sea PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_sea IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea.organization_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea.ref_state_ansi_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_sea_federal_fund_allocation ( 
	k12_sea_federal_fund_allocation_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	federal_program_code varchar(10)  NOT NULL,
	ref_federal_program_funding_allocation_type_id integer  ,
	federal_programs_funding_allocation numeric(18,2)  ,
	CONSTRAINT pk_k12_sea_federal_fund_allocation PRIMARY KEY ( k12_sea_federal_fund_allocation_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_sea_federal_fund_allocation IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea_federal_fund_allocation.k12_sea_federal_fund_allocation_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea_federal_fund_allocation.organization_id IS 'Foreign key - K12_Sea';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea_federal_fund_allocation.federal_program_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea_federal_fund_allocation.ref_federal_program_funding_allocation_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_sea_federal_fund_allocation.federal_programs_funding_allocation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_staff_assignment ( 
	organization_person_role_id integer  NOT NULL,
	ref_k12_staff_classification_id integer  ,
	ref_professional_education_job_classification_id integer  ,
	ref_teaching_assignment_role_id integer  ,
	primary_assignment   bool  ,
	teacher_of_record    bool  ,
	ref_classroom_position_type_id integer  ,
	full_time_equivalency decimal(5,4)  ,
	contribution_percentage decimal(5,2)  ,
	itinerant_teacher    bool  ,
	highly_qualified_teacher_indicator bool  ,
	special_education_teacher bool  ,
	ref_special_education_staff_category_id integer  ,
	special_education_related_services_personnel bool  ,
	special_education_paraprofessional bool  ,
	ref_special_education_age_group_taught_id integer  ,
	ref_mep_staff_category_id integer  ,
	ref_title_i_program_staff_category_id integer  ,
	CONSTRAINT pk_k12_staff_assignment PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_staff_assignment IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.organization_person_role_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.ref_k12_staff_classification_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.ref_professional_education_job_classification_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.ref_teaching_assignment_role_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.primary_assignment IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.teacher_of_record IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.ref_classroom_position_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.full_time_equivalency IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.contribution_percentage IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.itinerant_teacher IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.highly_qualified_teacher_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.special_education_teacher IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.ref_special_education_staff_category_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.special_education_related_services_personnel IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.special_education_paraprofessional IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.ref_special_education_age_group_taught_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.ref_mep_staff_category_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_staff_assignment.ref_title_i_program_staff_category_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_student_academic_honor ( 
	k12_student_academic_honor_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_academic_honor_type_id integer  ,
	honor_description    varchar(80)  ,
	CONSTRAINT pk_k12_student_academic_honor PRIMARY KEY ( k12_student_academic_honor_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_student_academic_honor IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_honor.k12_student_academic_honor_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_honor.organization_person_role_id IS 'Foreign key - Organization_Person_Role.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_honor.ref_academic_honor_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_academic_honor.honor_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_student_activity ( 
	organization_person_role_id integer  NOT NULL,
	activity_time_involved decimal(9,2)  ,
	ref_activity_time_measurement_type_id integer  ,
	CONSTRAINT pk_k12_student_activity PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.k12_student_activity.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_activity.activity_time_involved IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_activity.ref_activity_time_measurement_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_student_course_section ( 
	organization_person_role_id integer  NOT NULL,
	ref_course_repeat_code_id integer  ,
	ref_course_section_enrollment_status_type_id integer  ,
	ref_course_section_entry_type_id integer  ,
	ref_course_section_exit_type_id integer  ,
	ref_exit_or_withdrawal_status_id integer  ,
	ref_grade_level_when_course_taken_id integer  ,
	grade_earned         varchar(15)  ,
	grade_value_qualifier varchar(100)  ,
	number_of_credits_attempted decimal(9,2)  ,
	ref_credit_type_earned_id integer  ,
	ref_additional_credit_type_id integer  ,
	ref_pre_and_post_test_indicator_id integer  ,
	ref_progress_level_id integer  ,
	ref_course_gpa_applicability_id integer  ,
	number_of_credits_earned decimal(9,2)  ,
	tuition_funded       bool  ,
	exit_withdrawal_date date  ,
	CONSTRAINT pk_k12_student_course_section PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_student_course_section IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.organization_person_role_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.ref_course_repeat_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.ref_course_section_enrollment_status_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.ref_course_section_entry_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.ref_course_section_exit_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.ref_exit_or_withdrawal_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.ref_grade_level_when_course_taken_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.grade_earned IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.grade_value_qualifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.number_of_credits_attempted IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.ref_credit_type_earned_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.ref_additional_credit_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.ref_pre_and_post_test_indicator_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.ref_progress_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.ref_course_gpa_applicability_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.number_of_credits_earned IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_course_section.tuition_funded IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_student_discipline ( 
	k12_student_discipline_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_discipline_reason_id integer  ,
	ref_disciplinary_action_taken_id integer  ,
	disciplinary_action_start_date date  ,
	disciplinary_action_end_date date  ,
	duration_of_disciplinary_action decimal(9,2)  ,
	ref_discipline_length_difference_reason_id integer  ,
	full_year_expulsion  bool  ,
	shortened_expulsion  bool  ,
	educational_services_after_removal bool  ,
	ref_idea_interim_removal_id integer  ,
	ref_idea_interim_removal_reason_id integer  ,
	related_to_zero_tolerance_policy bool  ,
	incident_id          integer  ,
	iep_placement_meeting_indicator bool  ,
	ref_discipline_method_firearms_id integer  ,
	ref_discipline_method_of_cwd_id integer  ,
	ref_idea_discipline_method_firearm_id integer  ,
	CONSTRAINT pk_k12_student_discipline PRIMARY KEY ( k12_student_discipline_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_student_discipline IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.k12_student_discipline_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.ref_discipline_reason_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.ref_disciplinary_action_taken_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.disciplinary_action_start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.disciplinary_action_end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.duration_of_disciplinary_action IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.ref_discipline_length_difference_reason_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.full_year_expulsion IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.shortened_expulsion IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.educational_services_after_removal IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.ref_idea_interim_removal_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.ref_idea_interim_removal_reason_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.related_to_zero_tolerance_policy IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.incident_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.iep_placement_meeting_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.ref_discipline_method_firearms_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.ref_discipline_method_of_cwd_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_discipline.ref_idea_discipline_method_firearm_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_student_enrollment ( 
	organization_person_role_id integer  NOT NULL,
	ref_entry_grade_level_id integer  ,
	ref_public_school_residence integer  ,
	ref_enrollment_status_id integer  ,
	ref_entry_type       integer  ,
	ref_exit_grade_level integer  ,
	ref_exit_or_withdrawal_status_id integer  ,
	ref_exit_or_withdrawal_type_id integer  ,
	displaced_student_status bool  ,
	ref_end_of_term_status_id integer  ,
	ref_promotion_reason_id integer  ,
	ref_non_promotion_reason_id integer  ,
	ref_food_service_eligibility_id integer  ,
	first_entry_date_into_us_school date  ,
	ref_directory_information_block_status_id integer  ,
	nslp_direct_certification_indicator bool  ,
	CONSTRAINT xpk_k12_enrollment_member PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_student_enrollment IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.organization_person_role_id IS 'Surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.ref_entry_grade_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.ref_public_school_residence IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.ref_enrollment_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.ref_entry_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.ref_exit_grade_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.ref_exit_or_withdrawal_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.ref_exit_or_withdrawal_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.displaced_student_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.ref_end_of_term_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.ref_promotion_reason_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.ref_non_promotion_reason_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.ref_food_service_eligibility_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.first_entry_date_into_us_school IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.ref_directory_information_block_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_enrollment.nslp_direct_certification_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_student_literacy_assessment ( 
	organization_person_role_id integer  NOT NULL,
	ref_literacy_assessment_id integer  ,
	literacy_pre_test_status bool  ,
	literacy_post_test_status bool  ,
	literacy_goal_met_status bool  ,
	CONSTRAINT pk_k12_student_literacy_assessment PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.k12_student_literacy_assessment IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_literacy_assessment.organization_person_role_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_literacy_assessment.ref_literacy_assessment_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_literacy_assessment.literacy_pre_test_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_literacy_assessment.literacy_post_test_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.k12_student_literacy_assessment.literacy_goal_met_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.k12_title_iii_language_instruction ( 
	k12_title_iii_language_instruction_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_title_iii_language_instruction_program_type_id integer  NOT NULL,
	CONSTRAINT pk_k12_lea_title_iii_language_instr PRIMARY KEY ( k12_title_iii_language_instruction_id ),
	CONSTRAINT ix_k12_lea_title_iii_language_instruction UNIQUE ( organization_id, ref_title_iii_language_instruction_program_type_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.k12_title_iii_language_instruction IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.k12_title_iii_language_instruction.k12_title_iii_language_instruction_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.k12_title_iii_language_instruction.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.k12_title_iii_language_instruction.ref_title_iii_language_instruction_program_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.learner_activity ( 
	learner_activity_id  integer  NOT NULL,
	person_id            integer  NOT NULL,
	assessment_registration_id integer  ,
	course_section_id    integer  ,
	organization_calendar_session_id integer  ,
	title                varchar(30)  ,
	description          varchar(300)  ,
	prerequisite         varchar(300)  ,
	ref_learner_activity_type_id integer  ,
	rubric_url           varchar(512)  ,
	creation_date        date  ,
	maximum_time_allowed decimal(9,0)  ,
	ref_learner_activity_maximum_time_allowed_units_id integer  ,
	due_date             date  ,
	due_time             time  ,
	maximum_attempts_allowed decimal(9,0)  ,
	ref_learner_activity_add_to_grade_book_flag_id integer  ,
	release_date         date  ,
	weight               decimal(9,2)  ,
	possible_points      decimal(9,2)  ,
	ref_language_id      integer  ,
	assigned_by_person_id integer  ,
	school_organization_id integer  ,
	lea_organization_id  integer  ,
	CONSTRAINT pk_learner_activity PRIMARY KEY ( learner_activity_id )
 );

COMMENT ON TABLE rs_ceds7_sc.learner_activity IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.learner_activity_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.assessment_registration_id IS 'Foreign key - Assessment_Registration.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.course_section_id IS 'Surrogate key from Course_Section.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.organization_calendar_session_id IS 'Foreign key - Session';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.title IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.prerequisite IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.ref_learner_activity_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.rubric_url IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.creation_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.maximum_time_allowed IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.ref_learner_activity_maximum_time_allowed_units_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.due_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.due_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.maximum_attempts_allowed IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.ref_learner_activity_add_to_grade_book_flag_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.release_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.weight IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.possible_points IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.ref_language_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.assigned_by_person_id IS 'Foreign key - Person';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.school_organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.learner_activity.lea_organization_id IS 'Foreign key - Organization';

CREATE TABLE rs_ceds7_sc.learning_resource ( 
	learning_resource_id integer  NOT NULL,
	title                varchar(30)  ,
	description          varchar(300)  ,
	url                  varchar(512)  ,
	concept_keyword      varchar(300)  ,
	subject_name         varchar(30)  ,
	subject_code         varchar(30)  ,
	subject_code_system  varchar(30)  ,
	ref_learning_resource_type_id integer  ,
	date_created         date  ,
	version            varchar(30)  ,
	creator              varchar(60)  ,
	publisher_name       varchar(60)  ,
	published_date       date  ,
	copyright_holder_name varchar(60)  ,
	copyright_year       char(4)  ,
	learning_resource_license_url varchar(512)  ,
	based_on_url         varchar(512)  ,
	ref_learning_resource_intended_end_user_role_id integer  ,
	ref_learning_resource_educational_use_id integer  ,
	ref_learning_resource_interactivity_type_id integer  ,
	ref_language_id      integer  ,
	time_required        decimal(9,2)  ,
	typical_age_range_minimum smallint  ,
	typical_age_range_maximum smallint  ,
	text_complexity_value varchar(30)  ,
	text_complexity_system varchar(30)  ,
	adapted_from_url     varchar(512)  ,
	assistive_technologies_compatible_ind bool  ,
	peer_rating_sample_size integer  ,
	ref_learning_resource_access_api_type_id integer  ,
	ref_learning_resource_access_hazard_type_id integer  ,
	ref_learning_resource_access_mode_type_id integer  ,
	ref_learning_resource_book_format_type_id integer  ,
	ref_learning_resource_control_flexibility_type_id integer  ,
	ref_learning_resource_digital_media_sub_type_id integer  ,
	ref_learning_resource_digital_media_type_id integer  ,
	learning_resource_author_email varchar(128)  ,
	learning_resource_author_url varchar(512)  ,
	learning_resource_date_modified date  ,
	learning_resource_publisher_email varchar(128)  ,
	learning_resource_publisher_url varchar(512)  ,
	ref_learning_resource_access_rights_url_id integer  ,
	ref_learning_resource_author_type_id integer  ,
	ref_learning_resource_interaction_mode_id integer  ,
	CONSTRAINT pk_learning_resource PRIMARY KEY ( learning_resource_id )
 );

COMMENT ON TABLE rs_ceds7_sc.learning_resource IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.learning_resource_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.title IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.url IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.concept_keyword IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.subject_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.subject_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.subject_code_system IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_learning_resource_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.date_created IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.version IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.creator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.publisher_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.published_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.copyright_holder_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.copyright_year IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.learning_resource_license_url IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.based_on_url IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_learning_resource_intended_end_user_role_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_learning_resource_educational_use_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_learning_resource_interactivity_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_language_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.time_required IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.typical_age_range_minimum IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.typical_age_range_maximum IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.text_complexity_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.text_complexity_system IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.adapted_from_url IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.assistive_technologies_compatible_ind IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.peer_rating_sample_size IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_learning_resource_access_api_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_learning_resource_access_hazard_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_learning_resource_access_mode_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_learning_resource_book_format_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_learning_resource_control_flexibility_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_learning_resource_digital_media_sub_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_learning_resource_digital_media_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.learning_resource_author_email IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.learning_resource_author_url IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.learning_resource_date_modified IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.learning_resource_publisher_email IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.learning_resource_publisher_url IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_learning_resource_access_rights_url_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_learning_resource_author_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource.ref_learning_resource_interaction_mode_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.learning_resource_education_level ( 
	learning_resource_education_level_id integer  NOT NULL,
	learning_resource_id integer  NOT NULL,
	ref_education_level_id integer  NOT NULL,
	CONSTRAINT pk_learning_resource_education_lvl PRIMARY KEY ( learning_resource_education_level_id ),
	CONSTRAINT ix_learning_resource_education_level UNIQUE ( learning_resource_id, ref_education_level_id ) 
 );

COMMENT ON TABLE rs_ceds7_sc.learning_resource_education_level IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_education_level.learning_resource_education_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_education_level.learning_resource_id IS 'Foreign key - Learning_Resource';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_education_level.ref_education_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.learning_resource_peer_rating ( 
	learning_resource_peer_rating_id integer  NOT NULL,
	learning_resource_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	peer_rating_system_id integer  NOT NULL,
	value              numeric(18,4)  ,
	date               date  ,
	CONSTRAINT pk_learning_resource_peer_rating_1 PRIMARY KEY ( learning_resource_peer_rating_id )
 );

COMMENT ON TABLE rs_ceds7_sc.learning_resource_peer_rating IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_peer_rating.learning_resource_peer_rating_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_peer_rating.learning_resource_id IS 'Foreign key - Learning_Resource';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_peer_rating.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_peer_rating.peer_rating_system_id IS 'Foreign key - Peer_Rating_System';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_peer_rating.value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.learning_resource_peer_rating.date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization ( 
	organization_id      integer  NOT NULL,
	name                 varchar(128)  ,
	ref_organization_type_id integer  ,
	short_name           varchar(30)  ,
	region_geo_json      varchar(2000)  ,
	CONSTRAINT pk_organization PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization.organization_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization.name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization.ref_organization_type_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization.short_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_calendar ( 
	organization_calendar_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	calendar_code        varchar(30)  ,
	calendar_description varchar(60)  NOT NULL,
	calendar_year        char(4)  ,
	CONSTRAINT pk_organization_calendar PRIMARY KEY ( organization_calendar_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_calendar IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar.organization_calendar_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar.calendar_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar.calendar_description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar.calendar_year IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_calendar_day ( 
	organization_calendar_day_id integer  NOT NULL,
	organization_calendar_id integer  NOT NULL,
	day_name             varchar(30)  NOT NULL,
	alternate_day_name   varchar(30)  ,
	CONSTRAINT pk_organization_calendar_day PRIMARY KEY ( organization_calendar_day_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_calendar_day IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_day.organization_calendar_day_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_day.organization_calendar_id IS 'Foreign key - Orgainzation_Calendar';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_day.day_name IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_day.alternate_day_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_calendar_session ( 
	organization_calendar_session_id integer  NOT NULL,
	designator           varchar(7)  ,
	begin_date           date  ,
	end_date             date  ,
	ref_session_type_id  integer  ,
	instructional_minutes numeric(18,0)  ,
	code                 varchar(30)  ,
	description          text  ,
	marking_term_indicator bool  ,
	scheduling_term_indicator bool  ,
	attendance_term_indicator bool  ,
	organization_calendar_id integer  ,
	days_in_session      integer  ,
	first_instruction_date date  ,
	last_instruction_date date  ,
	minutes_per_day      integer  ,
	session_start_time   time  ,
	session_end_time     time  ,
	CONSTRAINT pk_organization_calendar_session PRIMARY KEY ( organization_calendar_session_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_calendar_session IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.organization_calendar_session_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.designator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.begin_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.ref_session_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.instructional_minutes IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.marking_term_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.scheduling_term_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.attendance_term_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.organization_calendar_id IS 'Surrogate key from Organization_Calendar.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.days_in_session IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.first_instruction_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.last_instruction_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.minutes_per_day IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.session_start_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_calendar_session.session_end_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_employee_benefit ( 
	organization_employee_benefit_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	full_time_benefit_indicator bool  ,
	part_time_benefit_indicator bool  ,
	ref_employee_benefit_id integer  ,
	CONSTRAINT pk_organization_employee_benefit PRIMARY KEY ( organization_employee_benefit_id )
 );

CREATE TABLE rs_ceds7_sc.organization_financial ( 
	organization_financial_id integer  NOT NULL,
	financial_account_id integer  NOT NULL,
	organization_calendar_session_id integer  NOT NULL,
	actual_value         decimal(12,2)  ,
	budgeted_value       decimal(12,1)  ,
	date               date  ,
	encumbered_value     decimal(9,2)  ,
	value              decimal(9,2)  ,
	fiscal_period_begin_date date  ,
	fiscal_period_end_date date  ,
	fiscal_year          char(4)  ,
	financial_account_program_id integer  ,
	CONSTRAINT pk_organization_financial PRIMARY KEY ( organization_financial_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_financial IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_financial.organization_financial_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.organization_financial.financial_account_id IS 'Foreign key to Financial_Account';

COMMENT ON COLUMN rs_ceds7_sc.organization_financial.organization_calendar_session_id IS 'Foreign key to Organization_Calendar_Session';

COMMENT ON COLUMN rs_ceds7_sc.organization_financial.actual_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_financial.budgeted_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_financial.date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_financial.encumbered_value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_financial.value IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_financial.fiscal_period_begin_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_financial.fiscal_period_end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_financial.fiscal_year IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_financial.financial_account_program_id IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.organization_image ( 
	organization_id      integer  NOT NULL,
	url                  varchar(512)  ,
	CONSTRAINT pk_organization_image PRIMARY KEY ( organization_id )
 );

CREATE TABLE rs_ceds7_sc.organization_location ( 
	organization_location_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	location_id          integer  NOT NULL,
	ref_organization_location_type_id integer  ,
	CONSTRAINT pk_organization_location PRIMARY KEY ( organization_location_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_location IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_location.organization_location_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_location.organization_id IS 'Foreign key - Organization.';

COMMENT ON COLUMN rs_ceds7_sc.organization_location.location_id IS 'Foreign key - Location.';

COMMENT ON COLUMN rs_ceds7_sc.organization_location.ref_organization_location_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_person_role ( 
	organization_person_role_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	person_id            integer  NOT NULL,
	role_id              integer  NOT NULL,
	entry_date           date  ,
	exit_date            date  ,
	CONSTRAINT pk_organization_person_role PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_person_role IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_person_role.organization_person_role_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_person_role.organization_id IS 'Surrogate key from Organization.';

COMMENT ON COLUMN rs_ceds7_sc.organization_person_role.person_id IS 'Surrogate key from Person';

COMMENT ON COLUMN rs_ceds7_sc.organization_person_role.role_id IS 'Surrogate key from Role.  The name of the role, e.g. Student, Staff, Employee';

COMMENT ON COLUMN rs_ceds7_sc.organization_person_role.entry_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_person_role.exit_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_program_type ( 
	organization_program_type_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_program_type_id  integer  NOT NULL,
	CONSTRAINT pk_organization_program_type PRIMARY KEY ( organization_program_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_program_type IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_program_type.organization_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_program_type.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.organization_program_type.ref_program_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.organization_service ( 
	organization_service_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_student_support_service_type_id integer  NOT NULL,
	CONSTRAINT pk_organization_service PRIMARY KEY ( organization_service_id ),
	CONSTRAINT ix_organization_ref_student_support_service_type UNIQUE ( organization_id, ref_student_support_service_type_id ) 
 );

CREATE TABLE rs_ceds7_sc.organization_telephone ( 
	organization_telephone_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	telephone_number     varchar(24)  NOT NULL,
	primary_telephone_number_indicator bool  NOT NULL,
	ref_institution_telephone_type_id integer  ,
	CONSTRAINT pk_organization_phone_phone PRIMARY KEY ( organization_telephone_id )
 );

COMMENT ON TABLE rs_ceds7_sc.organization_telephone IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.organization_telephone.organization_telephone_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.organization_telephone.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN rs_ceds7_sc.organization_telephone.telephone_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_telephone.primary_telephone_number_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.organization_telephone.ref_institution_telephone_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.pd_activity_education_level ( 
	pd_activity_education_level_id integer  NOT NULL,
	professional_development_activity_id integer  NOT NULL,
	ref_pd_activity_education_levels_addressed_id integer  NOT NULL,
	CONSTRAINT pk_pd_activity_education_level PRIMARY KEY ( pd_activity_education_level_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.pd_activity_education_level.pd_activity_education_level_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.pd_activity_education_level.professional_development_activity_id IS 'Foreign key to Professional_Development_Activity';

COMMENT ON COLUMN rs_ceds7_sc.pd_activity_education_level.ref_pd_activity_education_levels_addressed_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_address ( 
	person_address_id    integer  NOT NULL,
	person_id            integer  NOT NULL,
	ref_person_location_type_id integer  NOT NULL,
	street_number_and_name varchar(40)  ,
	apartment_room_or_suite_number varchar(30)  ,
	city                 varchar(30)  ,
	ref_state_id         integer  ,
	postal_code          varchar(17)  ,
	address_county_name  varchar(30)  ,
	ref_county_id        integer  ,
	ref_country_id       integer  ,
	latitude             varchar(20)  ,
	longitude            varchar(20)  ,
	ref_personal_information_verification_id integer  ,
	CONSTRAINT pk_person_address PRIMARY KEY ( person_address_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_address IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_address.person_address_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.person_address.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN rs_ceds7_sc.person_address.ref_person_location_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_address.street_number_and_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_address.apartment_room_or_suite_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_address.city IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_address.ref_state_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_address.postal_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_address.address_county_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_address.ref_county_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_address.ref_country_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_address.latitude IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_address.longitude IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_address.ref_personal_information_verification_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_assessment_personal_needs_profile ( 
	person_assessment_personal_needs_profile_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	assessment_personal_needs_profile_id integer  NOT NULL,
	CONSTRAINT pk_person_assessment_personal_needs_profile PRIMARY KEY ( person_assessment_personal_needs_profile_id ),
	CONSTRAINT ix_person_assessment_personal_needs_profile UNIQUE ( person_id, assessment_personal_needs_profile_id ) 
 );

CREATE TABLE rs_ceds7_sc.person_career_education_plan ( 
	person_career_education_plan_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	last_updated         date  ,
	ref_career_education_plan_type_id integer  ,
	professional_development_plan_approved_by_supervisor bool  ,
	professional_development_plan_completion date  ,
	tuition_funded       bool  ,
	CONSTRAINT pk_person_career_education_plan PRIMARY KEY ( person_career_education_plan_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.person_career_education_plan.person_career_education_plan_id IS 'Surrogate key.';

COMMENT ON COLUMN rs_ceds7_sc.person_career_education_plan.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN rs_ceds7_sc.person_career_education_plan.last_updated IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_career_education_plan.ref_career_education_plan_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_career_education_plan.professional_development_plan_approved_by_supervisor IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_career_education_plan.professional_development_plan_completion IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_career_education_plan.tuition_funded IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_degree_or_certificate ( 
	person_degree_or_certificate_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	degree_or_certificate_title_or_subject varchar(45)  ,
	ref_degree_or_certificate_type_id integer  ,
	award_date           date  ,
	name_of_institution  varchar(60)  ,
	ref_higher_education_institution_accreditation_status_id integer  ,
	ref_education_verification_method_id integer  ,
	CONSTRAINT xpk_person_degree_or_certificate PRIMARY KEY ( person_degree_or_certificate_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_degree_or_certificate IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_degree_or_certificate.person_degree_or_certificate_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.person_degree_or_certificate.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN rs_ceds7_sc.person_degree_or_certificate.degree_or_certificate_title_or_subject IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_degree_or_certificate.ref_degree_or_certificate_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_degree_or_certificate.award_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_degree_or_certificate.name_of_institution IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_degree_or_certificate.ref_higher_education_institution_accreditation_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_degree_or_certificate.ref_education_verification_method_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_disability ( 
	person_id            integer  NOT NULL,
	primary_disability_type_id integer  ,
	disability_status    bool  ,
	ref_accommodations_needed_type_id integer  ,
	ref_disability_condition_type_id integer  ,
	ref_disability_determination_source_type_id integer  ,
	ref_disability_condition_status_code_id integer  ,
	ref_idea_disability_type_id integer  ,
	CONSTRAINT pk_person_disability PRIMARY KEY ( person_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_disability IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_disability.person_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_disability.primary_disability_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_disability.disability_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_disability.ref_accommodations_needed_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_disability.ref_disability_condition_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_disability.ref_disability_determination_source_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_disability.ref_disability_condition_status_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_family ( 
	person_family_id     integer  NOT NULL,
	person_id            integer  NOT NULL,
	family_identifier    varchar(40)  ,
	number_of_people_in_family integer  ,
	number_of_people_in_household integer  ,
	family_income        decimal(10,2)  ,
	ref_family_income_source_id integer  ,
	ref_income_calculation_method_id integer  ,
	ref_proof_of_residency_type_id integer  ,
	ref_el_program_eligibility_id integer  ,
	ref_highest_education_level_completed_id integer  ,
	ref_communication_method_id integer  ,
	included_in_counted_family_size bool  ,
	CONSTRAINT xpk_person_family PRIMARY KEY ( person_family_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_family IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_family.person_family_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.person_family.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN rs_ceds7_sc.person_family.family_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_family.number_of_people_in_family IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_family.number_of_people_in_household IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_family.family_income IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_family.ref_family_income_source_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_family.ref_income_calculation_method_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_family.ref_proof_of_residency_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_family.ref_el_program_eligibility_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_family.ref_highest_education_level_completed_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_family.ref_communication_method_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_family.included_in_counted_family_size IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_health_birth ( 
	person_id            integer  NOT NULL,
	weeks_of_gestation   integer  ,
	multiple_birth_indicator bool  ,
	weight_at_birth      varchar(20)  ,
	ref_trimester_when_prenatal_care_began_id integer  ,
	CONSTRAINT pk_person_health_birth PRIMARY KEY ( person_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_health_birth IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_health_birth.person_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_health_birth.weeks_of_gestation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_health_birth.multiple_birth_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_health_birth.weight_at_birth IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_health_birth.ref_trimester_when_prenatal_care_began_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_identifier ( 
	person_identifier_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	identifier           varchar(40)  ,
	ref_person_identification_system_id integer  NOT NULL,
	ref_personal_information_verification_id integer  ,
	CONSTRAINT xpk_person_identifier PRIMARY KEY ( person_identifier_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_identifier IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_identifier.person_identifier_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.person_identifier.person_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_identifier.identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_identifier.ref_person_identification_system_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_identifier.ref_personal_information_verification_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_language ( 
	person_language_id   integer  NOT NULL,
	person_id            integer  NOT NULL,
	ref_language_id      integer  NOT NULL,
	ref_language_use_type_id integer  NOT NULL,
	CONSTRAINT pk_person_language PRIMARY KEY ( person_language_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_language IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_language.person_language_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.person_language.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN rs_ceds7_sc.person_language.ref_language_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_language.ref_language_use_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_other_name ( 
	person_other_name_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	ref_other_name_type_id integer  ,
	other_name           varchar(40)  ,
	first_name           varchar(35)  ,
	middle_name          varchar(35)  ,
	last_name            varchar(35)  ,
	CONSTRAINT pk_person_other_name PRIMARY KEY ( person_other_name_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_other_name IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_other_name.person_other_name_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.person_other_name.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN rs_ceds7_sc.person_other_name.ref_other_name_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_other_name.other_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_other_name.first_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_other_name.middle_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_other_name.last_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_referral ( 
	person_referral_id   integer  NOT NULL,
	person_id            integer  NOT NULL,
	referral_date        date  ,
	reason               text  ,
	source             varchar(60)  ,
	referral_type_received varchar(60)  ,
	referred_to          varchar(60)  ,
	ref_referral_outcome_id integer  ,
	CONSTRAINT pk_person_referral PRIMARY KEY ( person_referral_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.person_referral.person_referral_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.person_referral.person_id IS 'Surrogate key from Person';

COMMENT ON COLUMN rs_ceds7_sc.person_referral.referral_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_referral.reason IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_referral.source IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_referral.referral_type_received IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_referral.referred_to IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_referral.ref_referral_outcome_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.person_status ( 
	person_status_id     integer  NOT NULL,
	person_id            integer  NOT NULL,
	ref_person_status_type_id integer  NOT NULL,
	status_value         bool  NOT NULL,
	status_start_date    date  ,
	status_end_date      date  ,
	CONSTRAINT pk_person_status PRIMARY KEY ( person_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.person_status IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_status.person_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.person_status.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN rs_ceds7_sc.person_status.ref_person_status_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_status.status_value IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.person_status.status_start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.person_status.status_end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.professional_development_activity ( 
	professional_development_activity_id integer  NOT NULL,
	course_id            integer  ,
	professional_development_requirement_id integer  NOT NULL,
	title                varchar(60)  ,
	activity_identifier  varchar(40)  ,
	description          varchar(2000)  ,
	objective            varchar(2000)  ,
	activity_code        varchar(30)  ,
	approval_code        varchar(30)  ,
	cost                 decimal(6,2)  ,
	credits              decimal(6,2)  ,
	ref_course_credit_unit_id integer  ,
	scholarship_status   bool  ,
	ref_professional_development_financial_support_id integer  ,
	publish_indicator    bool  ,
	ref_pd_audience_type_id integer  ,
	ref_pd_activity_approved_purpose_id integer  ,
	ref_pd_activity_credit_type_id integer  ,
	ref_pd_activity_level_id integer  ,
	ref_pd_activity_type_id integer  ,
	professional_development_activity_state_approved_status bool  ,
	CONSTRAINT pk_professional_development_activity PRIMARY KEY ( professional_development_activity_id )
 );

COMMENT ON TABLE rs_ceds7_sc.professional_development_activity IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.professional_development_activity_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.course_id IS 'Foreign key - Course.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.professional_development_requirement_id IS 'Foreign key - Professiona_Development_Requirement.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.title IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.activity_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.description IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.objective IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.activity_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.approval_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.cost IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.credits IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.ref_course_credit_unit_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.scholarship_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.ref_professional_development_financial_support_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.publish_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.ref_pd_audience_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.ref_pd_activity_approved_purpose_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.ref_pd_activity_credit_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.ref_pd_activity_level_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.ref_pd_activity_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_activity.professional_development_activity_state_approved_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.professional_development_session ( 
	professional_development_session_id integer  NOT NULL,
	professional_development_activity_id integer  NOT NULL,
	session_identifier   varchar(40)  ,
	ref_pd_delivery_method_id integer  ,
	capacity             integer  ,
	start_date           date  ,
	start_time           varchar(15)  ,
	end_date             date  ,
	end_time             varchar(15)  ,
	location_name        varchar(60)  ,
	evaluation_method    varchar(30)  ,
	evaluation_score     varchar(30)  ,
	expiration_date      date  ,
	ref_pd_session_status_id integer  ,
	ref_pd_instructional_delivery_mode_id integer  ,
	sponsoring_agency_name varchar(60)  ,
	ref_language_id      integer  ,
	funding_source       varchar(30)  ,
	training_and_technical_assistance_level varchar(100)  ,
	ref_el_trainer_core_knowledge_area_id integer  ,
	CONSTRAINT pk_professional_development_session PRIMARY KEY ( professional_development_session_id )
 );

COMMENT ON TABLE rs_ceds7_sc.professional_development_session IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.professional_development_session_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.professional_development_activity_id IS 'Foreign key - Professional Development Activity';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.session_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.ref_pd_delivery_method_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.capacity IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.start_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.end_time IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.location_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.evaluation_method IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.evaluation_score IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.expiration_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.ref_pd_session_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.ref_pd_instructional_delivery_mode_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.sponsoring_agency_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.ref_language_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.funding_source IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.training_and_technical_assistance_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.professional_development_session.ref_el_trainer_core_knowledge_area_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.program ( 
	organization_id      integer  NOT NULL,
	credits_required     decimal(9,2)  ,
	CONSTRAINT pk_program PRIMARY KEY ( organization_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.program.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN rs_ceds7_sc.program.credits_required IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.program_participation_cte ( 
	organization_person_role_id integer  NOT NULL,
	cte_participant      bool  ,
	cte_concentrator     bool  ,
	cte_completer        bool  ,
	single_parent_or_single_pregnant_woman bool  ,
	displaced_homemaker_indicator bool  ,
	cte_non_traditional_completion bool  ,
	ref_non_traditional_gender_status_id integer  ,
	ref_workbased_learning_opportunity_type_id integer  ,
	career_pathways_program_participation_exit_date date  ,
	career_pathways_program_participation_start_date date  ,
	CONSTRAINT pk_program_participation_cte PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.program_participation_cte IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_cte.organization_person_role_id IS 'Surrogate Key - Foreign Key - Person_Program_Participation';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_cte.cte_participant IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_cte.cte_concentrator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_cte.cte_completer IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_cte.single_parent_or_single_pregnant_woman IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_cte.displaced_homemaker_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_cte.cte_non_traditional_completion IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_cte.ref_non_traditional_gender_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_cte.ref_workbased_learning_opportunity_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_cte.career_pathways_program_participation_exit_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_cte.career_pathways_program_participation_start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.program_participation_migrant ( 
	organization_person_role_id integer  NOT NULL,
	ref_mep_enrollment_type_id integer  ,
	ref_mep_project_based_id integer  ,
	ref_mep_service_type_id integer  ,
	mep_eligibility_expiration_date date  ,
	continuation_of_services_status bool  ,
	ref_continuation_of_services_reason_id integer  ,
	birthdate_verification varchar(60)  ,
	immunization_record_flag bool  ,
	migrant_student_qualifying_arrival_date date  ,
	last_qualifying_move_date date  ,
	qualifying_move_from_city varchar(30)  ,
	ref_qualifying_move_from_state_id integer  ,
	ref_qualifying_move_from_country_id integer  ,
	designated_graduation_school_id integer  ,
	prioritized_for_services bool  ,
	CONSTRAINT pk_program_participation_migrant PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.program_participation_migrant IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.organization_person_role_id IS 'Surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.ref_mep_enrollment_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.ref_mep_project_based_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.ref_mep_service_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.mep_eligibility_expiration_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.continuation_of_services_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.ref_continuation_of_services_reason_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.birthdate_verification IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.immunization_record_flag IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.migrant_student_qualifying_arrival_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.last_qualifying_move_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.qualifying_move_from_city IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.ref_qualifying_move_from_state_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.ref_qualifying_move_from_country_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_migrant.designated_graduation_school_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.program_participation_special_education ( 
	organization_person_role_id integer  NOT NULL,
	awaiting_initial_idea_evaluation_status bool  ,
	ref_idea_educational_environment_ec_id integer  ,
	ref_idea_ed_environment_school_age_id integer  ,
	special_education_fte decimal(5,4)  ,
	ref_special_education_exit_reason_id integer  ,
	special_education_services_exit_date date  ,
	idea_placement_rationale text  ,
	CONSTRAINT pk_program_participation_special_education PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.program_participation_special_education IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_special_education.organization_person_role_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_special_education.awaiting_initial_idea_evaluation_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_special_education.ref_idea_educational_environment_ec_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_special_education.ref_idea_ed_environment_school_age_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_special_education.special_education_fte IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_special_education.ref_special_education_exit_reason_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_special_education.special_education_services_exit_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.program_participation_title_i ( 
	organization_person_role_id integer  NOT NULL,
	ref_title_i_indicator_id integer  ,
	CONSTRAINT pk_program_participation_title_i PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.program_participation_title_i IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_title_i.organization_person_role_id IS 'Surrogate key from Person_Program_Participation';

COMMENT ON COLUMN rs_ceds7_sc.program_participation_title_i.ref_title_i_indicator_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_course ( 
	organization_id      integer  NOT NULL,
	ref_course_credit_basis_type_id integer  ,
	ref_course_credit_level_type_id integer  ,
	course_number        varchar(30)  ,
	original_course_identifier varchar(40)  ,
	override_school_course_number varchar(30)  ,
	ref_nces_college_course_map_code_id integer  ,
	ncaa_eligibility_ind integer  ,
	ref_cip_code_id      integer  ,
	CONSTRAINT pk_ps_course PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_course IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_course.organization_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_course.ref_course_credit_basis_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_course.ref_course_credit_level_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_course.course_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_course.original_course_identifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_course.override_school_course_number IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_course.ref_nces_college_course_map_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_course.ncaa_eligibility_ind IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_course.ref_cip_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_price_of_attendance ( 
	ps_price_of_attendance_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	session_designator   char(7)  ,
	tuition_published    decimal(9,2)  ,
	ref_tuition_unit_id  integer  ,
	board_charges        decimal(9,2)  ,
	room_charges         decimal(9,2)  ,
	books_and_supplies_costs decimal(9,2)  ,
	required_student_fees decimal(9,2)  ,
	comprehensive_fee    decimal(9,2)  ,
	other_student_expenses decimal(9,2)  ,
	price_of_attendance  decimal(9,2)  ,
	ipeds_collection_year_designator char(9)  ,
	CONSTRAINT pk_ps_price_of_attendance PRIMARY KEY ( ps_price_of_attendance_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_price_of_attendance IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_price_of_attendance.ps_price_of_attendance_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ps_price_of_attendance.organization_id IS 'Foreign key - Ps_Institution';

COMMENT ON COLUMN rs_ceds7_sc.ps_price_of_attendance.session_designator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_price_of_attendance.tuition_published IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_price_of_attendance.ref_tuition_unit_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_price_of_attendance.board_charges IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_price_of_attendance.room_charges IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_price_of_attendance.books_and_supplies_costs IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_price_of_attendance.required_student_fees IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_price_of_attendance.comprehensive_fee IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_price_of_attendance.other_student_expenses IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_price_of_attendance.price_of_attendance IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_price_of_attendance.ipeds_collection_year_designator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_section ( 
	organization_id      integer  NOT NULL,
	grade_value_qualifier char(2)  ,
	ref_cip_code_id      integer  ,
	ref_course_gpa_applicability_id integer  ,
	ref_course_honors_type_id integer  ,
	ref_course_instruction_method_id integer  ,
	ref_course_level_type_id integer  ,
	ref_developmental_education_type_id integer  ,
	ref_workbased_learning_opportunity_type_id integer  ,
	CONSTRAINT pk_ps_section PRIMARY KEY ( organization_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ps_section.grade_value_qualifier IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_section.ref_cip_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_section.ref_course_gpa_applicability_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_section.ref_course_honors_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_section.ref_course_instruction_method_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_section.ref_course_level_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_section.ref_developmental_education_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_section.ref_workbased_learning_opportunity_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_staff_employment ( 
	staff_employment_id  integer  NOT NULL,
	ref_full_time_status_id integer  ,
	faculty_status       bool  ,
	ref_employment_contract_type_id integer  ,
	standard_occupational_class char(7)  ,
	ref_ipeds_occupational_category_id integer  ,
	instructional_staff_status bool  ,
	medical_school_staff_status bool  ,
	ref_instructional_staff_contract_length_id integer  ,
	ref_instructional_staff_faculty_tenure_id integer  ,
	ref_academic_rank_id integer  ,
	ref_instruction_credit_type_id integer  ,
	graduate_assistant_status bool  ,
	ref_graduate_assistant_ipeds_category_id integer  ,
	annual_base_contractual_salary decimal(9,2)  ,
	CONSTRAINT pk_ps_staff_employment PRIMARY KEY ( staff_employment_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_staff_employment IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.staff_employment_id IS 'PK - Foreign key from Staff_Employment';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.ref_full_time_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.faculty_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.ref_employment_contract_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.standard_occupational_class IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.ref_ipeds_occupational_category_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.instructional_staff_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.medical_school_staff_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.ref_instructional_staff_contract_length_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.ref_instructional_staff_faculty_tenure_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.ref_academic_rank_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.ref_instruction_credit_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.graduate_assistant_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.ref_graduate_assistant_ipeds_category_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_staff_employment.annual_base_contractual_salary IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_student_academic_record ( 
	ps_student_academic_record_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	academic_year_designator char(9)  ,
	ref_academic_term_designator_id integer  ,
	grade_point_average  decimal(9,4)  ,
	grade_point_average_cumulative decimal(9,4)  ,
	dual_credit_dual_enrollment_credits decimal(9,4)  ,
	advanced_placement_credits_awarded integer  ,
	ref_professional_tech_credential_type_id integer  ,
	diploma_or_credential_award_date char(7)  ,
	entering_term        varchar(30)  ,
	course_total         integer  ,
	ref_credit_hours_applied_other_program_id integer  ,
	CONSTRAINT pk_ps_student_academic_record PRIMARY KEY ( ps_student_academic_record_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_student_academic_record IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_record.ps_student_academic_record_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_record.organization_person_role_id IS 'Foreign key - Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_record.academic_year_designator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_record.ref_academic_term_designator_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_record.grade_point_average IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_record.grade_point_average_cumulative IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_record.dual_credit_dual_enrollment_credits IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_record.advanced_placement_credits_awarded IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_record.ref_professional_tech_credential_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_record.diploma_or_credential_award_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_record.entering_term IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_record.course_total IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_academic_record.ref_credit_hours_applied_other_program_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_student_application ( 
	organization_person_role_id integer  NOT NULL,
	postsecondary_applicant bool  ,
	grade_point_average_cumulative decimal(9,4)  ,
	ref_grade_point_average_domain_id integer  ,
	ref_gpa_weighted_indicator_id integer  ,
	high_school_percentile decimal(5,4)  ,
	high_school_student_class_rank integer  ,
	high_school_graduating_class_size integer  ,
	ref_admitted_student_id integer  ,
	wait_listed_student  bool  ,
	CONSTRAINT pk_ps_student_application PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_student_application IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_application.organization_person_role_id IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_application.postsecondary_applicant IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_application.grade_point_average_cumulative IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_application.ref_grade_point_average_domain_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_application.ref_gpa_weighted_indicator_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_application.high_school_percentile IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_application.high_school_student_class_rank IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_application.high_school_graduating_class_size IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_application.ref_admitted_student_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_application.wait_listed_student IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_student_course_section_mark ( 
	organization_person_role_id integer  NOT NULL,
	ref_course_academic_grade_status_code_id integer  ,
	course_narrative_explanation_grade varchar(300)  ,
	student_course_section_grade_narrative varchar(300)  ,
	CONSTRAINT pk_ps_student_course_section_mark PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ps_student_course_section_mark.organization_person_role_id IS 'Surrogate key from Ps_Student_Section.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_course_section_mark.ref_course_academic_grade_status_code_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_course_section_mark.course_narrative_explanation_grade IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_course_section_mark.student_course_section_grade_narrative IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_student_employment ( 
	organization_person_role_id integer  NOT NULL,
	ref_employed_while_enrolled_id integer  ,
	ref_employed_after_exit_id integer  ,
	employment_naics_code char(6)  ,
	ref_employment_status_while_enrolled_id integer  ,
	CONSTRAINT pk_ps_student_employment PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_student_employment IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_employment.organization_person_role_id IS 'Surrogate Key - Foreign key: Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_employment.ref_employed_while_enrolled_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_employment.ref_employed_after_exit_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_employment.employment_naics_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_employment.ref_employment_status_while_enrolled_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ps_student_financial_aid ( 
	organization_person_role_id integer  NOT NULL,
	financial_aid_applicant bool  ,
	financial_need       decimal(9,2)  ,
	ref_need_determination_method_id integer  ,
	title_iv_participant_and_recipient bool  ,
	financial_aid_income_level decimal(9,2)  ,
	ref_financial_aid_veterans_benefit_status_id integer  ,
	ref_financial_aid_veterans_benefit_type_id integer  ,
	CONSTRAINT pk_ps_student_financial_aid PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ps_student_financial_aid IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_financial_aid.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_financial_aid.financial_aid_applicant IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_financial_aid.financial_need IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_financial_aid.ref_need_determination_method_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_financial_aid.title_iv_participant_and_recipient IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_financial_aid.financial_aid_income_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_financial_aid.ref_financial_aid_veterans_benefit_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ps_student_financial_aid.ref_financial_aid_veterans_benefit_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.quarterly_employment_record ( 
	quarterly_employment_record_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	earnings             decimal(9,2)  ,
	employment_naics_code varchar(50)  ,
	reference_period_start_date date  ,
	reference_period_end_date date  ,
	ref_er_administrative_data_source_id integer  ,
	ref_employment_location_id integer  ,
	ref_employed_prior_to_enrollment_id integer  ,
	CONSTRAINT pk_workforce_employment_record PRIMARY KEY ( quarterly_employment_record_id )
 );

COMMENT ON TABLE rs_ceds7_sc.quarterly_employment_record IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.quarterly_employment_record.quarterly_employment_record_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.quarterly_employment_record.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN rs_ceds7_sc.quarterly_employment_record.earnings IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.quarterly_employment_record.employment_naics_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.quarterly_employment_record.reference_period_start_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.quarterly_employment_record.reference_period_end_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.quarterly_employment_record.ref_er_administrative_data_source_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.quarterly_employment_record.ref_employment_location_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.quarterly_employment_record.ref_employed_prior_to_enrollment_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.ref_academic_award_level ( 
	ref_academic_award_level_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_academic_award_level PRIMARY KEY ( ref_academic_award_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_academic_award_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_award_level.ref_academic_award_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_award_level.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_award_level.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_award_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_academic_honor_type ( 
	ref_academic_honor_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_academic_honor_type PRIMARY KEY ( ref_academic_honor_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_academic_honor_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_honor_type.ref_academic_honor_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_honor_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_honor_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_honor_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_academic_subject ( 
	ref_academic_subject_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_academic_rank PRIMARY KEY ( ref_academic_subject_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_academic_subject IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_subject.ref_academic_subject_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_subject.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_subject.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_academic_subject.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_accommodation_type ( 
	ref_accommodation_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_accommodation_type PRIMARY KEY ( ref_accommodation_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_accommodation_type.ref_accommodation_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_accommodation_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_accommodation_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_accommodation_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_accommodation_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_accommodation_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_accreditation_agency ( 
	ref_accreditation_agency_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_accreditation_agency PRIMARY KEY ( ref_accreditation_agency_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_accreditation_agency IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_accreditation_agency.ref_accreditation_agency_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_accreditation_agency.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_accreditation_agency.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_accreditation_agency.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_activity_time_measurement_type ( 
	ref_activity_time_measurement_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_activity_time_measurement_type PRIMARY KEY ( ref_activity_time_measurement_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_activity_time_measurement_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_activity_time_measurement_type.ref_activity_time_measurement_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_activity_time_measurement_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_activity_time_measurement_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_activity_time_measurement_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_address_type ( 
	ref_address_type_id  integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_address_type PRIMARY KEY ( ref_address_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_address_type IS 'List of identification system types.';

COMMENT ON COLUMN rs_ceds7_sc.ref_address_type.ref_address_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_address_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_address_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_address_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_admission_consideration_level ( 
	ref_admission_consideration_level_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_admission_consideration_level PRIMARY KEY ( ref_admission_consideration_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_admission_consideration_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_admission_consideration_level.ref_admission_consideration_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_admission_consideration_level.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_admission_consideration_level.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_admission_consideration_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_admitted_student ( 
	ref_admitted_student_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_admitted_student PRIMARY KEY ( ref_admitted_student_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_admitted_student IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_admitted_student.ref_admitted_student_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_admitted_student.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_admitted_student.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_admitted_student.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.
';

CREATE TABLE rs_ceds7_sc.ref_ae_certification_type ( 
	ref_ae_certification_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ae_certification_type PRIMARY KEY ( ref_ae_certification_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ae_certification_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_certification_type.ref_ae_certification_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_certification_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_certification_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_certification_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ae_functioning_level_at_posttest ( 
	ref_ae_functioning_level_at_posttest_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ae_functioning_level_at_posttest PRIMARY KEY ( ref_ae_functioning_level_at_posttest_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ae_functioning_level_at_posttest IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_functioning_level_at_posttest.ref_ae_functioning_level_at_posttest_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_functioning_level_at_posttest.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_functioning_level_at_posttest.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_functioning_level_at_posttest.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ae_postsecondary_transition_action ( 
	ref_ae_postsecondary_transition_action_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ae_postsecondary_transition_action PRIMARY KEY ( ref_ae_postsecondary_transition_action_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ae_postsecondary_transition_action IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_postsecondary_transition_action.ref_ae_postsecondary_transition_action_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_postsecondary_transition_action.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_postsecondary_transition_action.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_postsecondary_transition_action.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ae_staff_classification ( 
	ref_ae_staff_classification_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ae_staff_classification PRIMARY KEY ( ref_ae_staff_classification_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ae_staff_classification IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_staff_classification.ref_ae_staff_classification_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_staff_classification.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_staff_classification.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ae_staff_classification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_allergy_severity ( 
	ref_allergy_severity_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_allergy_severity PRIMARY KEY ( ref_allergy_severity_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_allergy_severity IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_allergy_severity.ref_allergy_severity_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_allergy_severity.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_allergy_severity.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_allergy_severity.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_alt_route_to_certification_or_licensure ( 
	ref_alt_route_to_certification_or_licensure_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_alt_route_to_certification_or_licensure PRIMARY KEY ( ref_alt_route_to_certification_or_licensure_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_alt_route_to_certification_or_licensure IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_alt_route_to_certification_or_licensure.ref_alt_route_to_certification_or_licensure_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_alt_route_to_certification_or_licensure.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_alt_route_to_certification_or_licensure.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_alt_route_to_certification_or_licensure.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_alternative_school_focus ( 
	ref_alternative_school_focus_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_alternative_focus PRIMARY KEY ( ref_alternative_school_focus_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_alternative_school_focus IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_alternative_school_focus.ref_alternative_school_focus_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_alternative_school_focus.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_alternative_school_focus.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_alternative_school_focus.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_apip_interaction_type ( 
	ref_apip_interaction_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_apip_interaction_type PRIMARY KEY ( ref_apip_interaction_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_apip_interaction_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_apip_interaction_type.ref_apip_interaction_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_apip_interaction_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_apip_interaction_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_apip_interaction_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_asset_identifier_type ( 
	ref_assessment_asset_identifier_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assesment_assest_identifier_type PRIMARY KEY ( ref_assessment_asset_identifier_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_asset_identifier_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_asset_identifier_type.ref_assessment_asset_identifier_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_asset_identifier_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_asset_identifier_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_asset_identifier_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_el_developmental_domain ( 
	ref_assessment_el_developmental_domain_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_assessment_el_developmental_domain PRIMARY KEY ( ref_assessment_el_developmental_domain_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_el_developmental_domain IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_el_developmental_domain.ref_assessment_el_developmental_domain_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_el_developmental_domain.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_el_developmental_domain.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_el_developmental_domain.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_item_characteristic_type ( 
	ref_assessment_item_characteristic_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_item_characteristic_type PRIMARY KEY ( ref_assessment_item_characteristic_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_item_characteristic_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_characteristic_type.ref_assessment_item_characteristic_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_characteristic_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_characteristic_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_characteristic_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_item_response_status ( 
	ref_assessment_item_response_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_item_response_status PRIMARY KEY ( ref_assessment_item_response_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_item_response_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_response_status.ref_assessment_item_response_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_response_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_response_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_item_response_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_alternative_representation_type ( 
	ref_assessment_need_alternative_representation_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_alternative_representation_type PRIMARY KEY ( ref_assessment_need_alternative_representation_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_need_alternative_representation_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_alternative_representation_type.ref_assessment_need_alternative_representation_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_alternative_representation_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_alternative_representation_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_alternative_representation_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_braille_mark_type ( 
	ref_assessment_need_braille_mark_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_braille_mark_type PRIMARY KEY ( ref_assessment_need_braille_mark_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_need_braille_mark_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_braille_mark_type.ref_assessment_need_braille_mark_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_braille_mark_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_braille_mark_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_braille_mark_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_hazard_type ( 
	ref_assessment_need_hazard_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_hazard_type PRIMARY KEY ( ref_assessment_need_hazard_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_need_hazard_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_hazard_type.ref_assessment_need_hazard_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_hazard_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_hazard_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_hazard_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_language_learner_type ( 
	ref_assessment_need_language_learner_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_needs_profile_content_language_learner_type PRIMARY KEY ( ref_assessment_need_language_learner_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_language_learner_type.ref_assessment_need_language_learner_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_language_learner_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_language_learner_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_masking_type ( 
	ref_assessment_need_masking_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_display_masking_type PRIMARY KEY ( ref_assessment_need_masking_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_need_masking_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_masking_type.ref_assessment_need_masking_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_masking_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_masking_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_masking_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_signing_type ( 
	ref_assessment_need_signing_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_signing_type PRIMARY KEY ( ref_assessment_need_signing_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_need_signing_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_signing_type.ref_assessment_need_signing_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_signing_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_signing_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_signing_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_support_tool ( 
	ref_assessment_need_support_tool_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_support_tool PRIMARY KEY ( ref_assessment_need_support_tool_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_need_support_tool IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_support_tool.ref_assessment_need_support_tool_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_support_tool.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_support_tool.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_support_tool.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_need_user_spoken_preference_type ( 
	ref_assessment_need_user_spoken_preference_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_user_spoken_preference_type PRIMARY KEY ( ref_assessment_need_user_spoken_preference_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_need_user_spoken_preference_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_user_spoken_preference_type.ref_assessment_need_user_spoken_preference_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_user_spoken_preference_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_user_spoken_preference_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_need_user_spoken_preference_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_platform_type ( 
	ref_assessment_platform_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assesessment_platform_type PRIMARY KEY ( ref_assessment_platform_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_platform_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_platform_type.ref_assessment_platform_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_platform_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_platform_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_platform_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_purpose ( 
	ref_assessment_purpose_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_purpose PRIMARY KEY ( ref_assessment_purpose_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_purpose IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_purpose.ref_assessment_purpose_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_purpose.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_purpose.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_purpose.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_reason_not_tested ( 
	ref_assessment_reason_not_tested_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_reason_not_tested PRIMARY KEY ( ref_assessment_reason_not_tested_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_reason_not_tested IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_reason_not_tested.ref_assessment_reason_not_tested_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_reason_not_tested.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_reason_not_tested.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_reason_not_tested.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_reporting_method ( 
	ref_assessment_reporting_method_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_reporting_method PRIMARY KEY ( ref_assessment_reporting_method_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_reporting_method IS 'The method used to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. In some cases, more than one type of reporting method may be used. ';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_reporting_method.ref_assessment_reporting_method_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_reporting_method.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_reporting_method.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_reporting_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_result_score_type ( 
	ref_assessment_result_score_type_id integer  NOT NULL,
	description          varchar(150)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_result_score_type PRIMARY KEY ( ref_assessment_result_score_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_result_score_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_result_score_type.ref_assessment_result_score_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_result_score_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_result_score_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_result_score_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_session_staff_role_type ( 
	ref_assessment_session_staff_role_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_sesstion_staff_role_type PRIMARY KEY ( ref_assessment_session_staff_role_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_session_staff_role_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_session_staff_role_type.ref_assessment_session_staff_role_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_session_staff_role_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_session_staff_role_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_session_staff_role_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_subtest_identifier_type ( 
	ref_assessment_subtest_identifier_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_subtest_identifier_type PRIMARY KEY ( ref_assessment_subtest_identifier_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_subtest_identifier_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_subtest_identifier_type.ref_assessment_subtest_identifier_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_subtest_identifier_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_subtest_identifier_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_subtest_identifier_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_assessment_type_children_with_disabilities ( 
	ref_assessment_type_children_with_disabilities_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_type_children_with_disabilities PRIMARY KEY ( ref_assessment_type_children_with_disabilities_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_assessment_type_children_with_disabilities IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_type_children_with_disabilities.ref_assessment_type_children_with_disabilities_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_type_children_with_disabilities.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_type_children_with_disabilities.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_assessment_type_children_with_disabilities.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_attendance_status ( 
	ref_attendance_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_attendance_status PRIMARY KEY ( ref_attendance_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_attendance_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_attendance_status.ref_attendance_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_attendance_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_attendance_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_attendance_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ayp_status ( 
	ref_ayp_status_id    integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ayp_status PRIMARY KEY ( ref_ayp_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ayp_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ayp_status.ref_ayp_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ayp_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ayp_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ayp_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_billable_basis_type ( 
	ref_billable_basis_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_billable_basis_type PRIMARY KEY ( ref_billable_basis_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_billable_basis_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_billable_basis_type.ref_billable_basis_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_billable_basis_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_billable_basis_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_billable_basis_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_blooms_taxonomy_domain ( 
	ref_blooms_taxonomy_domain_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_bloom_taxonomy_domain PRIMARY KEY ( ref_blooms_taxonomy_domain_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_blooms_taxonomy_domain IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_blooms_taxonomy_domain.ref_blooms_taxonomy_domain_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_blooms_taxonomy_domain.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_blooms_taxonomy_domain.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_blooms_taxonomy_domain.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_campus_residency_type ( 
	ref_campus_residency_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_campus_residency_type PRIMARY KEY ( ref_campus_residency_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_campus_residency_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_campus_residency_type.ref_campus_residency_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_campus_residency_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_campus_residency_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_campus_residency_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_career_education_plan_type ( 
	ref_career_education_plan_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_career_education_plan_type PRIMARY KEY ( ref_career_education_plan_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_career_education_plan_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_career_education_plan_type.ref_career_education_plan_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_career_education_plan_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_career_education_plan_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_career_education_plan_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_charter_school_approval_agency_type ( 
	ref_charter_school_approval_agency_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_charter_school_approval_agency_type PRIMARY KEY ( ref_charter_school_approval_agency_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_charter_school_approval_agency_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_charter_school_approval_agency_type.ref_charter_school_approval_agency_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_charter_school_approval_agency_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_charter_school_approval_agency_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_charter_school_approval_agency_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_charter_school_type ( 
	ref_charter_school_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_charter_school_type PRIMARY KEY ( ref_charter_school_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_charter_school_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_charter_school_type.ref_charter_school_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_charter_school_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_charter_school_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_charter_school_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_child_developmental_screening_status ( 
	ref_child_developmental_screening_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_child_developmental_screening_status PRIMARY KEY ( ref_child_developmental_screening_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_child_developmental_screening_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_child_developmental_screening_status.ref_child_developmental_screening_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_child_developmental_screening_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_child_developmental_screening_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_child_developmental_screening_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_cip_code ( 
	ref_cip_code_id      integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_cip_code PRIMARY KEY ( ref_cip_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_cip_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cip_code.ref_cip_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_cip_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cip_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cip_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_cip_version ( 
	ref_cip_version_id   integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_cip_version PRIMARY KEY ( ref_cip_version_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_cip_version IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cip_version.ref_cip_version_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_cip_version.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cip_version.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cip_version.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_cohort_exclusion ( 
	ref_cohort_exclusion_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_cohort_exclusion PRIMARY KEY ( ref_cohort_exclusion_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_cohort_exclusion IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cohort_exclusion.ref_cohort_exclusion_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_cohort_exclusion.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cohort_exclusion.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cohort_exclusion.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_community_based_type ( 
	ref_community_based_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_community_based_type PRIMARY KEY ( ref_community_based_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_community_based_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_community_based_type.ref_community_based_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_community_based_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_community_based_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_community_based_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_competency_framework_item_node_accessibility_profile ( 
	ref_competency_framework_item_node_accessibility_profile_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_competency_framework_item_node_accessibility_profile PRIMARY KEY ( ref_competency_framework_item_node_accessibility_profile_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_node_accessibility_profile.ref_competency_framework_item_node_accessibility_profile_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_node_accessibility_profile.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_node_accessibility_profile.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_node_accessibility_profile.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_node_accessibility_profile.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_item_node_accessibility_profile.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_competency_framework_publication_status ( 
	ref_competency_framework_publication_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_competency_framework_publication_status PRIMARY KEY ( ref_competency_framework_publication_status_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_publication_status.ref_competency_framework_publication_status_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_publication_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_publication_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_publication_status.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_publication_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_competency_framework_publication_status.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_content_standard_type ( 
	ref_content_standard_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_content_standard_type PRIMARY KEY ( ref_content_standard_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_content_standard_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_content_standard_type.ref_content_standard_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_content_standard_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_content_standard_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_content_standard_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_control_of_institution ( 
	ref_control_of_institution_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_control_of_institution PRIMARY KEY ( ref_control_of_institution_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_control_of_institution IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_control_of_institution.ref_control_of_institution_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_control_of_institution.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_control_of_institution.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_control_of_institution.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_correctional_education_facility_type ( 
	ref_correctional_education_facility_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_correctional_education_facility_type PRIMARY KEY ( ref_correctional_education_facility_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_correctional_education_facility_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_correctional_education_facility_type.ref_correctional_education_facility_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_correctional_education_facility_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_correctional_education_facility_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_correctional_education_facility_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_country ( 
	ref_country_id       integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_country PRIMARY KEY ( ref_country_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_country IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_country.ref_country_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_country.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_country.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_country.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_academic_grade_status_code ( 
	ref_course_academic_grade_status_code_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_academic_grade_status_code PRIMARY KEY ( ref_course_academic_grade_status_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_academic_grade_status_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_academic_grade_status_code.ref_course_academic_grade_status_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_academic_grade_status_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_academic_grade_status_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_academic_grade_status_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_credit_basis_type ( 
	ref_course_credit_basis_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_credit_basis_type PRIMARY KEY ( ref_course_credit_basis_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_credit_basis_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_credit_basis_type.ref_course_credit_basis_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_credit_basis_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_credit_basis_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_credit_basis_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_credit_unit ( 
	ref_course_credit_unit_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_credit_unit PRIMARY KEY ( ref_course_credit_unit_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_credit_unit IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_credit_unit.ref_course_credit_unit_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_credit_unit.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_credit_unit.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_credit_unit.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_honors_type ( 
	ref_course_honors_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_honors_type PRIMARY KEY ( ref_course_honors_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_honors_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_honors_type.ref_course_honors_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_honors_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_honors_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_honors_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_instruction_site_type ( 
	ref_course_instruction_site_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_instruction_site_type PRIMARY KEY ( ref_course_instruction_site_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_instruction_site_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_instruction_site_type.ref_course_instruction_site_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_instruction_site_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_instruction_site_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_instruction_site_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_level_characteristic ( 
	ref_course_level_characteristic_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_level_characteristic PRIMARY KEY ( ref_course_level_characteristic_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_level_characteristic IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_level_characteristic.ref_course_level_characteristic_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_level_characteristic.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_level_characteristic.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_level_characteristic.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_repeat_code ( 
	ref_course_repeat_code_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_repeat_code PRIMARY KEY ( ref_course_repeat_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_repeat_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_repeat_code.ref_course_repeat_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_repeat_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_repeat_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_repeat_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_section_delivery_mode ( 
	ref_course_section_delivery_mode_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_section_delivery_mode PRIMARY KEY ( ref_course_section_delivery_mode_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_section_delivery_mode IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_delivery_mode.ref_course_section_delivery_mode_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_delivery_mode.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_delivery_mode.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_delivery_mode.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_course_section_entry_type ( 
	ref_course_section_entry_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_section_entry_type PRIMARY KEY ( ref_course_section_entry_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_course_section_entry_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_entry_type.ref_course_section_entry_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_entry_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_entry_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_course_section_entry_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_credential_assessment_method_type ( 
	ref_credential_assessment_method_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_credential_assessment_method_type PRIMARY KEY ( ref_credential_assessment_method_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_assessment_method_type.ref_credential_assessment_method_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_assessment_method_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_assessment_method_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_assessment_method_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_assessment_method_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_assessment_method_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_credential_intended_purpose_type ( 
	ref_credential_intended_purpose_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_credential_intended_purpose_type PRIMARY KEY ( ref_credential_intended_purpose_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_intended_purpose_type.ref_credential_intended_purpose_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_intended_purpose_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_intended_purpose_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_intended_purpose_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_intended_purpose_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_intended_purpose_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_credential_type ( 
	ref_credential_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_credential PRIMARY KEY ( ref_credential_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_credential_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_type.ref_credential_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credential_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_credit_hours_applied_other_program ( 
	ref_credit_hours_applied_other_program_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_credit_hours_applied_other_program PRIMARY KEY ( ref_credit_hours_applied_other_program_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_credit_hours_applied_other_program IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credit_hours_applied_other_program.ref_credit_hours_applied_other_program_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_credit_hours_applied_other_program.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credit_hours_applied_other_program.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_credit_hours_applied_other_program.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_critical_teacher_shortage_candidate ( 
	ref_critical_teacher_shortage_candidate_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_critical_teacher_shortage_candidate PRIMARY KEY ( ref_critical_teacher_shortage_candidate_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_critical_teacher_shortage_candidate IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_critical_teacher_shortage_candidate.ref_critical_teacher_shortage_candidate_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_critical_teacher_shortage_candidate.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_critical_teacher_shortage_candidate.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_critical_teacher_shortage_candidate.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ctdl_organization_type ( 
	ref_ctdl_organization_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_ctdl_organization_type PRIMARY KEY ( ref_ctdl_organization_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ctdl_organization_type.ref_ctdl_organization_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ctdl_organization_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ctdl_organization_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ctdl_organization_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ctdl_organization_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ctdl_organization_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_cte_non_traditional_gender_status ( 
	ref_cte_non_traditional_gender_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_cte_non_traditional_gender_status_id PRIMARY KEY ( ref_cte_non_traditional_gender_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_cte_non_traditional_gender_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cte_non_traditional_gender_status.ref_cte_non_traditional_gender_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_cte_non_traditional_gender_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cte_non_traditional_gender_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_cte_non_traditional_gender_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_dental_insurance_coverage_type ( 
	ref_dental_insurance_coverage_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_dental_insurance_coverage_type PRIMARY KEY ( ref_dental_insurance_coverage_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_dental_insurance_coverage_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_dental_insurance_coverage_type.ref_dental_insurance_coverage_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_dental_insurance_coverage_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_dental_insurance_coverage_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_dental_insurance_coverage_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_dependency_status ( 
	ref_dependency_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_dependency_status PRIMARY KEY ( ref_dependency_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_dependency_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_dependency_status.ref_dependency_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_dependency_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_dependency_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_dependency_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_developmental_education_type ( 
	ref_developmental_education_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_developmental_education_type PRIMARY KEY ( ref_developmental_education_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_developmental_education_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_developmental_education_type.ref_developmental_education_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_developmental_education_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_developmental_education_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_developmental_education_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_directory_information_block_status ( 
	ref_directory_information_block_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_directory_information_block_status PRIMARY KEY ( ref_directory_information_block_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_directory_information_block_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_directory_information_block_status.ref_directory_information_block_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_directory_information_block_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_directory_information_block_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_directory_information_block_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_disability_condition_type ( 
	ref_disability_condition_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_disability_condition_type PRIMARY KEY ( ref_disability_condition_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_disability_condition_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_condition_type.ref_disability_condition_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_condition_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_condition_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_condition_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_disability_type ( 
	ref_disability_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_disability_type PRIMARY KEY ( ref_disability_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_disability_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_type.ref_disability_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_disability_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_discipline_length_difference_reason ( 
	ref_discipline_length_difference_reason_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_discipline_length_difference_reason PRIMARY KEY ( ref_discipline_length_difference_reason_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_discipline_length_difference_reason IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_length_difference_reason.ref_discipline_length_difference_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_length_difference_reason.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_length_difference_reason.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_length_difference_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_discipline_method_of_cwd ( 
	ref_discipline_method_of_cwd_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_discipline_method_of_cwd PRIMARY KEY ( ref_discipline_method_of_cwd_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_discipline_method_of_cwd IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_method_of_cwd.ref_discipline_method_of_cwd_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_method_of_cwd.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_method_of_cwd.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_discipline_method_of_cwd.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_distance_education_course_enrollment ( 
	ref_distance_education_course_enrollment_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_distance_education_course_enr PRIMARY KEY ( ref_distance_education_course_enrollment_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_distance_education_course_enrollment IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_distance_education_course_enrollment.ref_distance_education_course_enrollment_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_distance_education_course_enrollment.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_distance_education_course_enrollment.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_distance_education_course_enrollment.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_dqp_categories_of_learning ( 
	ref_dqp_categories_of_learning_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_dqp_categories_of_learning PRIMARY KEY ( ref_dqp_categories_of_learning_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_dqp_categories_of_learning IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_dqp_categories_of_learning.ref_dqp_categories_of_learning_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_dqp_categories_of_learning.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_dqp_categories_of_learning.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_dqp_categories_of_learning.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_early_childhood_program_enrollment_type ( 
	ref_early_childhood_program_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_early_learning_program_type PRIMARY KEY ( ref_early_childhood_program_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_early_childhood_program_enrollment_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_early_childhood_program_enrollment_type.ref_early_childhood_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_early_childhood_program_enrollment_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_early_childhood_program_enrollment_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_early_childhood_program_enrollment_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_education_level ( 
	ref_education_level_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	ref_education_level_type_id integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_education_level PRIMARY KEY ( ref_education_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_education_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_education_level.ref_education_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_education_level.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_education_level.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_education_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_education_verification_method ( 
	ref_education_verification_method_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_education_verification_method PRIMARY KEY ( ref_education_verification_method_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_education_verification_method IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_education_verification_method.ref_education_verification_method_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_education_verification_method.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_education_verification_method.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_education_verification_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_education_staff_classification ( 
	ref_el_education_staff_classification_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_education_staff_classification PRIMARY KEY ( ref_el_education_staff_classification_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_education_staff_classification IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_education_staff_classification.ref_el_education_staff_classification_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_education_staff_classification.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_education_staff_classification.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_education_staff_classification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_facility_licensing_status ( 
	ref_el_facility_licensing_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_facility_licensing_status PRIMARY KEY ( ref_el_facility_licensing_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_facility_licensing_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_facility_licensing_status.ref_el_facility_licensing_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_facility_licensing_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_facility_licensing_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_facility_licensing_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_group_size_standard_met ( 
	ref_el_group_size_standard_met_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_group_size_standard_met PRIMARY KEY ( ref_el_group_size_standard_met_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_group_size_standard_met IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_group_size_standard_met.ref_el_group_size_standard_met_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_group_size_standard_met.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_group_size_standard_met.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_group_size_standard_met.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_local_revenue_source ( 
	ref_el_local_revenue_source_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_local_revenue_source PRIMARY KEY ( ref_el_local_revenue_source_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_local_revenue_source IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_local_revenue_source.ref_el_local_revenue_source_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_local_revenue_source.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_local_revenue_source.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_local_revenue_source.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_outcome_measurement_level ( 
	ref_el_outcome_measurement_level_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_outcome_measurement_level PRIMARY KEY ( ref_el_outcome_measurement_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_outcome_measurement_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_outcome_measurement_level.ref_el_outcome_measurement_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_outcome_measurement_level.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_outcome_measurement_level.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_outcome_measurement_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_program_eligibility ( 
	ref_el_program_eligibility_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_el_program_eligibility PRIMARY KEY ( ref_el_program_eligibility_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_program_eligibility IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_program_eligibility.ref_el_program_eligibility_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_program_eligibility.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_program_eligibility.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_program_eligibility.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_program_license_status ( 
	ref_el_program_license_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_program_license_status PRIMARY KEY ( ref_el_program_license_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_program_license_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_program_license_status.ref_el_program_license_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_program_license_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_program_license_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_program_license_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_service_type ( 
	ref_el_service_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_service_type PRIMARY KEY ( ref_el_service_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_service_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_service_type.ref_el_service_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_service_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_service_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_service_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_el_trainer_core_knowledge_area ( 
	ref_el_trainer_core_knowledge_area_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_trainer_core_knowledge_area PRIMARY KEY ( ref_el_trainer_core_knowledge_area_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_el_trainer_core_knowledge_area IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_trainer_core_knowledge_area.ref_el_trainer_core_knowledge_area_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_trainer_core_knowledge_area.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_trainer_core_knowledge_area.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_el_trainer_core_knowledge_area.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_email_type ( 
	ref_email_type_id    integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_email_type PRIMARY KEY ( ref_email_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_email_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_email_type.ref_email_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_email_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_email_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_email_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_employed_prior_to_enrollment ( 
	ref_employed_prior_to_enrollment_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_employed_prior_to_enrollment PRIMARY KEY ( ref_employed_prior_to_enrollment_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_employed_prior_to_enrollment IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employed_prior_to_enrollment.ref_employed_prior_to_enrollment_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_employed_prior_to_enrollment.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employed_prior_to_enrollment.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employed_prior_to_enrollment.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_employee_benefit ( 
	ref_employee_benefit_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_employee_benefit PRIMARY KEY ( ref_employee_benefit_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_employee_benefit.ref_employee_benefit_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employee_benefit.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employee_benefit.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employee_benefit.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employee_benefit.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employee_benefit.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_employment_separation_type ( 
	ref_employment_separation_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_employment_separation_type PRIMARY KEY ( ref_employment_separation_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_employment_separation_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_separation_type.ref_employment_separation_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_separation_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_separation_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_separation_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_employment_status_while_enrolled ( 
	ref_employment_status_while_enrolled_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_employment_status_while_enrolled PRIMARY KEY ( ref_employment_status_while_enrolled_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_employment_status_while_enrolled IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_status_while_enrolled.ref_employment_status_while_enrolled_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_status_while_enrolled.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_status_while_enrolled.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_employment_status_while_enrolled.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_enrollment_status ( 
	ref_enrollment_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_enrollment_status PRIMARY KEY ( ref_enrollment_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_enrollment_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_enrollment_status.ref_enrollment_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_enrollment_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_enrollment_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_enrollment_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_entry_type ( 
	ref_entry_type_id    integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_entry_type PRIMARY KEY ( ref_entry_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_entry_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_entry_type.ref_entry_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_entry_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_entry_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_entry_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_er_administrative_data_source ( 
	ref_er_administrative_data_source_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_er_administrative_data_source PRIMARY KEY ( ref_er_administrative_data_source_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_er_administrative_data_source IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_er_administrative_data_source.ref_er_administrative_data_source_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_er_administrative_data_source.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_er_administrative_data_source.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_er_administrative_data_source.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_exit_or_withdrawal_status ( 
	ref_exit_or_withdrawal_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_exit_or_withdrawel_status PRIMARY KEY ( ref_exit_or_withdrawal_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_exit_or_withdrawal_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_exit_or_withdrawal_status.ref_exit_or_withdrawal_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_exit_or_withdrawal_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_exit_or_withdrawal_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_exit_or_withdrawal_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_family_income_source ( 
	ref_family_income_source_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_family_income_source PRIMARY KEY ( ref_family_income_source_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_family_income_source IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_family_income_source.ref_family_income_source_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_family_income_source.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_family_income_source.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_family_income_source.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_financial_account_balance_sheet_code ( 
	ref_financial_balance_sheet_account_code_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_balance_sheet_account_code PRIMARY KEY ( ref_financial_balance_sheet_account_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_financial_account_balance_sheet_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_balance_sheet_code.ref_financial_balance_sheet_account_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_balance_sheet_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_balance_sheet_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_balance_sheet_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_financial_account_fund_classification ( 
	ref_financial_account_fund_classification_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_account_fund_classification PRIMARY KEY ( ref_financial_account_fund_classification_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_financial_account_fund_classification IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_fund_classification.ref_financial_account_fund_classification_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_fund_classification.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_fund_classification.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_fund_classification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_financial_account_revenue_code ( 
	ref_financial_account_revenue_code_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_revenue_account_code PRIMARY KEY ( ref_financial_account_revenue_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_financial_account_revenue_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_revenue_code.ref_financial_account_revenue_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_revenue_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_revenue_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_account_revenue_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_financial_aid_award_status ( 
	ref_financial_aid_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_financial_aid_award_status PRIMARY KEY ( ref_financial_aid_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_financial_aid_award_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_award_status.ref_financial_aid_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_award_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_award_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_award_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_financial_aid_veterans_benefit_status ( 
	ref_financial_aid_veterans_benefit_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_aid_veterans_benefit_status PRIMARY KEY ( ref_financial_aid_veterans_benefit_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_financial_aid_veterans_benefit_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_veterans_benefit_status.ref_financial_aid_veterans_benefit_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_veterans_benefit_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_veterans_benefit_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_aid_veterans_benefit_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_financial_expenditure_function_code ( 
	ref_financial_expenditure_function_code_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_expenditure_function_code PRIMARY KEY ( ref_financial_expenditure_function_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_financial_expenditure_function_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_expenditure_function_code.ref_financial_expenditure_function_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_expenditure_function_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_expenditure_function_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_expenditure_function_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_financial_expenditure_object_code ( 
	ref_financial_expenditure_object_code_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_expenditure_object_code PRIMARY KEY ( ref_financial_expenditure_object_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_financial_expenditure_object_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_expenditure_object_code.ref_financial_expenditure_object_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_expenditure_object_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_expenditure_object_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_financial_expenditure_object_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_food_service_eligibility ( 
	ref_food_service_eligibility_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction     integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_food_service_eligibility PRIMARY KEY ( ref_food_service_eligibility_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_food_service_eligibility IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_food_service_eligibility.ref_food_service_eligibility_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_food_service_eligibility.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_food_service_eligibility.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_food_service_eligibility.ref_jurisdiction IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_frequency_of_service ( 
	ref_frequency_of_service_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_frequency_of_service PRIMARY KEY ( ref_frequency_of_service_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_frequency_of_service IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_frequency_of_service.ref_frequency_of_service_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_frequency_of_service.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_frequency_of_service.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_frequency_of_service.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_full_time_status ( 
	ref_full_time_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_full_time_status PRIMARY KEY ( ref_full_time_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_full_time_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_full_time_status.ref_full_time_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_full_time_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_full_time_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_full_time_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_goal_status_type ( 
	ref_goal_status_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_goal_status_type PRIMARY KEY ( ref_goal_status_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_goal_status_type.ref_goal_status_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_goal_status_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_goal_status_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_goal_status_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_goal_status_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_goal_status_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_gpa_weighted_indicator ( 
	ref_gpa_weighted_indicator_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_gpa_weighted_indicator PRIMARY KEY ( ref_gpa_weighted_indicator_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_gpa_weighted_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_gpa_weighted_indicator.ref_gpa_weighted_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_gpa_weighted_indicator.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_gpa_weighted_indicator.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_gpa_weighted_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_grade_level_type ( 
	ref_grade_level_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_grade_level_type PRIMARY KEY ( ref_grade_level_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_grade_level_type IS 'List of identification system types.';

COMMENT ON COLUMN rs_ceds7_sc.ref_grade_level_type.ref_grade_level_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_grade_level_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_grade_level_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_grade_level_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_graduate_assistant_ipeds_category ( 
	ref_graduate_assistant_ipeds_category_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_graduate_assist_ipeds_category PRIMARY KEY ( ref_graduate_assistant_ipeds_category_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_graduate_assistant_ipeds_category IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_graduate_assistant_ipeds_category.ref_graduate_assistant_ipeds_category_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_graduate_assistant_ipeds_category.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_graduate_assistant_ipeds_category.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_graduate_assistant_ipeds_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_gun_free_schools_act_reporting_status ( 
	ref_gun_free_schools_act_status_reporting_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_gun_free_schools_act_status_reporting PRIMARY KEY ( ref_gun_free_schools_act_status_reporting_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_gun_free_schools_act_reporting_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_gun_free_schools_act_reporting_status.ref_gun_free_schools_act_status_reporting_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_gun_free_schools_act_reporting_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_gun_free_schools_act_reporting_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_gun_free_schools_act_reporting_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_hearing_screening_status ( 
	ref_hearing_screening_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_hearing_screen PRIMARY KEY ( ref_hearing_screening_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_hearing_screening_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_hearing_screening_status.ref_hearing_screening_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_hearing_screening_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_hearing_screening_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_hearing_screening_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_high_school_diploma_type ( 
	ref_high_school_diploma_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_high_school_diploma_type PRIMARY KEY ( ref_high_school_diploma_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_high_school_diploma_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_high_school_diploma_type.ref_high_school_diploma_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_high_school_diploma_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_high_school_diploma_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_high_school_diploma_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_higher_education_institution_accreditation_status ( 
	ref_higher_education_institution_accreditation_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_higher_education_institution_accreditation_status PRIMARY KEY ( ref_higher_education_institution_accreditation_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_higher_education_institution_accreditation_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_higher_education_institution_accreditation_status.ref_higher_education_institution_accreditation_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_higher_education_institution_accreditation_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_higher_education_institution_accreditation_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_higher_education_institution_accreditation_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_idea_disability_type ( 
	ref_idea_disability_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_idea_disability_type PRIMARY KEY ( ref_idea_disability_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_disability_type.ref_idea_disability_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_disability_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_disability_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_disability_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_disability_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_disability_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_idea_educational_environment_ec ( 
	ref_idea_educational_environment_ec_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_idea_educational_environment_ec PRIMARY KEY ( ref_idea_educational_environment_ec_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_idea_educational_environment_ec IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_educational_environment_ec.ref_idea_educational_environment_ec_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_educational_environment_ec.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_educational_environment_ec.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_educational_environment_ec.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_idea_eligibility_evaluation_category ( 
	ref_idea_eligibility_evaluation_category_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_idea_eligibility_evaluation_category PRIMARY KEY ( ref_idea_eligibility_evaluation_category_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_eligibility_evaluation_category.ref_idea_eligibility_evaluation_category_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_eligibility_evaluation_category.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_eligibility_evaluation_category.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_eligibility_evaluation_category.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_eligibility_evaluation_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_eligibility_evaluation_category.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_idea_iep_status ( 
	ref_idea_iep_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_idea_iep_status PRIMARY KEY ( ref_idea_iep_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_idea_iep_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_iep_status.ref_idea_iep_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_iep_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_iep_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_iep_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_idea_interim_removal_reason ( 
	ref_idea_interim_removal_reason_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_idea_interim_removal_reason PRIMARY KEY ( ref_idea_interim_removal_reason_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_idea_interim_removal_reason IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_interim_removal_reason.ref_idea_interim_removal_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_interim_removal_reason.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_interim_removal_reason.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_idea_interim_removal_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_iep_authorization_document_type ( 
	ref_iep_authorization_document_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_iep_authorization_document_type PRIMARY KEY ( ref_iep_authorization_document_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_authorization_document_type.ref_iep_authorization_document_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_authorization_document_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_authorization_document_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_authorization_document_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_authorization_document_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_authorization_document_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_iep_goal_type ( 
	ref_iep_goal_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_iep_goal_type PRIMARY KEY ( ref_iep_goal_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_goal_type.ref_iep_goal_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_goal_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_goal_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_goal_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_goal_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iep_goal_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_immunization_type ( 
	ref_immunization_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_immunization_type PRIMARY KEY ( ref_immunization_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_immunization_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_immunization_type.ref_immunization_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_immunization_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_immunization_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_immunization_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_incident_behavior_secondary ( 
	ref_incident_behavior_secondary_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_incident_behavior_secondary PRIMARY KEY ( ref_incident_behavior_secondary_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_incident_behavior_secondary IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_behavior_secondary.ref_incident_behavior_secondary_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_behavior_secondary.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_behavior_secondary.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_behavior_secondary.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_incident_location ( 
	ref_incident_location_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_inciddent_location PRIMARY KEY ( ref_incident_location_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_incident_location IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_location.ref_incident_location_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_location.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_location.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_location.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_incident_perpetrator_injury_type ( 
	ref_incident_perpetrator_injury_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_incident_perpetrator_injury_type PRIMARY KEY ( ref_incident_perpetrator_injury_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_incident_perpetrator_injury_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_perpetrator_injury_type.ref_incident_perpetrator_injury_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_perpetrator_injury_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_perpetrator_injury_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_perpetrator_injury_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_incident_person_type ( 
	ref_incident_person_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_incident_person_type PRIMARY KEY ( ref_incident_person_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_incident_person_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_person_type.ref_incident_person_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_person_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_person_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_person_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_incident_time_description_code ( 
	ref_incident_time_description_code_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_incident_time_description_code PRIMARY KEY ( ref_incident_time_description_code_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_incident_time_description_code IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_time_description_code.ref_incident_time_description_code_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_time_description_code.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_time_description_code.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_incident_time_description_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_increased_learning_time_type ( 
	ref_increased_learning_time_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_increased_learning_time_type PRIMARY KEY ( ref_increased_learning_time_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_increased_learning_time_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_increased_learning_time_type.ref_increased_learning_time_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_increased_learning_time_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_increased_learning_time_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_increased_learning_time_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_individualized_program_location ( 
	ref_individualized_program_location_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_individualized_program_location PRIMARY KEY ( ref_individualized_program_location_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_individualized_program_location IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_location.ref_individualized_program_location_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_location.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_location.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_location.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_individualized_program_transition_type ( 
	ref_individualized_program_transition_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_individualized_program_transition_type PRIMARY KEY ( ref_individualized_program_transition_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_individualized_program_transition_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_transition_type.ref_individualized_program_transition_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_transition_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_transition_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_individualized_program_transition_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_institution_telephone_type ( 
	ref_institution_telephone_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_institution_telephone PRIMARY KEY ( ref_institution_telephone_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_institution_telephone_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_institution_telephone_type.ref_institution_telephone_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_institution_telephone_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_institution_telephone_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_institution_telephone_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_instruction_location_type ( 
	ref_instruction_location_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_instruction_location_type PRIMARY KEY ( ref_instruction_location_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_instruction_location_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instruction_location_type.ref_instruction_location_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_instruction_location_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instruction_location_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instruction_location_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_instructional_staff_contract_length ( 
	ref_instructional_staff_contract_length_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_instruct_staff_contract_length PRIMARY KEY ( ref_instructional_staff_contract_length_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_instructional_staff_contract_length IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instructional_staff_contract_length.ref_instructional_staff_contract_length_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_instructional_staff_contract_length.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instructional_staff_contract_length.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_instructional_staff_contract_length.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_integrated_technology_status ( 
	ref_integrated_technology_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_integrated_technology_status PRIMARY KEY ( ref_integrated_technology_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_integrated_technology_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_integrated_technology_status.ref_integrated_technology_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_integrated_technology_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_integrated_technology_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_integrated_technology_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ipeds_natural_expense ( 
	ref_ipeds_natural_expense_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_ipeds_natural_expense PRIMARY KEY ( ref_ipeds_natural_expense_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_natural_expense.ref_ipeds_natural_expense_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_natural_expense.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_natural_expense.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_natural_expense.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_natural_expense.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_natural_expense.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_ipeds_occupational_category ( 
	ref_ipeds_occupational_category_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ipeds_occupational_category PRIMARY KEY ( ref_ipeds_occupational_category_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ipeds_occupational_category IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_occupational_category.ref_ipeds_occupational_category_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_occupational_category.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_occupational_category.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipeds_occupational_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ipedsfasb_functional_expense ( 
	ref_ipedsfasb_functional_expense_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_ipedsfasb_functional_expense PRIMARY KEY ( ref_ipedsfasb_functional_expense_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_functional_expense.ref_ipedsfasb_functional_expense_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_functional_expense.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_functional_expense.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_functional_expense.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_functional_expense.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_functional_expense.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_ipedsfasb_revenue ( 
	ref_ipedsfasb_revenue_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_ipedsfasb_revenue PRIMARY KEY ( ref_ipedsfasb_revenue_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_revenue.ref_ipedsfasb_revenue_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_revenue.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_revenue.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_revenue.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_revenue.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_revenue.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_ipedsfasb_scholarshipsand_fellowships_revenue ( 
	ref_ipedsfasb_scholarshipsand_fellowships_revenue_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_ipedsfasb_scholarshipsand_fellowships_revenue PRIMARY KEY ( ref_ipedsfasb_scholarshipsand_fellowships_revenue_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_scholarshipsand_fellowships_revenue.ref_ipedsfasb_scholarshipsand_fellowships_revenue_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_scholarshipsand_fellowships_revenue.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_scholarshipsand_fellowships_revenue.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_scholarshipsand_fellowships_revenue.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_scholarshipsand_fellowships_revenue.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsfasb_scholarshipsand_fellowships_revenue.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_ipedsgasb_functional_expense ( 
	ref_ipedsgasb_functional_expense_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_ipedsgasb_functional_expense PRIMARY KEY ( ref_ipedsgasb_functional_expense_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_functional_expense.ref_ipedsgasb_functional_expense_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_functional_expense.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_functional_expense.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_functional_expense.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_functional_expense.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_functional_expense.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_ipedsgasb_scholarshipsand_fellowships_revenue ( 
	ref_ipedsgasb_scholarshipsand_fellowships_revenue_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_ipedsgasb_scholarshipsand_fellowships_revenue PRIMARY KEY ( ref_ipedsgasb_scholarshipsand_fellowships_revenue_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_scholarshipsand_fellowships_revenue.ref_ipedsgasb_scholarshipsand_fellowships_revenue_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_scholarshipsand_fellowships_revenue.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_scholarshipsand_fellowships_revenue.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_scholarshipsand_fellowships_revenue.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_scholarshipsand_fellowships_revenue.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipedsgasb_scholarshipsand_fellowships_revenue.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_ipsp_progress_report_type ( 
	ref_ipsp_progress_report_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_ipsp_progress_report_type PRIMARY KEY ( ref_ipsp_progress_report_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_ipsp_progress_report_type.ref_ipsp_progress_report_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipsp_progress_report_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipsp_progress_report_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipsp_progress_report_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipsp_progress_report_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ipsp_progress_report_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_iso6393_language ( 
	ref_iso6393_language_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_iso6393_language PRIMARY KEY ( ref_iso6393_language_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_iso6393_language IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iso6393_language.ref_iso6393_language_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_iso6393_language.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iso6393_language.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_iso6393_language.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_item_response_theory_kappa_algorithm ( 
	ref_item_response_theory_kappa_algorithm_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_item_response_theory_kappa_algorithm PRIMARY KEY ( ref_item_response_theory_kappa_algorithm_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_item_response_theory_kappa_algorithm IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_item_response_theory_kappa_algorithm.ref_item_response_theory_kappa_algorithm_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_item_response_theory_kappa_algorithm.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_item_response_theory_kappa_algorithm.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_item_response_theory_kappa_algorithm.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_k12_lea_title_i_support_service ( 
	ref_k12_lea_title_i_support_service_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_k12_lea_title_i_support_service PRIMARY KEY ( ref_k12_lea_title_i_support_service_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_k12_lea_title_i_support_service IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_lea_title_i_support_service.ref_k12_lea_title_i_support_service_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_lea_title_i_support_service.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_lea_title_i_support_service.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_lea_title_i_support_service.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_k12_staff_classification ( 
	ref_education_staff_classification_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_education_staff_classification PRIMARY KEY ( ref_education_staff_classification_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_k12_staff_classification IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_staff_classification.ref_education_staff_classification_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_staff_classification.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_staff_classification.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_k12_staff_classification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_language_use_type ( 
	ref_language_use_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_language_use_type PRIMARY KEY ( ref_language_use_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_language_use_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_language_use_type.ref_language_use_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_language_use_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_language_use_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_language_use_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_lea_improvement_status ( 
	ref_lea_improvement_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_lea_improvement_status PRIMARY KEY ( ref_lea_improvement_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_lea_improvement_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_lea_improvement_status.ref_lea_improvement_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_lea_improvement_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_lea_improvement_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_lea_improvement_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learner_action_type ( 
	ref_learner_action_type_id integer  NOT NULL,
	description          varchar(150)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learner_action_type PRIMARY KEY ( ref_learner_action_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learner_action_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_action_type.ref_learner_action_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_action_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_action_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_action_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learner_activity_maximum_time_allowed_units ( 
	ref_learner_activity_maximum_time_allowed_units_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learner_activity_maximum_time_allowed_units PRIMARY KEY ( ref_learner_activity_maximum_time_allowed_units_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learner_activity_maximum_time_allowed_units IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_activity_maximum_time_allowed_units.ref_learner_activity_maximum_time_allowed_units_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_activity_maximum_time_allowed_units.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_activity_maximum_time_allowed_units.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learner_activity_maximum_time_allowed_units.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_access_api_type ( 
	ref_learning_resource_access_api_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_access_api_type PRIMARY KEY ( ref_learning_resource_access_api_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_access_api_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_api_type.ref_learning_resource_access_api_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_api_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_api_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_api_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_access_mode_type ( 
	ref_learning_resource_access_mode_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_access_mode_type PRIMARY KEY ( ref_learning_resource_access_mode_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_access_mode_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_mode_type.ref_learning_resource_access_mode_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_mode_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_mode_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_access_mode_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_author_type ( 
	ref_learning_resource_author_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_author_type PRIMARY KEY ( ref_learning_resource_author_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_author_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_author_type.ref_learning_resource_author_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_author_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_author_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_author_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_competency_alignment_type ( 
	ref_learning_resource_competency_alignment_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_competency_alignment_type PRIMARY KEY ( ref_learning_resource_competency_alignment_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_competency_alignment_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_competency_alignment_type.ref_learning_resource_competency_alignment_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_competency_alignment_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_competency_alignment_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_competency_alignment_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_digital_media_sub_type ( 
	ref_learning_resource_digital_media_sub_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_digital_media_sub_type PRIMARY KEY ( ref_learning_resource_digital_media_sub_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_digital_media_sub_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_digital_media_sub_type.ref_learning_resource_digital_media_sub_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_digital_media_sub_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_digital_media_sub_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_digital_media_sub_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_educational_use ( 
	ref_learning_resource_educational_use_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_educational_use PRIMARY KEY ( ref_learning_resource_educational_use_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_educational_use IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_educational_use.ref_learning_resource_educational_use_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_educational_use.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_educational_use.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_educational_use.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_interaction_mode ( 
	ref_learning_resource_interaction_mode_id integer  NOT NULL,
	description          varchar(150)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_interaction_mode PRIMARY KEY ( ref_learning_resource_interaction_mode_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_interaction_mode IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_interaction_mode.ref_learning_resource_interaction_mode_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_interaction_mode.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_interaction_mode.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_interaction_mode.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_media_feature_type ( 
	ref_learning_resource_media_feature_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_media_feature_type PRIMARY KEY ( ref_learning_resource_media_feature_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_media_feature_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_media_feature_type.ref_learning_resource_media_feature_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_media_feature_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_media_feature_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_media_feature_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_learning_resource_type ( 
	ref_learning_resource_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_type PRIMARY KEY ( ref_learning_resource_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_learning_resource_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_type.ref_learning_resource_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_learning_resource_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_level_of_institution ( 
	ref_level_of_institution_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_level_of_institution PRIMARY KEY ( ref_level_of_institution_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_level_of_institution IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_level_of_institution.ref_level_of_institution_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.ref_level_of_institution.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_level_of_institution.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_level_of_institution.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_literacy_assessment ( 
	ref_literacy_assessment_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_literacy_assessment PRIMARY KEY ( ref_literacy_assessment_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_literacy_assessment IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_literacy_assessment.ref_literacy_assessment_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_literacy_assessment.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_literacy_assessment.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_literacy_assessment.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_medical_alert_indicator ( 
	ref_medical_alert_indicator_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_med_alert PRIMARY KEY ( ref_medical_alert_indicator_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_medical_alert_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_medical_alert_indicator.ref_medical_alert_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_medical_alert_indicator.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_medical_alert_indicator.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_medical_alert_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_mep_project_based ( 
	ref_mep_project_based_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_mep_project_based PRIMARY KEY ( ref_mep_project_based_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_mep_project_based IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_project_based.ref_mep_project_based_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_project_based.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_project_based.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_project_based.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_mep_service_type ( 
	ref_mep_service_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_mep_service_type PRIMARY KEY ( ref_mep_service_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_mep_service_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_service_type.ref_mep_service_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_service_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_service_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_service_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_mep_staff_category ( 
	ref_mep_staff_category_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_mep_staff_category PRIMARY KEY ( ref_mep_staff_category_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_mep_staff_category IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_staff_category.ref_mep_staff_category_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_staff_category.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_staff_category.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_mep_staff_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_military_active_student_indicator ( 
	ref_military_active_student_indicator_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_military_active_student_indicator PRIMARY KEY ( ref_military_active_student_indicator_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_military_active_student_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_active_student_indicator.ref_military_active_student_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_active_student_indicator.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_active_student_indicator.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_active_student_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_military_connected_student_indicator ( 
	ref_military_connected_student_indicator_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_military_connected_student_indicator PRIMARY KEY ( ref_military_connected_student_indicator_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_military_connected_student_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_connected_student_indicator.ref_military_connected_student_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_connected_student_indicator.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_connected_student_indicator.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_military_connected_student_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_multiple_intelligence_type ( 
	ref_multiple_intelligence_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_multiple_intelligence_type PRIMARY KEY ( ref_multiple_intelligence_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_multiple_intelligence_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_multiple_intelligence_type.ref_multiple_intelligence_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_multiple_intelligence_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_multiple_intelligence_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_multiple_intelligence_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_naep_aspects_of_reading ( 
	ref_naep_aspects_of_reading_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_naep_aspecs_of_reading PRIMARY KEY ( ref_naep_aspects_of_reading_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_naep_aspects_of_reading IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_naep_aspects_of_reading.ref_naep_aspects_of_reading_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_naep_aspects_of_reading.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_naep_aspects_of_reading.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_naep_aspects_of_reading.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_need_determination_method ( 
	ref_need_determination_method_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_need_determination_method PRIMARY KEY ( ref_need_determination_method_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_need_determination_method IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_need_determination_method.ref_need_determination_method_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_need_determination_method.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_need_determination_method.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_need_determination_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_non_promotion_reason ( 
	ref_non_promotion_reason_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_non_promotion_reason PRIMARY KEY ( ref_non_promotion_reason_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_non_promotion_reason IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_non_promotion_reason.ref_non_promotion_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_non_promotion_reason.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_non_promotion_reason.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_non_promotion_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_onetsoc_occupation_type ( 
	ref_onetsoc_occupation_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_onetsoc_occupation_type PRIMARY KEY ( ref_onetsoc_occupation_type_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.ref_onetsoc_occupation_type.ref_onetsoc_occupation_type_id IS 'The surrogate key for the options in this option set.';

COMMENT ON COLUMN rs_ceds7_sc.ref_onetsoc_occupation_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_onetsoc_occupation_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_onetsoc_occupation_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_onetsoc_occupation_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_onetsoc_occupation_type.sort_order IS 'See the CEDS_Def_Desc extended property.';

CREATE TABLE rs_ceds7_sc.ref_operational_status_type ( 
	ref_operational_status_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_operational_status_type PRIMARY KEY ( ref_operational_status_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_operational_status_type IS 'List of operational status types.';

COMMENT ON COLUMN rs_ceds7_sc.ref_operational_status_type.ref_operational_status_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_operational_status_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_operational_status_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_operational_status_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_organization_identification_system ( 
	ref_organization_identification_system_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	ref_organization_identifier_type_id integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_organization_identification_system PRIMARY KEY ( ref_organization_identification_system_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_organization_identification_system IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_identification_system.ref_organization_identification_system_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_identification_system.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_identification_system.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_identification_system.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_identification_system.ref_organization_identifier_type_id IS 'List of identification system types.';

CREATE TABLE rs_ceds7_sc.ref_organization_indicator ( 
	ref_organization_indicator_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	ref_organization_type_id integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_organization_indicator PRIMARY KEY ( ref_organization_indicator_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_organization_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_indicator.ref_organization_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_indicator.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_indicator.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_indicator.ref_organization_type_id IS 'Indicators may only apply to some types of organizations.';

CREATE TABLE rs_ceds7_sc.ref_organization_monitoring_notifications ( 
	ref_organization_monitoring_notifications_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_organization_monitoring_notifications PRIMARY KEY ( ref_organization_monitoring_notifications_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_organization_monitoring_notifications IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_monitoring_notifications.ref_organization_monitoring_notifications_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_monitoring_notifications.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_monitoring_notifications.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_monitoring_notifications.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_organization_type ( 
	ref_organization_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	ref_organization_element_type_id integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_organization PRIMARY KEY ( ref_organization_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_organization_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_type.ref_organization_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_type.definition IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_organization_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_outcome_time_point ( 
	ref_outcome_time_point_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_outcome_time_point PRIMARY KEY ( ref_outcome_time_point_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_outcome_time_point IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_outcome_time_point.ref_outcome_time_point_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_outcome_time_point.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_outcome_time_point.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_outcome_time_point.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_paraprofessional_qualification ( 
	ref_paraprofessional_qualification_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_parapaprofessional_qualification PRIMARY KEY ( ref_paraprofessional_qualification_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_paraprofessional_qualification IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_paraprofessional_qualification.ref_paraprofessional_qualification_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_paraprofessional_qualification.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_paraprofessional_qualification.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_paraprofessional_qualification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_participation_type ( 
	ref_participation_type_id integer  NOT NULL,
	organization_id      integer  ,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_participation_type PRIMARY KEY ( ref_participation_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_participation_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_participation_type.ref_participation_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_participation_type.organization_id IS 'Surrogate Key to Organization identifying the Program.';

COMMENT ON COLUMN rs_ceds7_sc.ref_participation_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_participation_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_participation_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_pd_activity_credit_type ( 
	ref_pd_activity_credit_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_activity_credit_type PRIMARY KEY ( ref_pd_activity_credit_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_pd_activity_credit_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_credit_type.ref_pd_activity_credit_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_credit_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_credit_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_credit_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_pd_activity_level ( 
	ref_pd_activity_level_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_activity_level PRIMARY KEY ( ref_pd_activity_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_pd_activity_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_level.ref_pd_activity_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_level.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_level.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_pd_activity_type ( 
	ref_pd_activity_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_activity_type PRIMARY KEY ( ref_pd_activity_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_pd_activity_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_type.ref_pd_activity_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_activity_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_pd_delivery_method ( 
	ref_pd_delivery_method_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_delivery_method PRIMARY KEY ( ref_pd_delivery_method_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_pd_delivery_method IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_delivery_method.ref_pd_delivery_method_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_delivery_method.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_delivery_method.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_delivery_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_pd_session_status ( 
	ref_pd_session_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_session_status PRIMARY KEY ( ref_pd_session_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_pd_session_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_session_status.ref_pd_session_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_session_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_session_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pd_session_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_person_identifier_type ( 
	ref_person_identifier_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_person_identifier_type PRIMARY KEY ( ref_person_identifier_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_person_identifier_type IS 'List of identification system types.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_identifier_type.ref_person_identifier_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_identifier_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_identifier_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_identifier_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_person_relationship ( 
	ref_person_relationship_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_relationship PRIMARY KEY ( ref_person_relationship_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_person_relationship IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_relationship.ref_person_relationship_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_relationship.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_relationship.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_relationship.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_person_telephone_number_type ( 
	ref_person_telephone_number_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_person_telephone_type PRIMARY KEY ( ref_person_telephone_number_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_person_telephone_number_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_telephone_number_type.ref_person_telephone_number_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_telephone_number_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_telephone_number_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_person_telephone_number_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_population_served ( 
	ref_population_served_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_population_served PRIMARY KEY ( ref_population_served_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_population_served IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_population_served.ref_population_served_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_population_served.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_population_served.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_population_served.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_pre_k_eligible_ages_non_idea ( 
	ref_pre_k_eligible_ages_non_idea_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_pre_k_eligible_ages_non_idea PRIMARY KEY ( ref_pre_k_eligible_ages_non_idea_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_pre_k_eligible_ages_non_idea IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pre_k_eligible_ages_non_idea.ref_pre_k_eligible_ages_non_idea_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_pre_k_eligible_ages_non_idea.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pre_k_eligible_ages_non_idea.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_pre_k_eligible_ages_non_idea.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_predominant_calendar_system ( 
	ref_predominant_calendar_system_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_predominant_calendar_system PRIMARY KEY ( ref_predominant_calendar_system_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_predominant_calendar_system IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_predominant_calendar_system.ref_predominant_calendar_system_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_predominant_calendar_system.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_predominant_calendar_system.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_predominant_calendar_system.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_professional_development_financial_support ( 
	ref_professional_development_financial_support_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_professional_development_financial_support PRIMARY KEY ( ref_professional_development_financial_support_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_professional_development_financial_support IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_professional_development_financial_support.ref_professional_development_financial_support_id IS 'Surrogate key.';

COMMENT ON COLUMN rs_ceds7_sc.ref_professional_development_financial_support.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_professional_development_financial_support.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_professional_development_financial_support.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_professional_technical_credential_type ( 
	ref_professional_technical_credential_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_prof_tech_credential_type PRIMARY KEY ( ref_professional_technical_credential_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_professional_technical_credential_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_professional_technical_credential_type.ref_professional_technical_credential_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_professional_technical_credential_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_professional_technical_credential_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_professional_technical_credential_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_proficiency_target_ayp ( 
	ref_proficiency_target_ayp_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_proficiency_target_ayp PRIMARY KEY ( ref_proficiency_target_ayp_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_proficiency_target_ayp IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_proficiency_target_ayp.ref_proficiency_target_ayp_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_proficiency_target_ayp.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_proficiency_target_ayp.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_proficiency_target_ayp.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_program_day_length ( 
	ref_program_day_length_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_kindergarten_day_length PRIMARY KEY ( ref_program_day_length_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_program_day_length IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_day_length.ref_program_day_length_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_day_length.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_day_length.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_day_length.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_program_gifted_eligibility ( 
	ref_program_gifted_eligibility_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_program_gifted_eligibility PRIMARY KEY ( ref_program_gifted_eligibility_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_program_gifted_eligibility IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_gifted_eligibility.ref_program_gifted_eligibility_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_gifted_eligibility.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_gifted_eligibility.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_gifted_eligibility.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_program_sponsor_type ( 
	ref_program_sponsor_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction     integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_program_sponsor_type PRIMARY KEY ( ref_program_sponsor_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_program_sponsor_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_sponsor_type.ref_program_sponsor_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_sponsor_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_sponsor_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_program_sponsor_type.ref_jurisdiction IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_progress_level ( 
	ref_progress_level_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_progress_level PRIMARY KEY ( ref_progress_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_progress_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_progress_level.ref_progress_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_progress_level.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_progress_level.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_progress_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_proof_of_residency_type ( 
	ref_proof_of_residency_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_proof_of_residency_type PRIMARY KEY ( ref_proof_of_residency_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_proof_of_residency_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_proof_of_residency_type.ref_proof_of_residency_type_id IS 'An accepted form of proof of residency in the district/county/other locality. [CEDS Element: Proof of Residency Type, ID:000305]';

COMMENT ON COLUMN rs_ceds7_sc.ref_proof_of_residency_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_proof_of_residency_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_proof_of_residency_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ps_enrollment_award_type ( 
	ref_ps_enrollment_award_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_enrollment_award_type PRIMARY KEY ( ref_ps_enrollment_award_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ps_enrollment_award_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_award_type.ref_ps_enrollment_award_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_award_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_award_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_award_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ps_enrollment_type ( 
	ref_ps_enrollment_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_enrollment_type PRIMARY KEY ( ref_ps_enrollment_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ps_enrollment_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_type.ref_ps_enrollment_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_enrollment_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ps_exit_or_withdrawal_type ( 
	ref_ps_exit_or_withdrawal_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_exit_or_withdrawal_type PRIMARY KEY ( ref_ps_exit_or_withdrawal_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ps_exit_or_withdrawal_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_exit_or_withdrawal_type.ref_ps_exit_or_withdrawal_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_exit_or_withdrawal_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_exit_or_withdrawal_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_exit_or_withdrawal_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_ps_student_level ( 
	ref_ps_student_level_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_student_level PRIMARY KEY ( ref_ps_student_level_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_ps_student_level IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_student_level.ref_ps_student_level_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_student_level.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_student_level.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_ps_student_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_public_school_residence ( 
	ref_public_school_residence_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_public_school_residence PRIMARY KEY ( ref_public_school_residence_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_public_school_residence IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_public_school_residence.ref_public_school_residence_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_public_school_residence.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_public_school_residence.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_public_school_residence.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_qris_participation ( 
	ref_qris_participation_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_qris_participation PRIMARY KEY ( ref_qris_participation_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_qris_participation IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_qris_participation.ref_qris_participation_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_qris_participation.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_qris_participation.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_qris_participation.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_reap_alternative_funding_status ( 
	ref_reap_alternative_funding_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_reap_alternative_funding_status PRIMARY KEY ( ref_reap_alternative_funding_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_reap_alternative_funding_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_reap_alternative_funding_status.ref_reap_alternative_funding_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_reap_alternative_funding_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_reap_alternative_funding_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_reap_alternative_funding_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_reconstituted_status ( 
	ref_reconstituted_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_reconstituted_status PRIMARY KEY ( ref_reconstituted_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_reconstituted_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_reconstituted_status.ref_reconstituted_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_reconstituted_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_reconstituted_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_reconstituted_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_reimbursement_type ( 
	ref_reimbursement_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_reimbursement_type PRIMARY KEY ( ref_reimbursement_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_reimbursement_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_reimbursement_type.ref_reimbursement_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_reimbursement_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_reimbursement_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_reimbursement_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_rlis_program_use ( 
	ref_rlis_program_use_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_rlis_program_use PRIMARY KEY ( ref_rlis_program_use_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_rlis_program_use IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_rlis_program_use.ref_rlis_program_use_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_rlis_program_use.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_rlis_program_use.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_rlis_program_use.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_role_status_type ( 
	ref_role_status_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_role_status_type PRIMARY KEY ( ref_role_status_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_role_status_type IS 'List of role status types.';

COMMENT ON COLUMN rs_ceds7_sc.ref_role_status_type.ref_role_status_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_role_status_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_role_status_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_role_status_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_sced_course_subject_area ( 
	ref_sced_course_subject_area_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_sced_course_subject_area PRIMARY KEY ( ref_sced_course_subject_area_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_sced_course_subject_area IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_sced_course_subject_area.ref_sced_course_subject_area_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_sced_course_subject_area.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_sced_course_subject_area.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_sced_course_subject_area.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_school_food_service_program ( 
	ref_school_food_service_program_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction     integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_school_food_service_program PRIMARY KEY ( ref_school_food_service_program_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_school_food_service_program IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_food_service_program.ref_school_food_service_program_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_food_service_program.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_food_service_program.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_food_service_program.ref_jurisdiction IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_school_improvement_status ( 
	ref_school_improvement_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_school_improvement_status PRIMARY KEY ( ref_school_improvement_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_school_improvement_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_improvement_status.ref_school_improvement_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_improvement_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_improvement_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_improvement_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_school_type ( 
	ref_school_type_id   integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_school_type PRIMARY KEY ( ref_school_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_school_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_type.ref_school_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_school_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_service_frequency ( 
	ref_service_frequency_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_service_frequency PRIMARY KEY ( ref_service_frequency_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_service_frequency IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_service_frequency.ref_service_frequency_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_service_frequency.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_service_frequency.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_service_frequency.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_services ( 
	ref_services_id      integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_services PRIMARY KEY ( ref_services_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_services IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_services.ref_services_id IS 'Surrogate Key.';

COMMENT ON COLUMN rs_ceds7_sc.ref_services.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_services.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_services.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_sex ( 
	ref_sex_id           integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_sex PRIMARY KEY ( ref_sex_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_sex IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_sex.ref_sex_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_sex.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_sex.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_sex.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_single_sex_class_status ( 
	ref_single_sex_class_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_single_sex_class_status PRIMARY KEY ( ref_single_sex_class_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_single_sex_class_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_single_sex_class_status.ref_single_sex_class_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_single_sex_class_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_single_sex_class_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_single_sex_class_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_special_education_age_group_taught ( 
	ref_special_education_age_group_taught_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_special_education_age_group_taught PRIMARY KEY ( ref_special_education_age_group_taught_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_special_education_age_group_taught IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_special_education_age_group_taught.ref_special_education_age_group_taught_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_special_education_age_group_taught.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_special_education_age_group_taught.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_special_education_age_group_taught.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_special_education_staff_category ( 
	ref_special_education_staff_category_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_special_education_staff_category PRIMARY KEY ( ref_special_education_staff_category_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_special_education_staff_category IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_special_education_staff_category.ref_special_education_staff_category_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_special_education_staff_category.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_special_education_staff_category.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_special_education_staff_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_standardized_admission_test ( 
	ref_standardized_admission_test_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_standardized_admission_test PRIMARY KEY ( ref_standardized_admission_test_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_standardized_admission_test IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_standardized_admission_test.ref_standardized_admission_test_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.ref_standardized_admission_test.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_standardized_admission_test.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_standardized_admission_test.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_student_support_service_type ( 
	ref_student_support_service_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_student_support_service_type PRIMARY KEY ( ref_student_support_service_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_student_support_service_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_student_support_service_type.ref_student_support_service_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_student_support_service_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_student_support_service_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_student_support_service_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_teacher_education_credential_exam ( 
	ref_teacher_education_credential_exam_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_teacher_education_credential_exam PRIMARY KEY ( ref_teacher_education_credential_exam_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_teacher_education_credential_exam IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_education_credential_exam.ref_teacher_education_credential_exam_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_education_credential_exam.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_education_credential_exam.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_education_credential_exam.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_teacher_education_test_company ( 
	ref_teacher_education_test_company_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_teacher_education_test_company PRIMARY KEY ( ref_teacher_education_test_company_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_teacher_education_test_company IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_education_test_company.ref_teacher_education_test_company_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_education_test_company.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_education_test_company.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_education_test_company.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_teacher_prep_enrollment_status ( 
	ref_teacher_prep_enrollment_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_teacher_prep_enroll_status PRIMARY KEY ( ref_teacher_prep_enrollment_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_teacher_prep_enrollment_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_prep_enrollment_status.ref_teacher_prep_enrollment_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_prep_enrollment_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_prep_enrollment_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teacher_prep_enrollment_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_teaching_credential_basis ( 
	ref_teaching_credential_basis_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_teaching_credential_basis PRIMARY KEY ( ref_teaching_credential_basis_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_teaching_credential_basis IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teaching_credential_basis.ref_teaching_credential_basis_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_teaching_credential_basis.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teaching_credential_basis.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_teaching_credential_basis.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_technical_assistance_delivery_type ( 
	ref_technical_assistance_delivery_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_technical_assistance_delivery_type PRIMARY KEY ( ref_technical_assistance_delivery_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_technical_assistance_delivery_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_technical_assistance_delivery_type.ref_technical_assistance_delivery_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_technical_assistance_delivery_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_technical_assistance_delivery_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_technical_assistance_delivery_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_technology_literacy_status ( 
	ref_technology_literacy_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_technology_literacy_status PRIMARY KEY ( ref_technology_literacy_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_technology_literacy_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_technology_literacy_status.ref_technology_literacy_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_technology_literacy_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_technology_literacy_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_technology_literacy_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_tenure_system ( 
	ref_tenure_system_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_tenure_system PRIMARY KEY ( ref_tenure_system_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_tenure_system IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_tenure_system.ref_tenure_system_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_tenure_system.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_tenure_system.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_tenure_system.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_time_for_completion_units ( 
	ref_time_for_completion_units_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_time_for_completion_units PRIMARY KEY ( ref_time_for_completion_units_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_time_for_completion_units IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_time_for_completion_units.ref_time_for_completion_units_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_time_for_completion_units.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_time_for_completion_units.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_time_for_completion_units.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_title_i_indicator ( 
	ref_title_i_indicator_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_title_i_indicator PRIMARY KEY ( ref_title_i_indicator_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_title_i_indicator IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_indicator.ref_title_i_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_indicator.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_indicator.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_title_i_program_staff_category ( 
	ref_title_i_program_staff_category_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_title_i_program_staff_category PRIMARY KEY ( ref_title_i_program_staff_category_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_title_i_program_staff_category IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_program_staff_category.ref_title_i_program_staff_category_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_program_staff_category.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_program_staff_category.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_program_staff_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_title_i_school_status ( 
	ref_title_1_school_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(400)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_title_1_status PRIMARY KEY ( ref_title_1_school_status_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_title_i_school_status IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_school_status.ref_title_1_school_status_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_school_status.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_school_status.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_i_school_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_title_iii_language_instruction_program_type ( 
	ref_title_iii_language_instruction_program_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_title_iii_language_instruction PRIMARY KEY ( ref_title_iii_language_instruction_program_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_title_iii_language_instruction_program_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_iii_language_instruction_program_type.ref_title_iii_language_instruction_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_iii_language_instruction_program_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_iii_language_instruction_program_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_title_iii_language_instruction_program_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_transfer_ready ( 
	ref_transfer_ready_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_transfer_ready PRIMARY KEY ( ref_transfer_ready_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_transfer_ready IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_transfer_ready.ref_transfer_ready_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_transfer_ready.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_transfer_ready.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_transfer_ready.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_trimester_when_prenatal_care_began ( 
	ref_trimester_when_prenatal_care_began_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_trimester_when_prenatal_care_began PRIMARY KEY ( ref_trimester_when_prenatal_care_began_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_trimester_when_prenatal_care_began IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_trimester_when_prenatal_care_began.ref_trimester_when_prenatal_care_began_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_trimester_when_prenatal_care_began.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_trimester_when_prenatal_care_began.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_trimester_when_prenatal_care_began.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_tuition_unit ( 
	ref_tuition_unit_id  integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_tuition_unit PRIMARY KEY ( ref_tuition_unit_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_tuition_unit IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_tuition_unit.ref_tuition_unit_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_tuition_unit.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_tuition_unit.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_tuition_unit.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_visa_type ( 
	ref_visa_type_id     integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_visa_type PRIMARY KEY ( ref_visa_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_visa_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_visa_type.ref_visa_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_visa_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_visa_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_visa_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_wage_collection_method ( 
	ref_wage_collection_method_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_wage_collection_method PRIMARY KEY ( ref_wage_collection_method_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_wage_collection_method IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_wage_collection_method.ref_wage_collection_method_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_wage_collection_method.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_wage_collection_method.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_wage_collection_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_weapon_type ( 
	ref_weapon_type_id   integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_weapon_type PRIMARY KEY ( ref_weapon_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_weapon_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_weapon_type.ref_weapon_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_weapon_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_weapon_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_weapon_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.ref_workbased_learning_opportunity_type ( 
	ref_workbased_learning_opportunity_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_workbased_learning_opportunity_type PRIMARY KEY ( ref_workbased_learning_opportunity_type_id )
 );

COMMENT ON TABLE rs_ceds7_sc.ref_workbased_learning_opportunity_type IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.ref_workbased_learning_opportunity_type.ref_workbased_learning_opportunity_type_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.ref_workbased_learning_opportunity_type.description IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_workbased_learning_opportunity_type.code IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.ref_workbased_learning_opportunity_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.role ( 
	role_id              integer  NOT NULL,
	name                 varchar(50)  ,
	ref_jurisdiction_id  integer  ,
	CONSTRAINT pk_ref_role PRIMARY KEY ( role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.role IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.role.role_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.role.name IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.role.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE rs_ceds7_sc.role_attendance_event ( 
	role_attendance_event_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	date               date  NOT NULL,
	ref_attendance_event_type_id integer  ,
	ref_attendance_status_id integer  ,
	ref_absent_attendance_category_id integer  ,
	ref_present_attendance_category_id integer  ,
	ref_leave_event_type_id integer  ,
	CONSTRAINT pk_role_attendance_event PRIMARY KEY ( role_attendance_event_id )
 );

COMMENT ON TABLE rs_ceds7_sc.role_attendance_event IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.role_attendance_event.role_attendance_event_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.role_attendance_event.organization_person_role_id IS 'Foreign key - Organization_Person_Role.';

COMMENT ON COLUMN rs_ceds7_sc.role_attendance_event.date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.role_attendance_event.ref_attendance_event_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.role_attendance_event.ref_attendance_status_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.role_attendance_event.ref_absent_attendance_category_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.role_attendance_event.ref_present_attendance_category_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.role_attendance_event.ref_leave_event_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.service_plan ( 
	service_plan_id      integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	declined_services_date date  ,
	extends_outside_school_year bool  ,
	inclusive_setting_indicator bool  ,
	reason_for_declined_services text  ,
	setting_description  text  ,
	CONSTRAINT pk_service_plan PRIMARY KEY ( service_plan_id )
 );

CREATE TABLE rs_ceds7_sc.service_provider ( 
	service_provider_id  integer  NOT NULL,
	organization_id      integer  NOT NULL,
	service_provided_id  integer  NOT NULL,
	service_staff_id     integer  NOT NULL,
	CONSTRAINT pk_service_provider PRIMARY KEY ( service_provider_id )
 );

CREATE TABLE rs_ceds7_sc.services_received ( 
	services_received_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	full_time_equivalency decimal(3,2)  ,
	service_plan_id      integer  NOT NULL,
	CONSTRAINT pk_services_received PRIMARY KEY ( services_received_id )
 );

COMMENT ON TABLE rs_ceds7_sc.services_received IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.services_received.services_received_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.services_received.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN rs_ceds7_sc.services_received.full_time_equivalency IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.staff_employment ( 
	staff_employment_id  integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	hire_date            date  ,
	position_title       varchar(45)  ,
	ref_employment_separation_type_id integer  ,
	ref_employment_separation_reason_id integer  ,
	union_membership_name varchar(200)  ,
	weeks_employed_per_year integer  ,
	CONSTRAINT pk_staff_employment PRIMARY KEY ( staff_employment_id )
 );

COMMENT ON TABLE rs_ceds7_sc.staff_employment IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.staff_employment.staff_employment_id IS 'Surrogate key.';

COMMENT ON COLUMN rs_ceds7_sc.staff_employment.organization_person_role_id IS 'Foreign key - Organization_Person_Role.';

COMMENT ON COLUMN rs_ceds7_sc.staff_employment.hire_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_employment.position_title IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_employment.ref_employment_separation_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_employment.ref_employment_separation_reason_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_employment.union_membership_name IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_employment.weeks_employed_per_year IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.staff_experience ( 
	person_id            integer  NOT NULL,
	years_of_prior_teaching_experience decimal(9,2)  ,
	years_of_prior_ae_teaching_experience decimal(9,2)  ,
	CONSTRAINT pk_staff_experience PRIMARY KEY ( person_id )
 );

COMMENT ON TABLE rs_ceds7_sc.staff_experience IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.staff_experience.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN rs_ceds7_sc.staff_experience.years_of_prior_teaching_experience IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_experience.years_of_prior_ae_teaching_experience IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.staff_technical_assistance ( 
	staff_technical_assistance_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_technical_assistance_type_id integer  ,
	ref_technical_assistance_delivery_type_id integer  ,
	technical_assistance_approved_ind bool  ,
	CONSTRAINT pk_staff_technical_assistance PRIMARY KEY ( staff_technical_assistance_id )
 );

COMMENT ON COLUMN rs_ceds7_sc.staff_technical_assistance.staff_technical_assistance_id IS 'Surrogate key';

COMMENT ON COLUMN rs_ceds7_sc.staff_technical_assistance.organization_person_role_id IS 'Surrogate key from Organization Person Role';

COMMENT ON COLUMN rs_ceds7_sc.staff_technical_assistance.ref_technical_assistance_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_technical_assistance.ref_technical_assistance_delivery_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.staff_technical_assistance.technical_assistance_approved_ind IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

CREATE TABLE rs_ceds7_sc.teacher_student_data_link_exclusion ( 
	teacher_student_data_link_exclusion_id integer  NOT NULL,
	student_organization_person_role_id integer  NOT NULL,
	teacher_organization_person_role_id integer  NOT NULL,
	CONSTRAINT pk_teacher_student_data_link_exclusion PRIMARY KEY ( teacher_student_data_link_exclusion_id )
 );

COMMENT ON TABLE rs_ceds7_sc.teacher_student_data_link_exclusion IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.teacher_student_data_link_exclusion.teacher_student_data_link_exclusion_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.teacher_student_data_link_exclusion.student_organization_person_role_id IS 'Foreign key - K12_Student_Course_Section.  Identifies the Student enrolled in a Course Section.';

COMMENT ON COLUMN rs_ceds7_sc.teacher_student_data_link_exclusion.teacher_organization_person_role_id IS 'Foreign key - K12_Staff_Assignment.  Identifies the staff member assigned to a class/section.';

CREATE TABLE rs_ceds7_sc.workforce_program_participation ( 
	organization_person_role_id integer  NOT NULL,
	ref_wf_program_participation_id integer  ,
	ref_professional_technical_credential_type_id integer  ,
	diploma_or_credential_award_date char(7)  ,
	CONSTRAINT pk_workforce_program_participation PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE rs_ceds7_sc.workforce_program_participation IS 'See the CEDS_Def_Desc extended property.';

COMMENT ON COLUMN rs_ceds7_sc.workforce_program_participation.organization_person_role_id IS 'Surrogate Key';

COMMENT ON COLUMN rs_ceds7_sc.workforce_program_participation.ref_wf_program_participation_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.workforce_program_participation.ref_professional_technical_credential_type_id IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';

COMMENT ON COLUMN rs_ceds7_sc.workforce_program_participation.diploma_or_credential_award_date IS 'See the CEDS_Global_Id, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.';


ALTER TABLE rs_ceds7_sc.activity_recognition ADD CONSTRAINT fk_activity_recognition_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Activity_Recognition_Organization_Person_Role ON rs_ceds7_sc.activity_recognition IS '';

ALTER TABLE rs_ceds7_sc.activity_recognition ADD CONSTRAINT fk_activity_recognition_ref_activity_recognition_type FOREIGN KEY ( ref_activity_recognition_type_id ) REFERENCES rs_ceds7_sc.ref_activity_recognition_type( ref_activity_recognition_type_id );

COMMENT ON CONSTRAINT FK_Activity_Recognition_Ref_Activity_Recognition_Type ON rs_ceds7_sc.activity_recognition IS '';

ALTER TABLE rs_ceds7_sc.ae_provider ADD CONSTRAINT fk_ae_provider_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ae_Provider_Organization ON rs_ceds7_sc.ae_provider IS '';

ALTER TABLE rs_ceds7_sc.ae_provider ADD CONSTRAINT fk_ae_provider_ref_level_of_institution FOREIGN KEY ( ref_level_of_institution_id ) REFERENCES rs_ceds7_sc.ref_level_of_institution( ref_level_of_institution_id );

COMMENT ON CONSTRAINT FK_Ae_Provider_Ref_Level_Of_Institution ON rs_ceds7_sc.ae_provider IS '';

ALTER TABLE rs_ceds7_sc.ae_student_academic_record ADD CONSTRAINT fk_ae_student_academic_record_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Ae_Student_Academic_Record_Organization_Person_Role ON rs_ceds7_sc.ae_student_academic_record IS '';

ALTER TABLE rs_ceds7_sc.ae_student_academic_record ADD CONSTRAINT fk_ae_student_academic_record_ref_high_school_diploma_type FOREIGN KEY ( ref_high_school_diploma_type_id ) REFERENCES rs_ceds7_sc.ref_high_school_diploma_type( ref_high_school_diploma_type_id );

COMMENT ON CONSTRAINT FK_Ae_Student_Academic_Record_Ref_High_School_Diploma_Type ON rs_ceds7_sc.ae_student_academic_record IS '';

ALTER TABLE rs_ceds7_sc.ae_student_academic_record ADD CONSTRAINT fk_ae_student_academic_record_ref_prof_technical_credential_type FOREIGN KEY ( ref_professional_technical_credential_type_id ) REFERENCES rs_ceds7_sc.ref_professional_technical_credential_type( ref_professional_technical_credential_type_id );

COMMENT ON CONSTRAINT FK_Ae_Student_Academic_Record_Ref_Prof_Technical_Credential_Type ON rs_ceds7_sc.ae_student_academic_record IS '';

ALTER TABLE rs_ceds7_sc.apip_interaction ADD CONSTRAINT fk_apip_interaction_assessment_item_apip FOREIGN KEY ( assessment_item_id ) REFERENCES rs_ceds7_sc.assessment_item_apip( assessment_item_id );

COMMENT ON CONSTRAINT FK_Apip_Interaction_Assessment_Item_Apip ON rs_ceds7_sc.apip_interaction IS '';

ALTER TABLE rs_ceds7_sc.apip_interaction ADD CONSTRAINT fk_apip_interaction_ref_apip_interaction_type FOREIGN KEY ( ref_apip_interaction_type_id ) REFERENCES rs_ceds7_sc.ref_apip_interaction_type( ref_apip_interaction_type_id );

COMMENT ON CONSTRAINT FK_Apip_Interaction_Ref_APIP_Interaction_Type ON rs_ceds7_sc.apip_interaction IS '';

ALTER TABLE rs_ceds7_sc.assessment ADD CONSTRAINT fk_assessment_ref_ref_academic_subject FOREIGN KEY ( ref_academic_subject_id ) REFERENCES rs_ceds7_sc.ref_academic_subject( ref_academic_subject_id );

COMMENT ON CONSTRAINT FK_Assessment_Ref_Ref_Academic_Subject ON rs_ceds7_sc.assessment IS '';

ALTER TABLE rs_ceds7_sc.assessment ADD CONSTRAINT fk_assessment_ref_assessment_purpose FOREIGN KEY ( ref_assessment_purpose_id ) REFERENCES rs_ceds7_sc.ref_assessment_purpose( ref_assessment_purpose_id );

COMMENT ON CONSTRAINT FK_Assessment_Ref_Assessment_Purpose ON rs_ceds7_sc.assessment IS '';

ALTER TABLE rs_ceds7_sc.assessment ADD CONSTRAINT fk_assessment_ref_assessment_type FOREIGN KEY ( ref_assessment_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_type( ref_assessment_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Ref_Assessment_Type ON rs_ceds7_sc.assessment IS '';

ALTER TABLE rs_ceds7_sc.assessment ADD CONSTRAINT fk_assessment_ref_assessment_type_children_with_disabilities FOREIGN KEY ( ref_assessment_type_children_with_disabilities_id ) REFERENCES rs_ceds7_sc.ref_assessment_type_children_with_disabilities( ref_assessment_type_children_with_disabilities_id );

COMMENT ON CONSTRAINT FK_Assessment_Ref_Assessment_Type_Children_With_Disabilities ON rs_ceds7_sc.assessment IS '';

ALTER TABLE rs_ceds7_sc.assessment_administration ADD CONSTRAINT fk_assessment_administration_ref_assessment_reporting_method FOREIGN KEY ( ref_assessment_reporting_method_id ) REFERENCES rs_ceds7_sc.ref_assessment_reporting_method( ref_assessment_reporting_method_id );

COMMENT ON CONSTRAINT FK_Assessment_Administration_Ref_Assessment_Reporting_Method ON rs_ceds7_sc.assessment_administration IS '';

ALTER TABLE rs_ceds7_sc.assessment_assessment_administration ADD CONSTRAINT fk_assessment_assessment_administration_assessment FOREIGN KEY ( assessment_id ) REFERENCES rs_ceds7_sc.assessment( assessment_id );

COMMENT ON CONSTRAINT FK_Assessment_Assessment_Administration_Assessment ON rs_ceds7_sc.assessment_assessment_administration IS '';

ALTER TABLE rs_ceds7_sc.assessment_assessment_administration ADD CONSTRAINT fk_assessment_assessment_administration_assessment_administration FOREIGN KEY ( assessment_administration_id ) REFERENCES rs_ceds7_sc.assessment_administration( assessment_administration_id );

COMMENT ON CONSTRAINT FK_Assessment_Assessment_Administration_Assessment_Administration ON rs_ceds7_sc.assessment_assessment_administration IS '';

ALTER TABLE rs_ceds7_sc.assessment_el_developmental_domain ADD CONSTRAINT fk_assessment_assessment_el_developmental_domain_assessment FOREIGN KEY ( assessment_id ) REFERENCES rs_ceds7_sc.assessment( assessment_id );

COMMENT ON CONSTRAINT FK_Assessment_Assessment_EL_Developmental_Domain_Assessment ON rs_ceds7_sc.assessment_el_developmental_domain IS '';

ALTER TABLE rs_ceds7_sc.assessment_el_developmental_domain ADD CONSTRAINT fk_assessment_assessment_el_developmental_domain_ref_assessment_el_developmental_domain FOREIGN KEY ( ref_assessment_el_developmental_domain_id ) REFERENCES rs_ceds7_sc.ref_assessment_el_developmental_domain( ref_assessment_el_developmental_domain_id );

COMMENT ON CONSTRAINT FK_Assessment_Assessment_EL_Developmental_Domain_Ref_Assessment_EL_Developmental_Domain ON rs_ceds7_sc.assessment_el_developmental_domain IS '';

ALTER TABLE rs_ceds7_sc.assessment_form_assessment_asset ADD CONSTRAINT fk_assessment_form_assessment_asset_assessment_asset FOREIGN KEY ( assessment_asset_id ) REFERENCES rs_ceds7_sc.assessment_asset( assessment_asset_id );

COMMENT ON CONSTRAINT FK_Assessment_Form_Assessment_Asset_Assessment_Asset ON rs_ceds7_sc.assessment_form_assessment_asset IS '';

ALTER TABLE rs_ceds7_sc.assessment_form_assessment_asset ADD CONSTRAINT fk_assessment_form_assessment_asset_assessment_form FOREIGN KEY ( assessment_form_id ) REFERENCES rs_ceds7_sc.assessment_form( assessment_form_id );

COMMENT ON CONSTRAINT FK_Assessment_Form_Assessment_Asset_Assessment_Form ON rs_ceds7_sc.assessment_form_assessment_asset IS '';

ALTER TABLE rs_ceds7_sc.assessment_form_section ADD CONSTRAINT fk_form_section_form_section FOREIGN KEY ( child_of_form_section_id ) REFERENCES rs_ceds7_sc.assessment_form_section( assessment_form_section_id );

COMMENT ON CONSTRAINT FK_Form_Section_Form_Section ON rs_ceds7_sc.assessment_form_section IS '';

ALTER TABLE rs_ceds7_sc.assessment_form_section ADD CONSTRAINT fk_assessment_form_section_learning_resource FOREIGN KEY ( learning_resource_id ) REFERENCES rs_ceds7_sc.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT FK_Assessment_Form_Section_Learning_Resource ON rs_ceds7_sc.assessment_form_section IS '';

ALTER TABLE rs_ceds7_sc.assessment_form_section ADD CONSTRAINT fk_assessment_form_section_ref_assessment_form_section_id_type FOREIGN KEY ( ref_assessment_form_section_identification_system_id ) REFERENCES rs_ceds7_sc.ref_assessment_form_section_identification_system( ref_assessment_form_section_identification_system_id );

COMMENT ON CONSTRAINT FK_Assessment_Form_Section_Ref_Assessment_Form_Section_ID_Type ON rs_ceds7_sc.assessment_form_section IS '';

ALTER TABLE rs_ceds7_sc.assessment_form_section_assessment_item ADD CONSTRAINT fk_assessment_form_section_assessment_item_form_section FOREIGN KEY ( assessment_form_section_id ) REFERENCES rs_ceds7_sc.assessment_form_section( assessment_form_section_id );

COMMENT ON CONSTRAINT FK_Assessment_Form_Section_Assessment_Item_Form_Section ON rs_ceds7_sc.assessment_form_section_assessment_item IS '';

ALTER TABLE rs_ceds7_sc.assessment_form_section_assessment_item ADD CONSTRAINT fk_assessment_form_section_assessment_item_assessment_item FOREIGN KEY ( assessment_item_id ) REFERENCES rs_ceds7_sc.assessment_item( assessment_item_id );

COMMENT ON CONSTRAINT FK_Assessment_Form_Section_Assessment_Item_Assessment_Item ON rs_ceds7_sc.assessment_form_section_assessment_item IS '';

ALTER TABLE rs_ceds7_sc.assessment_item_apip ADD CONSTRAINT fk_assessment_item_body_assessment_item1 FOREIGN KEY ( assessment_item_id ) REFERENCES rs_ceds7_sc.assessment_item( assessment_item_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Body_Assessment_Item1 ON rs_ceds7_sc.assessment_item_apip IS '';

ALTER TABLE rs_ceds7_sc.assessment_item_characteristic ADD CONSTRAINT fk_item_characteristic_item FOREIGN KEY ( assessment_item_id ) REFERENCES rs_ceds7_sc.assessment_item( assessment_item_id );

COMMENT ON CONSTRAINT FK_Item_Characteristic_Item ON rs_ceds7_sc.assessment_item_characteristic IS '';

ALTER TABLE rs_ceds7_sc.assessment_item_characteristic ADD CONSTRAINT fk_assessment_item_characteristic_ref_assess_item_char_type FOREIGN KEY ( ref_assessment_item_characteristic_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_item_characteristic_type( ref_assessment_item_characteristic_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Characteristic_Ref_Assess_Item_Char_Type ON rs_ceds7_sc.assessment_item_characteristic IS '';

ALTER TABLE rs_ceds7_sc.assessment_item_response ADD CONSTRAINT fk_assessment_item_response_assessment_item FOREIGN KEY ( assessment_item_id ) REFERENCES rs_ceds7_sc.assessment_item( assessment_item_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Response_Assessment_Item ON rs_ceds7_sc.assessment_item_response IS '';

ALTER TABLE rs_ceds7_sc.assessment_item_response ADD CONSTRAINT fk_assessment_item_response_assessment_participant_session FOREIGN KEY ( assessment_participant_session_id ) REFERENCES rs_ceds7_sc.assessment_participant_session( assessment_participant_session_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Response_Assessment_Participant_Session ON rs_ceds7_sc.assessment_item_response IS '';

ALTER TABLE rs_ceds7_sc.assessment_item_response ADD CONSTRAINT fk_assessment_item_response_ref_assessment_item_response_score_status FOREIGN KEY ( ref_assessment_item_response_score_status_id ) REFERENCES rs_ceds7_sc.ref_assessment_item_response_score_status( ref_assessment_item_response_score_status_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Response_Ref_Assessment_Item_Response_Score_Status ON rs_ceds7_sc.assessment_item_response IS '';

ALTER TABLE rs_ceds7_sc.assessment_item_response ADD CONSTRAINT fk_assessment_item_response_ref_assess_item_response_status FOREIGN KEY ( ref_assess_item_response_status_id ) REFERENCES rs_ceds7_sc.ref_assessment_item_response_status( ref_assessment_item_response_status_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Response_Ref_Assess_Item_Response_Status ON rs_ceds7_sc.assessment_item_response IS '';

ALTER TABLE rs_ceds7_sc.assessment_item_response ADD CONSTRAINT fk_assessment_item_response_ref_proficiency_status FOREIGN KEY ( ref_proficiency_status_id ) REFERENCES rs_ceds7_sc.ref_proficiency_status( ref_proficiency_status_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Response_Ref_Proficiency_Status ON rs_ceds7_sc.assessment_item_response IS '';

ALTER TABLE rs_ceds7_sc.assessment_item_rubric_criterion_result ADD CONSTRAINT fk_assess_item_rubric_criterion_result_assess_item_response FOREIGN KEY ( assessment_item_response_id ) REFERENCES rs_ceds7_sc.assessment_item_response( assessment_item_response_id );

COMMENT ON CONSTRAINT FK_Assess_Item_Rubric_Criterion_Result_Assess_Item_Response ON rs_ceds7_sc.assessment_item_rubric_criterion_result IS '';

ALTER TABLE rs_ceds7_sc.assessment_item_rubric_criterion_result ADD CONSTRAINT fk_assess_item_rubric_criterion_result_rubric_criterion_level FOREIGN KEY ( rubric_criterion_level_id ) REFERENCES rs_ceds7_sc.rubric_criterion_level( rubric_criterion_level_id );

COMMENT ON CONSTRAINT FK_Assess_Item_Rubric_Criterion_Result_Rubric_Criterion_Level ON rs_ceds7_sc.assessment_item_rubric_criterion_result IS '';

ALTER TABLE rs_ceds7_sc.assessment_levels_for_which_designed ADD CONSTRAINT fk_assessment_levels_for_which_designed_assessment FOREIGN KEY ( assessment_id ) REFERENCES rs_ceds7_sc.assessment( assessment_id );

COMMENT ON CONSTRAINT FK_Assessment_Levels_For_Which_Designed_Assessment ON rs_ceds7_sc.assessment_levels_for_which_designed IS '';

ALTER TABLE rs_ceds7_sc.assessment_levels_for_which_designed ADD CONSTRAINT fk_assessment_levels_for_which_designed_ref_grade FOREIGN KEY ( ref_grade_level_id ) REFERENCES rs_ceds7_sc.ref_grade_level( ref_grade_level_id );

COMMENT ON CONSTRAINT FK_Assessment_Levels_For_Which_Designed_Ref_Grade ON rs_ceds7_sc.assessment_levels_for_which_designed IS '';

ALTER TABLE rs_ceds7_sc.assessment_need_apip_control ADD CONSTRAINT fk_assess_need_apip_control_assessment_personal_needs_profile_control FOREIGN KEY ( assessment_personal_needs_profile_control_id ) REFERENCES rs_ceds7_sc.assessment_personal_needs_profile_control( assessment_personal_needs_profile_control_id );

COMMENT ON CONSTRAINT FK_Assess_Need_Apip_Control_Assessment_Personal_Needs_Profile_Control ON rs_ceds7_sc.assessment_need_apip_control IS '';

ALTER TABLE rs_ceds7_sc.assessment_need_apip_control ADD CONSTRAINT fk_assess_need_apip_control_ref_assessment_need_increased_whitespacing FOREIGN KEY ( ref_assessment_need_increased_whitespacing_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_need_increased_whitespacing_type( ref_assessment_need_increased_whitespacing_type_id );

COMMENT ON CONSTRAINT FK_Assess_Need_Apip_Control_Ref_Assessment_Need_Increased_Whitespacing ON rs_ceds7_sc.assessment_need_apip_control IS '';

ALTER TABLE rs_ceds7_sc.assessment_need_braille ADD CONSTRAINT fk_assessment_need_braille_assessment_personal_needs_profile_display FOREIGN KEY ( assessment_personal_needs_profile_display_id ) REFERENCES rs_ceds7_sc.assessment_personal_needs_profile_display( assessment_personal_needs_profile_display_id );

COMMENT ON CONSTRAINT FK_Assessment_Need_Braille_Assessment_Personal_Needs_Profile_Display ON rs_ceds7_sc.assessment_need_braille IS '';

ALTER TABLE rs_ceds7_sc.assessment_need_braille ADD CONSTRAINT fk_assessment_need_braille_assessment_need_braille_grade_type_id FOREIGN KEY ( ref_assessment_need_braille_grade_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_need_braille_grade_type( ref_assessment_need_braille_grade_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Need_Braille_Assessment_Need_Braille_Grade_Type_Id ON rs_ceds7_sc.assessment_need_braille IS '';

ALTER TABLE rs_ceds7_sc.assessment_need_braille ADD CONSTRAINT fk_assessment_need_braille_ref_assessment_need_braille_mark_type FOREIGN KEY ( ref_assessment_need_braille_mark_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_need_braille_mark_type( ref_assessment_need_braille_mark_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Need_Braille_Ref_Assessment_Need_Braille_Mark_Type ON rs_ceds7_sc.assessment_need_braille IS '';

ALTER TABLE rs_ceds7_sc.assessment_need_braille ADD CONSTRAINT fk_assessment_need_braille_ref_assessment_need_braille_status_cell_type FOREIGN KEY ( ref_assessment_need_braille_status_cell_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_need_braille_status_cell_type( ref_assessment_need_braille_status_cell_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Need_Braille_Ref_Assessment_Need_Braille_Status_Cell_Type ON rs_ceds7_sc.assessment_need_braille IS '';

ALTER TABLE rs_ceds7_sc.assessment_need_braille ADD CONSTRAINT fk_assessment_need_braille_ref_assessment_need_number_of_braille_dots FOREIGN KEY ( ref_assessment_need_number_of_braille_dots_id ) REFERENCES rs_ceds7_sc.ref_assessment_need_number_of_braille_dots( ref_assessment_need_number_of_braille_dots_id );

COMMENT ON CONSTRAINT FK_Assessment_Need_Braille_Ref_Assessment_Need_Number_Of_Braille_Dots ON rs_ceds7_sc.assessment_need_braille IS '';

ALTER TABLE rs_ceds7_sc.assessment_need_braille ADD CONSTRAINT fk_assessment_need_braille_ref_assessment_need_usage_type FOREIGN KEY ( ref_assessment_need_usage_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_need_usage_type( ref_assessment_need_usage_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Need_Braille_Ref_Assessment_Need_Usage_Type ON rs_ceds7_sc.assessment_need_braille IS '';

ALTER TABLE rs_ceds7_sc.assessment_participant_session ADD CONSTRAINT fk_assessment_participant_session_assessment_form_section FOREIGN KEY ( assessment_form_section_id ) REFERENCES rs_ceds7_sc.assessment_form_section( assessment_form_section_id );

COMMENT ON CONSTRAINT FK_Assessment_Participant_Session_Assessment_Form_Section ON rs_ceds7_sc.assessment_participant_session IS '';

ALTER TABLE rs_ceds7_sc.assessment_participant_session ADD CONSTRAINT fk_assessment_participant_session_assessment_registration FOREIGN KEY ( assessment_registration_id ) REFERENCES rs_ceds7_sc.assessment_registration( assessment_registration_id );

COMMENT ON CONSTRAINT FK_Assessment_Participant_Session_Assessment_Registration ON rs_ceds7_sc.assessment_participant_session IS '';

ALTER TABLE rs_ceds7_sc.assessment_participant_session ADD CONSTRAINT fk_assessment_participant_session_assessment_session FOREIGN KEY ( assessment_session_id ) REFERENCES rs_ceds7_sc.assessment_session( assessment_session_id );

COMMENT ON CONSTRAINT FK_Assessment_Participant_Session_Assessment_Session ON rs_ceds7_sc.assessment_participant_session IS '';

ALTER TABLE rs_ceds7_sc.assessment_participant_session ADD CONSTRAINT fk_assessment_participant_session_location FOREIGN KEY ( location_id ) REFERENCES rs_ceds7_sc.location( location_id );

COMMENT ON CONSTRAINT FK_Assessment_Participant_Session_Location ON rs_ceds7_sc.assessment_participant_session IS '';

ALTER TABLE rs_ceds7_sc.assessment_participant_session ADD CONSTRAINT fk_assess_participant_session_ref_assessment_participant_session_plat FOREIGN KEY ( ref_assessment_platform_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_platform_type( ref_assessment_platform_type_id );

COMMENT ON CONSTRAINT FK_Assess_Participant_Session_Ref_Assessment_Participant_Session_Plat ON rs_ceds7_sc.assessment_participant_session IS '';

ALTER TABLE rs_ceds7_sc.assessment_participant_session ADD CONSTRAINT fk_assess_participant_session_ref_assessment_session_special_circumst FOREIGN KEY ( ref_assessment_session_special_circumstance_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_session_special_circumstance_type( ref_assessment_session_special_circumstance_type_id );

COMMENT ON CONSTRAINT FK_Assess_Participant_Session_Ref_Assessment_Session_Special_Circumst ON rs_ceds7_sc.assessment_participant_session IS '';

ALTER TABLE rs_ceds7_sc.assessment_participant_session ADD CONSTRAINT fk_assessment_participant_session_ref_language FOREIGN KEY ( ref_language_id ) REFERENCES rs_ceds7_sc.ref_language( ref_language_id );

COMMENT ON CONSTRAINT FK_Assessment_Participant_Session_Ref_Language ON rs_ceds7_sc.assessment_participant_session IS '';

ALTER TABLE rs_ceds7_sc.assessment_performance_level ADD CONSTRAINT fk_performance_level_assessment_sub_test FOREIGN KEY ( assessment_subtest_id ) REFERENCES rs_ceds7_sc.assessment_subtest( assessment_subtest_id );

COMMENT ON CONSTRAINT FK_Performance_Level_Assessment_Sub_Test ON rs_ceds7_sc.assessment_performance_level IS '';

ALTER TABLE rs_ceds7_sc.assessment_personal_need_screen_reader ADD CONSTRAINT fk_apn_screen_reader_assessment_personal_needs_profile_display FOREIGN KEY ( assessment_personal_needs_profile_display_id ) REFERENCES rs_ceds7_sc.assessment_personal_needs_profile_display( assessment_personal_needs_profile_display_id );

COMMENT ON CONSTRAINT FK_APN_Screen_Reader_Assessment_Personal_Needs_Profile_Display ON rs_ceds7_sc.assessment_personal_need_screen_reader IS '';

ALTER TABLE rs_ceds7_sc.assessment_personal_need_screen_reader ADD CONSTRAINT fk_assessment_personal_need_screen_reader_ref_assessment_need_link_indication_type FOREIGN KEY ( ref_assessment_need_link_indication_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_need_link_indication_type( ref_assessment_need_link_indication_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Personal_Need_Screen_Reader_Ref_Assessment_Need_Link_Indication_Type ON rs_ceds7_sc.assessment_personal_need_screen_reader IS '';

ALTER TABLE rs_ceds7_sc.assessment_personal_need_screen_reader ADD CONSTRAINT fk_assessment_personal_need_screen_reader_ref_assessment_need_usage FOREIGN KEY ( ref_assessment_need_usage_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_need_usage_type( ref_assessment_need_usage_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Personal_Need_Screen_Reader_Ref_Assessment_Need_Usage ON rs_ceds7_sc.assessment_personal_need_screen_reader IS '';

ALTER TABLE rs_ceds7_sc.assessment_personal_needs_profile_content ADD CONSTRAINT fk_assessment_needs_profile_content_assessment_needs_profile FOREIGN KEY ( assessment_personal_needs_profile_id ) REFERENCES rs_ceds7_sc.assessment_personal_needs_profile( assessment_personal_needs_profile_id );

COMMENT ON CONSTRAINT FK_Assessment_Needs_Profile_Content_Assessment_Needs_Profile ON rs_ceds7_sc.assessment_personal_needs_profile_content IS '';

ALTER TABLE rs_ceds7_sc.assessment_personal_needs_profile_content ADD CONSTRAINT fk_assessment_personal_needs_profile_content_ref_assessment_need_hazrd FOREIGN KEY ( ref_assessment_need_hazard_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_need_hazard_type( ref_assessment_need_hazard_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Personal_Needs_Profile_Content_Ref_Assessment_Need_Hazrd ON rs_ceds7_sc.assessment_personal_needs_profile_content IS '';

ALTER TABLE rs_ceds7_sc.assessment_personal_needs_profile_content ADD CONSTRAINT fk_apn_profile_content_ref_assessment_need_support_tool FOREIGN KEY ( ref_assessment_need_support_tool_id ) REFERENCES rs_ceds7_sc.ref_assessment_need_support_tool( ref_assessment_need_support_tool_id );

COMMENT ON CONSTRAINT FK_Apn_Profile_Content_Ref_Assessment_Need_Support_Tool ON rs_ceds7_sc.assessment_personal_needs_profile_content IS '';

ALTER TABLE rs_ceds7_sc.assessment_personal_needs_profile_content ADD CONSTRAINT fk_assessment_personal_needs_profile_content_ref_language FOREIGN KEY ( ref_keyword_translations_language_id ) REFERENCES rs_ceds7_sc.ref_language( ref_language_id );

COMMENT ON CONSTRAINT FK_Assessment_Personal_Needs_Profile_Content_Ref_Language ON rs_ceds7_sc.assessment_personal_needs_profile_content IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_registration_assessment_administration FOREIGN KEY ( assessment_administration_id ) REFERENCES rs_ceds7_sc.assessment_administration( assessment_administration_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Assessment_Administration ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_regirstration_ref_assessment_form FOREIGN KEY ( assessment_form_id ) REFERENCES rs_ceds7_sc.assessment_form( assessment_form_id );

COMMENT ON CONSTRAINT FK_Assessment_Regirstration_Ref_Assessment_Form ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_registration_course_section FOREIGN KEY ( course_section_organization_id ) REFERENCES rs_ceds7_sc.course_section( organization_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Course_Section ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_registration_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Organization ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_organization1 FOREIGN KEY ( school_organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Ref_Organization1 ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_organization2 FOREIGN KEY ( lea_organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Ref_Organization2 ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_registration_person FOREIGN KEY ( assigned_by_person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Person ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_registration_person2 FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Person2 ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_assessment_participation_indicator FOREIGN KEY ( ref_assessment_participation_indicator_id ) REFERENCES rs_ceds7_sc.ref_assessment_participation_indicator( ref_assessment_participation_indicator_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Ref_Assessment_Participation_Indicator ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_assessment_purpose FOREIGN KEY ( ref_assessment_purpose_id ) REFERENCES rs_ceds7_sc.ref_assessment_purpose( ref_assessment_purpose_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Ref_Assessment_Purpose ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_assessment_reason_not_completing FOREIGN KEY ( ref_assessment_reason_not_completing_id ) REFERENCES rs_ceds7_sc.ref_assessment_reason_not_completing( ref_assessment_reason_not_completing_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Ref_Assessment_Reason_Not_Completing ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_assessment_reason_not_tested FOREIGN KEY ( ref_assessment_reason_not_tested_id ) REFERENCES rs_ceds7_sc.ref_assessment_reason_not_tested( ref_assessment_reason_not_tested_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Ref_Assessment_Reason_Not_Tested ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_assessment_registration_completion_status FOREIGN KEY ( ref_assessment_registration_completion_status_id ) REFERENCES rs_ceds7_sc.ref_assessment_registration_completion_status( ref_assessment_registration_completion_status_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Ref_Assessment_Registration_Completion_Status ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_grade_level FOREIGN KEY ( ref_grade_level_when_assessed_id ) REFERENCES rs_ceds7_sc.ref_grade_level( ref_grade_level_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Ref_Grade_Level ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_grade_level1 FOREIGN KEY ( ref_grade_level_to_be_assessed_id ) REFERENCES rs_ceds7_sc.ref_grade_level( ref_grade_level_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Ref_Grade_Level1 ON rs_ceds7_sc.assessment_registration IS '';

ALTER TABLE rs_ceds7_sc.assessment_result ADD CONSTRAINT fk_assessment_result_assessment_registration FOREIGN KEY ( assessment_registration_id ) REFERENCES rs_ceds7_sc.assessment_registration( assessment_registration_id );

COMMENT ON CONSTRAINT FK_Assessment_Result_Assessment_Registration ON rs_ceds7_sc.assessment_result IS '';

ALTER TABLE rs_ceds7_sc.assessment_result ADD CONSTRAINT fk_assessment_result_assessment_sub_test FOREIGN KEY ( assessment_subtest_id ) REFERENCES rs_ceds7_sc.assessment_subtest( assessment_subtest_id );

COMMENT ON CONSTRAINT FK_Assessment_Result_Assessment_Sub_Test ON rs_ceds7_sc.assessment_result IS '';

ALTER TABLE rs_ceds7_sc.assessment_result ADD CONSTRAINT fk_assessment_result_ref_assessment_pretest_outcome FOREIGN KEY ( ref_assessment_pretest_outcome_id ) REFERENCES rs_ceds7_sc.ref_assessment_pretest_outcome( ref_assessment_pretest_outcome_id );

COMMENT ON CONSTRAINT FK_Assessment_Result_Ref_Assessment_Pretest_Outcome ON rs_ceds7_sc.assessment_result IS '';

ALTER TABLE rs_ceds7_sc.assessment_result ADD CONSTRAINT fk_assessment_result_ref_assessment_result_data_type FOREIGN KEY ( ref_assessment_result_data_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_result_data_type( ref_assessment_result_data_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Result_Ref_Assessment_Result_Data_Type ON rs_ceds7_sc.assessment_result IS '';

ALTER TABLE rs_ceds7_sc.assessment_result ADD CONSTRAINT fk_assessment_result_ref_assessment_result_score_type FOREIGN KEY ( ref_assessment_result_score_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_result_score_type( ref_assessment_result_score_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Result_Ref_Assessment_Result_Score_Type ON rs_ceds7_sc.assessment_result IS '';

ALTER TABLE rs_ceds7_sc.assessment_result ADD CONSTRAINT fk_assessment_result_ref_el_outcome_measurement FOREIGN KEY ( ref_el_outcome_measurement_level_id ) REFERENCES rs_ceds7_sc.ref_el_outcome_measurement_level( ref_el_outcome_measurement_level_id );

COMMENT ON CONSTRAINT FK_Assessment_Result_Ref_EL_Outcome_Measurement ON rs_ceds7_sc.assessment_result IS '';

ALTER TABLE rs_ceds7_sc.assessment_result ADD CONSTRAINT fk_assessment_result_ref_outcome_time_point FOREIGN KEY ( ref_outcome_time_point_id ) REFERENCES rs_ceds7_sc.ref_outcome_time_point( ref_outcome_time_point_id );

COMMENT ON CONSTRAINT FK_Assessment_Result_Ref_Outcome_Time_Point ON rs_ceds7_sc.assessment_result IS '';

ALTER TABLE rs_ceds7_sc.assessment_result ADD CONSTRAINT fk_assessment_result_ref_score_metric_type FOREIGN KEY ( ref_score_metric_type_id ) REFERENCES rs_ceds7_sc.ref_score_metric_type( ref_score_metric_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Result_Ref_Score_Metric_Type ON rs_ceds7_sc.assessment_result IS '';

ALTER TABLE rs_ceds7_sc.assessment_result_rubric_criterion_result ADD CONSTRAINT fk_assessment_result_rubric_criterion_result_assessment_result FOREIGN KEY ( assessment_result_id ) REFERENCES rs_ceds7_sc.assessment_result( assessment_result_id );

COMMENT ON CONSTRAINT FK_Assessment_Result_Rubric_Criterion_Result_Assessment_Result ON rs_ceds7_sc.assessment_result_rubric_criterion_result IS '';

ALTER TABLE rs_ceds7_sc.assessment_result_rubric_criterion_result ADD CONSTRAINT fk_assessment_result_rubric_criterion_result_rubric_criterion_level FOREIGN KEY ( rubric_criterion_level_id ) REFERENCES rs_ceds7_sc.rubric_criterion_level( rubric_criterion_level_id );

COMMENT ON CONSTRAINT FK_Assessment_Result_Rubric_Criterion_Result_Rubric_Criterion_Level ON rs_ceds7_sc.assessment_result_rubric_criterion_result IS '';

ALTER TABLE rs_ceds7_sc.assessment_session_staff_role ADD CONSTRAINT fk_assessment_session_staff_role_assessment_participant_session FOREIGN KEY ( assessment_participant_session_id ) REFERENCES rs_ceds7_sc.assessment_participant_session( assessment_participant_session_id );

COMMENT ON CONSTRAINT FK_Assessment_Session_Staff_Role_Assessment_Participant_Session ON rs_ceds7_sc.assessment_session_staff_role IS '';

ALTER TABLE rs_ceds7_sc.assessment_session_staff_role ADD CONSTRAINT fk_assessment_session_staff_role_assessment_session FOREIGN KEY ( assessment_session_id ) REFERENCES rs_ceds7_sc.assessment_session( assessment_session_id );

COMMENT ON CONSTRAINT FK_Assessment_Session_Staff_Role_Assessment_Session ON rs_ceds7_sc.assessment_session_staff_role IS '';

ALTER TABLE rs_ceds7_sc.assessment_session_staff_role ADD CONSTRAINT fk_assessment_session_staff_role_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Assessment_Session_Staff_Role_Person ON rs_ceds7_sc.assessment_session_staff_role IS '';

ALTER TABLE rs_ceds7_sc.assessment_session_staff_role ADD CONSTRAINT fk_assessment_session_staff_role_ref_assessment_session_staff_role_type FOREIGN KEY ( ref_assessment_session_staff_role_type_id ) REFERENCES rs_ceds7_sc.ref_assessment_session_staff_role_type( ref_assessment_session_staff_role_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Session_Staff_Role_Ref_Assessment_Session_Staff_Role_Type ON rs_ceds7_sc.assessment_session_staff_role IS '';

ALTER TABLE rs_ceds7_sc.assessment_subtest_assessment_item ADD CONSTRAINT fk_assessment_subtest_ai_assessment_item FOREIGN KEY ( assessment_item_id ) REFERENCES rs_ceds7_sc.assessment_item( assessment_item_id );

COMMENT ON CONSTRAINT FK_Assessment_Subtest_AI_Assessment_Item ON rs_ceds7_sc.assessment_subtest_assessment_item IS '';

ALTER TABLE rs_ceds7_sc.assessment_subtest_assessment_item ADD CONSTRAINT fk_assessment_subtest_items_assessment_sub_test FOREIGN KEY ( assessment_subtest_id ) REFERENCES rs_ceds7_sc.assessment_subtest( assessment_subtest_id );

COMMENT ON CONSTRAINT FK_Assessment_Subtest_Items_Assessment_Sub_Test ON rs_ceds7_sc.assessment_subtest_assessment_item IS '';

ALTER TABLE rs_ceds7_sc.assessment_subtest_el_developmental_domain ADD CONSTRAINT fk_assessment_subtest_assessment_el_developmental_domain_assessment_subtest FOREIGN KEY ( assessment_subtest_id ) REFERENCES rs_ceds7_sc.assessment_subtest( assessment_subtest_id );

COMMENT ON CONSTRAINT FK_Assessment_Subtest_Assessment_EL_Developmental_Domain_Assessment_Subtest ON rs_ceds7_sc.assessment_subtest_el_developmental_domain IS '';

ALTER TABLE rs_ceds7_sc.assessment_subtest_el_developmental_domain ADD CONSTRAINT fk_assessment_subtest_assessment_el_developmental_domain_ref_assessment_el_developmental_domain FOREIGN KEY ( ref_assessment_el_developmental_domain_id ) REFERENCES rs_ceds7_sc.ref_assessment_el_developmental_domain( ref_assessment_el_developmental_domain_id );

COMMENT ON CONSTRAINT FK_Assessment_Subtest_Assessment_EL_Developmental_Domain_Ref_Assessment_EL_Developmental_Domain ON rs_ceds7_sc.assessment_subtest_el_developmental_domain IS '';

ALTER TABLE rs_ceds7_sc.authentication ADD CONSTRAINT fk_authentication_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Authentication_Organization_Person_Role ON rs_ceds7_sc.authentication IS '';

ALTER TABLE rs_ceds7_sc.authorization_document ADD CONSTRAINT fk_authorization_document_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Authorization_Document_Organization_Person_Role ON rs_ceds7_sc.authorization_document IS '';

ALTER TABLE rs_ceds7_sc.authorization_document ADD CONSTRAINT fk_authorization_document_ref_authorizer_type FOREIGN KEY ( ref_authorizer_type_id ) REFERENCES rs_ceds7_sc.ref_authorizer_type( ref_authorizer_type_id );

COMMENT ON CONSTRAINT FK_Authorization_Document_Ref_Authorizer_Type ON rs_ceds7_sc.authorization_document IS '';

ALTER TABLE rs_ceds7_sc.competency_framework ADD CONSTRAINT fk_competency_framework_ref_competency_framework_publication_status FOREIGN KEY ( ref_competency_framework_publication_status_id ) REFERENCES rs_ceds7_sc.ref_competency_framework_publication_status( ref_competency_framework_publication_status_id );

COMMENT ON CONSTRAINT FK_Competency_Framework_Ref_Competency_Framework_Publication_Status ON rs_ceds7_sc.competency_framework IS '';

ALTER TABLE rs_ceds7_sc.competency_framework ADD CONSTRAINT fk_competency_framework_ref_language FOREIGN KEY ( ref_language_id ) REFERENCES rs_ceds7_sc.ref_language( ref_language_id );

COMMENT ON CONSTRAINT FK_Competency_Framework_Ref_Language ON rs_ceds7_sc.competency_framework IS '';

ALTER TABLE rs_ceds7_sc.competency_framework_item_association ADD CONSTRAINT fk_competency_framework_item_association_competency_framework_item FOREIGN KEY ( competency_framework_item_id ) REFERENCES rs_ceds7_sc.competency_framework_item( competency_framework_item_id );

COMMENT ON CONSTRAINT FK_Competency_Framework_Item_Association_Competency_Framework_Item ON rs_ceds7_sc.competency_framework_item_association IS '';

ALTER TABLE rs_ceds7_sc.competency_framework_item_association ADD CONSTRAINT fk_cf_item_association_ref_competency_framework_item_association FOREIGN KEY ( ref_competency_framework_item_association_type_id ) REFERENCES rs_ceds7_sc.ref_competency_framework_item_association_type( ref_competency_framework_item_association_type_id );

COMMENT ON CONSTRAINT FK_CF_Item_Association_Ref_Competency_Framework_Item_Association ON rs_ceds7_sc.competency_framework_item_association IS '';

ALTER TABLE rs_ceds7_sc.competency_framework_item_association ADD CONSTRAINT fk_competency_framework_item_association_ref_associated_entity_type FOREIGN KEY ( ref_entity_type_id ) REFERENCES rs_ceds7_sc.ref_entity_type( ref_entity_type_id );

COMMENT ON CONSTRAINT FK_Competency_Framework_Item_Association_Ref_Associated_Entity_Type ON rs_ceds7_sc.competency_framework_item_association IS '';

ALTER TABLE rs_ceds7_sc.competency_item_competency_set ADD CONSTRAINT fk_competency_item_competency_set_competency_framework_item FOREIGN KEY ( competency_framework_item_id ) REFERENCES rs_ceds7_sc.competency_framework_item( competency_framework_item_id );

COMMENT ON CONSTRAINT FK_Competency_Item_Competency_Set_Competency_Framework_Item ON rs_ceds7_sc.competency_item_competency_set IS '';

ALTER TABLE rs_ceds7_sc.competency_item_competency_set ADD CONSTRAINT fk_competency_item_competency_set_competency_set FOREIGN KEY ( competency_set_id ) REFERENCES rs_ceds7_sc.competency_set( competency_set_id );

COMMENT ON CONSTRAINT FK_Competency_Item_Competency_Set_Competency_Set ON rs_ceds7_sc.competency_item_competency_set IS '';

ALTER TABLE rs_ceds7_sc.core_knowledge_area ADD CONSTRAINT fk_core_knowledge_area_ref_core_knowledge_area FOREIGN KEY ( ref_core_knowledge_area_id ) REFERENCES rs_ceds7_sc.ref_core_knowledge_area( ref_core_knowledge_area_id );

COMMENT ON CONSTRAINT FK_Core_Knowledge_Area_Ref_Core_Knowledge_Area ON rs_ceds7_sc.core_knowledge_area IS '';

ALTER TABLE rs_ceds7_sc.core_knowledge_area ADD CONSTRAINT fk_core_knowledge_area_professional_development_activity FOREIGN KEY ( professional_development_activity_id ) REFERENCES rs_ceds7_sc.staff_professional_development_activity( staff_professional_development_activity_id );

COMMENT ON CONSTRAINT FK_Core_Knowledge_Area_Professional_Development_Activity ON rs_ceds7_sc.core_knowledge_area IS '';

ALTER TABLE rs_ceds7_sc.course_section ADD CONSTRAINT fk_course_section_course FOREIGN KEY ( course_id ) REFERENCES rs_ceds7_sc.course( organization_id );

COMMENT ON CONSTRAINT FK_Course_Section_Course ON rs_ceds7_sc.course_section IS '';

ALTER TABLE rs_ceds7_sc.course_section ADD CONSTRAINT fk_course_section_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT FK_Course_Section_Organization ON rs_ceds7_sc.course_section IS '';

ALTER TABLE rs_ceds7_sc.course_section ADD CONSTRAINT fk_course_section_organization_calendar_session FOREIGN KEY ( organization_calendar_session_id ) REFERENCES rs_ceds7_sc.organization_calendar_session( organization_calendar_session_id );

COMMENT ON CONSTRAINT FK_Course_Section_Organization_Calendar_Session ON rs_ceds7_sc.course_section IS '';

ALTER TABLE rs_ceds7_sc.course_section ADD CONSTRAINT fk_course_section_ref_advanced_placement_course_code_id FOREIGN KEY ( ref_advanced_placement_course_code_id ) REFERENCES rs_ceds7_sc.ref_advanced_placement_course_code( ref_advanced_placement_course_code_id );

COMMENT ON CONSTRAINT FK_Course_Section_Ref_Advanced_Placement_Course_Code_Id ON rs_ceds7_sc.course_section IS '';

ALTER TABLE rs_ceds7_sc.course_section ADD CONSTRAINT fk_course_section_ref_course_section_delivery_mode FOREIGN KEY ( ref_course_section_delivery_mode_id ) REFERENCES rs_ceds7_sc.ref_course_section_delivery_mode( ref_course_section_delivery_mode_id );

COMMENT ON CONSTRAINT FK_Course_Section_Ref_Course_Section_Delivery_Mode ON rs_ceds7_sc.course_section IS '';

ALTER TABLE rs_ceds7_sc.course_section ADD CONSTRAINT fk_course_section_ref_credit_type_earned FOREIGN KEY ( ref_credit_type_earned_id ) REFERENCES rs_ceds7_sc.ref_credit_type_earned( ref_credit_type_earned_id );

COMMENT ON CONSTRAINT FK_Course_Section_Ref_Credit_Type_Earned ON rs_ceds7_sc.course_section IS '';

ALTER TABLE rs_ceds7_sc.course_section ADD CONSTRAINT fk_course_section_ref_language FOREIGN KEY ( ref_instruction_language_id ) REFERENCES rs_ceds7_sc.ref_language( ref_language_id );

COMMENT ON CONSTRAINT FK_Course_Section_Ref_Language ON rs_ceds7_sc.course_section IS '';

ALTER TABLE rs_ceds7_sc.course_section ADD CONSTRAINT fk_course_section_ref_course_section_single_sex_class_status FOREIGN KEY ( ref_single_sex_class_status_id ) REFERENCES rs_ceds7_sc.ref_single_sex_class_status( ref_single_sex_class_status_id );

COMMENT ON CONSTRAINT FK_Course_Section_Ref_Course_Section_Single_Sex_Class_Status ON rs_ceds7_sc.course_section IS '';

ALTER TABLE rs_ceds7_sc.course_section_location ADD CONSTRAINT fk_course_section_location_classroom FOREIGN KEY ( location_id ) REFERENCES rs_ceds7_sc.classroom( location_id );

COMMENT ON CONSTRAINT FK_Course_Section_Location_Classroom ON rs_ceds7_sc.course_section_location IS '';

ALTER TABLE rs_ceds7_sc.course_section_location ADD CONSTRAINT fk_course_section_location_course_section FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.course_section( organization_id );

COMMENT ON CONSTRAINT FK_Course_Section_Location_Course_Section ON rs_ceds7_sc.course_section_location IS '';

ALTER TABLE rs_ceds7_sc.course_section_location ADD CONSTRAINT fk_course_section_location_ref_instruction_location_type FOREIGN KEY ( ref_instruction_location_type_id ) REFERENCES rs_ceds7_sc.ref_instruction_location_type( ref_instruction_location_type_id );

COMMENT ON CONSTRAINT FK_Course_Section_Location_Ref_Instruction_Location_Type ON rs_ceds7_sc.course_section_location IS '';

ALTER TABLE rs_ceds7_sc.credential ADD CONSTRAINT fk_credential_ref_career_cluster FOREIGN KEY ( ref_career_cluster_id ) REFERENCES rs_ceds7_sc.ref_career_cluster( ref_career_cluster_id );

COMMENT ON CONSTRAINT FK_Credential_Ref_Career_Cluster ON rs_ceds7_sc.credential IS '';

ALTER TABLE rs_ceds7_sc.credential ADD CONSTRAINT fk_credential_ref_cip_code FOREIGN KEY ( ref_cip_code_id ) REFERENCES rs_ceds7_sc.ref_cip_code( ref_cip_code_id );

COMMENT ON CONSTRAINT FK_Credential_Ref_Cip_Code ON rs_ceds7_sc.credential IS '';

ALTER TABLE rs_ceds7_sc.credential ADD CONSTRAINT fk_credential_ref_credential_intended_purpose_type FOREIGN KEY ( ref_credential_intended_purpose_type_id ) REFERENCES rs_ceds7_sc.ref_credential_intended_purpose_type( ref_credential_intended_purpose_type_id );

COMMENT ON CONSTRAINT FK_Credential_Ref_Credential_Intended_Purpose_Type ON rs_ceds7_sc.credential IS '';

ALTER TABLE rs_ceds7_sc.credential ADD CONSTRAINT fk_credential_ref_credential_status_type FOREIGN KEY ( ref_credential_status_type_id ) REFERENCES rs_ceds7_sc.ref_credential_status_type( ref_credential_status_type_id );

COMMENT ON CONSTRAINT FK_Credential_Ref_Credential_Status_Type ON rs_ceds7_sc.credential IS '';

ALTER TABLE rs_ceds7_sc.credential ADD CONSTRAINT fk_credential_ref_credential_verification_type FOREIGN KEY ( ref_credential_verification_type_id ) REFERENCES rs_ceds7_sc.ref_credential_verification_type( ref_credential_verification_type_id );

COMMENT ON CONSTRAINT FK_Credential_Ref_Credential_Verification_Type ON rs_ceds7_sc.credential IS '';

ALTER TABLE rs_ceds7_sc.credential ADD CONSTRAINT fk_credential_ref_onetsoc_occupation_type FOREIGN KEY ( ref_onetsoc_occupation_type_id ) REFERENCES rs_ceds7_sc.ref_onetsoc_occupation_type( ref_onetsoc_occupation_type_id );

COMMENT ON CONSTRAINT FK_Credential_Ref_ONETSOC_Occupation_Type ON rs_ceds7_sc.credential IS '';

ALTER TABLE rs_ceds7_sc.credential_award_credit ADD CONSTRAINT fk_credential_award_credit_credential_award FOREIGN KEY ( credential_award_id ) REFERENCES rs_ceds7_sc.credential_award( credential_award_id );

COMMENT ON CONSTRAINT FK_Credential_Award_Credit_Credential_Award ON rs_ceds7_sc.credential_award_credit IS '';

ALTER TABLE rs_ceds7_sc.credential_award_credit ADD CONSTRAINT fk_credential_award_credit_credential_criteria_course FOREIGN KEY ( credential_criteria_course_id ) REFERENCES rs_ceds7_sc.credential_criteria_course( credential_criteria_course_id );

COMMENT ON CONSTRAINT FK_Credential_Award_Credit_Credential_Criteria_Course ON rs_ceds7_sc.credential_award_credit IS '';

ALTER TABLE rs_ceds7_sc.credential_award_credit ADD CONSTRAINT fk_credential_award_credit_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Credential_Award_Credit_Organization_Person_Role ON rs_ceds7_sc.credential_award_credit IS '';

ALTER TABLE rs_ceds7_sc.credential_category ADD CONSTRAINT fk_credential_category_credential FOREIGN KEY ( credential_id ) REFERENCES rs_ceds7_sc.credential( credential_id );

COMMENT ON CONSTRAINT FK_Credential_Category_Credential ON rs_ceds7_sc.credential_category IS '';

ALTER TABLE rs_ceds7_sc.credential_creator_credential ADD CONSTRAINT fk_credential_creator_credential_credential FOREIGN KEY ( credential_id ) REFERENCES rs_ceds7_sc.credential( credential_id );

COMMENT ON CONSTRAINT FK_Credential_Creator_Credential_Credential ON rs_ceds7_sc.credential_creator_credential IS '';

ALTER TABLE rs_ceds7_sc.credential_creator_credential ADD CONSTRAINT fk_credential_creator_credential_credential_creator FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.credential_creator( organization_id );

COMMENT ON CONSTRAINT FK_Credential_Creator_Credential_Credential_Creator ON rs_ceds7_sc.credential_creator_credential IS '';

ALTER TABLE rs_ceds7_sc.credential_criteria_course ADD CONSTRAINT fk_credential_criteria_course_course FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.course( organization_id );

COMMENT ON CONSTRAINT FK_Credential_Criteria_Course_Course ON rs_ceds7_sc.credential_criteria_course IS '';

ALTER TABLE rs_ceds7_sc.credential_criteria_course ADD CONSTRAINT fk_credential_criteria_course_credential_criteria FOREIGN KEY ( credential_criteria_id ) REFERENCES rs_ceds7_sc.credential_criteria( credential_criteria_id );

COMMENT ON CONSTRAINT FK_Credential_Criteria_Course_Credential_Criteria ON rs_ceds7_sc.credential_criteria_course IS '';

ALTER TABLE rs_ceds7_sc.credential_issuer ADD CONSTRAINT fk_credential_issuer_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Credential_Issuer_Organization ON rs_ceds7_sc.credential_issuer IS '';

ALTER TABLE rs_ceds7_sc.credential_issuer ADD CONSTRAINT fk_credential_issuer_ref_ctdl_organization_type FOREIGN KEY ( ref_ctdl_organization_type_id ) REFERENCES rs_ceds7_sc.ref_ctdl_organization_type( ref_ctdl_organization_type_id );

COMMENT ON CONSTRAINT FK_Credential_Issuer_Ref_CTDL_Organization_Type ON rs_ceds7_sc.credential_issuer IS '';

ALTER TABLE rs_ceds7_sc.cte_course ADD CONSTRAINT fk_cte_course_course FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.course( organization_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Course ON rs_ceds7_sc.cte_course IS '';

ALTER TABLE rs_ceds7_sc.cte_course ADD CONSTRAINT fk_cte_course_ref_additional_credit_type FOREIGN KEY ( ref_additional_credit_type_id ) REFERENCES rs_ceds7_sc.ref_additional_credit_type( ref_additional_credit_type_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Ref_Additional_Credit_Type ON rs_ceds7_sc.cte_course IS '';

ALTER TABLE rs_ceds7_sc.cte_course ADD CONSTRAINT fk_cte_course_ref_career_cluster FOREIGN KEY ( ref_career_cluster_id ) REFERENCES rs_ceds7_sc.ref_career_cluster( ref_career_cluster_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Ref_Career_Cluster ON rs_ceds7_sc.cte_course IS '';

ALTER TABLE rs_ceds7_sc.cte_course ADD CONSTRAINT fk_cte_course_ref_course_gpa_applicability FOREIGN KEY ( ref_course_gpa_applicability_id ) REFERENCES rs_ceds7_sc.ref_course_gpa_applicability( ref_course_gpa_applicability_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Ref_Course_Gpa_Applicability ON rs_ceds7_sc.cte_course IS '';

ALTER TABLE rs_ceds7_sc.cte_course ADD CONSTRAINT fk_cte_course_ref_credit_type_earned FOREIGN KEY ( ref_credit_type_earned_id ) REFERENCES rs_ceds7_sc.ref_credit_type_earned( ref_credit_type_earned_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Ref_Credit_Type_Earned ON rs_ceds7_sc.cte_course IS '';

ALTER TABLE rs_ceds7_sc.cte_course ADD CONSTRAINT fk_cte_course_ref_curriculum_framework_type FOREIGN KEY ( ref_curriculum_framework_type_id ) REFERENCES rs_ceds7_sc.ref_curriculum_framework_type( ref_curriculum_framework_type_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Ref_Curriculum_Framework_Type ON rs_ceds7_sc.cte_course IS '';

ALTER TABLE rs_ceds7_sc.cte_course ADD CONSTRAINT fk_cte_course_ref_sced_course_level FOREIGN KEY ( ref_sced_course_level_id ) REFERENCES rs_ceds7_sc.ref_sced_course_level( ref_sced_course_level_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Ref_SCED_Course_Level ON rs_ceds7_sc.cte_course IS '';

ALTER TABLE rs_ceds7_sc.cte_course ADD CONSTRAINT fk_cte_course_ref_sced_course_subject_area FOREIGN KEY ( ref_sced_course_subject_area_id ) REFERENCES rs_ceds7_sc.ref_sced_course_subject_area( ref_sced_course_subject_area_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Ref_SCED_Course_Subject_Area ON rs_ceds7_sc.cte_course IS '';

ALTER TABLE rs_ceds7_sc.el_child_demographic ADD CONSTRAINT fk_el_child_demographic_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_EL_Child_Demographic_Person ON rs_ceds7_sc.el_child_demographic IS '';

ALTER TABLE rs_ceds7_sc.el_child_health ADD CONSTRAINT fk_el_child_health_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_EL_Child_Health_Person ON rs_ceds7_sc.el_child_health IS '';

ALTER TABLE rs_ceds7_sc.el_child_health ADD CONSTRAINT fk_el_child_health_ref_scheduled_well_child_screening FOREIGN KEY ( ref_scheduled_well_child_screening_id ) REFERENCES rs_ceds7_sc.ref_scheduled_well_child_screening( ref_scheduled_well_child_screening_id );

COMMENT ON CONSTRAINT FK_EL_Child_Health_Ref_Scheduled_Well_Child_Screening ON rs_ceds7_sc.el_child_health IS '';

ALTER TABLE rs_ceds7_sc.el_child_outcome_summary ADD CONSTRAINT fk_el_child_outcome_summary_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_EL_Child_Outcome_Summary_Person ON rs_ceds7_sc.el_child_outcome_summary IS '';

ALTER TABLE rs_ceds7_sc.el_child_outcome_summary ADD CONSTRAINT fk_el_child_outcome_summary_cos_rating_a FOREIGN KEY ( cos_rating_a_id ) REFERENCES rs_ceds7_sc.ref_child_outcomes_summary_rating( ref_child_outcomes_summary_rating_id );

COMMENT ON CONSTRAINT FK_EL_Child_Outcome_Summary_COS_Rating_A ON rs_ceds7_sc.el_child_outcome_summary IS '';

ALTER TABLE rs_ceds7_sc.el_child_outcome_summary ADD CONSTRAINT fk_el_child_outcome_summary_cos_rating_b FOREIGN KEY ( cos_rating_b_id ) REFERENCES rs_ceds7_sc.ref_child_outcomes_summary_rating( ref_child_outcomes_summary_rating_id );

COMMENT ON CONSTRAINT FK_EL_Child_Outcome_Summary_COS_Rating_B ON rs_ceds7_sc.el_child_outcome_summary IS '';

ALTER TABLE rs_ceds7_sc.el_child_outcome_summary ADD CONSTRAINT fk_el_child_outcome_summary_cos_rating_c FOREIGN KEY ( cos_rating_c_id ) REFERENCES rs_ceds7_sc.ref_child_outcomes_summary_rating( ref_child_outcomes_summary_rating_id );

COMMENT ON CONSTRAINT FK_EL_Child_Outcome_Summary_COS_Rating_C ON rs_ceds7_sc.el_child_outcome_summary IS '';

ALTER TABLE rs_ceds7_sc.el_child_service ADD CONSTRAINT fk_el_child_service_org_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_EL_Child_Service_Org_Person_Role ON rs_ceds7_sc.el_child_service IS '';

ALTER TABLE rs_ceds7_sc.el_child_service ADD CONSTRAINT fk_el_child_service_ref_el_service_type FOREIGN KEY ( ref_el_service_type_id ) REFERENCES rs_ceds7_sc.ref_el_service_type( ref_el_service_type_id );

COMMENT ON CONSTRAINT FK_EL_Child_Service_Ref_EL_Service_Type ON rs_ceds7_sc.el_child_service IS '';

ALTER TABLE rs_ceds7_sc.el_child_service ADD CONSTRAINT fk_el_child_service_ref_early_childhood_services_offered FOREIGN KEY ( ref_early_childhood_services_offered_id ) REFERENCES rs_ceds7_sc.ref_early_childhood_services( ref_early_childhood_services_id );

COMMENT ON CONSTRAINT FK_EL_Child_Service_Ref_Early_Childhood_Services_Offered ON rs_ceds7_sc.el_child_service IS '';

ALTER TABLE rs_ceds7_sc.el_child_service ADD CONSTRAINT fk_el_child_service_ref_early_childhood_services_received FOREIGN KEY ( ref_early_childhood_services_received_id ) REFERENCES rs_ceds7_sc.ref_early_childhood_services( ref_early_childhood_services_id );

COMMENT ON CONSTRAINT FK_EL_Child_Service_Ref_Early_Childhood_Services_Received ON rs_ceds7_sc.el_child_service IS '';

ALTER TABLE rs_ceds7_sc.el_child_transition_plan ADD CONSTRAINT fk_el_child_idea_individualized_program FOREIGN KEY ( individualized_program_id ) REFERENCES rs_ceds7_sc.individualized_program( individualized_program_id );

COMMENT ON CONSTRAINT FK_EL_Child_IDEA_Individualized_Program ON rs_ceds7_sc.el_child_transition_plan IS '';

ALTER TABLE rs_ceds7_sc.el_child_transition_plan ADD CONSTRAINT fk_el_child_idea_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_EL_Child_IDEA_Person ON rs_ceds7_sc.el_child_transition_plan IS '';

ALTER TABLE rs_ceds7_sc.el_child_transition_plan ADD CONSTRAINT fk_el_child_idea_ref_reason_delay_transition_conf FOREIGN KEY ( ref_reason_delay_transition_conf_id ) REFERENCES rs_ceds7_sc.ref_reason_delay_transition_conf( ref_reason_delay_transition_conf_id );

COMMENT ON CONSTRAINT FK_EL_Child_IDEA_Ref_Reason_Delay_Transition_Conf ON rs_ceds7_sc.el_child_transition_plan IS '';

ALTER TABLE rs_ceds7_sc.el_class_section_service ADD CONSTRAINT fk_el_class_section_service_el_class_section FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.el_class_section( organization_id );

COMMENT ON CONSTRAINT FK_EL_Class_Section_Service_EL_Class_Section ON rs_ceds7_sc.el_class_section_service IS '';

ALTER TABLE rs_ceds7_sc.el_class_section_service ADD CONSTRAINT fk_el_class_section_service_ref_el_group_size_standard_met FOREIGN KEY ( ref_el_group_size_standard_met_id ) REFERENCES rs_ceds7_sc.ref_el_group_size_standard_met( ref_el_group_size_standard_met_id );

COMMENT ON CONSTRAINT FK_EL_Class_Section_Service_Ref_EL_Group_Size_Standard_Met ON rs_ceds7_sc.el_class_section_service IS '';

ALTER TABLE rs_ceds7_sc.el_class_section_service ADD CONSTRAINT fk_el_class_section_service_ref_frequency_of_service_id FOREIGN KEY ( ref_frequency_of_service_id ) REFERENCES rs_ceds7_sc.ref_frequency_of_service( ref_frequency_of_service_id );

COMMENT ON CONSTRAINT FK_EL_Class_Section_Service_Ref_Frequency_Of_Service_Id ON rs_ceds7_sc.el_class_section_service IS '';

ALTER TABLE rs_ceds7_sc.el_enrollment_other_funding ADD CONSTRAINT fk_el_enrollment_other_funding_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_EL_Enrollment_Other_Funding_Person ON rs_ceds7_sc.el_enrollment_other_funding IS '';

ALTER TABLE rs_ceds7_sc.el_organization ADD CONSTRAINT fk_el_organization_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Organization ON rs_ceds7_sc.el_organization IS '';

ALTER TABLE rs_ceds7_sc.el_organization ADD CONSTRAINT fk_el_organization_ref_profit_status FOREIGN KEY ( ref_profit_status_id ) REFERENCES rs_ceds7_sc.ref_profit_status( ref_profit_status_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Ref_Profit_Status ON rs_ceds7_sc.el_organization IS '';

ALTER TABLE rs_ceds7_sc.el_organization_funds ADD CONSTRAINT fk_el_organization_funds_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Funds_Organization ON rs_ceds7_sc.el_organization_funds IS '';

ALTER TABLE rs_ceds7_sc.el_organization_funds ADD CONSTRAINT fk_el_organization_funds_ref_billable_basis_type FOREIGN KEY ( ref_billable_basis_type_id ) REFERENCES rs_ceds7_sc.ref_billable_basis_type( ref_billable_basis_type_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Funds_Ref_Billable_Basis_Type ON rs_ceds7_sc.el_organization_funds IS '';

ALTER TABLE rs_ceds7_sc.el_organization_funds ADD CONSTRAINT fk_el_organization_funds_ref_el_federal_funding_type FOREIGN KEY ( ref_el_federal_funding_type_id ) REFERENCES rs_ceds7_sc.ref_el_federal_funding_type( ref_el_federal_funding_type_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Funds_Ref_EL_Federal_Funding_Type ON rs_ceds7_sc.el_organization_funds IS '';

ALTER TABLE rs_ceds7_sc.el_organization_funds ADD CONSTRAINT fk_el_organization_funds_ref_el_local_revenue_source FOREIGN KEY ( ref_el_local_revenue_source_id ) REFERENCES rs_ceds7_sc.ref_el_local_revenue_source( ref_el_local_revenue_source_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Funds_Ref_EL_Local_Revenue_Source ON rs_ceds7_sc.el_organization_funds IS '';

ALTER TABLE rs_ceds7_sc.el_organization_funds ADD CONSTRAINT fk_el_organization_funds_ref_el_other_federal_funding_sources FOREIGN KEY ( ref_el_other_federal_funding_sources_id ) REFERENCES rs_ceds7_sc.ref_el_other_federal_funding_sources( ref_el_other_federal_funding_sources_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Funds_Ref_EL_Other_Federal_Funding_Sources ON rs_ceds7_sc.el_organization_funds IS '';

ALTER TABLE rs_ceds7_sc.el_organization_funds ADD CONSTRAINT fk_el_organization_funds_ref_el_state_revenue_source FOREIGN KEY ( ref_el_state_revenue_source_id ) REFERENCES rs_ceds7_sc.ref_el_state_revenue_source( ref_el_state_revenue_source_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Funds_Ref_EL_State_Revenue_Source ON rs_ceds7_sc.el_organization_funds IS '';

ALTER TABLE rs_ceds7_sc.el_organization_funds ADD CONSTRAINT fk_el_organization_funds_ref_reimbursement_type FOREIGN KEY ( ref_reimbursement_type_id ) REFERENCES rs_ceds7_sc.ref_reimbursement_type( ref_reimbursement_type_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Funds_Ref_Reimbursement_Type ON rs_ceds7_sc.el_organization_funds IS '';

ALTER TABLE rs_ceds7_sc.el_program_licensing ADD CONSTRAINT fk_el_program_licensing_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_EL_Program_Licensing_Organization ON rs_ceds7_sc.el_program_licensing IS '';

ALTER TABLE rs_ceds7_sc.el_program_licensing ADD CONSTRAINT fk_el_program_licensing_ref_el_program_license_status FOREIGN KEY ( ref_el_program_license_status_id ) REFERENCES rs_ceds7_sc.ref_el_program_license_status( ref_el_program_license_status_id );

COMMENT ON CONSTRAINT FK_EL_Program_Licensing_Ref_EL_Program_License_Status ON rs_ceds7_sc.el_program_licensing IS '';

ALTER TABLE rs_ceds7_sc.el_program_licensing ADD CONSTRAINT fk_el_program_licensing_ref_license_exempt FOREIGN KEY ( ref_license_exempt_id ) REFERENCES rs_ceds7_sc.ref_license_exempt( ref_license_exempt_id );

COMMENT ON CONSTRAINT FK_EL_Program_Licensing_Ref_License_Exempt ON rs_ceds7_sc.el_program_licensing IS '';

ALTER TABLE rs_ceds7_sc.el_quality_rating_improvement ADD CONSTRAINT fk_el_quality_rating_improvement_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_EL_Quality_Rating_Improvement_Organization ON rs_ceds7_sc.el_quality_rating_improvement IS '';

ALTER TABLE rs_ceds7_sc.el_quality_rating_improvement ADD CONSTRAINT fk_el_quality_rating_improvement_ref_qris_participation FOREIGN KEY ( ref_qris_participation_id ) REFERENCES rs_ceds7_sc.ref_qris_participation( ref_qris_participation_id );

COMMENT ON CONSTRAINT FK_EL_Quality_Rating_Improvement_Ref_QRIS_Participation ON rs_ceds7_sc.el_quality_rating_improvement IS '';

ALTER TABLE rs_ceds7_sc.el_staff ADD CONSTRAINT fk_el_staff_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_EL_Staff_Organization_Person_Role ON rs_ceds7_sc.el_staff IS '';

ALTER TABLE rs_ceds7_sc.el_staff ADD CONSTRAINT fk_el_staff_ref_child_dev_associate_type FOREIGN KEY ( ref_child_development_associate_type_id ) REFERENCES rs_ceds7_sc.ref_child_development_associate_type( ref_child_development_associate_type_id );

COMMENT ON CONSTRAINT FK_EL_Staff_Ref_Child_Dev_Associate_Type ON rs_ceds7_sc.el_staff IS '';

ALTER TABLE rs_ceds7_sc.el_staff_education ADD CONSTRAINT fk_el_staff_education_el_staff FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.el_staff( organization_person_role_id );

COMMENT ON CONSTRAINT FK_EL_Staff_Education_EL_Staff ON rs_ceds7_sc.el_staff_education IS '';

ALTER TABLE rs_ceds7_sc.el_staff_education ADD CONSTRAINT fk_el_staff_ref_el_level_of_specialization FOREIGN KEY ( ref_el_level_of_specialization_id ) REFERENCES rs_ceds7_sc.ref_el_level_of_specialization( ref_el_level_of_specialization_id );

COMMENT ON CONSTRAINT FK_EL_Staff_Ref_EL_Level_Of_Specialization ON rs_ceds7_sc.el_staff_education IS '';

ALTER TABLE rs_ceds7_sc.el_staff_education ADD CONSTRAINT fk_el_staff_education_ref_elpd_topic_area FOREIGN KEY ( ref_el_professional_development_topic_area_id ) REFERENCES rs_ceds7_sc.ref_el_professional_development_topic_area( ref_el_professional_development_topic_area_id );

COMMENT ON CONSTRAINT FK_EL_Staff_Education_Ref_ELPD_Topic_Area ON rs_ceds7_sc.el_staff_education IS '';

ALTER TABLE rs_ceds7_sc.early_childhood_credential ADD CONSTRAINT fk_early_childhood_credential_person_credential FOREIGN KEY ( person_credential_id ) REFERENCES rs_ceds7_sc.person_credential( person_credential_id );

COMMENT ON CONSTRAINT FK_Early_Childhood_Credential_Person_Credential ON rs_ceds7_sc.early_childhood_credential IS '';

ALTER TABLE rs_ceds7_sc.early_childhood_credential ADD CONSTRAINT fk_early_childhood_credential_ref_early_childhood_credential FOREIGN KEY ( ref_early_childhood_credential_id ) REFERENCES rs_ceds7_sc.ref_early_childhood_credential( ref_early_childhood_credential_id );

COMMENT ON CONSTRAINT FK_Early_Childhood_Credential_Ref_Early_Childhood_Credential ON rs_ceds7_sc.early_childhood_credential IS '';

ALTER TABLE rs_ceds7_sc.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_balance_sheet_account_code FOREIGN KEY ( ref_financial_account_balance_sheet_code_id ) REFERENCES rs_ceds7_sc.ref_financial_account_balance_sheet_code( ref_financial_balance_sheet_account_code_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Balance_Sheet_Account_Code ON rs_ceds7_sc.financial_account IS '';

ALTER TABLE rs_ceds7_sc.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_account_category FOREIGN KEY ( ref_financial_account_category_id ) REFERENCES rs_ceds7_sc.ref_financial_account_category( ref_financial_account_category_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Account_Category ON rs_ceds7_sc.financial_account IS '';

ALTER TABLE rs_ceds7_sc.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_account_fund_classification FOREIGN KEY ( ref_financial_account_fund_classification_id ) REFERENCES rs_ceds7_sc.ref_financial_account_fund_classification( ref_financial_account_fund_classification_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Account_Fund_Classification ON rs_ceds7_sc.financial_account IS '';

ALTER TABLE rs_ceds7_sc.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_account_program_code FOREIGN KEY ( ref_financial_account_program_code_id ) REFERENCES rs_ceds7_sc.ref_financial_account_program_code( ref_financial_account_program_code_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Account_Program_Code ON rs_ceds7_sc.financial_account IS '';

ALTER TABLE rs_ceds7_sc.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_account_revenue_code FOREIGN KEY ( ref_financial_account_revenue_code_id ) REFERENCES rs_ceds7_sc.ref_financial_account_revenue_code( ref_financial_account_revenue_code_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Account_Revenue_Code ON rs_ceds7_sc.financial_account IS '';

ALTER TABLE rs_ceds7_sc.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_expenditure_function_code FOREIGN KEY ( ref_financial_expenditure_function_code_id ) REFERENCES rs_ceds7_sc.ref_financial_expenditure_function_code( ref_financial_expenditure_function_code_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Expenditure_Function_Code ON rs_ceds7_sc.financial_account IS '';

ALTER TABLE rs_ceds7_sc.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_expenditure_level_of_instruction_code FOREIGN KEY ( ref_financial_expenditure_level_of_instruction_code_id ) REFERENCES rs_ceds7_sc.ref_financial_expenditure_level_of_instruction_code( ref_financial_expenditure_level_of_instruction_code_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Expenditure_Level_Of_Instruction_Code ON rs_ceds7_sc.financial_account IS '';

ALTER TABLE rs_ceds7_sc.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_expenditure_object_code FOREIGN KEY ( ref_financial_expenditure_object_code_id ) REFERENCES rs_ceds7_sc.ref_financial_expenditure_object_code( ref_financial_expenditure_object_code_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Expenditure_Object_Code ON rs_ceds7_sc.financial_account IS '';

ALTER TABLE rs_ceds7_sc.financial_aid_application ADD CONSTRAINT fk_financial_aid_application_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Financial_Aid_Application_Organization_Person_Role ON rs_ceds7_sc.financial_aid_application IS '';

ALTER TABLE rs_ceds7_sc.financial_aid_application ADD CONSTRAINT fk_financial_aid_application_ref_financial_aid_appl_type FOREIGN KEY ( ref_financial_aid_application_type_id ) REFERENCES rs_ceds7_sc.ref_financial_aid_application_type( ref_financial_aid_application_type_id );

COMMENT ON CONSTRAINT FK_Financial_Aid_Application_Ref_Financial_Aid_Appl_Type ON rs_ceds7_sc.financial_aid_application IS '';

ALTER TABLE rs_ceds7_sc.goal ADD CONSTRAINT fk_goal_competency_set FOREIGN KEY ( competency_set_id ) REFERENCES rs_ceds7_sc.competency_set( competency_set_id );

COMMENT ON CONSTRAINT FK_Goal_Competency_Set ON rs_ceds7_sc.goal IS '';

ALTER TABLE rs_ceds7_sc.goal ADD CONSTRAINT fk_goal_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Goal_Organization_Person_Role ON rs_ceds7_sc.goal IS '';

ALTER TABLE rs_ceds7_sc.goal_measurement_criterion ADD CONSTRAINT fk_goal_measurement_criterion_goal_measurement FOREIGN KEY ( goal_measurement_id ) REFERENCES rs_ceds7_sc.goal_measurement( goal_measurement_id );

COMMENT ON CONSTRAINT FK_Goal_Measurement_Criterion_Goal_Measurement ON rs_ceds7_sc.goal_measurement_criterion IS '';

ALTER TABLE rs_ceds7_sc.idea_eligibility_evaluation_category ADD CONSTRAINT fk_idea_eligibility_evaluation_category_eligibility_evaluation FOREIGN KEY ( eligibility_evaluation_id ) REFERENCES rs_ceds7_sc.eligibility_evaluation( eligibility_evaluation_id );

COMMENT ON CONSTRAINT FK_IDEA_Eligibility_Evaluation_Category_Eligibility_Evaluation ON rs_ceds7_sc.idea_eligibility_evaluation_category IS '';

ALTER TABLE rs_ceds7_sc.idea_eligibility_evaluation_category ADD CONSTRAINT fk_idea_eligibility_evaluation_category_ref_idea_eligibility_evaluation_category FOREIGN KEY ( ref_idea_eligibility_evaluation_category_id ) REFERENCES rs_ceds7_sc.ref_idea_eligibility_evaluation_category( ref_idea_eligibility_evaluation_category_id );

COMMENT ON CONSTRAINT FK_IDEA_Eligibility_Evaluation_Category_Ref_IDEA_Eligibility_Evaluation_Category ON rs_ceds7_sc.idea_eligibility_evaluation_category IS '';

ALTER TABLE rs_ceds7_sc.iep_authorization_rejected ADD CONSTRAINT fk_iep_authorization_rejected_iep_authorization FOREIGN KEY ( iep_authorization_id ) REFERENCES rs_ceds7_sc.iep_authorization( iep_authorization_id );

COMMENT ON CONSTRAINT FK_IEP_Authorization_Rejected_IEP_Authorization ON rs_ceds7_sc.iep_authorization_rejected IS '';

ALTER TABLE rs_ceds7_sc.ipeds_finance ADD CONSTRAINT fk_ipeds_finance_organization_financial FOREIGN KEY ( organization_financial_id ) REFERENCES rs_ceds7_sc.organization_financial( organization_financial_id );

COMMENT ON CONSTRAINT FK_IPEDS_Finance_Organization_Financial ON rs_ceds7_sc.ipeds_finance IS '';

ALTER TABLE rs_ceds7_sc.ipeds_finance ADD CONSTRAINT fk_ipeds_finance_ref_ipedsfasb_financial_position FOREIGN KEY ( ref_ipedsfasb_financial_position_id ) REFERENCES rs_ceds7_sc.ref_ipedsfasb_financial_position( ref_ipedsfasb_financial_position_id );

COMMENT ON CONSTRAINT FK_IPEDS_Finance_Ref_IPEDSFASB_Financial_Position ON rs_ceds7_sc.ipeds_finance IS '';

ALTER TABLE rs_ceds7_sc.ipeds_finance ADD CONSTRAINT fk_ipeds_finance_ref_ipedsfasb_functional_expense FOREIGN KEY ( ref_ipedsfasb_functional_expense_id ) REFERENCES rs_ceds7_sc.ref_ipedsfasb_functional_expense( ref_ipedsfasb_functional_expense_id );

COMMENT ON CONSTRAINT FK_IPEDS_Finance_Ref_IPEDSFASB_Functional_Expense ON rs_ceds7_sc.ipeds_finance IS '';

ALTER TABLE rs_ceds7_sc.ipeds_finance ADD CONSTRAINT fk_ipeds_finance_ref_ipedsfasb_pell_grant_transactions FOREIGN KEY ( ref_ipedsfasb_pell_grant_transactions_id ) REFERENCES rs_ceds7_sc.ref_ipedsfasb_pell_grant_transactions( ref_ipedsfasb_pell_grant_transactions_id );

COMMENT ON CONSTRAINT FK_IPEDS_Finance_Ref_IPEDSFASB_Pell_Grant_Transactions ON rs_ceds7_sc.ipeds_finance IS '';

ALTER TABLE rs_ceds7_sc.ipeds_finance ADD CONSTRAINT fk_ipeds_finance_ref_ipedsfasb_revenue FOREIGN KEY ( ref_ipedsfasb_revenue_id ) REFERENCES rs_ceds7_sc.ref_ipedsfasb_revenue( ref_ipedsfasb_revenue_id );

COMMENT ON CONSTRAINT FK_IPEDS_Finance_Ref_IPEDSFASB_Revenue ON rs_ceds7_sc.ipeds_finance IS '';

ALTER TABLE rs_ceds7_sc.ipeds_finance ADD CONSTRAINT fk_ipeds_finance_ref_ipedsfasb_revenue_restriction FOREIGN KEY ( ref_ipedsfasb_revenue_restriction_id ) REFERENCES rs_ceds7_sc.ref_ipedsfasb_revenue_restriction( ref_ipedsfasb_revenue_restriction_id );

COMMENT ON CONSTRAINT FK_IPEDS_Finance_Ref_IPEDSFASB_Revenue_Restriction ON rs_ceds7_sc.ipeds_finance IS '';

ALTER TABLE rs_ceds7_sc.ipeds_finance ADD CONSTRAINT fk_ipeds_finance_ref_ipedsfasb_scholarshipsand_fellowships_revenue FOREIGN KEY ( ref_ipedsfasb_scholarshipsand_fellowships_revenue_id ) REFERENCES rs_ceds7_sc.ref_ipedsfasb_scholarshipsand_fellowships_revenue( ref_ipedsfasb_scholarshipsand_fellowships_revenue_id );

COMMENT ON CONSTRAINT FK_IPEDS_Finance_Ref_IPEDSFASB_Scholarshipsand_Fellowships_Revenue ON rs_ceds7_sc.ipeds_finance IS '';

ALTER TABLE rs_ceds7_sc.ipeds_finance ADD CONSTRAINT fk_ipeds_finance_ref_ipedsgasb_financial_position FOREIGN KEY ( ref_ipedsgasb_financial_position_id ) REFERENCES rs_ceds7_sc.ref_ipedsgasb_financial_position( ref_ipedsgasb_financial_position_id );

COMMENT ON CONSTRAINT FK_IPEDS_Finance_Ref_IPEDSGASB_Financial_Position ON rs_ceds7_sc.ipeds_finance IS '';

ALTER TABLE rs_ceds7_sc.ipeds_finance ADD CONSTRAINT fk_ipeds_finance_ref_ipedsgasb_functional_expense FOREIGN KEY ( ref_ipedsgasb_functional_expense_id ) REFERENCES rs_ceds7_sc.ref_ipedsgasb_functional_expense( ref_ipedsgasb_functional_expense_id );

COMMENT ON CONSTRAINT FK_IPEDS_Finance_Ref_IPEDSGASB_Functional_Expense ON rs_ceds7_sc.ipeds_finance IS '';

ALTER TABLE rs_ceds7_sc.ipeds_finance ADD CONSTRAINT fk_ipeds_finance_ref_ipedsgasb_revenue FOREIGN KEY ( ref_ipedsgasb_revenue_id ) REFERENCES rs_ceds7_sc.ref_ipedsgasb_revenue( ref_ipedsgasb_revenue_id );

COMMENT ON CONSTRAINT FK_IPEDS_Finance_Ref_IPEDSGASB_Revenue ON rs_ceds7_sc.ipeds_finance IS '';

ALTER TABLE rs_ceds7_sc.ipeds_finance ADD CONSTRAINT fk_ipeds_finance_ref_ipedsgasb_scholarshipsand_fellowships_revenue FOREIGN KEY ( ref_ipedsgasb_scholarshipsand_fellowships_revenue_id ) REFERENCES rs_ceds7_sc.ref_ipedsgasb_scholarshipsand_fellowships_revenue( ref_ipedsgasb_scholarshipsand_fellowships_revenue_id );

COMMENT ON CONSTRAINT FK_IPEDS_Finance_Ref_IPEDSGASB_Scholarshipsand_Fellowships_Revenue ON rs_ceds7_sc.ipeds_finance IS '';

ALTER TABLE rs_ceds7_sc.ipeds_finance ADD CONSTRAINT fk_ipeds_finance_ref_ipeds_intercollegiate_athletics_expenses FOREIGN KEY ( ref_ipeds_intercollegiate_athletics_expenses_id ) REFERENCES rs_ceds7_sc.ref_ipeds_intercollegiate_athletics_expenses( ref_ipeds_intercollegiate_athletics_expenses_id );

COMMENT ON CONSTRAINT FK_IPEDS_Finance_Ref_IPEDS_Intercollegiate_Athletics_Expenses ON rs_ceds7_sc.ipeds_finance IS '';

ALTER TABLE rs_ceds7_sc.ipeds_finance ADD CONSTRAINT fk_ipeds_finance_ref_ipeds_natural_expense FOREIGN KEY ( ref_ipeds_natural_expense_id ) REFERENCES rs_ceds7_sc.ref_ipeds_natural_expense( ref_ipeds_natural_expense_id );

COMMENT ON CONSTRAINT FK_IPEDS_Finance_Ref_IPEDS_Natural_Expense ON rs_ceds7_sc.ipeds_finance IS '';

ALTER TABLE rs_ceds7_sc.incident_person ADD CONSTRAINT fk_incident_person_incident FOREIGN KEY ( incident_id ) REFERENCES rs_ceds7_sc.incident( incident_id );

COMMENT ON CONSTRAINT FK_Incident_Person_Incident ON rs_ceds7_sc.incident_person IS '';

ALTER TABLE rs_ceds7_sc.incident_person ADD CONSTRAINT fk_incident_person_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Incident_Person_Person ON rs_ceds7_sc.incident_person IS '';

ALTER TABLE rs_ceds7_sc.incident_person ADD CONSTRAINT fk_incident_person_ref_incident_person_role_type FOREIGN KEY ( ref_incident_person_role_type_id ) REFERENCES rs_ceds7_sc.ref_incident_person_role_type( ref_incident_person_role_type_id );

COMMENT ON CONSTRAINT FK_Incident_Person_Ref_Incident_Person_Role_Type ON rs_ceds7_sc.incident_person IS '';

ALTER TABLE rs_ceds7_sc.incident_person ADD CONSTRAINT fk_incident_person_ref_incident_person_type FOREIGN KEY ( ref_incident_person_type_id ) REFERENCES rs_ceds7_sc.ref_incident_person_type( ref_incident_person_type_id );

COMMENT ON CONSTRAINT FK_Incident_Person_Ref_Incident_Person_Type ON rs_ceds7_sc.incident_person IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_accommodation ADD CONSTRAINT fk_individualized_program_accommodation_individualized_program FOREIGN KEY ( individualized_program_id ) REFERENCES rs_ceds7_sc.individualized_program( individualized_program_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Accommodation_Individualized_Program ON rs_ceds7_sc.individualized_program_accommodation IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_accommodation ADD CONSTRAINT fk_individualized_program_accommodation_ref_accommodation_type FOREIGN KEY ( ref_accommodation_type_id ) REFERENCES rs_ceds7_sc.ref_accommodation_type( ref_accommodation_type_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Accommodation_Ref_Accommodation_Type ON rs_ceds7_sc.individualized_program_accommodation IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_amendment ADD CONSTRAINT fk_individualized_program_amendment_individualized_program FOREIGN KEY ( individualized_program_id ) REFERENCES rs_ceds7_sc.individualized_program( individualized_program_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Amendment_Individualized_Program ON rs_ceds7_sc.individualized_program_amendment IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_assessment_accommodation ADD CONSTRAINT fk_individualized_program_assessment_accommodation_assessment_accommodation FOREIGN KEY ( assessment_accommodation_id ) REFERENCES rs_ceds7_sc.assessment_accommodation( assessment_accommodation_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Assessment_Accommodation_Assessment_Accommodation ON rs_ceds7_sc.individualized_program_assessment_accommodation IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_assessment_accommodation ADD CONSTRAINT fk_individualized_program_assessment_accommodation_individualized_program_assessment FOREIGN KEY ( individualized_program_assessment_id ) REFERENCES rs_ceds7_sc.individualized_program_assessment( individualized_program_assessment_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Assessment_Accommodation_Individualized_Program_Assessment ON rs_ceds7_sc.individualized_program_assessment_accommodation IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_eligibility_evaluation ADD CONSTRAINT fk_individualized_program_eligibility_evaluation_eligibility_evaluation FOREIGN KEY ( eligibility_evaluation_id ) REFERENCES rs_ceds7_sc.eligibility_evaluation( eligibility_evaluation_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Eligibility_Evaluation_Eligibility_Evaluation ON rs_ceds7_sc.individualized_program_eligibility_evaluation IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_eligibility_evaluation ADD CONSTRAINT fk_individualized_program_eligibility_evaluation_individualized_program_eligibility FOREIGN KEY ( individualized_program_eligibility_id ) REFERENCES rs_ceds7_sc.individualized_program_eligibility( individualized_program_eligibility_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Eligibility_Evaluation_Individualized_Program_Eligibility ON rs_ceds7_sc.individualized_program_eligibility_evaluation IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_eligibility_evaluation ADD CONSTRAINT fk_individualized_program_eligibility_evaluation_ref_iep_eligibility_evaluation_type FOREIGN KEY ( ref_iep_eligibility_evaluation_type_id ) REFERENCES rs_ceds7_sc.ref_iep_eligibility_evaluation_type( ref_iep_eligibility_evaluation_type_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Eligibility_Evaluation_Ref_IEP_Eligibility_Evaluation_Type ON rs_ceds7_sc.individualized_program_eligibility_evaluation IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_meeting ADD CONSTRAINT fk_individualized_program_meeting_individualized_program FOREIGN KEY ( individualized_program_id ) REFERENCES rs_ceds7_sc.individualized_program( individualized_program_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Meeting_Individualized_Program ON rs_ceds7_sc.individualized_program_meeting IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_progress_goal ADD CONSTRAINT fk_individualized_program_progress_goal_goal_performance FOREIGN KEY ( goal_performance_id ) REFERENCES rs_ceds7_sc.goal_performance( goal_performance_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Progress_Goal_Goal_Performance ON rs_ceds7_sc.individualized_program_progress_goal IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_progress_goal ADD CONSTRAINT fk_individualized_program_progress_goal_individualized_program_progress_report FOREIGN KEY ( individualized_program_progress_report_id ) REFERENCES rs_ceds7_sc.individualized_program_progress_report( individualized_program_progress_report_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Progress_Goal_Individualized_Program_Progress_Report ON rs_ceds7_sc.individualized_program_progress_goal IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_progress_report_plan ADD CONSTRAINT fk_individ_prgrm_prog_rprt_pln_individualized_program FOREIGN KEY ( individualized_program_id ) REFERENCES rs_ceds7_sc.individualized_program( individualized_program_id );

COMMENT ON CONSTRAINT fk_individ_prgrm_prog_rprt_pln_Individualized_Program ON rs_ceds7_sc.individualized_program_progress_report_plan IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_progress_report_plan ADD CONSTRAINT fk_individ_prgrm_prog_rprt_pln_ref_ipsp_progress_report_schedule FOREIGN KEY ( ref_ipsp_progress_report_schedule_id ) REFERENCES rs_ceds7_sc.ref_ipsp_progress_report_schedule( ref_ipsp_progress_report_schedule_id );

COMMENT ON CONSTRAINT fk_individ_prgrm_prog_rprt_pln_Ref_IPSP_Progress_Report_Schedule ON rs_ceds7_sc.individualized_program_progress_report_plan IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_progress_report_plan ADD CONSTRAINT fk_individ_prgrm_prog_rprt_pln_ref_ipsp_progress_report_type FOREIGN KEY ( ref_ipsp_progress_report_type_id ) REFERENCES rs_ceds7_sc.ref_ipsp_progress_report_type( ref_ipsp_progress_report_type_id );

COMMENT ON CONSTRAINT fk_individ_prgrm_prog_rprt_pln_Ref_IPSP_Progress_Report_Type ON rs_ceds7_sc.individualized_program_progress_report_plan IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_services_received ADD CONSTRAINT fk_individualized_program_services_received_individualized_program FOREIGN KEY ( individualized_program_id ) REFERENCES rs_ceds7_sc.individualized_program( individualized_program_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Services_Received_Individualized_Program ON rs_ceds7_sc.individualized_program_services_received IS '';

ALTER TABLE rs_ceds7_sc.individualized_program_services_received ADD CONSTRAINT fk_individualized_program_services_received_services_received FOREIGN KEY ( services_received_id ) REFERENCES rs_ceds7_sc.services_received( services_received_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Services_Received_Services_Received ON rs_ceds7_sc.individualized_program_services_received IS '';

ALTER TABLE rs_ceds7_sc.k12_lea ADD CONSTRAINT fk_k12_lea_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT FK_K12_Lea_Organization ON rs_ceds7_sc.k12_lea IS '';

ALTER TABLE rs_ceds7_sc.k12_lea ADD CONSTRAINT fk_k12_lea_ref_lea_improvement_status FOREIGN KEY ( ref_lea_improvement_status_id ) REFERENCES rs_ceds7_sc.ref_lea_improvement_status( ref_lea_improvement_status_id );

COMMENT ON CONSTRAINT FK_K12_Lea_Ref_LEA_Improvement_Status ON rs_ceds7_sc.k12_lea IS '';

ALTER TABLE rs_ceds7_sc.k12_lea ADD CONSTRAINT fk_k12_lea_ref_lea_type FOREIGN KEY ( ref_lea_type_id ) REFERENCES rs_ceds7_sc.ref_lea_type( ref_lea_type_id );

COMMENT ON CONSTRAINT FK_K12_Lea_Ref_Lea_Type ON rs_ceds7_sc.k12_lea IS '';

ALTER TABLE rs_ceds7_sc.k12_lea ADD CONSTRAINT fk_k12_lea_ref_public_school_choice_status FOREIGN KEY ( ref_public_school_choice_status_id ) REFERENCES rs_ceds7_sc.ref_public_school_choice_status( ref_public_school_choice_status_id );

COMMENT ON CONSTRAINT FK_K12_Lea_Ref_Public_School_Choice_Status ON rs_ceds7_sc.k12_lea IS '';

ALTER TABLE rs_ceds7_sc.k12_lea_federal_reporting ADD CONSTRAINT fk_k12_lea_federal_reporting_k12_lea FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.k12_lea( organization_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Federal_Reporting_K12_Lea ON rs_ceds7_sc.k12_lea_federal_reporting IS '';

ALTER TABLE rs_ceds7_sc.k12_lea_federal_reporting ADD CONSTRAINT fk_k12_lea_federal_reporting_ref_barrier_to_educating_homeless FOREIGN KEY ( ref_barrier_to_educating_homeless_id ) REFERENCES rs_ceds7_sc.ref_barrier_to_educating_homeless( ref_barrier_to_educating_homeless_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Federal_Reporting_Ref_Barrier_To_Educating_Homeless ON rs_ceds7_sc.k12_lea_federal_reporting IS '';

ALTER TABLE rs_ceds7_sc.k12_lea_federal_reporting ADD CONSTRAINT fk_k12_lea_federal_reporting_ref_integrated_technology_status FOREIGN KEY ( ref_integrated_technology_status_id ) REFERENCES rs_ceds7_sc.ref_integrated_technology_status( ref_integrated_technology_status_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Federal_Reporting_Ref_Integrated_Technology_Status ON rs_ceds7_sc.k12_lea_federal_reporting IS '';

ALTER TABLE rs_ceds7_sc.k12_lea_pre_k_eligible_ages_idea ADD CONSTRAINT fk_k12_lea_pre_k_eligible_ages_idea_k12_lea FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.k12_lea( organization_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Pre_K_Eligible_Ages_IDEA_K12_Lea ON rs_ceds7_sc.k12_lea_pre_k_eligible_ages_idea IS '';

ALTER TABLE rs_ceds7_sc.k12_lea_pre_k_eligible_ages_idea ADD CONSTRAINT fk_k12_lea_pre_k_eligible_ages_idea_ref_pre_k_eligible_ages_non_idea FOREIGN KEY ( ref_pre_k_eligible_ages_non_idea_id ) REFERENCES rs_ceds7_sc.ref_pre_k_eligible_ages_non_idea( ref_pre_k_eligible_ages_non_idea_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Pre_K_Eligible_Ages_IDEA_Ref_Pre_K_Eligible_Ages_Non_IDEA ON rs_ceds7_sc.k12_lea_pre_k_eligible_ages_idea IS '';

ALTER TABLE rs_ceds7_sc.k12_lea_title_iii_professional_development ADD CONSTRAINT fk_k12_lea_title_iii_professional_dev_k12_lea FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.k12_lea( organization_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Title_III_Professional_Dev_K12_Lea ON rs_ceds7_sc.k12_lea_title_iii_professional_development IS '';

ALTER TABLE rs_ceds7_sc.k12_lea_title_iii_professional_development ADD CONSTRAINT fk_k12_lea_title_iii_professional_dev_title_iii_professional_dev_type FOREIGN KEY ( ref_title_iii_professional_development_type_id ) REFERENCES rs_ceds7_sc.ref_title_iii_professional_development_type( ref_title_iii_professional_development_type_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Title_III_Professional_Dev_Title_III_Professional_Dev_Type ON rs_ceds7_sc.k12_lea_title_iii_professional_development IS '';

ALTER TABLE rs_ceds7_sc.k12_organization_student_responsibility ADD CONSTRAINT fk_k12_org_student_responsibility_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_K12_Org_Student_Responsibility_Organization_Person_Role ON rs_ceds7_sc.k12_organization_student_responsibility IS '';

ALTER TABLE rs_ceds7_sc.k12_organization_student_responsibility ADD CONSTRAINT fk_k12_org_student_responsibility_ref_k12_responsibility_type FOREIGN KEY ( ref_k12_responsibility_type_id ) REFERENCES rs_ceds7_sc.ref_k12_responsibility_type( ref_k12_responsibility_type_id );

COMMENT ON CONSTRAINT FK_K12_Org_Student_Responsibility_Ref_K12_Responsibility_Type ON rs_ceds7_sc.k12_organization_student_responsibility IS '';

ALTER TABLE rs_ceds7_sc.k12_school ADD CONSTRAINT fk_k12_school_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT FK_K12_School_Organization ON rs_ceds7_sc.k12_school IS '';

ALTER TABLE rs_ceds7_sc.k12_school ADD CONSTRAINT fk_k12_school_ref_admin_funding_control FOREIGN KEY ( ref_administrative_funding_control_id ) REFERENCES rs_ceds7_sc.ref_administrative_funding_control( ref_administrative_funding_control_id );

COMMENT ON CONSTRAINT FK_K12_School_Ref_Admin_Funding_Control ON rs_ceds7_sc.k12_school IS '';

ALTER TABLE rs_ceds7_sc.k12_school ADD CONSTRAINT fk_k12_school_ref_charter_school_approval_agency_type_id FOREIGN KEY ( ref_charter_school_approval_agency_type_id ) REFERENCES rs_ceds7_sc.ref_charter_school_approval_agency_type( ref_charter_school_approval_agency_type_id );

COMMENT ON CONSTRAINT FK_K12_School_Ref_Charter_School_Approval_Agency_Type_Id ON rs_ceds7_sc.k12_school IS '';

ALTER TABLE rs_ceds7_sc.k12_school ADD CONSTRAINT fk_k12_school_ref_charter_school_management_organization_type FOREIGN KEY ( ref_charter_school_management_organization_type_id ) REFERENCES rs_ceds7_sc.ref_charter_school_management_organization_type( ref_charter_school_management_organization_type_id );

COMMENT ON CONSTRAINT FK_K12_School_Ref_Charter_School_Management_Organization_Type ON rs_ceds7_sc.k12_school IS '';

ALTER TABLE rs_ceds7_sc.k12_school ADD CONSTRAINT fk_k12_school_ref_charter_school_type FOREIGN KEY ( ref_charter_school_type_id ) REFERENCES rs_ceds7_sc.ref_charter_school_type( ref_charter_school_type_id );

COMMENT ON CONSTRAINT FK_K12_School_Ref_Charter_School_Type ON rs_ceds7_sc.k12_school IS '';

ALTER TABLE rs_ceds7_sc.k12_school ADD CONSTRAINT fk_k12_school_ref_increased_learning_time_type FOREIGN KEY ( ref_increased_learning_time_type_id ) REFERENCES rs_ceds7_sc.ref_increased_learning_time_type( ref_increased_learning_time_type_id );

COMMENT ON CONSTRAINT FK_K12_School_Ref_Increased_Learning_Time_Type ON rs_ceds7_sc.k12_school IS '';

ALTER TABLE rs_ceds7_sc.k12_school ADD CONSTRAINT fk_k12_school_ref_school_level FOREIGN KEY ( ref_school_level_id ) REFERENCES rs_ceds7_sc.ref_school_level( ref_school_level_id );

COMMENT ON CONSTRAINT FK_K12_School_Ref_School_Level ON rs_ceds7_sc.k12_school IS '';

ALTER TABLE rs_ceds7_sc.k12_school ADD CONSTRAINT fk_k12_school_ref_school_type FOREIGN KEY ( ref_school_type_id ) REFERENCES rs_ceds7_sc.ref_school_type( ref_school_type_id );

COMMENT ON CONSTRAINT FK_K12_School_Ref_School_Type ON rs_ceds7_sc.k12_school IS '';

ALTER TABLE rs_ceds7_sc.k12_school ADD CONSTRAINT fk_k12_school_ref_state_poverty_designation FOREIGN KEY ( ref_state_poverty_designation_id ) REFERENCES rs_ceds7_sc.ref_state_poverty_designation( ref_state_poverty_designation_id );

COMMENT ON CONSTRAINT FK_K12_School_Ref_State_Poverty_Designation ON rs_ceds7_sc.k12_school IS '';

ALTER TABLE rs_ceds7_sc.k12_school_grade_offered ADD CONSTRAINT fk_k12_school_grade_offered_k12_school FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.k12_school( organization_id );

COMMENT ON CONSTRAINT FK_K12_School_Grade_Offered_K12_School ON rs_ceds7_sc.k12_school_grade_offered IS '';

ALTER TABLE rs_ceds7_sc.k12_school_grade_offered ADD CONSTRAINT fk_k12_school_grade_offered_ref_grade_level FOREIGN KEY ( ref_grade_level_id ) REFERENCES rs_ceds7_sc.ref_grade_level( ref_grade_level_id );

COMMENT ON CONSTRAINT FK_K12_School_Grade_Offered_Ref_Grade_Level ON rs_ceds7_sc.k12_school_grade_offered IS '';

ALTER TABLE rs_ceds7_sc.k12_school_status ADD CONSTRAINT fk_k12_school_status_k12_school FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.k12_school( organization_id );

COMMENT ON CONSTRAINT FK_K12_School_Status_K12_School ON rs_ceds7_sc.k12_school_status IS '';

ALTER TABLE rs_ceds7_sc.k12_school_status ADD CONSTRAINT fk_k12_school_status_ref_alternative_school_focus FOREIGN KEY ( ref_alternative_school_focus_id ) REFERENCES rs_ceds7_sc.ref_alternative_school_focus( ref_alternative_school_focus_id );

COMMENT ON CONSTRAINT FK_K12_School_Status_Ref_Alternative_School_Focus ON rs_ceds7_sc.k12_school_status IS '';

ALTER TABLE rs_ceds7_sc.k12_school_status ADD CONSTRAINT fk_k12_school_status_ref_internet_access FOREIGN KEY ( ref_internet_access_id ) REFERENCES rs_ceds7_sc.ref_internet_access( ref_internet_access_id );

COMMENT ON CONSTRAINT FK_K12_School_Status_Ref_Internet_Access ON rs_ceds7_sc.k12_school_status IS '';

ALTER TABLE rs_ceds7_sc.k12_school_status ADD CONSTRAINT fk_k12_school_status_ref_magnet_special_program FOREIGN KEY ( ref_magnet_special_program_id ) REFERENCES rs_ceds7_sc.ref_magnet_special_program( ref_magnet_special_program_id );

COMMENT ON CONSTRAINT FK_K12_School_Status_Ref_Magnet_Special_Program ON rs_ceds7_sc.k12_school_status IS '';

ALTER TABLE rs_ceds7_sc.k12_school_status ADD CONSTRAINT fk_k12_school_status_ref_restructuring_action FOREIGN KEY ( ref_restructuring_action_id ) REFERENCES rs_ceds7_sc.ref_restructuring_action( ref_restructuring_action_id );

COMMENT ON CONSTRAINT FK_K12_School_Status_Ref_Restructuring_Action ON rs_ceds7_sc.k12_school_status IS '';

ALTER TABLE rs_ceds7_sc.k12_school_status ADD CONSTRAINT fk_k12_school_status_ref_title_1_school_status FOREIGN KEY ( ref_title_i_school_status_id ) REFERENCES rs_ceds7_sc.ref_title_i_school_status( ref_title_1_school_status_id );

COMMENT ON CONSTRAINT FK_K12_School_Status_Ref_Title_1_School_Status ON rs_ceds7_sc.k12_school_status IS '';

ALTER TABLE rs_ceds7_sc.k12_sea_alternate_fund_use ADD CONSTRAINT fk_k12_sea_alternate_fund_use_k12_sea_federal_funds FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.k12_sea_federal_funds( organization_id );

COMMENT ON CONSTRAINT FK_K12_SEA_Alternate_Fund_Use_K12_SEA_Federal_Funds ON rs_ceds7_sc.k12_sea_alternate_fund_use IS '';

ALTER TABLE rs_ceds7_sc.k12_sea_alternate_fund_use ADD CONSTRAINT fk_k12_sea_alternate_fund_use_ref_alternate_fund_uses FOREIGN KEY ( ref_alternate_fund_uses_id ) REFERENCES rs_ceds7_sc.ref_alternate_fund_uses( ref_alternate_fund_uses_id );

COMMENT ON CONSTRAINT FK_K12_SEA_Alternate_Fund_Use_Ref_Alternate_Fund_Uses ON rs_ceds7_sc.k12_sea_alternate_fund_use IS '';

ALTER TABLE rs_ceds7_sc.k12_sea_federal_funds ADD CONSTRAINT fk_k12_sea_federal_funds_k12_sea FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.k12_sea( organization_id );

COMMENT ON CONSTRAINT FK_K12_SEA_Federal_Funds_K12_SEA ON rs_ceds7_sc.k12_sea_federal_funds IS '';

ALTER TABLE rs_ceds7_sc.k12_staff_employment ADD CONSTRAINT fk_k12_staff_employment_ref_employment_status FOREIGN KEY ( ref_employment_status_id ) REFERENCES rs_ceds7_sc.ref_employment_status( ref_employment_status_id );

COMMENT ON CONSTRAINT FK_K12_Staff_Employment_Ref_Employment_Status ON rs_ceds7_sc.k12_staff_employment IS '';

ALTER TABLE rs_ceds7_sc.k12_staff_employment ADD CONSTRAINT fk_k12_staff_employment_ref_edu_staff_classification FOREIGN KEY ( ref_k12_staff_classification_id ) REFERENCES rs_ceds7_sc.ref_k12_staff_classification( ref_education_staff_classification_id );

COMMENT ON CONSTRAINT FK_K12_Staff_Employment_Ref_Edu_Staff_Classification ON rs_ceds7_sc.k12_staff_employment IS '';

ALTER TABLE rs_ceds7_sc.k12_staff_employment ADD CONSTRAINT fk_k12_staff_employment_staff_employment FOREIGN KEY ( staff_employment_id ) REFERENCES rs_ceds7_sc.staff_employment( staff_employment_id );

COMMENT ON CONSTRAINT FK_K12_Staff_Employment_Staff_Employment ON rs_ceds7_sc.k12_staff_employment IS '';

ALTER TABLE rs_ceds7_sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_organization_person FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT FK_K12_Student_Academic_Record_Organization_Person ON rs_ceds7_sc.k12_student_academic_record IS '';

ALTER TABLE rs_ceds7_sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_gpa_weighted_indicator FOREIGN KEY ( ref_gpa_weighted_indicator_id ) REFERENCES rs_ceds7_sc.ref_gpa_weighted_indicator( ref_gpa_weighted_indicator_id );

COMMENT ON CONSTRAINT FK_K12_Student_Academic_Record_Ref_Gpa_Weighted_Indicator ON rs_ceds7_sc.k12_student_academic_record IS '';

ALTER TABLE rs_ceds7_sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_hs_diploma_distinction_type FOREIGN KEY ( ref_high_school_diploma_distinction_type_id ) REFERENCES rs_ceds7_sc.ref_high_school_diploma_distinction_type( ref_high_school_diploma_distinction_type_id );

COMMENT ON CONSTRAINT FK_K12_Student_Academic_Record_Ref_HS_Diploma_Distinction_Type ON rs_ceds7_sc.k12_student_academic_record IS '';

ALTER TABLE rs_ceds7_sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_high_school_diploma_type FOREIGN KEY ( ref_high_school_diploma_type_id ) REFERENCES rs_ceds7_sc.ref_high_school_diploma_type( ref_high_school_diploma_type_id );

COMMENT ON CONSTRAINT FK_K12_Student_Academic_Record_Ref_High_School_Diploma_Type ON rs_ceds7_sc.k12_student_academic_record IS '';

ALTER TABLE rs_ceds7_sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_pre_and_post_test_indicator FOREIGN KEY ( ref_pre_and_post_test_indicator_id ) REFERENCES rs_ceds7_sc.ref_pre_and_post_test_indicator( ref_pre_and_post_test_indicator_id );

COMMENT ON CONSTRAINT FK_K12_Student_Academic_Record_Ref_Pre_And_Post_Test_Indicator ON rs_ceds7_sc.k12_student_academic_record IS '';

ALTER TABLE rs_ceds7_sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_professional_technical_credential FOREIGN KEY ( ref_professional_technical_credential_type_id ) REFERENCES rs_ceds7_sc.ref_professional_technical_credential_type( ref_professional_technical_credential_type_id );

COMMENT ON CONSTRAINT FK_K12_Student_Academic_Record_Ref_Professional_Technical_Credential ON rs_ceds7_sc.k12_student_academic_record IS '';

ALTER TABLE rs_ceds7_sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_progress_level FOREIGN KEY ( ref_progress_level_id ) REFERENCES rs_ceds7_sc.ref_progress_level( ref_progress_level_id );

COMMENT ON CONSTRAINT FK_K12_Student_Academic_Record_Ref_Progress_Level ON rs_ceds7_sc.k12_student_academic_record IS '';

ALTER TABLE rs_ceds7_sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_ps_enrollment_action FOREIGN KEY ( ref_ps_enrollment_action_id ) REFERENCES rs_ceds7_sc.ref_ps_enrollment_action( ref_ps_enrollment_action_id );

COMMENT ON CONSTRAINT FK_K12_Student_Academic_Record_Ref_PS_Enrollment_Action ON rs_ceds7_sc.k12_student_academic_record IS '';

ALTER TABLE rs_ceds7_sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_technology_literacy_status FOREIGN KEY ( ref_technology_literacy_status_id ) REFERENCES rs_ceds7_sc.ref_technology_literacy_status( ref_technology_literacy_status_id );

COMMENT ON CONSTRAINT FK_K12_Student_Academic_Record_Ref_Technology_Literacy_Status ON rs_ceds7_sc.k12_student_academic_record IS '';

ALTER TABLE rs_ceds7_sc.k12_student_cohort ADD CONSTRAINT fk_k12_student_cohort_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_K12_Student_Cohort_Organization_Person_Role ON rs_ceds7_sc.k12_student_cohort IS '';

ALTER TABLE rs_ceds7_sc.k12_student_course_section_mark ADD CONSTRAINT fk_k12_student_course_section_mark_k12_student_course_section FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.k12_student_course_section( organization_person_role_id );

COMMENT ON CONSTRAINT FK_K12_Student_Course_Section_Mark_K12_Student_Course_Section ON rs_ceds7_sc.k12_student_course_section_mark IS '';

ALTER TABLE rs_ceds7_sc.k12_student_employment ADD CONSTRAINT fk_k12_student_employment_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_K12_Student_Employment_Organization_Person_Role ON rs_ceds7_sc.k12_student_employment IS '';

ALTER TABLE rs_ceds7_sc.k12_student_employment ADD CONSTRAINT fk_k12_student_employment_ref_employed_after_exit FOREIGN KEY ( ref_employed_after_exit_id ) REFERENCES rs_ceds7_sc.ref_employed_after_exit( ref_employed_after_exit_id );

COMMENT ON CONSTRAINT FK_K12_Student_Employment_Ref_Employed_After_Exit ON rs_ceds7_sc.k12_student_employment IS '';

ALTER TABLE rs_ceds7_sc.k12_student_employment ADD CONSTRAINT fk_k12_student_employment_ref_employed_while_enrolled FOREIGN KEY ( ref_employed_while_enrolled_id ) REFERENCES rs_ceds7_sc.ref_employed_while_enrolled( ref_employed_while_enrolled_id );

COMMENT ON CONSTRAINT FK_K12_Student_Employment_Ref_Employed_While_Enrolled ON rs_ceds7_sc.k12_student_employment IS '';

ALTER TABLE rs_ceds7_sc.k12_student_graduation_plan ADD CONSTRAINT fk_k12_student_graduation_plan_k12_course FOREIGN KEY ( k12_course_id ) REFERENCES rs_ceds7_sc.k12_course( organization_id );

COMMENT ON CONSTRAINT FK_K12_Student_Graduation_Plan_K12_Course ON rs_ceds7_sc.k12_student_graduation_plan IS '';

ALTER TABLE rs_ceds7_sc.k12_student_graduation_plan ADD CONSTRAINT fk_k12_student_graduation_plan_organization_person FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_K12_Student_Graduation_Plan_Organization_Person ON rs_ceds7_sc.k12_student_graduation_plan IS '';

ALTER TABLE rs_ceds7_sc.k12_student_graduation_plan ADD CONSTRAINT fk_k12_student_graduation_plan_ref_grade_level FOREIGN KEY ( ref_grade_level_when_course_taken_id ) REFERENCES rs_ceds7_sc.ref_grade_level( ref_grade_level_id );

COMMENT ON CONSTRAINT FK_K12_Student_Graduation_Plan_Ref_Grade_Level ON rs_ceds7_sc.k12_student_graduation_plan IS '';

ALTER TABLE rs_ceds7_sc.k12_student_graduation_plan ADD CONSTRAINT fk_k12_student_graduation_plan_ref_sced_course_subject_area FOREIGN KEY ( ref_sced_course_subject_area_id ) REFERENCES rs_ceds7_sc.ref_sced_course_subject_area( ref_sced_course_subject_area_id );

COMMENT ON CONSTRAINT FK_K12_Student_Graduation_Plan_Ref_SCED_Course_Subject_Area ON rs_ceds7_sc.k12_student_graduation_plan IS '';

ALTER TABLE rs_ceds7_sc.k12_student_session ADD CONSTRAINT fk_k12_student_session_organization_calendar_session FOREIGN KEY ( organization_calendar_session_id ) REFERENCES rs_ceds7_sc.organization_calendar_session( organization_calendar_session_id );

COMMENT ON CONSTRAINT FK_K12_Student_Session_Organization_Calendar_Session ON rs_ceds7_sc.k12_student_session IS '';

ALTER TABLE rs_ceds7_sc.k12_student_session ADD CONSTRAINT fk_k12_student_session_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_K12_Student_Session_Organization_Person_Role ON rs_ceds7_sc.k12_student_session IS '';

ALTER TABLE rs_ceds7_sc.learner_action ADD CONSTRAINT fk_assessment_item_learner_action_assessment_item_response FOREIGN KEY ( assessment_item_response_id ) REFERENCES rs_ceds7_sc.assessment_item_response( assessment_item_response_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Learner_Action_Assessment_Item_Response ON rs_ceds7_sc.learner_action IS '';

ALTER TABLE rs_ceds7_sc.learner_action ADD CONSTRAINT fk_learner_action_ref_learner_action_type FOREIGN KEY ( ref_learner_action_type_id ) REFERENCES rs_ceds7_sc.ref_learner_action_type( ref_learner_action_type_id );

COMMENT ON CONSTRAINT FK_Learner_Action_Ref_Learner_Action_Type ON rs_ceds7_sc.learner_action IS '';

ALTER TABLE rs_ceds7_sc.learner_activity_learning_resource ADD CONSTRAINT fk_learner_assignment_learning_resource_learner_assignment FOREIGN KEY ( learner_activity_id ) REFERENCES rs_ceds7_sc.learner_activity( learner_activity_id );

COMMENT ON CONSTRAINT FK_Learner_Assignment_Learning_Resource_Learner_Assignment ON rs_ceds7_sc.learner_activity_learning_resource IS '';

ALTER TABLE rs_ceds7_sc.learner_activity_learning_resource ADD CONSTRAINT fk_learner_assignment_learning_resource_learning_resource FOREIGN KEY ( learning_resource_id ) REFERENCES rs_ceds7_sc.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT FK_Learner_Assignment_Learning_Resource_Learning_Resource ON rs_ceds7_sc.learner_activity_learning_resource IS '';

ALTER TABLE rs_ceds7_sc.learning_resource_adaptation ADD CONSTRAINT fk_learning_resource_adaptation_lr FOREIGN KEY ( learning_resource_id ) REFERENCES rs_ceds7_sc.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT FK_Learning_Resource_Adaptation_LR ON rs_ceds7_sc.learning_resource_adaptation IS '';

ALTER TABLE rs_ceds7_sc.learning_resource_media_feature ADD CONSTRAINT fk_learning_resource_media_feature_learning_resource FOREIGN KEY ( learning_resource_id ) REFERENCES rs_ceds7_sc.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT FK_Learning_Resource_Media_Feature_Learning_Resource ON rs_ceds7_sc.learning_resource_media_feature IS '';

ALTER TABLE rs_ceds7_sc.learning_resource_media_feature ADD CONSTRAINT fk_learning_resource_media_feature_ref_learning_resource_media_feature_type FOREIGN KEY ( ref_learning_resource_media_feature_type_id ) REFERENCES rs_ceds7_sc.ref_learning_resource_media_feature_type( ref_learning_resource_media_feature_type_id );

COMMENT ON CONSTRAINT FK_Learning_Resource_Media_Feature_Ref_Learning_Resource_Media_Feature_Type ON rs_ceds7_sc.learning_resource_media_feature IS '';

ALTER TABLE rs_ceds7_sc.learning_resource_physical_media ADD CONSTRAINT fk_learning_resource_physical_media_learning_resource FOREIGN KEY ( learning_resource_id ) REFERENCES rs_ceds7_sc.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT FK_Learning_Resource_Physical_Media_Learning_Resource ON rs_ceds7_sc.learning_resource_physical_media IS '';

ALTER TABLE rs_ceds7_sc.learning_resource_physical_media ADD CONSTRAINT fk_learning_resource_physical_media_ref_learning_resource_physical_media_type FOREIGN KEY ( ref_learning_resource_physical_media_type_id ) REFERENCES rs_ceds7_sc.ref_learning_resource_physical_media_type( ref_learning_resource_physical_media_type_id );

COMMENT ON CONSTRAINT FK_Learning_Resource_Physical_Media_Ref_Learning_Resource_Physical_Media_Type ON rs_ceds7_sc.learning_resource_physical_media IS '';

ALTER TABLE rs_ceds7_sc.location_address ADD CONSTRAINT fk_location_address_location FOREIGN KEY ( location_id ) REFERENCES rs_ceds7_sc.location( location_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT FK_Location_Address_Location ON rs_ceds7_sc.location_address IS '';

ALTER TABLE rs_ceds7_sc.location_address ADD CONSTRAINT fk_location_address_ref_country FOREIGN KEY ( ref_country_id ) REFERENCES rs_ceds7_sc.ref_country( ref_country_id );

COMMENT ON CONSTRAINT FK_Location_Address_Ref_Country ON rs_ceds7_sc.location_address IS '';

ALTER TABLE rs_ceds7_sc.location_address ADD CONSTRAINT fk_location_address_ref_county FOREIGN KEY ( ref_county_id ) REFERENCES rs_ceds7_sc.ref_county( ref_county_id );

COMMENT ON CONSTRAINT FK_Location_Address_Ref_County ON rs_ceds7_sc.location_address IS '';

ALTER TABLE rs_ceds7_sc.location_address ADD CONSTRAINT fk_location_address_ref_ers_rural_urban_continuum_code FOREIGN KEY ( ref_ers_rural_urban_continuum_code_id ) REFERENCES rs_ceds7_sc.ref_ers_rural_urban_continuum_code( ref_ers_rural_urban_continuum_code_id );

COMMENT ON CONSTRAINT FK_Location_Address_Ref_ERS_Rural_Urban_Continuum_Code ON rs_ceds7_sc.location_address IS '';

ALTER TABLE rs_ceds7_sc.location_address ADD CONSTRAINT fk_location_address_ref_state FOREIGN KEY ( ref_state_id ) REFERENCES rs_ceds7_sc.ref_state( ref_state_id );

COMMENT ON CONSTRAINT FK_Location_Address_Ref_State ON rs_ceds7_sc.location_address IS '';

ALTER TABLE rs_ceds7_sc.organization_accreditation ADD CONSTRAINT fk_organization_accreditation_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Accreditation_Organization ON rs_ceds7_sc.organization_accreditation IS '';

ALTER TABLE rs_ceds7_sc.organization_accreditation ADD CONSTRAINT fk_organization_accreditation_ref_accreditation_agency FOREIGN KEY ( ref_accreditation_agency_id ) REFERENCES rs_ceds7_sc.ref_accreditation_agency( ref_accreditation_agency_id );

COMMENT ON CONSTRAINT FK_Organization_Accreditation_Ref_Accreditation_Agency ON rs_ceds7_sc.organization_accreditation IS '';

ALTER TABLE rs_ceds7_sc.organization_accreditation ADD CONSTRAINT fk_organization_accreditation_ref_higher_education_institution_accreditation_status FOREIGN KEY ( ref_higher_education_institution_accreditation_status_id ) REFERENCES rs_ceds7_sc.ref_higher_education_institution_accreditation_status( ref_higher_education_institution_accreditation_status_id );

COMMENT ON CONSTRAINT FK_Organization_Accreditation_Ref_Higher_Education_Institution_Accreditation_Status ON rs_ceds7_sc.organization_accreditation IS '';

ALTER TABLE rs_ceds7_sc.organization_calendar_crisis ADD CONSTRAINT fk_organization_calendar_crisis_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Calendar_Crisis_Organization ON rs_ceds7_sc.organization_calendar_crisis IS '';

ALTER TABLE rs_ceds7_sc.organization_calendar_event ADD CONSTRAINT fk_organization_calendar_event_organization_calendar FOREIGN KEY ( organization_calendar_id ) REFERENCES rs_ceds7_sc.organization_calendar( organization_calendar_id );

COMMENT ON CONSTRAINT FK_Organization_Calendar_Event_Organization_Calendar ON rs_ceds7_sc.organization_calendar_event IS '';

ALTER TABLE rs_ceds7_sc.organization_calendar_event ADD CONSTRAINT fk_organization_calendar_event_ref_calendar_event_type FOREIGN KEY ( ref_calendar_event_type ) REFERENCES rs_ceds7_sc.ref_calendar_event_type( ref_calendar_event_type_id );

COMMENT ON CONSTRAINT FK_Organization_Calendar_Event_Ref_Calendar_Event_Type ON rs_ceds7_sc.organization_calendar_event IS '';

ALTER TABLE rs_ceds7_sc.organization_email ADD CONSTRAINT fk_organization_email_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Email_Organization ON rs_ceds7_sc.organization_email IS '';

ALTER TABLE rs_ceds7_sc.organization_email ADD CONSTRAINT fk_organization_email_ref_email_type FOREIGN KEY ( ref_email_type_id ) REFERENCES rs_ceds7_sc.ref_email_type( ref_email_type_id );

COMMENT ON CONSTRAINT FK_Organization_Email_Ref_Email_Type ON rs_ceds7_sc.organization_email IS '';

ALTER TABLE rs_ceds7_sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_Organization ON rs_ceds7_sc.organization_federal_accountability IS '';

ALTER TABLE rs_ceds7_sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_amao_attainment_lep_students FOREIGN KEY ( amao_ayp_progress_attainment_lep_students ) REFERENCES rs_ceds7_sc.ref_amao_attainment_status( ref_amao_attainment_status_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_Ref_AMAO_Attainment_LEP_Students ON rs_ceds7_sc.organization_federal_accountability IS '';

ALTER TABLE rs_ceds7_sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_amao_attainment_lep_students1 FOREIGN KEY ( amao_proficiency_attainment_lep_students ) REFERENCES rs_ceds7_sc.ref_amao_attainment_status( ref_amao_attainment_status_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_Ref_AMAO_Attainment_LEP_Students1 ON rs_ceds7_sc.organization_federal_accountability IS '';

ALTER TABLE rs_ceds7_sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_amao_attainment_lep_students2 FOREIGN KEY ( amao_progress_attainment_lep_students ) REFERENCES rs_ceds7_sc.ref_amao_attainment_status( ref_amao_attainment_status_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_Ref_AMAO_Attainment_LEP_Students2 ON rs_ceds7_sc.organization_federal_accountability IS '';

ALTER TABLE rs_ceds7_sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_ayp_status FOREIGN KEY ( ref_ayp_status_id ) REFERENCES rs_ceds7_sc.ref_ayp_status( ref_ayp_status_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_Ref_Ayp_Status ON rs_ceds7_sc.organization_federal_accountability IS '';

ALTER TABLE rs_ceds7_sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_cte_graduation_rate_inclusion FOREIGN KEY ( ref_cte_graduation_rate_inclusion_id ) REFERENCES rs_ceds7_sc.ref_cte_graduation_rate_inclusion( ref_cte_graduation_rate_inclusion_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_Ref_CTE_Graduation_Rate_Inclusion ON rs_ceds7_sc.organization_federal_accountability IS '';

ALTER TABLE rs_ceds7_sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_elementary_middle_additional FOREIGN KEY ( ref_elementary_middle_additional_id ) REFERENCES rs_ceds7_sc.ref_elementary_middle_additional( ref_elementary_middle_additional_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_Ref_Elementary_Middle_Additional ON rs_ceds7_sc.organization_federal_accountability IS '';

ALTER TABLE rs_ceds7_sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_gun_free_schools_act_status FOREIGN KEY ( ref_gun_free_schools_act_status_reporting_id ) REFERENCES rs_ceds7_sc.ref_gun_free_schools_act_reporting_status( ref_gun_free_schools_act_status_reporting_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_Ref_Gun_Free_Schools_Act_Status ON rs_ceds7_sc.organization_federal_accountability IS '';

ALTER TABLE rs_ceds7_sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_hs_graduation_rate_indicator FOREIGN KEY ( ref_high_school_graduation_rate_indicator ) REFERENCES rs_ceds7_sc.ref_high_school_graduation_rate_indicator( ref_hs_graduation_rate_indicator_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_Ref_HS_Graduation_Rate_Indicator ON rs_ceds7_sc.organization_federal_accountability IS '';

ALTER TABLE rs_ceds7_sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_participation_status_ayp2 FOREIGN KEY ( ref_participation_status_math_id ) REFERENCES rs_ceds7_sc.ref_participation_status_ayp( ref_participation_status_ayp_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_Ref_Participation_Status_Ayp2 ON rs_ceds7_sc.organization_federal_accountability IS '';

ALTER TABLE rs_ceds7_sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_participation_status_ayp3 FOREIGN KEY ( ref_participation_status_rla_id ) REFERENCES rs_ceds7_sc.ref_participation_status_ayp( ref_participation_status_ayp_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_Ref_Participation_Status_Ayp3 ON rs_ceds7_sc.organization_federal_accountability IS '';

ALTER TABLE rs_ceds7_sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_proficiency_target_ayp FOREIGN KEY ( ref_proficiency_target_status_math_id ) REFERENCES rs_ceds7_sc.ref_proficiency_target_ayp( ref_proficiency_target_ayp_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_Ref_Proficiency_Target_AYP ON rs_ceds7_sc.organization_federal_accountability IS '';

ALTER TABLE rs_ceds7_sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_proficiency_target_ayp1 FOREIGN KEY ( ref_proficiency_target_status_rla_id ) REFERENCES rs_ceds7_sc.ref_proficiency_target_ayp( ref_proficiency_target_ayp_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_Ref_Proficiency_Target_AYP1 ON rs_ceds7_sc.organization_federal_accountability IS '';

ALTER TABLE rs_ceds7_sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_reconstituted_status FOREIGN KEY ( ref_reconstituted_status_id ) REFERENCES rs_ceds7_sc.ref_reconstituted_status( ref_reconstituted_status_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_Ref_Reconstituted_Status ON rs_ceds7_sc.organization_federal_accountability IS '';

ALTER TABLE rs_ceds7_sc.organization_identifier ADD CONSTRAINT fk_organization_identifier_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Identifier_Organization ON rs_ceds7_sc.organization_identifier IS '';

ALTER TABLE rs_ceds7_sc.organization_identifier ADD CONSTRAINT fk_organization_identifier_ref_identifier_organization FOREIGN KEY ( ref_organization_identification_system_id ) REFERENCES rs_ceds7_sc.ref_organization_identification_system( ref_organization_identification_system_id );

COMMENT ON CONSTRAINT FK_Organization_Identifier_Ref_Identifier_Organization ON rs_ceds7_sc.organization_identifier IS '';

ALTER TABLE rs_ceds7_sc.organization_identifier ADD CONSTRAINT fk_organization_identifier_ref_organization_identifier_type FOREIGN KEY ( ref_organization_identifier_type_id ) REFERENCES rs_ceds7_sc.ref_organization_identifier_type( ref_organization_identifier_type_id );

COMMENT ON CONSTRAINT FK_Organization_Identifier_Ref_Organization_Identifier_Type ON rs_ceds7_sc.organization_identifier IS '';

ALTER TABLE rs_ceds7_sc.organization_indicator ADD CONSTRAINT fk_organization_indicator_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Indicator_Organization ON rs_ceds7_sc.organization_indicator IS '';

ALTER TABLE rs_ceds7_sc.organization_indicator ADD CONSTRAINT fk_organization_indicator_ref_organization_indicator FOREIGN KEY ( ref_organization_indicator_id ) REFERENCES rs_ceds7_sc.ref_organization_indicator( ref_organization_indicator_id );

COMMENT ON CONSTRAINT FK_Organization_Indicator_Ref_Organization_Indicator ON rs_ceds7_sc.organization_indicator IS '';

ALTER TABLE rs_ceds7_sc.organization_operational_status ADD CONSTRAINT fk_organization_operational_status_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Operational_Status_Organization ON rs_ceds7_sc.organization_operational_status IS '';

ALTER TABLE rs_ceds7_sc.organization_operational_status ADD CONSTRAINT fk_organization_operational_status_ref_operational_status FOREIGN KEY ( ref_operational_status_id ) REFERENCES rs_ceds7_sc.ref_operational_status( ref_operational_status_id );

COMMENT ON CONSTRAINT FK_Organization_Operational_Status_Ref_Operational_Status ON rs_ceds7_sc.organization_operational_status IS '';

ALTER TABLE rs_ceds7_sc.organization_policy ADD CONSTRAINT fk_organization_policy_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Policy_Organization ON rs_ceds7_sc.organization_policy IS '';

ALTER TABLE rs_ceds7_sc.organization_relationship ADD CONSTRAINT fk_organizatino_relationship_organization_parent FOREIGN KEY ( parent_organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organizatino_Relationship_Organization_Parent ON rs_ceds7_sc.organization_relationship IS '';

ALTER TABLE rs_ceds7_sc.organization_relationship ADD CONSTRAINT fk_organization_relationship_organization_child FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Relationship_Organization_Child ON rs_ceds7_sc.organization_relationship IS '';

ALTER TABLE rs_ceds7_sc.organization_relationship ADD CONSTRAINT fk_organization_relationship_ref_organization_relationship_type FOREIGN KEY ( ref_organization_relationship_id ) REFERENCES rs_ceds7_sc.ref_organization_relationship( ref_organization_relationship_id );

COMMENT ON CONSTRAINT FK_Organization_Relationship_Ref_Organization_Relationship_Type ON rs_ceds7_sc.organization_relationship IS '';

ALTER TABLE rs_ceds7_sc.organization_technical_assistance ADD CONSTRAINT fk_organization_technical_assistance_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Technical_Assistance_Organization ON rs_ceds7_sc.organization_technical_assistance IS '';

ALTER TABLE rs_ceds7_sc.organization_technical_assistance ADD CONSTRAINT fk_organization_technical_assistance_ref_technical_assistance_delivery_type FOREIGN KEY ( ref_technical_assistance_delivery_type_id ) REFERENCES rs_ceds7_sc.ref_technical_assistance_delivery_type( ref_technical_assistance_delivery_type_id );

COMMENT ON CONSTRAINT FK_Organization_Technical_Assistance_Ref_Technical_Assistance_Delivery_Type ON rs_ceds7_sc.organization_technical_assistance IS '';

ALTER TABLE rs_ceds7_sc.organization_technical_assistance ADD CONSTRAINT fk_organization_technical_assistance_ref_technical_assistance_type FOREIGN KEY ( ref_technical_assistance_type_id ) REFERENCES rs_ceds7_sc.ref_technical_assistance_type( ref_technical_assistance_type_id );

COMMENT ON CONSTRAINT FK_Organization_Technical_Assistance_Ref_Technical_Assistance_Type ON rs_ceds7_sc.organization_technical_assistance IS '';

ALTER TABLE rs_ceds7_sc.organization_website ADD CONSTRAINT fk_organization_website_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Website_Organization ON rs_ceds7_sc.organization_website IS '';

ALTER TABLE rs_ceds7_sc.ps_student_program ADD CONSTRAINT fk_ps_student_program_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_PS_Student_Program_Organization_Person_Role ON rs_ceds7_sc.ps_student_program IS '';

ALTER TABLE rs_ceds7_sc.ps_student_program ADD CONSTRAINT fk_ps_student_program_ps_program FOREIGN KEY ( ps_program_id ) REFERENCES rs_ceds7_sc.ps_program( ps_program_id );

COMMENT ON CONSTRAINT FK_PS_Student_Program_Ps_Program ON rs_ceds7_sc.ps_student_program IS '';

ALTER TABLE rs_ceds7_sc.ps_student_program ADD CONSTRAINT fk_ps_student_enrollment_cip_ref_cip_use FOREIGN KEY ( ref_cip_use_id ) REFERENCES rs_ceds7_sc.ref_cip_use( ref_cip_use_id );

COMMENT ON CONSTRAINT FK_PS_Student_Enrollment_CIP_Ref_Cip_Use ON rs_ceds7_sc.ps_student_program IS '';

ALTER TABLE rs_ceds7_sc.ps_student_program ADD CONSTRAINT fk_ps_student_program_ref_transfer_out_indicator FOREIGN KEY ( ref_transfer_out_indicator_id ) REFERENCES rs_ceds7_sc.ref_transfer_out_indicator( ref_transfer_out_indicator_id );

COMMENT ON CONSTRAINT FK_PS_Student_Program_Ref_Transfer_Out_Indicator ON rs_ceds7_sc.ps_student_program IS '';

ALTER TABLE rs_ceds7_sc.ps_student_program ADD CONSTRAINT fk_ps_student_program_ref_workbased_learning_opportunity_type FOREIGN KEY ( ref_workbased_learning_opportunity_type_id ) REFERENCES rs_ceds7_sc.ref_workbased_learning_opportunity_type( ref_workbased_learning_opportunity_type_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Program_Ref_Workbased_Learning_Opportunity_Type ON rs_ceds7_sc.ps_student_program IS '';

ALTER TABLE rs_ceds7_sc.person ADD CONSTRAINT fk_person_ref_education_level FOREIGN KEY ( ref_highest_education_level_completed_id ) REFERENCES rs_ceds7_sc.ref_education_level( ref_education_level_id );

COMMENT ON CONSTRAINT FK_Person_Ref_Education_Level ON rs_ceds7_sc.person IS '';

ALTER TABLE rs_ceds7_sc.person ADD CONSTRAINT fk_person_ref_personal_information_verification FOREIGN KEY ( ref_personal_information_verification_id ) REFERENCES rs_ceds7_sc.ref_personal_information_verification( ref_personal_information_verification_id );

COMMENT ON CONSTRAINT FK_Person_Ref_Personal_Information_Verification ON rs_ceds7_sc.person IS '';

ALTER TABLE rs_ceds7_sc.person ADD CONSTRAINT fk_person_ref_proof_of_residency_type FOREIGN KEY ( ref_proof_of_residency_type_id ) REFERENCES rs_ceds7_sc.ref_proof_of_residency_type( ref_proof_of_residency_type_id );

COMMENT ON CONSTRAINT FK_Person_Ref_Proof_Of_Residency_Type ON rs_ceds7_sc.person IS '';

ALTER TABLE rs_ceds7_sc.person ADD CONSTRAINT fk_person_ref_sex FOREIGN KEY ( ref_sex_id ) REFERENCES rs_ceds7_sc.ref_sex( ref_sex_id );

COMMENT ON CONSTRAINT FK_Person_Ref_Sex ON rs_ceds7_sc.person IS '';

ALTER TABLE rs_ceds7_sc.person ADD CONSTRAINT fk_person_ref_state FOREIGN KEY ( ref_state_of_residence_id ) REFERENCES rs_ceds7_sc.ref_state( ref_state_id );

COMMENT ON CONSTRAINT FK_Person_Ref_State ON rs_ceds7_sc.person IS '';

ALTER TABLE rs_ceds7_sc.person ADD CONSTRAINT fk_person_ref_tribal_affiliation FOREIGN KEY ( ref_tribal_affiliation_id ) REFERENCES rs_ceds7_sc.ref_tribal_affiliation( ref_tribal_affiliation_id );

COMMENT ON CONSTRAINT FK_Person_Ref_Tribal_Affiliation ON rs_ceds7_sc.person IS '';

ALTER TABLE rs_ceds7_sc.person ADD CONSTRAINT fk_person_ref_us_citizenship_status FOREIGN KEY ( ref_us_citizenship_status_id ) REFERENCES rs_ceds7_sc.ref_us_citizenship_status( ref_us_citizenship_status_id );

COMMENT ON CONSTRAINT FK_Person_Ref_US_Citizenship_Status ON rs_ceds7_sc.person IS '';

ALTER TABLE rs_ceds7_sc.person ADD CONSTRAINT fk_person_ref_visa_type FOREIGN KEY ( ref_visa_type_id ) REFERENCES rs_ceds7_sc.ref_visa_type( ref_visa_type_id );

COMMENT ON CONSTRAINT FK_Person_Ref_Visa_Type ON rs_ceds7_sc.person IS '';

ALTER TABLE rs_ceds7_sc.person_allergy ADD CONSTRAINT fk_person_allergy_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Allergy_Person ON rs_ceds7_sc.person_allergy IS '';

ALTER TABLE rs_ceds7_sc.person_allergy ADD CONSTRAINT fk_person_allergy_ref_allergy_severity FOREIGN KEY ( ref_allergy_severity_id ) REFERENCES rs_ceds7_sc.ref_allergy_severity( ref_allergy_severity_id );

COMMENT ON CONSTRAINT FK_Person_Allergy_Ref_Allergy_Severity ON rs_ceds7_sc.person_allergy IS '';

ALTER TABLE rs_ceds7_sc.person_allergy ADD CONSTRAINT fk_person_allergy_ref_allergy_type_id FOREIGN KEY ( ref_allergy_type_id ) REFERENCES rs_ceds7_sc.ref_allergy_type( ref_allergy_type_id );

COMMENT ON CONSTRAINT FK_Person_Allergy_Ref_Allergy_Type_Id ON rs_ceds7_sc.person_allergy IS '';

ALTER TABLE rs_ceds7_sc.person_birthplace ADD CONSTRAINT fk_person_birthplace_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Birthplace_Person ON rs_ceds7_sc.person_birthplace IS '';

ALTER TABLE rs_ceds7_sc.person_birthplace ADD CONSTRAINT fk_person_birthplace_ref_country FOREIGN KEY ( ref_country_id ) REFERENCES rs_ceds7_sc.ref_country( ref_country_id );

COMMENT ON CONSTRAINT FK_Person_Birthplace_Ref_Country ON rs_ceds7_sc.person_birthplace IS '';

ALTER TABLE rs_ceds7_sc.person_birthplace ADD CONSTRAINT fk_person_birthplace_ref_state FOREIGN KEY ( ref_state_id ) REFERENCES rs_ceds7_sc.ref_state( ref_state_id );

COMMENT ON CONSTRAINT FK_Person_Birthplace_Ref_State ON rs_ceds7_sc.person_birthplace IS '';

ALTER TABLE rs_ceds7_sc.person_credential ADD CONSTRAINT fk_person_credential_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Credential_Person ON rs_ceds7_sc.person_credential IS '';

ALTER TABLE rs_ceds7_sc.person_credential ADD CONSTRAINT fk_person_credential_ref_credential_type FOREIGN KEY ( ref_credential_type_id ) REFERENCES rs_ceds7_sc.ref_credential_type( ref_credential_type_id );

COMMENT ON CONSTRAINT FK_Person_Credential_Ref_Credential_Type ON rs_ceds7_sc.person_credential IS '';

ALTER TABLE rs_ceds7_sc.person_credential ADD CONSTRAINT fk_person_credential_ref_state FOREIGN KEY ( ref_issuing_state_id ) REFERENCES rs_ceds7_sc.ref_state( ref_state_id );

COMMENT ON CONSTRAINT FK_Person_Credential_Ref_State ON rs_ceds7_sc.person_credential IS '';

ALTER TABLE rs_ceds7_sc.person_demographic_race ADD CONSTRAINT fk_person_demographic_race_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Demographic_Race_Person ON rs_ceds7_sc.person_demographic_race IS '';

ALTER TABLE rs_ceds7_sc.person_demographic_race ADD CONSTRAINT fk_demographic_race_ref_race FOREIGN KEY ( ref_race_id ) REFERENCES rs_ceds7_sc.ref_race( ref_race_id );

COMMENT ON CONSTRAINT FK_Demographic_Race_Ref_Race ON rs_ceds7_sc.person_demographic_race IS '';

ALTER TABLE rs_ceds7_sc.person_email_address ADD CONSTRAINT fk_person_email_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Email_Person ON rs_ceds7_sc.person_email_address IS '';

ALTER TABLE rs_ceds7_sc.person_email_address ADD CONSTRAINT fk_person_email_address_ref_email_type FOREIGN KEY ( ref_email_type_id ) REFERENCES rs_ceds7_sc.ref_email_type( ref_email_type_id );

COMMENT ON CONSTRAINT FK_Person_Email_Address_Ref_Email_Type ON rs_ceds7_sc.person_email_address IS '';

ALTER TABLE rs_ceds7_sc.person_health ADD CONSTRAINT fk_person_health_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Health_Person ON rs_ceds7_sc.person_health IS '';

ALTER TABLE rs_ceds7_sc.person_health ADD CONSTRAINT fk_person_health_ref_dental_insurace_coverage_type FOREIGN KEY ( ref_dental_insurance_coverage_type_id ) REFERENCES rs_ceds7_sc.ref_dental_insurance_coverage_type( ref_dental_insurance_coverage_type_id );

COMMENT ON CONSTRAINT FK_Person_Health_Ref_Dental_Insurace_Coverage_Type ON rs_ceds7_sc.person_health IS '';

ALTER TABLE rs_ceds7_sc.person_health ADD CONSTRAINT fk_person_health_ref_dental_screening_status FOREIGN KEY ( ref_dental_screening_status_id ) REFERENCES rs_ceds7_sc.ref_dental_screening_status( ref_dental_screening_status_id );

COMMENT ON CONSTRAINT FK_Person_Health_Ref_Dental_Screening_Status ON rs_ceds7_sc.person_health IS '';

ALTER TABLE rs_ceds7_sc.person_health ADD CONSTRAINT fk_person_health_ref_health_insurance_coverage FOREIGN KEY ( ref_health_insurance_coverage_id ) REFERENCES rs_ceds7_sc.ref_health_insurance_coverage( ref_health_insurance_coverage_id );

COMMENT ON CONSTRAINT FK_Person_Health_Ref_Health_Insurance_Coverage ON rs_ceds7_sc.person_health IS '';

ALTER TABLE rs_ceds7_sc.person_health ADD CONSTRAINT fk_person_health_ref_hearing_screening_status FOREIGN KEY ( ref_hearing_screening_status_id ) REFERENCES rs_ceds7_sc.ref_hearing_screening_status( ref_hearing_screening_status_id );

COMMENT ON CONSTRAINT FK_Person_Health_Ref_Hearing_Screening_Status ON rs_ceds7_sc.person_health IS '';

ALTER TABLE rs_ceds7_sc.person_health ADD CONSTRAINT fk_person_health_ref_medical_alert_indicator FOREIGN KEY ( ref_medical_alert_indicator_id ) REFERENCES rs_ceds7_sc.ref_medical_alert_indicator( ref_medical_alert_indicator_id );

COMMENT ON CONSTRAINT FK_Person_Health_Ref_Medical_Alert_Indicator ON rs_ceds7_sc.person_health IS '';

ALTER TABLE rs_ceds7_sc.person_health ADD CONSTRAINT fk_person_health_ref_vision_screening_status FOREIGN KEY ( ref_vision_screening_status_id ) REFERENCES rs_ceds7_sc.ref_vision_screening_status( ref_vision_screening_status_id );

COMMENT ON CONSTRAINT FK_Person_Health_Ref_Vision_Screening_Status ON rs_ceds7_sc.person_health IS '';

ALTER TABLE rs_ceds7_sc.person_homelessness ADD CONSTRAINT fk_homeless_primary_nighttime_residence_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Homeless_Primary_Nighttime_Residence_Person ON rs_ceds7_sc.person_homelessness IS '';

ALTER TABLE rs_ceds7_sc.person_homelessness ADD CONSTRAINT fk_homeless_primary_nighttime_residence_ref_homeless_nighttime_resid FOREIGN KEY ( ref_homeless_nighttime_residence_id ) REFERENCES rs_ceds7_sc.ref_homeless_nighttime_residence( ref_homeless_nighttime_residence_id );

COMMENT ON CONSTRAINT FK_Homeless_Primary_Nighttime_Residence_Ref_Homeless_Nighttime_Resid ON rs_ceds7_sc.person_homelessness IS '';

ALTER TABLE rs_ceds7_sc.person_immunization ADD CONSTRAINT fk_person_immunization_person1 FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Immunization_Person1 ON rs_ceds7_sc.person_immunization IS '';

ALTER TABLE rs_ceds7_sc.person_immunization ADD CONSTRAINT fk_person_immunization_ref_immunization FOREIGN KEY ( ref_immunization_type_id ) REFERENCES rs_ceds7_sc.ref_immunization_type( ref_immunization_type_id );

COMMENT ON CONSTRAINT FK_Person_Immunization_Ref_Immunization ON rs_ceds7_sc.person_immunization IS '';

ALTER TABLE rs_ceds7_sc.person_military ADD CONSTRAINT fk_person_military_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Military_Person ON rs_ceds7_sc.person_military IS '';

ALTER TABLE rs_ceds7_sc.person_military ADD CONSTRAINT fk_person_military_ref_military_active_student_indicator FOREIGN KEY ( ref_military_active_student_indicator_id ) REFERENCES rs_ceds7_sc.ref_military_active_student_indicator( ref_military_active_student_indicator_id );

COMMENT ON CONSTRAINT FK_Person_Military_Ref_Military_Active_Student_Indicator ON rs_ceds7_sc.person_military IS '';

ALTER TABLE rs_ceds7_sc.person_military ADD CONSTRAINT fk_person_military_ref_military_branch FOREIGN KEY ( ref_military_branch_id ) REFERENCES rs_ceds7_sc.ref_military_branch( ref_military_branch_id );

COMMENT ON CONSTRAINT FK_Person_Military_Ref_Military_Branch ON rs_ceds7_sc.person_military IS '';

ALTER TABLE rs_ceds7_sc.person_military ADD CONSTRAINT fk_person_military_ref_military_connected_student_indicator FOREIGN KEY ( ref_military_connected_student_indicator_id ) REFERENCES rs_ceds7_sc.ref_military_connected_student_indicator( ref_military_connected_student_indicator_id );

COMMENT ON CONSTRAINT FK_Person_Military_Ref_Military_Connected_Student_Indicator ON rs_ceds7_sc.person_military IS '';

ALTER TABLE rs_ceds7_sc.person_military ADD CONSTRAINT fk_person_military_ref_military_veteran_student_indicator FOREIGN KEY ( ref_military_veteran_student_indicator_id ) REFERENCES rs_ceds7_sc.ref_military_veteran_student_indicator( ref_military_veteran_student_indicator_id );

COMMENT ON CONSTRAINT FK_Person_Military_Ref_Military_Veteran_Student_Indicator ON rs_ceds7_sc.person_military IS '';

ALTER TABLE rs_ceds7_sc.person_program_participation ADD CONSTRAINT fk_person_program_participation_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Person_Program_Participation_Organization_Person_Role ON rs_ceds7_sc.person_program_participation IS '';

ALTER TABLE rs_ceds7_sc.person_program_participation ADD CONSTRAINT fk_person_program_participation_ref_participation_type FOREIGN KEY ( ref_participation_type_id ) REFERENCES rs_ceds7_sc.ref_participation_type( ref_participation_type_id );

COMMENT ON CONSTRAINT FK_Person_Program_Participation_Ref_Participation_Type ON rs_ceds7_sc.person_program_participation IS '';

ALTER TABLE rs_ceds7_sc.person_program_participation ADD CONSTRAINT fk_person_program_participation_ref_program_exit_reason FOREIGN KEY ( ref_program_exit_reason_id ) REFERENCES rs_ceds7_sc.ref_program_exit_reason( ref_program_exit_reason_id );

COMMENT ON CONSTRAINT FK_Person_Program_Participation_Ref_Program_Exit_Reason ON rs_ceds7_sc.person_program_participation IS '';

ALTER TABLE rs_ceds7_sc.person_relationship ADD CONSTRAINT fk_person_relationship_person_primary FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Relationship_Person_Primary ON rs_ceds7_sc.person_relationship IS '';

ALTER TABLE rs_ceds7_sc.person_relationship ADD CONSTRAINT fk_person_relationship_person_secondary FOREIGN KEY ( related_person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Relationship_Person_Secondary ON rs_ceds7_sc.person_relationship IS '';

ALTER TABLE rs_ceds7_sc.person_relationship ADD CONSTRAINT fk_person_relationship_ref_relationship FOREIGN KEY ( ref_person_relationship_id ) REFERENCES rs_ceds7_sc.ref_person_relationship( ref_person_relationship_id );

COMMENT ON CONSTRAINT FK_Person_Relationship_Ref_Relationship ON rs_ceds7_sc.person_relationship IS '';

ALTER TABLE rs_ceds7_sc.person_telephone ADD CONSTRAINT fk_person_phone_person FOREIGN KEY ( person_id ) REFERENCES rs_ceds7_sc.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Phone_Person ON rs_ceds7_sc.person_telephone IS '';

ALTER TABLE rs_ceds7_sc.person_telephone ADD CONSTRAINT fk_person_phone_ref_person_telephone_type FOREIGN KEY ( ref_person_telephone_number_type_id ) REFERENCES rs_ceds7_sc.ref_person_telephone_number_type( ref_person_telephone_number_type_id );

COMMENT ON CONSTRAINT FK_Person_Phone_Ref_Person_Telephone_Type ON rs_ceds7_sc.person_telephone IS '';

ALTER TABLE rs_ceds7_sc.professional_development_requirement ADD CONSTRAINT fk_professional_development_requirement_competency_set FOREIGN KEY ( competency_set_id ) REFERENCES rs_ceds7_sc.competency_set( competency_set_id );

COMMENT ON CONSTRAINT FK_Professional_Development_Requirement_Competency_Set ON rs_ceds7_sc.professional_development_requirement IS '';

ALTER TABLE rs_ceds7_sc.professional_development_requirement ADD CONSTRAINT fk_professional_development_requirement_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Professional_Development_Requirement_Organization_Person_Role ON rs_ceds7_sc.professional_development_requirement IS '';

ALTER TABLE rs_ceds7_sc.professional_development_session_instructor ADD CONSTRAINT fk_pd_session_instructor_org_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_PD_Session_Instructor_Org_Person_Role ON rs_ceds7_sc.professional_development_session_instructor IS '';

ALTER TABLE rs_ceds7_sc.professional_development_session_instructor ADD CONSTRAINT fk_pd_session_instructor_pd_session FOREIGN KEY ( professional_development_session_id ) REFERENCES rs_ceds7_sc.professional_development_session( professional_development_session_id );

COMMENT ON CONSTRAINT FK_PD_Session_Instructor_PD_Session ON rs_ceds7_sc.professional_development_session_instructor IS '';

ALTER TABLE rs_ceds7_sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Program_Participation_AE_Person_Program_Participation ON rs_ceds7_sc.program_participation_ae IS '';

ALTER TABLE rs_ceds7_sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_ref_ae_functioning_level_at_intake FOREIGN KEY ( ref_ae_functioning_level_at_intake_id ) REFERENCES rs_ceds7_sc.ref_ae_functioning_level_at_intake( ref_ae_functioning_level_at_intake_id );

COMMENT ON CONSTRAINT FK_Program_Participation_AE_Ref_Ae_Functioning_Level_At_Intake ON rs_ceds7_sc.program_participation_ae IS '';

ALTER TABLE rs_ceds7_sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_ref_ae_functioning_level_at_posttest FOREIGN KEY ( ref_ae_functioning_level_at_posttest_id ) REFERENCES rs_ceds7_sc.ref_ae_functioning_level_at_posttest( ref_ae_functioning_level_at_posttest_id );

COMMENT ON CONSTRAINT FK_Program_Participation_AE_Ref_Ae_Functioning_Level_At_Posttest ON rs_ceds7_sc.program_participation_ae IS '';

ALTER TABLE rs_ceds7_sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_ref_ae_instructional_program_type FOREIGN KEY ( ref_ae_instructional_program_type_id ) REFERENCES rs_ceds7_sc.ref_ae_instructional_program_type( ref_ae_instructional_program_type_id );

COMMENT ON CONSTRAINT FK_Program_Participation_AE_Ref_Ae_Instructional_Program_Type ON rs_ceds7_sc.program_participation_ae IS '';

ALTER TABLE rs_ceds7_sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_ref_ae_postsecondary_transition_action FOREIGN KEY ( ref_ae_postsecondary_transition_action_id ) REFERENCES rs_ceds7_sc.ref_ae_postsecondary_transition_action( ref_ae_postsecondary_transition_action_id );

COMMENT ON CONSTRAINT FK_Program_Participation_AE_Ref_Ae_Postsecondary_Transition_Action ON rs_ceds7_sc.program_participation_ae IS '';

ALTER TABLE rs_ceds7_sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ref_ae_special_program_type FOREIGN KEY ( ref_ae_special_program_type_id ) REFERENCES rs_ceds7_sc.ref_ae_special_program_type( ref_ae_special_program_type_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Ref_Ae_Special_Program_Type ON rs_ceds7_sc.program_participation_ae IS '';

ALTER TABLE rs_ceds7_sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_ref_correctional_education_facility_type FOREIGN KEY ( ref_correctional_education_facility_type_id ) REFERENCES rs_ceds7_sc.ref_correctional_education_facility_type( ref_correctional_education_facility_type_id );

COMMENT ON CONSTRAINT FK_Program_Participation_AE_Ref_Correctional_Education_Facility_Type ON rs_ceds7_sc.program_participation_ae IS '';

ALTER TABLE rs_ceds7_sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_ref_goals_for_attending_adult_education FOREIGN KEY ( ref_goals_for_attending_adult_education_id ) REFERENCES rs_ceds7_sc.ref_goals_for_attending_adult_education( ref_goals_for_attending_adult_education_id );

COMMENT ON CONSTRAINT FK_Program_Participation_AE_Ref_Goals_For_Attending_Adult_Education ON rs_ceds7_sc.program_participation_ae IS '';

ALTER TABLE rs_ceds7_sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_ref_workbased_learning_opportunity_type FOREIGN KEY ( ref_workbased_learning_opportunity_type_id ) REFERENCES rs_ceds7_sc.ref_workbased_learning_opportunity_type( ref_workbased_learning_opportunity_type_id );

COMMENT ON CONSTRAINT FK_Program_Participation_AE_Ref_Workbased_Learning_Opportunity_Type ON rs_ceds7_sc.program_participation_ae IS '';

ALTER TABLE rs_ceds7_sc.program_participation_food_service ADD CONSTRAINT fk_program_participation_food_srvc_person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Food_Srvc_Person_Program_Participation ON rs_ceds7_sc.program_participation_food_service IS '';

ALTER TABLE rs_ceds7_sc.program_participation_food_service ADD CONSTRAINT fk_program_participation_food_srvc_ref_school_food_service_program FOREIGN KEY ( ref_school_food_service_program_id ) REFERENCES rs_ceds7_sc.ref_school_food_service_program( ref_school_food_service_program_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Food_Srvc_Ref_School_Food_Service_Program ON rs_ceds7_sc.program_participation_food_service IS '';

ALTER TABLE rs_ceds7_sc.program_participation_neglected ADD CONSTRAINT fk_program_participation_neglected_person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Neglected_Person_Program_Participation ON rs_ceds7_sc.program_participation_neglected IS '';

ALTER TABLE rs_ceds7_sc.program_participation_neglected ADD CONSTRAINT fk_program_participation_neglected_ref_neglected_program_type FOREIGN KEY ( ref_neglected_program_type_id ) REFERENCES rs_ceds7_sc.ref_neglected_program_type( ref_neglected_program_type_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Neglected_Ref_Neglected_Program_Type ON rs_ceds7_sc.program_participation_neglected IS '';

ALTER TABLE rs_ceds7_sc.program_participation_teacher_prep ADD CONSTRAINT fk_prgm_participation_teacher_prep_person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Prgm_Participation_Teacher_Prep_Person_Program_Participation ON rs_ceds7_sc.program_participation_teacher_prep IS '';

ALTER TABLE rs_ceds7_sc.program_participation_teacher_prep ADD CONSTRAINT fk_program_participation_teacher_prep_ref_alt_route_to_certification_or_licensure FOREIGN KEY ( ref_alt_route_to_certification_or_licensure_id ) REFERENCES rs_ceds7_sc.ref_alt_route_to_certification_or_licensure( ref_alt_route_to_certification_or_licensure_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Teacher_Prep_Ref_Alt_Route_To_Certification_Or_Licensure ON rs_ceds7_sc.program_participation_teacher_prep IS '';

ALTER TABLE rs_ceds7_sc.program_participation_teacher_prep ADD CONSTRAINT fk_prgm_participation_teacher_prep_ref_crit_teach_shortage_candidate FOREIGN KEY ( ref_critical_teacher_shortage_candidate_id ) REFERENCES rs_ceds7_sc.ref_critical_teacher_shortage_candidate( ref_critical_teacher_shortage_candidate_id );

COMMENT ON CONSTRAINT FK_Prgm_Participation_Teacher_Prep_Ref_Crit_Teach_Shortage_Candidate ON rs_ceds7_sc.program_participation_teacher_prep IS '';

ALTER TABLE rs_ceds7_sc.program_participation_teacher_prep ADD CONSTRAINT fk_program_participation_teacher_prep_ref_supervised_clinical_exper FOREIGN KEY ( ref_supervised_clinical_experience_id ) REFERENCES rs_ceds7_sc.ref_supervised_clinical_experience( ref_supervised_clinical_experience_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Teacher_Prep_Ref_Supervised_Clinical_Exper ON rs_ceds7_sc.program_participation_teacher_prep IS '';

ALTER TABLE rs_ceds7_sc.program_participation_teacher_prep ADD CONSTRAINT fk_prgm_participation_teacher_prep_ref_teacher_prep_completer_status FOREIGN KEY ( ref_teacher_prep_completer_status_id ) REFERENCES rs_ceds7_sc.ref_teacher_prep_completer_status( ref_teacher_prep_completer_status_id );

COMMENT ON CONSTRAINT FK_Prgm_Participation_Teacher_Prep_Ref_Teacher_Prep_Completer_Status ON rs_ceds7_sc.program_participation_teacher_prep IS '';

ALTER TABLE rs_ceds7_sc.program_participation_teacher_prep ADD CONSTRAINT fk_prgm_participation_teacher_prep_ref_teacher_prep_enroll_status FOREIGN KEY ( ref_teacher_prep_enrollment_status_id ) REFERENCES rs_ceds7_sc.ref_teacher_prep_enrollment_status( ref_teacher_prep_enrollment_status_id );

COMMENT ON CONSTRAINT FK_Prgm_Participation_Teacher_Prep_Ref_Teacher_Prep_Enroll_Status ON rs_ceds7_sc.program_participation_teacher_prep IS '';

ALTER TABLE rs_ceds7_sc.program_participation_teacher_prep ADD CONSTRAINT fk_prgm_participation_teacher_prep_ref_teaching_credential_basis FOREIGN KEY ( ref_teaching_credential_basis_id ) REFERENCES rs_ceds7_sc.ref_teaching_credential_basis( ref_teaching_credential_basis_id );

COMMENT ON CONSTRAINT FK_Prgm_Participation_Teacher_Prep_Ref_Teaching_Credential_Basis ON rs_ceds7_sc.program_participation_teacher_prep IS '';

ALTER TABLE rs_ceds7_sc.program_participation_teacher_prep ADD CONSTRAINT fk_prgm_participation_teacher_prep_ref_teaching_credential_type FOREIGN KEY ( ref_teaching_credential_type_id ) REFERENCES rs_ceds7_sc.ref_teaching_credential_type( ref_teaching_credential_type_id );

COMMENT ON CONSTRAINT FK_Prgm_Participation_Teacher_Prep_Ref_Teaching_Credential_Type ON rs_ceds7_sc.program_participation_teacher_prep IS '';

ALTER TABLE rs_ceds7_sc.program_participation_title_iii_lep ADD CONSTRAINT fk_program_participation_title_iii_person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Title_III_Person_Program_Participation ON rs_ceds7_sc.program_participation_title_iii_lep IS '';

ALTER TABLE rs_ceds7_sc.program_participation_title_iii_lep ADD CONSTRAINT fk_program_participation_title_iii_lep_ref_title_iii_accountability FOREIGN KEY ( ref_title_iii_accountability_id ) REFERENCES rs_ceds7_sc.ref_title_iii_accountability( ref_title_iii_accountability_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Title_III_Lep_Ref_Title_III_Accountability ON rs_ceds7_sc.program_participation_title_iii_lep IS '';

ALTER TABLE rs_ceds7_sc.program_participation_title_iii_lep ADD CONSTRAINT fk_program_participation_title_iiilep_ref_title_iii_lang_instr_prgm FOREIGN KEY ( ref_title_iii_language_instruction_program_type_id ) REFERENCES rs_ceds7_sc.ref_title_iii_language_instruction_program_type( ref_title_iii_language_instruction_program_type_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Title_IIILEP_Ref_Title_III_Lang_Instr_Prgm ON rs_ceds7_sc.program_participation_title_iii_lep IS '';

ALTER TABLE rs_ceds7_sc.ps_institution ADD CONSTRAINT fk_ps_institution_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT FK_Ps_Institution_Organization ON rs_ceds7_sc.ps_institution IS '';

ALTER TABLE rs_ceds7_sc.ps_institution ADD CONSTRAINT fk_ps_institution_ref_admission_consideration_level FOREIGN KEY ( ref_admission_consideration_level_id ) REFERENCES rs_ceds7_sc.ref_admission_consideration_level( ref_admission_consideration_level_id );

COMMENT ON CONSTRAINT FK_Ps_Institution_Ref_Admission_Consideration_Level ON rs_ceds7_sc.ps_institution IS '';

ALTER TABLE rs_ceds7_sc.ps_institution ADD CONSTRAINT fk_ps_institution_ref_admission_consideration_type FOREIGN KEY ( ref_admission_consideration_type_id ) REFERENCES rs_ceds7_sc.ref_admission_consideration_type( ref_admission_consideration_type_id );

COMMENT ON CONSTRAINT FK_Ps_Institution_Ref_Admission_Consideration_Type ON rs_ceds7_sc.ps_institution IS '';

ALTER TABLE rs_ceds7_sc.ps_institution ADD CONSTRAINT fk_ps_institution_ref_classification FOREIGN KEY ( ref_carnegie_basic_classification_id ) REFERENCES rs_ceds7_sc.ref_carnegie_basic_classification( ref_carnegie_basic_classification_id );

COMMENT ON CONSTRAINT FK_Ps_Institution_Ref_Classification ON rs_ceds7_sc.ps_institution IS '';

ALTER TABLE rs_ceds7_sc.ps_institution ADD CONSTRAINT fk_ps_institution_ref_control_of_institution FOREIGN KEY ( ref_control_of_institution_id ) REFERENCES rs_ceds7_sc.ref_control_of_institution( ref_control_of_institution_id );

COMMENT ON CONSTRAINT FK_Ps_Institution_Ref_Control_Of_Institution ON rs_ceds7_sc.ps_institution IS '';

ALTER TABLE rs_ceds7_sc.ps_institution ADD CONSTRAINT fk_ps_institution_ref_level_of_institution FOREIGN KEY ( ref_level_of_institution_id ) REFERENCES rs_ceds7_sc.ref_level_of_institution( ref_level_of_institution_id );

COMMENT ON CONSTRAINT FK_Ps_Institution_Ref_Level_Of_Institution ON rs_ceds7_sc.ps_institution IS '';

ALTER TABLE rs_ceds7_sc.ps_institution ADD CONSTRAINT fk_ps_institution_ref_predominant_calendar_system FOREIGN KEY ( ref_predominant_calendar_system_id ) REFERENCES rs_ceds7_sc.ref_predominant_calendar_system( ref_predominant_calendar_system_id );

COMMENT ON CONSTRAINT FK_Ps_Institution_Ref_Predominant_Calendar_System ON rs_ceds7_sc.ps_institution IS '';

ALTER TABLE rs_ceds7_sc.ps_institution ADD CONSTRAINT fk_ps_institution_ref_tenure_system FOREIGN KEY ( ref_tenure_system_id ) REFERENCES rs_ceds7_sc.ref_tenure_system( ref_tenure_system_id );

COMMENT ON CONSTRAINT FK_Ps_Institution_Ref_Tenure_System ON rs_ceds7_sc.ps_institution IS '';

ALTER TABLE rs_ceds7_sc.ps_program ADD CONSTRAINT fk_ps_program_organization FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ps_Program_Organization ON rs_ceds7_sc.ps_program IS '';

ALTER TABLE rs_ceds7_sc.ps_program ADD CONSTRAINT fk_ps_program_ref_cip_code FOREIGN KEY ( ref_cip_code_id ) REFERENCES rs_ceds7_sc.ref_cip_code( ref_cip_code_id );

COMMENT ON CONSTRAINT FK_Ps_Program_Ref_Cip_Code ON rs_ceds7_sc.ps_program IS '';

ALTER TABLE rs_ceds7_sc.ps_program ADD CONSTRAINT fk_ps_program_ref_cip_version FOREIGN KEY ( ref_cip_version_id ) REFERENCES rs_ceds7_sc.ref_cip_version( ref_cip_version_id );

COMMENT ON CONSTRAINT FK_Ps_Program_Ref_Cip_Version ON rs_ceds7_sc.ps_program IS '';

ALTER TABLE rs_ceds7_sc.ps_program ADD CONSTRAINT fk_ps_program_ref_dqp_categories_of_learning FOREIGN KEY ( ref_dqp_categories_of_learning_id ) REFERENCES rs_ceds7_sc.ref_dqp_categories_of_learning( ref_dqp_categories_of_learning_id );

COMMENT ON CONSTRAINT FK_Ps_Program_Ref_DQP_Categories_Of_Learning ON rs_ceds7_sc.ps_program IS '';

ALTER TABLE rs_ceds7_sc.ps_program ADD CONSTRAINT fk_ps_program_ref_ps_exit_or_withdrawal_type FOREIGN KEY ( ref_ps_exit_or_withdrawal_type_id ) REFERENCES rs_ceds7_sc.ref_ps_exit_or_withdrawal_type( ref_ps_exit_or_withdrawal_type_id );

COMMENT ON CONSTRAINT FK_PS_Program_Ref_PS_Exit_Or_Withdrawal_Type ON rs_ceds7_sc.ps_program IS '';

ALTER TABLE rs_ceds7_sc.ps_program ADD CONSTRAINT fk_ps_program_ref_ps_program_level FOREIGN KEY ( ref_ps_program_level_id ) REFERENCES rs_ceds7_sc.ref_ps_program_level( ref_ps_program_level_id );

COMMENT ON CONSTRAINT FK_PS_Program_Ref_PS_Program_Level ON rs_ceds7_sc.ps_program IS '';

ALTER TABLE rs_ceds7_sc.ps_program ADD CONSTRAINT fk_ps_program_ref_program_length_hours_type FOREIGN KEY ( ref_program_length_hours_type_id ) REFERENCES rs_ceds7_sc.ref_program_length_hours_type( ref_program_length_hours_type_id );

COMMENT ON CONSTRAINT FK_Ps_Program_Ref_Program_Length_Hours_Type ON rs_ceds7_sc.ps_program IS '';

ALTER TABLE rs_ceds7_sc.ps_program ADD CONSTRAINT fk_ps_program_ref_time_for_completion_units FOREIGN KEY ( ref_time_for_completion_units_id ) REFERENCES rs_ceds7_sc.ref_time_for_completion_units( ref_time_for_completion_units_id );

COMMENT ON CONSTRAINT FK_Ps_Program_Ref_Time_For_Completion_Units ON rs_ceds7_sc.ps_program IS '';

ALTER TABLE rs_ceds7_sc.ps_section_location ADD CONSTRAINT fk_ps_section_location_ps_section FOREIGN KEY ( organization_id ) REFERENCES rs_ceds7_sc.ps_section( organization_id );

COMMENT ON CONSTRAINT FK_Ps_Section_Location_Ps_Section ON rs_ceds7_sc.ps_section_location IS '';

ALTER TABLE rs_ceds7_sc.ps_section_location ADD CONSTRAINT fk_ps_section_location_ref_course_instruction_site_type FOREIGN KEY ( ref_course_instruction_site_type_id ) REFERENCES rs_ceds7_sc.ref_course_instruction_site_type( ref_course_instruction_site_type_id );

COMMENT ON CONSTRAINT FK_Ps_Section_Location_Ref_Course_Instruction_Site_Type ON rs_ceds7_sc.ps_section_location IS '';

ALTER TABLE rs_ceds7_sc.ps_student_academic_award ADD CONSTRAINT fk_ps_student_academic_award_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Academic_Award_Organization_Person_Role ON rs_ceds7_sc.ps_student_academic_award IS '';

ALTER TABLE rs_ceds7_sc.ps_student_academic_award ADD CONSTRAINT fk_ps_academic_award_ref_academic_award_level FOREIGN KEY ( ref_academic_award_level_id ) REFERENCES rs_ceds7_sc.ref_academic_award_level( ref_academic_award_level_id );

COMMENT ON CONSTRAINT FK_Ps_Academic_Award_Ref_Academic_Award_Level ON rs_ceds7_sc.ps_student_academic_award IS '';

ALTER TABLE rs_ceds7_sc.ps_student_academic_award ADD CONSTRAINT fk_ps_student_academic_award_ref_academic_award_prerequisite_type FOREIGN KEY ( ref_academic_award_prerequisite_type_id ) REFERENCES rs_ceds7_sc.ref_academic_award_prerequisite_type( ref_academic_award_prerequisite_type_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Academic_Award_Ref_Academic_Award_Prerequisite_Type ON rs_ceds7_sc.ps_student_academic_award IS '';

ALTER TABLE rs_ceds7_sc.ps_student_academic_award ADD CONSTRAINT fk_ps_student_academic_award_ref_pesc_award_level_type FOREIGN KEY ( ref_pesc_award_level_type_id ) REFERENCES rs_ceds7_sc.ref_pesc_award_level_type( ref_pesc_award_level_type_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Academic_Award_Ref_PESC_Award_Level_Type ON rs_ceds7_sc.ps_student_academic_award IS '';

ALTER TABLE rs_ceds7_sc.ps_student_admission_test ADD CONSTRAINT fk_ps_admission_test_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Ps_Admission_Test_Organization_Person_Role ON rs_ceds7_sc.ps_student_admission_test IS '';

ALTER TABLE rs_ceds7_sc.ps_student_admission_test ADD CONSTRAINT fk_ps_admission_test_ref_standardized_admission_test FOREIGN KEY ( ref_standardized_admission_test_id ) REFERENCES rs_ceds7_sc.ref_standardized_admission_test( ref_standardized_admission_test_id );

COMMENT ON CONSTRAINT FK_Ps_Admission_Test_Ref_Standardized_Admission_Test ON rs_ceds7_sc.ps_student_admission_test IS '';

ALTER TABLE rs_ceds7_sc.ps_student_cohort ADD CONSTRAINT fk_ps_student_cohort_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Cohort_Organization_Person_Role ON rs_ceds7_sc.ps_student_cohort IS '';

ALTER TABLE rs_ceds7_sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Demographic_Organization_Person_Role ON rs_ceds7_sc.ps_student_demographic IS '';

ALTER TABLE rs_ceds7_sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_campus_residency_type FOREIGN KEY ( ref_campus_residency_type_id ) REFERENCES rs_ceds7_sc.ref_campus_residency_type( ref_campus_residency_type_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Demographic_Ref_Campus_Residency_Type ON rs_ceds7_sc.ps_student_demographic IS '';

ALTER TABLE rs_ceds7_sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_cohort_exclusion FOREIGN KEY ( ref_cohort_exclusion_id ) REFERENCES rs_ceds7_sc.ref_cohort_exclusion( ref_cohort_exclusion_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Demographic_Ref_Cohort_Exclusion ON rs_ceds7_sc.ps_student_demographic IS '';

ALTER TABLE rs_ceds7_sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_dependency_status FOREIGN KEY ( ref_dependency_status_id ) REFERENCES rs_ceds7_sc.ref_dependency_status( ref_dependency_status_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Demographic_Ref_Dependency_Status ON rs_ceds7_sc.ps_student_demographic IS '';

ALTER TABLE rs_ceds7_sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_education_level FOREIGN KEY ( ref_paternal_education_level_id ) REFERENCES rs_ceds7_sc.ref_education_level( ref_education_level_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Demographic_Ref_Education_Level ON rs_ceds7_sc.ps_student_demographic IS '';

ALTER TABLE rs_ceds7_sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_education_level1 FOREIGN KEY ( ref_maternal_education_level_id ) REFERENCES rs_ceds7_sc.ref_education_level( ref_education_level_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Demographic_Ref_Education_Level1 ON rs_ceds7_sc.ps_student_demographic IS '';

ALTER TABLE rs_ceds7_sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_postsecondary_lep_type FOREIGN KEY ( ref_ps_lep_type_id ) REFERENCES rs_ceds7_sc.ref_ps_lep_type( ref_ps_lep_type_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Demographic_Ref_Postsecondary_LEP_Type ON rs_ceds7_sc.ps_student_demographic IS '';

ALTER TABLE rs_ceds7_sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_tuition_residency_type FOREIGN KEY ( ref_tuition_residency_type_id ) REFERENCES rs_ceds7_sc.ref_tuition_residency_type( ref_tuition_residency_type_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Demographic_Ref_Tuition_Residency_Type ON rs_ceds7_sc.ps_student_demographic IS '';

ALTER TABLE rs_ceds7_sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Enrollment_Organization_Person_Role ON rs_ceds7_sc.ps_student_enrollment IS '';

ALTER TABLE rs_ceds7_sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_developmental_education_referral_status FOREIGN KEY ( ref_developmental_education_referral_status_id ) REFERENCES rs_ceds7_sc.ref_developmental_education_referral_status( ref_developmental_education_referral_status_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Enrollment_Ref_Developmental_Education_Referral_Status ON rs_ceds7_sc.ps_student_enrollment IS '';

ALTER TABLE rs_ceds7_sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_developmental_education_type FOREIGN KEY ( ref_developmental_education_type_id ) REFERENCES rs_ceds7_sc.ref_developmental_education_type( ref_developmental_education_type_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Enrollment_Ref_Developmental_Education_Type ON rs_ceds7_sc.ps_student_enrollment IS '';

ALTER TABLE rs_ceds7_sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_distance_education_course_enr FOREIGN KEY ( ref_distance_education_course_enrollment_id ) REFERENCES rs_ceds7_sc.ref_distance_education_course_enrollment( ref_distance_education_course_enrollment_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Enrollment_Ref_Distance_Education_Course_Enr ON rs_ceds7_sc.ps_student_enrollment IS '';

ALTER TABLE rs_ceds7_sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_doctoral_exams_required_code FOREIGN KEY ( ref_doctoral_exams_required_code_id ) REFERENCES rs_ceds7_sc.ref_doctoral_exams_required_code( ref_doctoral_exams_required_code_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Enrollment_Ref_Doctoral_Exams_Required_Code ON rs_ceds7_sc.ps_student_enrollment IS '';

ALTER TABLE rs_ceds7_sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_graduate_or_doctoral_exam_results_status FOREIGN KEY ( ref_graduate_or_doctoral_exam_results_status_id ) REFERENCES rs_ceds7_sc.ref_graduate_or_doctoral_exam_results_status( ref_graduate_or_doctoral_exam_results_status_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Enrollment_Ref_Graduate_Or_Doctoral_Exam_Results_Status ON rs_ceds7_sc.ps_student_enrollment IS '';

ALTER TABLE rs_ceds7_sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_instructional_activity_hours FOREIGN KEY ( ref_instructional_activity_hours_id ) REFERENCES rs_ceds7_sc.ref_instructional_activity_hours( ref_instructional_activity_hours_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Enrollment_Ref_Instructional_Activity_Hours ON rs_ceds7_sc.ps_student_enrollment IS '';

ALTER TABLE rs_ceds7_sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_ps_enrollment_award_type FOREIGN KEY ( ref_ps_enrollment_award_type_id ) REFERENCES rs_ceds7_sc.ref_ps_enrollment_award_type( ref_ps_enrollment_award_type_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Enrollment_Ref_Ps_Enrollment_Award_Type ON rs_ceds7_sc.ps_student_enrollment IS '';

ALTER TABLE rs_ceds7_sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_ps_enrollment_status FOREIGN KEY ( ref_ps_enrollment_status_id ) REFERENCES rs_ceds7_sc.ref_ps_enrollment_status( ref_ps_enrollment_status_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Enrollment_Ref_Ps_Enrollment_Status ON rs_ceds7_sc.ps_student_enrollment IS '';

ALTER TABLE rs_ceds7_sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_ps_enrollment_type FOREIGN KEY ( ref_ps_enrollment_type_id ) REFERENCES rs_ceds7_sc.ref_ps_enrollment_type( ref_ps_enrollment_type_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Enrollment_Ref_Ps_Enrollment_Type ON rs_ceds7_sc.ps_student_enrollment IS '';

ALTER TABLE rs_ceds7_sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_ps_student_level FOREIGN KEY ( ref_ps_student_level_id ) REFERENCES rs_ceds7_sc.ref_ps_student_level( ref_ps_student_level_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Enrollment_Ref_Ps_Student_Level ON rs_ceds7_sc.ps_student_enrollment IS '';

ALTER TABLE rs_ceds7_sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_transfer_ready FOREIGN KEY ( ref_transfer_ready_id ) REFERENCES rs_ceds7_sc.ref_transfer_ready( ref_transfer_ready_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Enrollment_Ref_Transfer_Ready ON rs_ceds7_sc.ps_student_enrollment IS '';

ALTER TABLE rs_ceds7_sc.ps_student_section ADD CONSTRAINT fk_ps_student_section_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES rs_ceds7_sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Section_Organization_Person_Role ON rs_ceds7_sc.ps_student_section IS '';

ALTER TABLE rs_ceds7_sc.ps_student_section ADD CONSTRAINT fk_ps_student_section_ref_course_academic_grade_status_code FOREIGN KEY ( ref_course_academic_grade_status_code_id ) REFERENCES rs_ceds7_sc.ref_course_academic_grade_status_code( ref_course_academic_grade_status_code_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Section_Ref_Course_Academic_Grade_Status_Code ON rs_ceds7_sc.ps_student_section IS '';

ALTER TABLE rs_ceds7_sc.ps_student_section ADD CONSTRAINT fk_ps_student_section_ref_course_repeat_code FOREIGN KEY ( ref_course_repeat_code_id ) REFERENCES rs_ceds7_sc.ref_course_repeat_code( ref_course_repeat_code_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Section_Ref_Course_Repeat_Code ON rs_ceds7_sc.ps_student_section IS '';

ALTER TABLE rs_ceds7_sc.ref_absent_attendance_category ADD CONSTRAINT fk_ref_absent_attendance_category_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Absent_Attendance_Category_Organization ON rs_ceds7_sc.ref_absent_attendance_category IS '';

ALTER TABLE rs_ceds7_sc.ref_academic_award_prerequisite_type ADD CONSTRAINT fk_ref_academic_award_prerequisite_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Academic_Award_Prerequisite_Type_Organization ON rs_ceds7_sc.ref_academic_award_prerequisite_type IS '';

ALTER TABLE rs_ceds7_sc.ref_academic_rank ADD CONSTRAINT fk_ref_academic_rank_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Academic_Rank_Organization ON rs_ceds7_sc.ref_academic_rank IS '';

ALTER TABLE rs_ceds7_sc.ref_academic_term_designator ADD CONSTRAINT fk_ref_academic_term_designator_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Academic_Term_Designator_Organization ON rs_ceds7_sc.ref_academic_term_designator IS '';

ALTER TABLE rs_ceds7_sc.ref_accommodations_needed_type ADD CONSTRAINT fk_ref_accommodations_needed_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Accommodations_Needed_Type_Organization ON rs_ceds7_sc.ref_accommodations_needed_type IS '';

ALTER TABLE rs_ceds7_sc.ref_activity_recognition_type ADD CONSTRAINT fk_ref_activity_recognition_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Activity_Recognition_Type_Organization ON rs_ceds7_sc.ref_activity_recognition_type IS '';

ALTER TABLE rs_ceds7_sc.ref_additional_credit_type ADD CONSTRAINT fk_ref_additional_credit_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Additional_Credit_Type_Organization ON rs_ceds7_sc.ref_additional_credit_type IS '';

ALTER TABLE rs_ceds7_sc.ref_administrative_funding_control ADD CONSTRAINT fk_ref_admin_funding_control_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Admin_Funding_Control_Organization ON rs_ceds7_sc.ref_administrative_funding_control IS '';

ALTER TABLE rs_ceds7_sc.ref_admission_consideration_type ADD CONSTRAINT fk_ref_admission_consideration_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Admission_Consideration_Type_Organization ON rs_ceds7_sc.ref_admission_consideration_type IS '';

ALTER TABLE rs_ceds7_sc.ref_advanced_placement_course_code ADD CONSTRAINT fk_ref_advanced_placement_course_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Advanced_Placement_Course_Code_Organization ON rs_ceds7_sc.ref_advanced_placement_course_code IS '';

ALTER TABLE rs_ceds7_sc.ref_ae_functioning_level_at_intake ADD CONSTRAINT fk_ref_ae_functioning_level_at_intake_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_AE_Functioning_Level_At_Intake_Organization ON rs_ceds7_sc.ref_ae_functioning_level_at_intake IS '';

ALTER TABLE rs_ceds7_sc.ref_ae_instructional_program_type ADD CONSTRAINT fk_ref_ae_instructional_program_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_AE_Instructional_Program_Type_Organization ON rs_ceds7_sc.ref_ae_instructional_program_type IS '';

ALTER TABLE rs_ceds7_sc.ref_ae_special_program_type ADD CONSTRAINT fk_ref_ae_special_program_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Ae_Special_Program_Type_Organization ON rs_ceds7_sc.ref_ae_special_program_type IS '';

ALTER TABLE rs_ceds7_sc.ref_ae_staff_employment_status ADD CONSTRAINT fk_ref_ae_staff_employment_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Ae_Staff_Employment_Status_Organization ON rs_ceds7_sc.ref_ae_staff_employment_status IS '';

ALTER TABLE rs_ceds7_sc.ref_allergy_type ADD CONSTRAINT fk_ref_allergy_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Allergy_Type_Organization ON rs_ceds7_sc.ref_allergy_type IS '';

ALTER TABLE rs_ceds7_sc.ref_alternate_fund_uses ADD CONSTRAINT fk_ref_alternate_fund_uses_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Alternate_Fund_Uses_Organization ON rs_ceds7_sc.ref_alternate_fund_uses IS '';

ALTER TABLE rs_ceds7_sc.ref_amao_attainment_status ADD CONSTRAINT fk_ref_amao_attainment_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Amao_Attainment_Status_Organization ON rs_ceds7_sc.ref_amao_attainment_status IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_asset_type ADD CONSTRAINT fk_ref_assessment_asset_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Asset_Type_Organization ON rs_ceds7_sc.ref_assessment_asset_type IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_form_section_identification_system ADD CONSTRAINT fk_ref_assessment_form_section_id_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Form_Section_ID_Type_Organization ON rs_ceds7_sc.ref_assessment_form_section_identification_system IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_item_response_score_status ADD CONSTRAINT fk_ref_assessment_item_response_score_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Item_Response_Score_Status_Organization ON rs_ceds7_sc.ref_assessment_item_response_score_status IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_item_type ADD CONSTRAINT fk_ref_assessment_item_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Item_Type_Organization ON rs_ceds7_sc.ref_assessment_item_type IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_need_braille_grade_type ADD CONSTRAINT fk_ref_assessment_need_braille_grade_type_id_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Need_Braille_Grade_Type_Id_Organization ON rs_ceds7_sc.ref_assessment_need_braille_grade_type IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_need_braille_status_cell_type ADD CONSTRAINT fk_ref_assessment_need_braille_status_cell_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Need_Braille_Status_Cell_Type_Organization ON rs_ceds7_sc.ref_assessment_need_braille_status_cell_type IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_need_increased_whitespacing_type ADD CONSTRAINT fk_ref_assessment_need_increased_whitespacing_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Need_Increased_Whitespacing_Type_Organization ON rs_ceds7_sc.ref_assessment_need_increased_whitespacing_type IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_need_link_indication_type ADD CONSTRAINT fk_ref_assessment_need_link_indication_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Need_Link_Indication_Type_Organization ON rs_ceds7_sc.ref_assessment_need_link_indication_type IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_need_number_of_braille_dots ADD CONSTRAINT fk_ref_assessment_need_number_of_braille_dots_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Need_Number_Of_Braille_Dots_Organization ON rs_ceds7_sc.ref_assessment_need_number_of_braille_dots IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_need_spoken_source_preference_type ADD CONSTRAINT fk_ref_assessment_need_spoken_source_preference_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Need_Spoken_Source_Preference_Type_Organization ON rs_ceds7_sc.ref_assessment_need_spoken_source_preference_type IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_need_usage_type ADD CONSTRAINT fk_ref_assessment_need_usage_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Need_Usage_Type_Organization ON rs_ceds7_sc.ref_assessment_need_usage_type IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_participation_indicator ADD CONSTRAINT fk_ref_assessment_participation_indicator_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Participation_Indicator_Organization ON rs_ceds7_sc.ref_assessment_participation_indicator IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_pretest_outcome ADD CONSTRAINT fk_ref_assessment_subtest_result_pretest_outcome_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Subtest_Result_Pretest_Outcome_Organization ON rs_ceds7_sc.ref_assessment_pretest_outcome IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_reason_not_completing ADD CONSTRAINT fk_ref_assessment_reason_not_completing_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Reason_Not_Completing_Organization ON rs_ceds7_sc.ref_assessment_reason_not_completing IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_registration_completion_status ADD CONSTRAINT fk_ref_assessment_registration_completion_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Registration_Completion_Status_Organization ON rs_ceds7_sc.ref_assessment_registration_completion_status IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_result_data_type ADD CONSTRAINT fk_ref_assessment_result_data_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Result_Data_Type_Organization ON rs_ceds7_sc.ref_assessment_result_data_type IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_session_special_circumstance_type ADD CONSTRAINT fk_ref_assessment_session_special_circumstance_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Session_Special_Circumstance_Type_Organization ON rs_ceds7_sc.ref_assessment_session_special_circumstance_type IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_session_type ADD CONSTRAINT fk_ref_assessment_session_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Session_Type_Organization ON rs_ceds7_sc.ref_assessment_session_type IS '';

ALTER TABLE rs_ceds7_sc.ref_assessment_type ADD CONSTRAINT fk_ref_assessment_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Type_Organization ON rs_ceds7_sc.ref_assessment_type IS '';

ALTER TABLE rs_ceds7_sc.ref_attendance_event_type ADD CONSTRAINT fk_ref_attendance_event_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Attendance_Event_Type_Organization ON rs_ceds7_sc.ref_attendance_event_type IS '';

ALTER TABLE rs_ceds7_sc.ref_authorizer_type ADD CONSTRAINT fk_ref_authorizer_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Authorizer_Type_Organization ON rs_ceds7_sc.ref_authorizer_type IS '';

ALTER TABLE rs_ceds7_sc.ref_barrier_to_educating_homeless ADD CONSTRAINT fk_ref_barrier_to_educating_homeless_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Barrier_To_Educating_Homeless_Organization ON rs_ceds7_sc.ref_barrier_to_educating_homeless IS '';

ALTER TABLE rs_ceds7_sc.ref_blended_learning_model_type ADD CONSTRAINT fk_ref_blended_learning_model_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Blended_Learning_Model_Type_Organization ON rs_ceds7_sc.ref_blended_learning_model_type IS '';

ALTER TABLE rs_ceds7_sc.ref_building_use_type ADD CONSTRAINT fk_ref_building_use_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Building_Use_Type_Organization ON rs_ceds7_sc.ref_building_use_type IS '';

ALTER TABLE rs_ceds7_sc.ref_calendar_event_type ADD CONSTRAINT fk_ref_calendar_event_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Calendar_Event_Type_Organization ON rs_ceds7_sc.ref_calendar_event_type IS '';

ALTER TABLE rs_ceds7_sc.ref_career_cluster ADD CONSTRAINT fk_ref_career_cluster_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Career_Cluster_Organization ON rs_ceds7_sc.ref_career_cluster IS '';

ALTER TABLE rs_ceds7_sc.ref_carnegie_basic_classification ADD CONSTRAINT fk_ref_carnegie_basic_classification_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Carnegie_Basic_Classification_Organization ON rs_ceds7_sc.ref_carnegie_basic_classification IS '';

ALTER TABLE rs_ceds7_sc.ref_charter_school_management_organization_type ADD CONSTRAINT fk_ref_charter_school_management_organization_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Charter_School_Management_Organization_Type_Organization ON rs_ceds7_sc.ref_charter_school_management_organization_type IS '';

ALTER TABLE rs_ceds7_sc.ref_child_development_associate_type ADD CONSTRAINT fk_ref_child_dev_associate_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Child_Dev_Associate_Type_Organization ON rs_ceds7_sc.ref_child_development_associate_type IS '';

ALTER TABLE rs_ceds7_sc.ref_child_outcomes_summary_rating ADD CONSTRAINT fk_ref_child_outcomes_summary_rating_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Child_Outcomes_Summary_Rating_Organization ON rs_ceds7_sc.ref_child_outcomes_summary_rating IS '';

ALTER TABLE rs_ceds7_sc.ref_cip_use ADD CONSTRAINT fk_ref_cip_use_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Cip_Use_Organization ON rs_ceds7_sc.ref_cip_use IS '';

ALTER TABLE rs_ceds7_sc.ref_classroom_position_type ADD CONSTRAINT fk_ref_classroom_position_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Classroom_Position_Type_Organization ON rs_ceds7_sc.ref_classroom_position_type IS '';

ALTER TABLE rs_ceds7_sc.ref_communication_method ADD CONSTRAINT fk_ref_communication_method_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Communication_Method_Organization ON rs_ceds7_sc.ref_communication_method IS '';

ALTER TABLE rs_ceds7_sc.ref_competency_framework_item_association_type ADD CONSTRAINT fk_ref_competency_framework_item_association_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Competency_Framework_Item_Association_Type_Organization ON rs_ceds7_sc.ref_competency_framework_item_association_type IS '';

ALTER TABLE rs_ceds7_sc.ref_competency_framework_item_testability_type ADD CONSTRAINT fk_ref_competency_framework_item_testability_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Competency_Framework_Item_Testability_Type_Organization ON rs_ceds7_sc.ref_competency_framework_item_testability_type IS '';

ALTER TABLE rs_ceds7_sc.ref_competency_set_completion_criteria ADD CONSTRAINT fk_ref_competency_set_completion_criteria_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Competency_Set_Completion_Criteria_Organization ON rs_ceds7_sc.ref_competency_set_completion_criteria IS '';

ALTER TABLE rs_ceds7_sc.ref_continuation_of_services ADD CONSTRAINT fk_ref_continuation_of_services_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Continuation_Of_Services_Organization ON rs_ceds7_sc.ref_continuation_of_services IS '';

ALTER TABLE rs_ceds7_sc.ref_core_knowledge_area ADD CONSTRAINT fk_ref_core_knowledge_area_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Core_Knowledge_Area_Organization ON rs_ceds7_sc.ref_core_knowledge_area IS '';

ALTER TABLE rs_ceds7_sc.ref_corrective_action_type ADD CONSTRAINT fk_ref_corrective_action_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Corrective_Action_Type_Organization ON rs_ceds7_sc.ref_corrective_action_type IS '';

ALTER TABLE rs_ceds7_sc.ref_county ADD CONSTRAINT fk_ref_county_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_County_Org ON rs_ceds7_sc.ref_county IS '';

ALTER TABLE rs_ceds7_sc.ref_course_applicable_education_level ADD CONSTRAINT fk_ref_course_applicable_education_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Applicable_Education_Level_Organization ON rs_ceds7_sc.ref_course_applicable_education_level IS '';

ALTER TABLE rs_ceds7_sc.ref_course_credit_level_type ADD CONSTRAINT fk_ref_course_credit_level_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Credit_Level_Type_Organization ON rs_ceds7_sc.ref_course_credit_level_type IS '';

ALTER TABLE rs_ceds7_sc.ref_course_gpa_applicability ADD CONSTRAINT fk_ref_course_gpa_applicability_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Gpa_Applicability_Organization ON rs_ceds7_sc.ref_course_gpa_applicability IS '';

ALTER TABLE rs_ceds7_sc.ref_course_instruction_method ADD CONSTRAINT fk_ref_course_instruction_method_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Instruction_Method_Organization ON rs_ceds7_sc.ref_course_instruction_method IS '';

ALTER TABLE rs_ceds7_sc.ref_course_interaction_mode ADD CONSTRAINT fk_ref_course_interaction_mode_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Interaction_Mode_Organization ON rs_ceds7_sc.ref_course_interaction_mode IS '';

ALTER TABLE rs_ceds7_sc.ref_course_level_type ADD CONSTRAINT fk_ref_course_level_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Level_Type_Organization ON rs_ceds7_sc.ref_course_level_type IS '';

ALTER TABLE rs_ceds7_sc.ref_course_section_assessment_reporting_method ADD CONSTRAINT fk_ref_course_section_assessment_reporting_method_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Section_Assessment_Reporting_Method_Organization ON rs_ceds7_sc.ref_course_section_assessment_reporting_method IS '';

ALTER TABLE rs_ceds7_sc.ref_course_section_enrollment_status_type ADD CONSTRAINT fk_ref_course_section_enrollment_status_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Section_Enrollment_Status_Type_Organization ON rs_ceds7_sc.ref_course_section_enrollment_status_type IS '';

ALTER TABLE rs_ceds7_sc.ref_course_section_exit_type ADD CONSTRAINT fk_ref_course_section_exit_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Section_Exit_Type_Organization ON rs_ceds7_sc.ref_course_section_exit_type IS '';

ALTER TABLE rs_ceds7_sc.ref_credential_identifier_system ADD CONSTRAINT fk_ref_credential_identifier_system_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Credential_Identifier_System_Organization ON rs_ceds7_sc.ref_credential_identifier_system IS '';

ALTER TABLE rs_ceds7_sc.ref_credential_status_type ADD CONSTRAINT fk_ref_credential_status_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Credential_Status_Type_Organization ON rs_ceds7_sc.ref_credential_status_type IS '';

ALTER TABLE rs_ceds7_sc.ref_credential_verification_type ADD CONSTRAINT fk_ref_credential_verification_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Credential_Verification_Type_Organization ON rs_ceds7_sc.ref_credential_verification_type IS '';

ALTER TABLE rs_ceds7_sc.ref_credit_type_earned ADD CONSTRAINT fk_ref_credit_type_earned_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Credit_Type_Earned_Organization ON rs_ceds7_sc.ref_credit_type_earned IS '';

ALTER TABLE rs_ceds7_sc.ref_cte_graduation_rate_inclusion ADD CONSTRAINT fk_ref_cte_graduation_rate_inclusion_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES rs_ceds7_sc.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_CTE_Graduation_Rate_Inclusion_Organization ON rs_ceds7_sc.ref_cte_graduation_rate_inclusion IS '';
INSERT INTO rs_ceds7_sc.ref_grade_level_type( Ref_Grade_Level_Type_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 1, 'Entry Grade Level', '000100', null, null, null ); 
INSERT INTO rs_ceds7_sc.ref_grade_level_type( Ref_Grade_Level_Type_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 2, 'Grade Level When Course Taken', '000125', null, null, null ); 
INSERT INTO rs_ceds7_sc.ref_grade_level_type( Ref_Grade_Level_Type_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 3, 'Grade Level When Assessed', '000126', null, null, null ); 
INSERT INTO rs_ceds7_sc.ref_grade_level_type( Ref_Grade_Level_Type_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 4, 'Grades Offered', '000131', null, null, null ); 
INSERT INTO rs_ceds7_sc.ref_grade_level_type( Ref_Grade_Level_Type_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 5, 'Assessment Level for Which Designed', '000177', null, null, null ); 
INSERT INTO rs_ceds7_sc.ref_grade_level_type( Ref_Grade_Level_Type_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6, 'Assessment Registration Grade Level To Be Assessed', '001057', null, null, null ); 
INSERT INTO rs_ceds7_sc.ref_grade_level_type( Ref_Grade_Level_Type_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7, 'Exit Grade Level', '001210', null, null, null ); 

