USE [master];

/****** Object:  Database [tsql_ceds7_sc] ******/
CREATE DATABASE [tsql_ceds7_sc];

ALTER DATABASE [tsql_ceds7_sc] SET COMPATIBILITY_LEVEL = 100;

IF (1 = FULLTEXTSERVICEPROPERTY('Is_Full_Text_Installed'))
begin
EXEC [tsql_ceds7_sc].[dbo].[sp_fulltext_database] @action = 'enable'
end;

ALTER DATABASE [tsql_ceds7_sc] SET ANSI_NULL_DEFAULT OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET ANSI_NULLS OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET ANSI_PADDING OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET ANSI_WARNINGS OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET ARITHABORT OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET AUTO_CLOSE OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET AUTO_CREATE_STATISTICS ON ;

ALTER DATABASE [tsql_ceds7_sc] SET AUTO_SHRINK OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET AUTO_UPDATE_STATISTICS ON ;

ALTER DATABASE [tsql_ceds7_sc] SET CURSOR_CLOSE_ON_COMMIT OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET CURSOR_DEFAULT  GLOBAL ;

ALTER DATABASE [tsql_ceds7_sc] SET CONCAT_NULL_YIELDS_NULL OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET NUMERIC_ROUNDABORT OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET QUOTED_IDENTIFIER OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET RECURSIVE_TRIGGERS OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET  ENABLE_BROKER ;

ALTER DATABASE [tsql_ceds7_sc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET DATE_CORRELATION_OPTIMIZATION OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET TRUSTWORTHY OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET ALLOW_SNAPSHOT_ISOLATION OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET PARAMETERIZATION SIMPLE ;

ALTER DATABASE [tsql_ceds7_sc] SET READ_COMMITTED_SNAPSHOT OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET HONOR_BROKER_PRIORITY OFF ;

ALTER DATABASE [tsql_ceds7_sc] SET  READ_WRITE ;

ALTER DATABASE [tsql_ceds7_sc] SET RECOVERY FULL ;

ALTER DATABASE [tsql_ceds7_sc] SET  MULTI_USER ;

ALTER DATABASE [tsql_ceds7_sc] SET PAGE_VERIFY CHECKSUM  ;

ALTER DATABASE [tsql_ceds7_sc] SET DB_CHAINING OFF ;

USE [tsql_ceds7_sc];

/****** Object:  User_Defined_Function [dbo].[fn_Split] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;



CREATE FUNCTION [dbo].[fn_Split](@_String varchar(MAX), @_Delimiter char(1))       
returns @temptable TABLE (_Item varchar(MAX), Row_Number int)       
as       
begin      
    declare @idx int       
    declare @slice varchar(8000)   
    declare @rn int = 1 -- row number that increments with each value in the delimited string
    select @idx = 1       
        if len(@_String)<1 or @_String is null  return       
    while @idx!= 0       
    begin       
        set @idx = charindex(@_Delimiter,@_String)       
        if @idx!=0       
            set @slice = left(@_String,@idx - 1)   
        else       
            set @slice = @_String       
        if(len(@slice)>0)  
            insert into @temptable(_Item, Row_Number) values(@slice, @rn)       
        set @_String = right(@_String,len(@_String) - @idx)       
        set @rn = @rn +1
        if len(@_String) = 0 break       
    end   
return 
end;
;

/****** Object:  Table [dbo].[_CEDS_Elements] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

SET ANSI_PADDING ON;

CREATE TABLE [dbo].[_CEDS_Elements](
	[Global_ID] [varchar](20) NULL,
	[Element_Name] [varchar](150) NOT NULL,
	[Alt_Name] [varchar](150) NULL,
	[Definition] [varchar](max) NOT NULL,
	[Format] [varchar](150) NULL,
	[Has_Option_Set] [bit] NOT NULL,
	[Usage_Notes] [varchar](max) NULL,
	[URL] [varchar](512) NULL,
	[Version] [varchar](20) NULL,
	[Term_ID] [int] IDENTITY(2000,1) NOT NULL,
 CONSTRAINT [PK_CEDS_Elements] PRIMARY KEY CLUSTERED 
(
	[Term_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

SET ANSI_PADDING OFF;

/****** Object:  Table [dbo].[_CEDS_to_NDS_Mapping] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

SET ANSI_PADDING ON;

CREATE TABLE [dbo].[_CEDS_to_NDS_Mapping](
	[Global_ID] [varchar](20) NOT NULL,
	[Table_Name] [varchar](100) NOT NULL,
	[Column_Name] [varchar](100) NULL,
 CONSTRAINT [IX_Global_ID_Table_Name_Column_Name] UNIQUE NONCLUSTERED 
(
	[Global_ID] ASC,
	[Table_Name] ASC,
	[Column_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

SET ANSI_PADDING OFF;

/****** Object:  Table [dbo].[Activity] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Activity](
	[Organization_Id] [int] NOT NULL,
	[Activity_Description] [nvarchar](300) NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Activity_Recognition] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Activity_Recognition](
	[Activity_Recognition_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Activity_Recognition_Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_Activity_Recognition] PRIMARY KEY CLUSTERED 
(
	[Activity_Recognition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ae_Course] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ae_Course](
	[Organization_Id] [int] NOT NULL,
	[Ref_Course_Level_Type_Id] [int] NULL,
	[Ref_Career_Cluster_Id] [int] NULL,
 CONSTRAINT [PK_Ae_Course] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ae_Provider] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ae_Provider](
	[Organization_Id] [int] NOT NULL,
	[Ref_Level_Of_Institution_Id] [int] NOT NULL,
 CONSTRAINT [PK_AE_Provider] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ae_Staff] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ae_Staff](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Ae_Staff_Classification_Id] [int] NULL,
	[Ref_Ae_Staff_Employment_Status_Id] [int] NULL,
	[Years_Of_Prior_Ae_Teaching_Experience] [decimal](4, 2) NULL,
	[Ref_Ae_Certification_Type_Id] [int] NULL,
 CONSTRAINT [PK_AE_Staff] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ae_Student_Academic_Record] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ae_Student_Academic_Record](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_High_School_Diploma_Type_Id] [int] NULL,
	[Diploma_Or_Credential_Award_Date] [nchar](7) NULL,
	[Ref_Professional_Technical_Credential_Type_Id] [int] NULL,
 CONSTRAINT [PK_Ae_Student_Academic_Record] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ae_Student_Employment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ae_Student_Employment](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Employed_While_Enrolled_Id] [int] NULL,
	[Ref_Employed_After_Exit_Id] [int] NULL,
	[Employment_Naics_Code] [nchar](6) NULL,
 CONSTRAINT [PK_Ae_Student_Employment] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Apip_Interaction] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Apip_Interaction](
	[Apip_Interaction_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Item_Id] [int] NOT NULL,
	[Ref_Apip_Interaction_Type_Id] [int] NULL,
	[Xml] [nvarchar](max) NULL,
	[Sequence_Number] [int] NULL,
	[APIP_Interaction_Sequence_Number] [decimal](9, 2) NULL,
 CONSTRAINT [PK_Apip_Interaction] PRIMARY KEY CLUSTERED 
(
	[Apip_Interaction_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Application] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Application](
	[Application_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NOT NULL,
	[Uri] [nvarchar](512) NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[Application_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment](
	[Assessment_Id] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[Identification_System] [int] NULL,
	[GUID] [nvarchar](40) NULL,
	[Title] [nvarchar](60) NULL,
	[Short_Name] [nvarchar](30) NULL,
	[Ref_Academic_Subject_Id] [int] NOT NULL,
	[Objective] [nvarchar](100) NULL,
	[Provider] [nvarchar](30) NULL,
	[Ref_Assessment_Purpose_Id] [int] NULL,
	[Ref_Assessment_Type_Id] [int] NULL,
	[Ref_Assessment_Type_Children_With_Disabilities_Id] [int] NULL,
	[Assessment_Revision_Date] [date] NULL,
	[Assessment_Family_Title] [nvarchar](60) NOT NULL,
	[Assessment_Family_Short_Name] [nvarchar](30) NULL,
 CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED 
(
	[Assessment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Assessment_Administration] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Assessment_Administration](
	[Assessment_Assessment_Administration_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Id] [int] NOT NULL,
	[Assessment_Administration_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Assessment_Administration] PRIMARY KEY CLUSTERED 
(
	[Assessment_Assessment_Administration_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Assessment_Assessment_Administration] UNIQUE NONCLUSTERED 
(
	[Assessment_Id] ASC,
	[Assessment_Administration_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Accommodation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Accommodation](
	[Assessment_Accommodation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Other_Description] [nvarchar](30) NULL,
	[Ref_Accommodation_Type_Id] [int] NULL,
	[Ref_Assessment_Accommodation_Category_Id] [int] NULL,
 CONSTRAINT [PK_Assessment_Accommodation] PRIMARY KEY CLUSTERED 
(
	[Assessment_Accommodation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Administration] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Administration](
	[Assessment_Administration_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Id] [int] NULL,
	[Name] [nvarchar](30) NULL,
	[Code] [nvarchar](30) NULL,
	[Start_Date] [date] NULL,
	[Start_Time] [time](7) NULL,
	[Finish_Date] [date] NULL,
	[Finish_Time] [time](7) NULL,
	[Ref_Assessment_Reporting_Method_Id] [int] NULL,
	[Assessment_Secure_Indicator] [bit] NULL,
	[Assessment_Administration_Period_Description] [nvarchar](300) NULL,
 CONSTRAINT [PK_Assessment_Administration] PRIMARY KEY CLUSTERED 
(
	[Assessment_Administration_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Administration_Organization] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Administration_Organization](
	[Assessment_Administration_Organization_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Administration_Id] [int] NOT NULL,
	[Organization_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Administration_Organization] PRIMARY KEY CLUSTERED 
(
	[Assessment_Administration_Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Assessment_Administration_Organization] UNIQUE NONCLUSTERED 
(
	[Assessment_Administration_Id] ASC,
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Asset] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Asset](
	[Assessment_Asset_Id] [int] IDENTITY(1,1) NOT NULL,
	[Version] [nvarchar](30) NULL,
	[Published_Date] [date] NULL,
	[Identifier] [nvarchar](40) NULL,
	[Ref_Assessment_Assest_Identifier_Type] [int] NULL,
	[Name] [nvarchar](60) NULL,
	[Ref_Assessment_Asset_Type_Id] [int] NULL,
	[Owner] [nvarchar](60) NULL,
	[Ref_Assessment_Language_Id] [int] NULL,
	[Content_XML] [nvarchar](max) NULL,
	[Content_Mime_Type] [nvarchar](max) NULL,
	[Content_Url] [nvarchar](512) NULL,
	[Learning_Resource_Id] [int] NULL,
 CONSTRAINT [PK_Assessment_Asset] PRIMARY KEY CLUSTERED 
(
	[Assessment_Asset_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_EL_Developmental_Domain] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_EL_Developmental_Domain](
	[Assessment_EL_Developmental_Domain_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Id] [int] NOT NULL,
	[Ref_Assessment_EL_Developmental_Domain_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_EL_Developmental_Domain] PRIMARY KEY CLUSTERED 
(
	[Assessment_EL_Developmental_Domain_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Assessment_EL_Developmental_Domain] UNIQUE NONCLUSTERED 
(
	[Assessment_Id] ASC,
	[Ref_Assessment_EL_Developmental_Domain_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Form] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Form](
	[Assessment_Form_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Id] [int] NOT NULL,
	[Form_Number] [nvarchar](30) NULL,
	[Name] [nvarchar](40) NULL,
	[Version] [nvarchar](30) NULL,
	[Published_Date] [date] NULL,
	[Accommodation_List] [nvarchar](max) NULL,
	[Intended_Administration_Start_Date] [date] NULL,
	[Intended_Administration_End_Date] [date] NULL,
	[Assessment_Item_Bank_Identifier] [nvarchar](40) NULL,
	[Assessment_Item_Bank_Name] [nvarchar](60) NULL,
	[Platforms_Supported] [nvarchar](max) NULL,
	[Ref_Assessment_Language_Id] [int] NULL,
	[Assessment_Secure_Indicator] [bit] NULL,
	[Learning_Resource_Id] [int] NULL,
	[Assessment_Form_Adaptive_Indicator] [bit] NULL,
	[Assessment_Form_Algorithm_Identifier] [nvarchar](40) NULL,
	[Assessment_Form_Algorithm_Version] [nvarchar](40) NULL,
	[Assessment_Form_GUID] [nvarchar](40) NULL,
 CONSTRAINT [PK_Assessment_Form] PRIMARY KEY CLUSTERED 
(
	[Assessment_Form_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Form_Assessment_Asset] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Form_Assessment_Asset](
	[Assessment_Form_Assessment_Asset_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Form_Id] [int] NOT NULL,
	[Assessment_Asset_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Form_Assessment_Asset] PRIMARY KEY CLUSTERED 
(
	[Assessment_Form_Assessment_Asset_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Assessment_Form_Assessment_Asset] UNIQUE NONCLUSTERED 
(
	[Assessment_Form_Id] ASC,
	[Assessment_Asset_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Form_Assessment_Form_Section] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Form_Assessment_Form_Section](
	[Assessment_Form_Assessment_Form_Section_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Form_Id] [int] NOT NULL,
	[Assessment_Form_Section_Id] [int] NOT NULL,
	[Sequence_Number] [int] NULL,
 CONSTRAINT [PK_Assessment_Form_Assessment_Form_Section] PRIMARY KEY CLUSTERED 
(
	[Assessment_Form_Assessment_Form_Section_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Form_Section] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Form_Section](
	[Assessment_Form_Section_Id] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[Ref_Assessment_Form_Section_Identification_System_Id] [int] NULL,
	[Published_Date] [date] NULL,
	[Version] [nvarchar](30) NULL,
	[Section_Time_Limit] [time](7) NULL,
	[Section_Sealed] [bit] NULL,
	[Section_Reentry] [bit] NULL,
	[Assessment_Item_Bank_Identifier] [nvarchar](40) NULL,
	[Assessment_Item_Bank_Name] [nvarchar](60) NULL,
	[Child_Of_Form_Section_Id] [int] NULL,
	[Learning_Resource_Id] [int] NULL,
	[GUID] [nvarchar](40) NULL,
 CONSTRAINT [PK_Assessment_Form_Section] PRIMARY KEY CLUSTERED 
(
	[Assessment_Form_Section_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Form_Section_Assessment_Asset] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Form_Section_Assessment_Asset](
	[Assessment_Form_Section_Assessment_Asset_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Form_Section_Id] [int] NOT NULL,
	[Assessment_Asset_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Form_Section_Assessment_Asset_1] PRIMARY KEY CLUSTERED 
(
	[Assessment_Form_Section_Assessment_Asset_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Assessment_Form_Section_Assessment_Asset] UNIQUE NONCLUSTERED 
(
	[Assessment_Form_Section_Id] ASC,
	[Assessment_Asset_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Form_Section_Assessment_Item] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Form_Section_Assessment_Item](
	[Assessment_Form_Section_Item_Id] [int] IDENTITY(1,1) NOT NULL,
	[Sequence_Number] [int] NOT NULL,
	[Assessment_Form_Section_Id] [int] NOT NULL,
	[Assessment_Item_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Form_Section_Assessment_Item] PRIMARY KEY CLUSTERED 
(
	[Assessment_Form_Section_Item_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Item] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Item](
	[Assessment_Item_Id] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[Assessment_Item_Bank_Identifier] [nvarchar](40) NULL,
	[Assessment_Item_Bank_Name] [nvarchar](60) NULL,
	[Ref_Assessment_Item_Type_Id] [int] NULL,
	[Body_Text] [nvarchar](max) NULL,
	[Stimulus] [nvarchar](max) NULL,
	[Stem] [nvarchar](max) NULL,
	[Adaptive_Indicator] [bit] NULL,
	[Maximum_Score] [nvarchar](300) NULL,
	[Minimum_Score] [nvarchar](300) NULL,
	[Distractor_Analysis] [nvarchar](100) NULL,
	[Allotted_Time] [time](7) NULL,
	[Ref_Naep_Math_Complexity_Level_Id] [int] NULL,
	[Ref_Naep_Aspects_Of_Reading_Id] [int] NULL,
	[Difficulty] [decimal](5, 2) NULL,
	[Ref_Text_Complexity_System_Id] [int] NULL,
	[Text_Complexity_Value] [nvarchar](30) NULL,
	[Linking_Item_Indicator] [bit] NULL,
	[Release_Status] [bit] NULL,
	[Rubric_Id] [int] NULL,
	[Learning_Resource_Id] [int] NULL,
	[Assessment_Form_Section_Item_Field_Test_Indicator] [bit] NULL,
 CONSTRAINT [PK_Assessment_Item] PRIMARY KEY CLUSTERED 
(
	[Assessment_Item_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Item_Apip] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Item_Apip](
	[Assessment_Item_Id] [int] NOT NULL,
	[Adaptive_Indicator] [bit] NULL,
	[Response_Processing_Template_Url] [nvarchar](512) NULL,
	[Response_Processing_Xml] [nvarchar](max) NULL,
	[Response_Declaration_Xml] [nvarchar](max) NULL,
	[Outcome_Declaration_Xml] [nvarchar](max) NULL,
	[Template_Declaration_Xml] [nvarchar](max) NULL,
	[Template_Processing_Xml] [nvarchar](max) NULL,
	[Modal_Feedback_Xml] [nvarchar](max) NULL,
	[Item_Body_Xml] [nvarchar](max) NULL,
 CONSTRAINT [PK_Assessment_Item_Body] PRIMARY KEY CLUSTERED 
(
	[Assessment_Item_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Item_Apip_Description] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Item_Apip_Description](
	[Assessment_Item_Id] [int] NOT NULL,
	[Ref_Hazard_Type_Id] [int] NULL,
	[Ref_Support_Tool_Type_Id] [int] NULL,
	[Cognitive_Guidance_Activate_By_Default_Indicator] [bit] NULL,
	[Cognitive_Guidance_Assigned_Support_Indicator] [bit] NULL,
	[Scaffolding_Assigned_Support_Indicator] [bit] NULL,
	[Scaffolding_Activate_By_Default_Indicator] [bit] NULL,
	[Chunking_Assigned_Support_Indicator] [bit] NULL,
	[Chunking_Activate_By_Default_Indicator] [bit] NULL,
	[Keyword_Emphasis_Assigned_Support_Indicator] [bit] NULL,
	[Keyword_Emphasis_Activate_By_Default_Indicator] [bit] NULL,
	[Reduced_Answers_Assigned_Support_Indicator] [bit] NULL,
	[Reduced_Answers_Activate_By_Default_Indicator] [bit] NULL,
	[Negatives_Removed_Assigned_Support_Indicator] [bit] NULL,
	[Negatives_Removed_Activate_By_Default_Indicator] [bit] NULL,
	[Ref_Keyword_Translation_Language_Id] [int] NULL,
	[Keyword_Translations_Assigned_Support_Indicator] [bit] NULL,
	[Keyword_Translations_Activate_By_Default_Indicator] [bit] NULL,
	[Braille_Indicator] [bit] NULL,
	[Text_Only_Indicator] [bit] NULL,
	[Text_Only_On_Demand_Indicator] [bit] NULL,
	[Text_Graphics_Indicator] [bit] NULL,
	[Graphics_Only_Indicator] [bit] NULL,
	[Non_Visual_Indicator] [bit] NULL,
	[Asl_Indicator] [bit] NULL,
	[Asl_On_Demand_Indicator] [bit] NULL,
	[Signed_English_Indicator] [bit] NULL,
	[Signed_English_On_Demand_Indicator] [bit] NULL,
 CONSTRAINT [PK_Assessment_Item_Apip_Description] PRIMARY KEY CLUSTERED 
(
	[Assessment_Item_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Item_Characteristic] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Item_Characteristic](
	[Assessment_Item_Characteristic_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Item_Id] [int] NOT NULL,
	[Ref_Assessment_Item_Characteristic_Type_Id] [int] NULL,
	[Value] [nvarchar](30) NULL,
	[Response_Choice_Pattern] [nvarchar](100) NULL,
 CONSTRAINT [PK_Assessment_Item_Characteristic] PRIMARY KEY CLUSTERED 
(
	[Assessment_Item_Characteristic_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Item_Possible_Response] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Item_Possible_Response](
	[Assessment_Item_Possible_Response_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Item_Id] [int] NOT NULL,
	[Possible_Response_Option] [nvarchar](max) NULL,
	[Value] [nvarchar](300) NULL,
	[Correct_Indicator] [bit] NULL,
	[Feedback_Message] [nvarchar](300) NULL,
	[Sequence_Number] [int] NULL,
 CONSTRAINT [PK_Assessment_Item_Possible_Response] PRIMARY KEY CLUSTERED 
(
	[Assessment_Item_Possible_Response_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Item_Response] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Item_Response](
	[Assessment_Item_Response_Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](300) NULL,
	[Score_Value] [nvarchar](60) NULL,
	[Ref_Assess_Item_Response_Status_Id] [int] NULL,
	[Ref_Proficiency_Status_Id] [int] NULL,
	[Aid_Set_Used] [nvarchar](30) NULL,
	[Descriptive_Feedback] [nvarchar](300) NULL,
	[Scaffolding_Item_Flag] [bit] NULL,
	[Hint_Count] [int] NULL,
	[Hint_Included_Answer] [bit] NULL,
	[Duration] [time](7) NULL,
	[First_Attempt_Duration] [time](7) NULL,
	[Start_Time] [time](7) NULL,
	[Start_Date] [date] NULL,
	[Security_Issue] [nvarchar](300) NULL,
	[Assessment_Item_Id] [int] NOT NULL,
	[Assessment_Participant_Session_Id] [int] NOT NULL,
	[Result_XML] [nvarchar](max) NULL,
	[Assessment_Item_Response_Descriptive_Feedback_Date] [datetime] NULL,
	[Ref_Assessment_Item_Response_Score_Status_Id] [int] NULL,
 CONSTRAINT [PK_Assessment_Item_Response] PRIMARY KEY CLUSTERED 
(
	[Assessment_Item_Response_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Item_Response_Theory] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Item_Response_Theory](
	[Assessment_Item_Id] [int] NOT NULL,
	[Parameter_A] [int] NULL,
	[Parameter_B] [int] NULL,
	[Ref_Item_Response_Theory_Difficulty_Category_Id] [int] NULL,
	[Parameter_C] [int] NULL,
	[Parameter_D1] [int] NULL,
	[Parameter_D2] [int] NULL,
	[Parameter_D3] [int] NULL,
	[Parameter_D4] [int] NULL,
	[Parameter_D5] [int] NULL,
	[Parameter_D6] [int] NULL,
	[Point_Biserial_Correlation_Value] [int] NULL,
	[DIF_Value] [int] NULL,
	[Kappa_Value] [int] NULL,
	[Ref_Item_Response_Theory_Kappa_Algorithm_Id] [int] NULL,
 CONSTRAINT [PK_Assessment_Item_Response_Theory] PRIMARY KEY CLUSTERED 
(
	[Assessment_Item_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Item_Rubric_Criterion_Result] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Item_Rubric_Criterion_Result](
	[Assessment_Item_Response_Id] [int] NOT NULL,
	[Rubric_Criterion_Level_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Item_Rubric_Criterion_Result] PRIMARY KEY CLUSTERED 
(
	[Assessment_Item_Response_Id] ASC,
	[Rubric_Criterion_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Language] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Language](
	[Assessment_Language_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Id] [int] NOT NULL,
	[Ref_Language_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Language_1] PRIMARY KEY CLUSTERED 
(
	[Assessment_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Assessment_Language] UNIQUE NONCLUSTERED 
(
	[Assessment_Id] ASC,
	[Ref_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Levels_For_Which_Designed] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Levels_For_Which_Designed](
	[Assessment_Levels_For_Which_Designed_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Id] [int] NOT NULL,
	[Ref_Grade_Level_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Levels_For_Which_Designed] PRIMARY KEY CLUSTERED 
(
	[Assessment_Levels_For_Which_Designed_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Assessment_Levels_For_Which_Designed] UNIQUE NONCLUSTERED 
(
	[Assessment_Id] ASC,
	[Ref_Grade_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Need_Apip_Content] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Need_Apip_Content](
	[Assessment_Need_Apip_Content_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Personal_Needs_Profile_Content_Id] [int] NOT NULL,
	[Item_Translation_Display_Language_Type_Id] [int] NULL,
	[Keyword_Translation_Language_Type_Id] [int] NULL,
	[Ref_Assessment_Need_Signing_Type_Id] [int] NULL,
	[Ref_Assessment_Need_Alternative_Representation_Type_Id] [int] NULL,
	[Ref_Assessment_Need_Spoken_Source_Preference_Type_Id] [int] NULL,
	[Read_At_Start_Preference_Indicator] [bit] NULL,
	[Ref_Assessment_Need_User_Spoken_Preference_Type_Id] [int] NULL,
	[Assessment_Need_Directions_Only_Indicator] [bit] NULL,
 CONSTRAINT [PK_Assessment_Need_Apip_Content] PRIMARY KEY CLUSTERED 
(
	[Assessment_Need_Apip_Content_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Need_Apip_Control] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Need_Apip_Control](
	[Assessment_Need_Apip_Control_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Personal_Needs_Profile_Control_Id] [int] NOT NULL,
	[Assessment_Need_Time_Multiplier] [nvarchar](9) NULL,
	[Line_Reader_Highlight_Color] [nchar](6) NULL,
	[Overlay_Color] [nchar](6) NULL,
	[Background_Color] [nchar](6) NULL,
	[Ref_Assessment_Need_Increased_Whitespacing_Type_Id] [int] NULL,
 CONSTRAINT [PK_Assessment_Need_Apip_Control] PRIMARY KEY CLUSTERED 
(
	[Assessment_Need_Apip_Control_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Need_Apip_Display] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Need_Apip_Display](
	[Assessment_Need_Apip_Display_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Personal_Needs_Profile_Display_Id] [int] NOT NULL,
	[Masking_Assigned_Support_Indicator] [bit] NULL,
	[Masking_Activate_By_Default_Indicator] [bit] NULL,
	[Ref_Assessment_Need_Masking_Type_Id] [int] NULL,
	[Encouragement_Assigned_Support_Indicator] [bit] NULL,
	[Encouragement_Activate_By_Default_Indicator] [bit] NULL,
	[Encouragement_Text_Messaging_String] [nvarchar](4000) NULL,
	[Encouragement_Sound_File_Url] [nvarchar](512) NULL,
 CONSTRAINT [PK_Assessment_Need_Apip_Display] PRIMARY KEY CLUSTERED 
(
	[Assessment_Need_Apip_Display_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Need_Braille] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Need_Braille](
	[Assessment_Need_Braille_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Personal_Needs_Profile_Display_Id] [int] NULL,
	[Ref_Assessment_Need_Usage_Type_Id] [int] NULL,
	[Ref_Assessment_Need_Braille_Grade_Type_Id] [int] NULL,
	[Ref_Assessment_Need_Number_Of_Braille_Dots_Id] [int] NULL,
	[Number_Of_Braille_Cells] [int] NULL,
	[Ref_Assessment_Need_Braille_Mark_Type_Id] [int] NULL,
	[Braille_Dot_Pressure] [decimal](10, 4) NULL,
	[Ref_Assessment_Need_Braille_Status_Cell_Type_Id] [int] NULL,
 CONSTRAINT [PK_Assessment_Need_Braille] PRIMARY KEY CLUSTERED 
(
	[Assessment_Need_Braille_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Need_Screen_Enhancement] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Need_Screen_Enhancement](
	[Assessment_Need_Screen_Enhancement_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Personal_Needs_Profile_Display_Id] [int] NOT NULL,
	[Invert_Color_Choice] [bit] NULL,
	[Magnification] [decimal](10, 4) NULL,
	[Assessment_Personal_Needs_Profile_Screen_Enhancement_Id] [int] NULL,
	[Foreground_Color] [nchar](6) NULL,
 CONSTRAINT [PK_Assessment_Need_Screen_Enhancement] PRIMARY KEY CLUSTERED 
(
	[Assessment_Need_Screen_Enhancement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Participant_Session] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Participant_Session](
	[Assessment_Participant_Session_Id] [int] IDENTITY(1,1) NOT NULL,
	[Actual_Start_Date_Time] [datetime] NULL,
	[Actual_End_Date_Time] [datetime] NULL,
	[Time_Assessed] [nvarchar](30) NULL,
	[Ref_Assessment_Platform_Type_Id] [int] NULL,
	[Delivery_Device_Details] [nvarchar](300) NULL,
	[Security_Issue] [nvarchar](300) NULL,
	[Ref_Assessment_Session_Special_Circumstance_Type_Id] [int] NULL,
	[Special_Event_Description] [nvarchar](60) NULL,
	[Location_Id] [int] NULL,
	[Ref_Language_Id] [int] NULL,
	[Assessment_Form_Section_Id] [int] NULL,
	[Assessment_Session_Id] [int] NOT NULL,
	[Assessment_Registration_Id] [int] NULL,
	[Assessment_Participant_Session_Database_Name] [nvarchar](300) NULL,
	[Assessment_Participant_Session_GUID] [nvarchar](40) NULL,
	[Platform_User_Agent] [nvarchar](512) NULL,
 CONSTRAINT [PK_Assessment_Participant_Session] PRIMARY KEY CLUSTERED 
(
	[Assessment_Participant_Session_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Participant_Session_Accommodation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Participant_Session_Accommodation](
	[Assessment_Participant_Session_Accommodation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Participant_Session_Id] [int] NOT NULL,
	[Assessment_Accommodation_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Participant_Session_Accomodation] PRIMARY KEY CLUSTERED 
(
	[Assessment_Participant_Session_Accommodation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Performance_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Performance_Level](
	[Assessment_Performance_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[Assessment_Subtest_Id] [int] NULL,
	[Score_Metric] [nvarchar](30) NULL,
	[Label] [nvarchar](20) NULL,
	[Lower_Cut_Score] [nvarchar](30) NULL,
	[Upper_Cut_Score] [nvarchar](30) NULL,
	[Descriptive_Feedback] [nvarchar](max) NULL,
 CONSTRAINT [PK_Assessment_Performance_Level] PRIMARY KEY CLUSTERED 
(
	[Assessment_Performance_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Personal_Need_Language_Learner] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Personal_Need_Language_Learner](
	[Assessment_Personal_Need_Language_Learner_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Needs_Profile_Content_Id] [int] NOT NULL,
	[Assigned_Support] [bit] NULL,
	[Activate_By_Default] [bit] NULL,
	[Ref_Assessment_Needs_Profile_Content_Language_Learner_Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Needs_Profile_Content_Language_Learner] PRIMARY KEY CLUSTERED 
(
	[Assessment_Personal_Need_Language_Learner_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Personal_Need_Screen_Reader] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Personal_Need_Screen_Reader](
	[Assessment_Personal_Need_Screen_Reader_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Personal_Needs_Profile_Display_Id] [int] NOT NULL,
	[Ref_Assessment_Need_Usage_Type_Id] [int] NULL,
	[Speech_Rate] [int] NULL,
	[Pitch] [decimal](10, 4) NULL,
	[Volume] [decimal](10, 4) NULL,
	[Ref_Assessment_Need_Link_Indication_Type_Id] [int] NULL,
 CONSTRAINT [PK_Assessment_Personal_Need_Screen_Reader] PRIMARY KEY CLUSTERED 
(
	[Assessment_Personal_Need_Screen_Reader_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Personal_Needs_Profile] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Personal_Needs_Profile](
	[Assessment_Personal_Needs_Profile_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Need_Type] [nvarchar](max) NOT NULL,
	[Assigned_Support_Flag] [bit] NULL,
	[Activate_By_Default] [bit] NULL,
 CONSTRAINT [PK_Assessment_Needs_Profile] PRIMARY KEY CLUSTERED 
(
	[Assessment_Personal_Needs_Profile_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Personal_Needs_Profile_Content] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Personal_Needs_Profile_Content](
	[Assessment_Personal_Needs_Profile_Content_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Personal_Needs_Profile_Id] [int] NOT NULL,
	[Ref_Assessment_Need_Hazard_Type_Id] [int] NULL,
	[Ref_Assessment_Need_Support_Tool_Id] [int] NULL,
	[Cognitive_Guidance_Activate_By_Default_Indicator] [bit] NULL,
	[Cognitive_Guidance_Assigned_Support_Indicator] [bit] NULL,
	[Scaffolding_Assigned_Support_Indicator] [bit] NULL,
	[Scaffolding_Activate_By_Default_Indicator] [bit] NULL,
	[Chunking_Assigned_Support_Indicator] [bit] NULL,
	[Chunking_Activate_By_Default_Indicator] [bit] NULL,
	[Keyword_Emphasis_Assigned_Support_Indicator] [bit] NULL,
	[Keyword_Emphasis_Activate_By_Default_Indicator] [bit] NULL,
	[Reduced_Answers_Assigned_Support_Indicator] [bit] NULL,
	[Reduced_Answers_Activate_By_Default_Indicator] [bit] NULL,
	[Negatives_Removed_Assigned_Support_Indicator] [bit] NULL,
	[Negatives_Removed_Activate_By_Default_Indicator] [bit] NULL,
	[Ref_Keyword_Translations_Language_Id] [int] NULL,
	[Keyword_Translations_Assigned_Support_Indicator] [bit] NULL,
	[Keyword_Translations_Activate_By_Default_Indicator] [bit] NULL,
 CONSTRAINT [PK_Assessment_Needs_Profile_Content] PRIMARY KEY CLUSTERED 
(
	[Assessment_Personal_Needs_Profile_Content_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Personal_Needs_Profile_Control] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Personal_Needs_Profile_Control](
	[Assessment_Personal_Needs_Profile_Control_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Personal_Needs_Profile_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Personal_Needs_Profile_Control] PRIMARY KEY CLUSTERED 
(
	[Assessment_Personal_Needs_Profile_Control_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Personal_Needs_Profile_Display] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Personal_Needs_Profile_Display](
	[Assessment_Personal_Needs_Profile_Display_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Personal_Needs_Profile_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Personal_Needs_Profile_Display] PRIMARY KEY CLUSTERED 
(
	[Assessment_Personal_Needs_Profile_Display_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Personal_Needs_Profile_Screen_Enhancement] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Personal_Needs_Profile_Screen_Enhancement](
	[Assessment_Personal_Needs_Profile_Screen_Enhancement_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Personal_Needs_Profile_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Personal_Needs_Profile_Screen_Enhancement] PRIMARY KEY CLUSTERED 
(
	[Assessment_Personal_Needs_Profile_Screen_Enhancement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Registration] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Registration](
	[Assessment_Registration_Id] [int] IDENTITY(1,1) NOT NULL,
	[Creation_Date] [datetime] NULL,
	[Days_Of_Instruction_Prior_To_Assessment] [int] NULL,
	[Score_Publish_Date] [date] NULL,
	[Test_Attempt_Identifier] [nvarchar](40) NULL,
	[Retest_Indicator] [bit] NULL,
	[Course_Section_Organization_Id] [int] NULL,
	[Ref_Assessment_Participation_Indicator_Id] [int] NULL,
	[Testing_Indicator] [nvarchar](300) NULL,
	[Ref_Assessment_Purpose_Id] [int] NULL,
	[Ref_Assessment_Reason_Not_Tested_Id] [int] NULL,
	[Ref_Assessment_Reason_Not_Completing_Id] [int] NULL,
	[Ref_Grade_Level_To_Be_Assessed_Id] [int] NULL,
	[Ref_Grade_Level_When_Assessed_Id] [int] NULL,
	[Person_Id] [int] NOT NULL,
	[Assessment_Form_Id] [int] NOT NULL,
	[Organization_Id] [int] NULL,
	[School_Organization_Id] [int] NULL,
	[Lea_Organization_Id] [int] NULL,
	[Assessment_Administration_Id] [int] NULL,
	[Assigned_By_Person_Id] [int] NULL,
	[Assessment_Registration_Completion_Status_Date_Time] [datetime] NULL,
	[Ref_Assessment_Registration_Completion_Status_Id] [int] NULL,
	[LEA_Full_Academic_Year] [bit] NULL,
	[School_Full_Academic_Year] [bit] NULL,
	[State_Full_Academic_Year] [bit] NULL,
 CONSTRAINT [PK_Assessment_Registration] PRIMARY KEY CLUSTERED 
(
	[Assessment_Registration_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Registration_Accommodation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Registration_Accommodation](
	[Assessment_Registration_Accommodation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Registration_Id] [int] NOT NULL,
	[Assessment_Accommodation_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Registration_Accommodation] PRIMARY KEY CLUSTERED 
(
	[Assessment_Registration_Accommodation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Result] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Result](
	[Assessment_Result_Id] [int] IDENTITY(1,1) NOT NULL,
	[Score_Value] [nvarchar](35) NULL,
	[Ref_Score_Metric_Type_Id] [int] NULL,
	[Preliminary_Indicator] [bit] NULL,
	[Ref_Assessment_Pretest_Outcome_Id] [int] NULL,
	[Number_Of_Responses] [int] NULL,
	[Diagnostic_Statement] [nvarchar](max) NULL,
	[Diagnostic_Statement_Source] [nvarchar](300) NULL,
	[Descriptive_Feedback] [nvarchar](300) NULL,
	[Descriptive_Feedback_Source] [nvarchar](60) NULL,
	[Instructional_Recommendation] [nvarchar](100) NULL,
	[Included_In_Ayp_Calculation] [bit] NULL,
	[Date_Updated] [date] NULL,
	[Date_Created] [date] NULL,
	[Assessment_Subtest_Id] [int] NOT NULL,
	[Assessment_Registration_Id] [int] NOT NULL,
	[Ref_EL_Outcome_Measurement_Level_Id] [int] NULL,
	[Ref_Outcome_Time_Point_Id] [int] NULL,
	[Assessment_Result_Descriptive_Feedback_Date_Time] [datetime] NULL,
	[Assessment_Result_Score_Standard_Error] [decimal](9, 2) NULL,
	[Ref_Assessment_Result_Data_Type_Id] [int] NULL,
	[Ref_Assessment_Result_Score_Type_Id] [int] NULL,
 CONSTRAINT [PK_Assessment_Result] PRIMARY KEY CLUSTERED 
(
	[Assessment_Result_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Result_Performance_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Result_Performance_Level](
	[Assessment_Result_Performance_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Result_Id] [int] NOT NULL,
	[Assessment_Performance_Level_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Result_Performance_Level] PRIMARY KEY NONCLUSTERED 
(
	[Assessment_Result_Performance_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Result_Rubric_Criterion_Result] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Result_Rubric_Criterion_Result](
	[Assessment_Result_Rubric_Criterion_Result_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Result_Id] [int] NOT NULL,
	[Rubric_Criterion_Level_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Result_Rubric_Criterion_Result] PRIMARY KEY CLUSTERED 
(
	[Assessment_Result_Rubric_Criterion_Result_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Assessment_Result_Rubric_Criterion_Level] UNIQUE NONCLUSTERED 
(
	[Assessment_Result_Id] ASC,
	[Rubric_Criterion_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Session] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Session](
	[Assessment_Session_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Administration_Id] [int] NULL,
	[Scheduled_Start_Date_Time] [datetime] NULL,
	[Scheduled_End_Date_Time] [datetime] NULL,
	[Actual_Start_Date_Time] [datetime] NULL,
	[Actual_End_Date_Time] [datetime] NULL,
	[Allotted_Time] [time](7) NULL,
	[Ref_Assessment_Session_Type_Id] [int] NULL,
	[Security_Issue] [nvarchar](300) NULL,
	[Ref_Assessment_Session_Special_Circumstance_Type_Id] [int] NULL,
	[Special_Event_Description] [nvarchar](60) NULL,
	[Location] [nvarchar](45) NULL,
	[Organization_Id] [int] NULL,
	[Lea_Organization_Id] [int] NULL,
	[School_Organization_Id] [int] NULL,
 CONSTRAINT [PK_Assessment_Session] PRIMARY KEY CLUSTERED 
(
	[Assessment_Session_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Session_Staff_Role] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Session_Staff_Role](
	[Assessment_Session_Staff_Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ref_Assessment_Session_Staff_Role_Type_Id] [int] NULL,
	[Person_Id] [int] NOT NULL,
	[Assessment_Session_Id] [int] NULL,
	[Assessment_Participant_Session_Id] [int] NULL,
 CONSTRAINT [PK_Assessment_Session_Staff_Role] PRIMARY KEY CLUSTERED 
(
	[Assessment_Session_Staff_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Subtest] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Subtest](
	[Assessment_Subtest_Id] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[Ref_Assessment_Subtest_Identifier_Type_Id] [int] NULL,
	[Title] [nvarchar](60) NULL,
	[Version] [nvarchar](30) NULL,
	[Published_Date] [date] NULL,
	[Abbreviation] [nvarchar](30) NULL,
	[Ref_Score_Metric_Type_Id] [int] NULL,
	[Minimum_Value] [nvarchar](30) NULL,
	[Maximum_Value] [nvarchar](30) NULL,
	[Optimal_Value] [nvarchar](30) NULL,
	[Tier] [int] NULL,
	[Container_Only] [nvarchar](30) NULL,
	[Ref_Assessment_Purpose_Id] [int] NULL,
	[Description] [nvarchar](60) NULL,
	[Rules] [nvarchar](max) NULL,
	[Ref_Content_Standard_Type_Id] [int] NULL,
	[Ref_Academic_Subject_Id] [int] NULL,
	[Child_Of_Assessment_Subtest_Id] [int] NULL,
	[Assessment_Form_Id] [int] NULL,
 CONSTRAINT [XPK_Assessment_Sub_Test] PRIMARY KEY CLUSTERED 
(
	[Assessment_Subtest_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Subtest_Assessment_Item] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Subtest_Assessment_Item](
	[Assessment_Subtest_Item_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Subtest_Id] [int] NOT NULL,
	[Assessment_Item_Id] [int] NOT NULL,
	[Item_Weight_Correct] [decimal](3, 2) NULL,
	[Item_Weight_Incorrect] [decimal](3, 2) NULL,
	[Item_Weight_Not_Attempted] [decimal](3, 2) NULL,
 CONSTRAINT [PK_Assessment_Subtest_Assessment_Item] PRIMARY KEY CLUSTERED 
(
	[Assessment_Subtest_Item_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Subtest_Competency_Framework_Item] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Subtest_Competency_Framework_Item](
	[Assessment_Sub_Test_Competency_Framework_Item_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Subtest_Id] [int] NOT NULL,
	[Competency_Framework_Item_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Subtest_Competency_Framework_Item] PRIMARY KEY CLUSTERED 
(
	[Assessment_Sub_Test_Competency_Framework_Item_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Assessment_Subtest_Competency_Framework_Item] UNIQUE NONCLUSTERED 
(
	[Assessment_Subtest_Id] ASC,
	[Competency_Framework_Item_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Subtest_EL_Developmental_Domain] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Subtest_EL_Developmental_Domain](
	[Assessment_Subtest_EL_Developmental_Domain_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Subtest_Id] [int] NOT NULL,
	[Ref_Assessment_EL_Developmental_Domain_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Subtest_EL_Developmental_Domain] PRIMARY KEY CLUSTERED 
(
	[Assessment_Subtest_EL_Developmental_Domain_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Assessment_Subtest_EL_Developmental_Domain] UNIQUE NONCLUSTERED 
(
	[Assessment_Subtest_Id] ASC,
	[Ref_Assessment_EL_Developmental_Domain_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Assessment_Subtest_Levels_For_Which_Designed] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Assessment_Subtest_Levels_For_Which_Designed](
	[Assessment_Subtest_Levels_For_Which_Designed_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Sub_Test_Id] [int] NOT NULL,
	[Ref_Grade_Id] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_Subtest_Levels_For_Which_Designed] PRIMARY KEY CLUSTERED 
(
	[Assessment_Subtest_Levels_For_Which_Designed_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Assessment_Subtest_Levels_For_Which_Designed] UNIQUE NONCLUSTERED 
(
	[Assessment_Sub_Test_Id] ASC,
	[Ref_Grade_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Authentication] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Authentication](
	[Authentication_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Identity_Provider_Name] [nvarchar](60) NULL,
	[Identity_Provider_Uri] [nvarchar](512) NULL,
	[Login_Identifier] [nvarchar](40) NULL,
	[Start_Date] [date] NULL,
	[End_Date] [date] NULL,
 CONSTRAINT [PK_Authentication] PRIMARY KEY CLUSTERED 
(
	[Authentication_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Authorization] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Authorization](
	[Authorization_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Application_Id] [int] NULL,
	[Application_Role_Name] [nvarchar](60) NOT NULL,
	[Start_Date] [date] NULL,
	[End_Date] [date] NULL,
 CONSTRAINT [PK_Authorization] PRIMARY KEY CLUSTERED 
(
	[Authorization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Authorization_Document] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Authorization_Document](
	[Authorization_Document_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Acceptance_Indicator] [bit] NULL,
	[Authorization_Date] [date] NULL,
	[Decision_Explanation] [nvarchar](max) NULL,
	[Ref_Authorizer_Type_Id] [int] NULL,
 CONSTRAINT [PK_Authorization_Document] PRIMARY KEY CLUSTERED 
(
	[Authorization_Document_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Classroom] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Classroom](
	[Location_Id] [int] NOT NULL,
	[Classroom_Identifier] [nvarchar](40) NULL,
 CONSTRAINT [PK_Classroom] PRIMARY KEY CLUSTERED 
(
	[Location_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Competency_Framework] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Competency_Framework](
	[Competency_Framework_Id] [int] IDENTITY(1,1) NOT NULL,
	[URI] [nvarchar](512) NULL,
	[Title] [nvarchar](120) NULL,
	[Subject] [nvarchar](30) NULL,
	[Version] [nvarchar](30) NULL,
	[Creator] [nvarchar](120) NULL,
	[Jurisdiction] [nvarchar](120) NULL,
	[Description] [nvarchar](300) NULL,
	[Publisher] [nvarchar](30) NULL,
	[Ref_Competency_Framework_Publication_Status_Id] [int] NULL,
	[Valid_Start_Date] [date] NOT NULL,
	[Valid_End_Date] [date] NOT NULL,
	[Ref_Language_Id] [int] NULL,
	[License] [nvarchar](300) NULL,
	[Rights] [nvarchar](300) NULL,
	[Rights_Holder] [nvarchar](30) NULL,
	[Competency_Framework_Publication_Date] [date] NULL,
 CONSTRAINT [PK_Competency_Framework] PRIMARY KEY CLUSTERED 
(
	[Competency_Framework_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Competency_Framework_Item] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Competency_Framework_Item](
	[Competency_Framework_Item_Id] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[Code] [nvarchar](30) NULL,
	[URL] [nvarchar](512) NULL,
	[Type] [nvarchar](60) NULL,
	[Statement] [nvarchar](max) NULL,
	[Version] [nvarchar](max) NULL,
	[Typical_Age_Range] [nvarchar](20) NULL,
	[Ref_Language_Id] [int] NULL,
	[Text_Complexity_System] [nvarchar](30) NULL,
	[Text_Complexity_Minimum_Value] [decimal](18, 4) NULL,
	[Text_Complexity_Maximum_Value] [decimal](18, 4) NULL,
	[Ref_Blooms_Taxonomy_Domain_Id] [int] NULL,
	[Ref_Multiple_Intelligence_Type_Id] [int] NULL,
	[Concept_Term] [nvarchar](30) NULL,
	[Concept_Keyword] [nvarchar](300) NULL,
	[License] [nvarchar](300) NULL,
	[Notes] [nvarchar](max) NULL,
	[Competency_Framework_Item_Parent_Id] [nvarchar](40) NULL,
	[Competency_Framework_Item_Parent_Code] [nvarchar](30) NULL,
	[Competency_Framework_Item_Parent_URL] [nvarchar](512) NULL,
	[Child_Of_Competency_Framework_Item] [int] NULL,
	[Competency_Framework_Id] [int] NOT NULL,
	[Current_Version_Indicator] [bit] NULL,
	[Previous_Version_Identifier] [nvarchar](40) NULL,
	[Valid_Start_Date] [date] NULL,
	[Valid_End_Date] [date] NULL,
	[Node_Name] [nvarchar](30) NULL,
	[Ref_Competency_Framework_Item_Node_Accessibility_Profile_Id] [int] NULL,
	[Ref_Competency_Framework_Item_Testability_Type_Id] [int] NULL,
	[Competency_Framework_Item_Sequence] [nvarchar](60) NULL,
	[Type_URL] [nvarchar](512) NULL,
 CONSTRAINT [XPK_Competency_Framework_Item] PRIMARY KEY CLUSTERED 
(
	[Competency_Framework_Item_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Competency_Framework_Item_Association] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Competency_Framework_Item_Association](
	[Competency_Framework_Item_Association_Id] [int] IDENTITY(1,1) NOT NULL,
	[Competency_Framework_Item_Id] [int] NOT NULL,
	[Ref_Entity_Type_Id] [int] NOT NULL,
	[Associated_Entity_Id] [int] NOT NULL,
	[Ref_Competency_Framework_Item_Association_Type_Id] [int] NULL,
	[Competency_Framework_Item_Association_Identifier_URI] [nvarchar](512) NULL,
	[Connection_Citation] [nvarchar](300) NULL,
	[Origin_Node_Name] [nvarchar](30) NULL,
	[Origin_Node_URI] [nvarchar](512) NULL,
	[Destination_Node_Name] [nvarchar](30) NULL,
	[Destination_Node_URI] [nvarchar](512) NULL,
	[Weight] [decimal](9, 3) NULL,
 CONSTRAINT [PK_Competency_Framework_Item_Association] PRIMARY KEY CLUSTERED 
(
	[Competency_Framework_Item_Association_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Competency_Framework_Item_Education_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Competency_Framework_Item_Education_Level](
	[Competency_Framework_Item_Education_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Competency_Framework_Item_Id] [int] NOT NULL,
	[Ref_Education_Level_Id] [int] NOT NULL,
 CONSTRAINT [PK_Competency_Framework_Item_Education_Level] PRIMARY KEY CLUSTERED 
(
	[Competency_Framework_Item_Education_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Competency_Framework_Item_Ref_Education_Level] UNIQUE NONCLUSTERED 
(
	[Competency_Framework_Item_Id] ASC,
	[Ref_Education_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Competency_Item_Competency_Set] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Competency_Item_Competency_Set](
	[Competency_Item_Competency_Set_Id] [int] IDENTITY(1,1) NOT NULL,
	[Competency_Set_Id] [int] NOT NULL,
	[Competency_Framework_Item_Id] [int] NOT NULL,
 CONSTRAINT [PK_Competency_Item_Competency_Set] PRIMARY KEY CLUSTERED 
(
	[Competency_Item_Competency_Set_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Competency_Framework_Item_Competency_Set] UNIQUE NONCLUSTERED 
(
	[Competency_Framework_Item_Id] ASC,
	[Competency_Set_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Competency_Set] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Competency_Set](
	[Competency_Set_Id] [int] IDENTITY(1,1) NOT NULL,
	[Child_Of_Competency_Set] [int] NULL,
	[Ref_Completion_Criteria_Id] [int] NULL,
	[Completion_Criteria_Threshold] [int] NULL,
 CONSTRAINT [PK_Competency_Set] PRIMARY KEY CLUSTERED 
(
	[Competency_Set_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Core_Knowledge_Area] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Core_Knowledge_Area](
	[Core_Knowledge_Area_Id] [int] IDENTITY(1,1) NOT NULL,
	[Professional_Development_Activity_Id] [int] NOT NULL,
	[Ref_Core_Knowledge_Area_Id] [int] NOT NULL,
 CONSTRAINT [PK_Core_Knowledge_Area] PRIMARY KEY CLUSTERED 
(
	[Core_Knowledge_Area_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Core_Knowledge_Area] UNIQUE NONCLUSTERED 
(
	[Professional_Development_Activity_Id] ASC,
	[Ref_Core_Knowledge_Area_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Course] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Course](
	[Organization_Id] [int] NOT NULL,
	[Description] [nvarchar](60) NULL,
	[Subject_Abbreviation] [nvarchar](50) NULL,
	[SCED_Sequence_Of_Course] [nvarchar](50) NULL,
	[Instructional_Minutes] [int] NULL,
	[Ref_Course_Level_Characteristics_Id] [int] NULL,
	[Ref_Course_Credit_Unit_Id] [int] NULL,
	[Credit_Value] [decimal](9, 2) NULL,
	[Ref_Instruction_Language] [int] NULL,
	[Certification_Description] [nvarchar](300) NULL,
	[Ref_Course_Applicable_Education_Level_Id] [int] NULL,
	[Repeatability_Maximum_Number] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Course_Section] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Course_Section](
	[Organization_Id] [int] NOT NULL,
	[Available_Carnegie_Unit_Credit] [decimal](9, 2) NULL,
	[Ref_Course_Section_Delivery_Mode_Id] [int] NULL,
	[Ref_Single_Sex_Class_Status_Id] [int] NULL,
	[Time_Required_For_Completion] [decimal](9, 0) NULL,
	[Course_Id] [int] NOT NULL,
	[Ref_Additional_Credit_Type_Id] [int] NULL,
	[Ref_Instruction_Language_Id] [int] NULL,
	[Virtual_Indicator] [bit] NULL,
	[Organization_Calendar_Session_Id] [int] NULL,
	[Ref_Credit_Type_Earned_Id] [int] NULL,
	[Ref_Advanced_Placement_Course_Code_Id] [int] NULL,
	[Maximum_Capacity] [int] NULL,
	[Related_Competency_Framework_Items] [nvarchar](60) NULL,
 CONSTRAINT [PK_Course_Section] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Course_Section_Assessment_Reporting] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Course_Section_Assessment_Reporting](
	[Course_Section_Assessment_Reporting_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NULL,
	[Ref_Course_Section_Assessment_Reporting_Method_Id] [int] NULL,
 CONSTRAINT [PK_Course_Section_Assessment_Reporting] PRIMARY KEY CLUSTERED 
(
	[Course_Section_Assessment_Reporting_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Course_Section_Location] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Course_Section_Location](
	[Course_Section_Location_Id] [int] IDENTITY(1,1) NOT NULL,
	[Location_Id] [int] NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Instruction_Location_Type_Id] [int] NULL,
 CONSTRAINT [PK_Course_Section_Location] PRIMARY KEY CLUSTERED 
(
	[Course_Section_Location_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Course_Section_Schedule] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Course_Section_Schedule](
	[Course_Section_Schedule_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Class_Meeting_Days] [nvarchar](60) NULL,
	[Class_Beginning_Time] [time](7) NULL,
	[Class_Ending_Time] [time](7) NULL,
	[Class_Period] [nvarchar](30) NULL,
	[Time_Day_Identifier] [nvarchar](40) NULL,
 CONSTRAINT [PK_Course_Section_Schedule] PRIMARY KEY CLUSTERED 
(
	[Course_Section_Schedule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Credential] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Credential](
	[Credential_Id] [int] IDENTITY(1,1) NOT NULL,
	[Alternate_Name] [nvarchar](300) NULL,
	[Credential_NAICS_Industry_Type] [nvarchar](6) NULL,
	[Description] [nvarchar](300) NULL,
	[Employment_NAICS_Code] [nvarchar](6) NULL,
	[Image_Url] [nvarchar](512) NULL,
	[Jurisdiction_Region] [nvarchar](2000) NULL,
	[Jurisdiction_Region_Exception] [nvarchar](2000) NULL,
	[Keywords] [nvarchar](max) NULL,
	[Title] [nvarchar](300) NULL,
	[Validation_Method_Description] [nvarchar](max) NULL,
	[Version] [decimal](9, 2) NULL,
	[Ref_Career_Cluster_Id] [int] NULL,
	[Ref_Cip_Code_Id] [int] NULL,
	[Ref_Credential_Intended_Purpose_Type_Id] [int] NULL,
	[Ref_Credential_Status_Type_Id] [int] NULL,
	[Ref_Credential_Verification_Type_Id] [int] NULL,
	[Ref_ONETSOC_Occupation_Type_Id] [int] NULL,
 CONSTRAINT [PK_Credential] PRIMARY KEY CLUSTERED 
(
	[Credential_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Credential_Award] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Credential_Award](
	[Credential_Award_Id] [int] IDENTITY(1,1) NOT NULL,
	[Credential_Id] [int] NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Advanced_Standing_Description] [nvarchar](max) NULL,
	[Advanced_Standing_URL] [nvarchar](512) NULL,
	[Approver_Name] [nvarchar](300) NULL,
	[Completion_Date] [date] NULL,
	[End_Date] [date] NULL,
	[Evidence_URL] [nvarchar](512) NULL,
	[Revoked_Date] [date] NULL,
	[Revoked_Indicator] [bit] NULL,
	[Revoked_Reason] [nvarchar](max) NULL,
	[Start_Date] [date] NULL,
 CONSTRAINT [PK_Credential_Award] PRIMARY KEY CLUSTERED 
(
	[Credential_Award_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Credential_Award_Credit] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Credential_Award_Credit](
	[Credential_Award_Credit_Id] [int] IDENTITY(1,1) NOT NULL,
	[Credential_Award_Id] [int] NOT NULL,
	[Credential_Criteria_Course_Id] [int] NULL,
	[Organization_Person_Role_Id] [int] NULL,
 CONSTRAINT [PK_Credential_Award_Credit] PRIMARY KEY CLUSTERED 
(
	[Credential_Award_Credit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Credential_Award_Evidence] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Credential_Award_Evidence](
	[Credential_Award_Evidence_Id] [int] IDENTITY(1,1) NOT NULL,
	[Credential_Award_Id] [int] NOT NULL,
	[Statement] [nvarchar](300) NULL,
	[Assessment_Result_Id] [int] NULL,
 CONSTRAINT [PK_Credential_Award_Evidence] PRIMARY KEY CLUSTERED 
(
	[Credential_Award_Evidence_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Credential_Category] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Credential_Category](
	[Credential_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Credential_Id] [int] NOT NULL,
	[Category] [nvarchar](60) NULL,
	[Category_System] [nvarchar](30) NULL,
 CONSTRAINT [PK_Credential_Category] PRIMARY KEY CLUSTERED 
(
	[Credential_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Credential_Creator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Credential_Creator](
	[Organization_Id] [int] NOT NULL,
	[Ref_CTDL_Organization_Type_Id] [int] NULL,
 CONSTRAINT [PK_Credential_Creator] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Credential_Creator_Credential] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Credential_Creator_Credential](
	[Credential_Creator_Credential_Id] [int] IDENTITY(1,1) NOT NULL,
	[Credential_Id] [int] NOT NULL,
	[Organization_Id] [int] NOT NULL,
 CONSTRAINT [PK_Credential_Creator_Credential] PRIMARY KEY CLUSTERED 
(
	[Credential_Creator_Credential_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Credential_Credential_Creator] UNIQUE NONCLUSTERED 
(
	[Credential_Id] ASC,
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Credential_Criteria] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

SET ANSI_PADDING ON;

CREATE TABLE [dbo].[Credential_Criteria](
	[Credential_Criteria_Id] [int] IDENTITY(1,1) NOT NULL,
	[Credential_Id] [int] NOT NULL,
	[Competency_Set_Id] [int] NULL,
	[Criteria] [nvarchar](300) NULL,
	[Criteria_Url] [nvarchar](512) NULL,
	[Estimated_Duration] [char](5) NULL,
	[Maximum_Duration] [char](5) NULL,
	[Minimum_Age] [int] NULL,
	[Minimum_Duration] [char](5) NULL,
	[Ref_Credential_Assessment_Method_Type_Id] [int] NULL,
 CONSTRAINT [PK_Credential_Criteria] PRIMARY KEY CLUSTERED 
(
	[Credential_Criteria_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

SET ANSI_PADDING OFF;

/****** Object:  Table [dbo].[Credential_Criteria_Course] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Credential_Criteria_Course](
	[Credential_Criteria_Course_Id] [int] IDENTITY(1,1) NOT NULL,
	[Credential_Criteria_Id] [int] NOT NULL,
	[Organization_Id] [int] NOT NULL,
 CONSTRAINT [PK_Credential_Criteria_Course] PRIMARY KEY CLUSTERED 
(
	[Credential_Criteria_Course_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Course_Credential_Criteria] UNIQUE NONCLUSTERED 
(
	[Organization_Id] ASC,
	[Credential_Criteria_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Credential_Identifier] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Credential_Identifier](
	[Credential_Identifier_Id] [int] IDENTITY(1,1) NOT NULL,
	[Credential_Id] [int] NOT NULL,
	[Identifier] [nvarchar](512) NULL,
	[Ref_Credential_Identifier_System_Id] [int] NULL,
 CONSTRAINT [PK_Credential_Identifier] PRIMARY KEY CLUSTERED 
(
	[Credential_Identifier_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Credential_Issuer] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Credential_Issuer](
	[Organization_Id] [int] NOT NULL,
	[Award_Issuer_Origin_URL] [nvarchar](512) NULL,
	[Revocation_List_URL] [nvarchar](512) NULL,
	[Ref_CTDL_Organization_Type_Id] [int] NULL,
 CONSTRAINT [PK_Credential_Issuer] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Credential_Issuer_Credential] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Credential_Issuer_Credential](
	[Credential_Issuer_Credential_Id] [int] IDENTITY(1,1) NOT NULL,
	[Credential_Id] [int] NOT NULL,
	[Organization_Id] [int] NOT NULL,
 CONSTRAINT [PK_Credential_Issuer_Credential] PRIMARY KEY CLUSTERED 
(
	[Credential_Issuer_Credential_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Credential_Credential_Issuer] UNIQUE NONCLUSTERED 
(
	[Credential_Id] ASC,
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Cte_Course] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Cte_Course](
	[Organization_Id] [int] NOT NULL,
	[Available_Carnegie_Unit_Credit] [decimal](9, 2) NULL,
	[Ref_Additional_Credit_Type_Id] [int] NULL,
	[Ref_Credit_Type_Earned_Id] [int] NULL,
	[High_School_Course_Requirement] [bit] NULL,
	[Ref_Course_Gpa_Applicability_Id] [int] NULL,
	[Core_Academic_Course] [bit] NULL,
	[Ref_Curriculum_Framework_Type_Id] [int] NULL,
	[Course_Aligned_With_Standards] [bit] NULL,
	[SCED_Course_Code] [nchar](5) NULL,
	[Ref_SCED_Course_Level_Id] [int] NULL,
	[Ref_SCED_Course_Subject_Area_Id] [int] NULL,
	[Ref_Career_Cluster_Id] [int] NULL,
	[Course_Department_Name] [nvarchar](60) NULL,
 CONSTRAINT [PK_Cte_Course] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Cte_Student_Academic_Record] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Cte_Student_Academic_Record](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Credits_Attempted_Cumulative] [decimal](9, 2) NULL,
	[Credits_Earned_Cumulative] [decimal](9, 2) NULL,
	[Ref_Professional_Technical_Credential_Type_Id] [int] NULL,
	[Diploma_Or_Credential_Award_Date] [nchar](7) NULL,
 CONSTRAINT [PK_Cte_Student_Academic_Record] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Early_Childhood_Credential] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Early_Childhood_Credential](
	[Person_Credential_Id] [int] NOT NULL,
	[Ref_Early_Childhood_Credential_Id] [int] NOT NULL,
 CONSTRAINT [PK_Early_Childhood_Credential] PRIMARY KEY CLUSTERED 
(
	[Person_Credential_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Early_Childhood_Program_Type_Offered] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Early_Childhood_Program_Type_Offered](
	[Early_Childhood_Program_Type_Offered_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Early_Childhood_Program_Enrollment_Type_Id] [int] NOT NULL,
	[Inclusive_Setting_Indicator] [bit] NULL,
	[Ref_Community_Based_Type_Id] [int] NULL,
 CONSTRAINT [PK_Early_Childhood_Program_Type_Offered] PRIMARY KEY CLUSTERED 
(
	[Early_Childhood_Program_Type_Offered_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Early_Childhood_Program_Type_Offered] UNIQUE NONCLUSTERED 
(
	[Organization_Id] ASC,
	[Ref_Early_Childhood_Program_Enrollment_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Child_Demographic] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Child_Demographic](
	[Person_Id] [int] NOT NULL,
	[Foster_Care_Start_Date] [date] NULL,
	[Foster_Care_End_Date] [date] NULL,
	[Other_Race_Indicator] [bit] NULL,
 CONSTRAINT [PK_EL_Child_Demographic] PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Child_Developmental_Assessment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Child_Developmental_Assessment](
	[Person_Id] [int] NOT NULL,
	[Ref_Child_Developmental_Screening_Status_Id] [int] NULL,
	[Ref_Developmental_Evaluation_Finding_Id] [int] NULL,
 CONSTRAINT [PK_EL_Child_Developmental_Assessment] PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Child_Health] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Child_Health](
	[Person_Id] [int] NOT NULL,
	[Well_Child_Screening_Received_Date] [date] NULL,
	[Ref_Scheduled_Well_Child_Screening_Id] [int] NULL,
 CONSTRAINT [PK_EL_Child_Health] PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Child_Individualized_Program] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Child_Individualized_Program](
	[Person_Id] [int] NOT NULL,
	[Ref_IDEA_IEP_Status_Id] [int] NULL,
	[Individualized_Program_Id] [int] NULL,
	[Ref_IDEA_Part_C_Eligibility_Category_Id] [int] NULL,
 CONSTRAINT [PK_EL_Child_Individualized_Program] PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Child_Outcome_Summary] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Child_Outcome_Summary](
	[Person_Id] [int] NOT NULL,
	[COS_Progress_A_Indicator] [bit] NULL,
	[COS_Progress_B_Indicator] [bit] NULL,
	[COS_Progress_C_Indicator] [bit] NULL,
	[COS_Rating_A_Id] [int] NULL,
	[COS_Rating_B_Id] [int] NULL,
	[COS_Rating_C_Id] [int] NULL,
 CONSTRAINT [PK_EL_Child_Outcome_Summary] PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Child_Program_Eligibility] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Child_Program_Eligibility](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_EL_Program_Eligibility_Status_Id] [int] NULL,
	[Status_Date] [date] NULL,
	[Expiration_Date] [date] NULL,
 CONSTRAINT [PK_EL_Child_Program_Eligibility] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Child_Service] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Child_Service](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[ECEAP_Eligibility] [bit] NULL,
	[Eligibility_Priority_Points] [nvarchar](100) NULL,
	[Service_Date] [date] NULL,
	[Ref_Early_Childhood_Services_Offered_Id] [int] NULL,
	[Ref_Early_Childhood_Services_Received_Id] [int] NULL,
	[Ref_EL_Service_Type_Id] [int] NULL,
 CONSTRAINT [PK_EL_Child_Service] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Child_Services_Application] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Child_Services_Application](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[EL_Application_Identifier] [nvarchar](40) NULL,
	[Application_Date] [date] NULL,
	[EL_Enrollment_Application_Document_Identifier] [nvarchar](40) NULL,
	[EL_Enrollment_Application_Document_Name] [nvarchar](60) NULL,
	[EL_Enrollment_Application_Document_Type] [nvarchar](100) NULL,
	[EL_Application_Required_Document] [bit] NULL,
	[EL_Enrollment_Application_Verification_Date] [date] NULL,
	[EL_Enrollment_Application_Verification_Reason_Type] [nvarchar](100) NULL,
	[Site_Preference_Rank] [nvarchar](300) NULL,
 CONSTRAINT [PK_EL_Child_Services_Application] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Child_Transition_Plan] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Child_Transition_Plan](
	[Person_Id] [int] NOT NULL,
	[Part_B619_Potential_Eligibility_Ind] [bit] NULL,
	[IDEA_Part_C_To_Part_B_Notification_Date] [date] NULL,
	[Transition_Conference_Date] [date] NULL,
	[Transition_Conference_Decline_Date] [date] NULL,
	[Date_Of_Transition_Plan] [date] NULL,
	[IDEA_Part_C_To_Part_B_Notification_Opt_Out_Date] [date] NULL,
	[IDEA_Part_C_To_Part_B_Notification_Opt_Out_Indicator] [bit] NULL,
	[Ref_Reason_Delay_Transition_Conf_Id] [int] NULL,
	[Individualized_Program_Id] [int] NULL,
 CONSTRAINT [PK_EL_Child_IDEA] PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Class_Section] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Class_Section](
	[Organization_Id] [int] NOT NULL,
	[Ref_Service_Option_Id] [int] NULL,
	[Hours_Available_Per_Day] [decimal](4, 2) NULL,
	[Days_Available_Per_Week] [int] NULL,
	[Ref_Environment_Setting_Id] [int] NULL,
	[EL_Program_Annual_Operating_Weeks] [int] NULL,
	[Language_Translation_Policy] [bit] NULL,
	[Group_Size] [int] NULL,
 CONSTRAINT [PK_EL_Class_Section] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Class_Section_Service] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Class_Section_Service](
	[EL_Class_Section_Service_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Youngest_Age_Served] [int] NULL,
	[Oldest_Age_Served] [int] NULL,
	[Serves_Children_With_Special_Needs] [bit] NULL,
	[Ref_EL_Group_Size_Standard_Met_Id] [int] NULL,
	[EL_Class_Group_Curriculum_Type] [nvarchar](60) NULL,
	[Ref_Frequency_Of_Service_Id] [int] NULL,
 CONSTRAINT [PK_EL_Class_Section_Service] PRIMARY KEY CLUSTERED 
(
	[EL_Class_Section_Service_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Enrollment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Enrollment](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Application_Date] [date] NULL,
	[Enrollment_Date] [date] NULL,
	[Ref_IDEA_Environment_EL_Id] [int] NULL,
	[Number_Of_Days_In_Attendance] [decimal](8, 2) NULL,
	[Ref_Food_Service_Participation_Id] [int] NULL,
	[Ref_Service_Option_Id] [int] NULL,
	[EL_Class_Section_Id] [int] NULL,
	[Ref_EL_Federal_Funding_Type_Id] [int] NULL,
 CONSTRAINT [XPK_EC_Enrollment] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Enrollment_Other_Funding] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Enrollment_Other_Funding](
	[EL_Enrollment_Other_Funding_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Ref_EL_Other_Federal_Funding_Sources_Id] [int] NOT NULL,
 CONSTRAINT [PK_EL_Enrollment_Other_Funding] PRIMARY KEY CLUSTERED 
(
	[EL_Enrollment_Other_Funding_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Facility_Licensing] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Facility_Licensing](
	[EL_Facility_Licensing_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_EL_Facility_Licensing_Status_Id] [int] NULL,
	[State_Licensed_Facility_Capacity] [int] NULL,
	[Initial_Licensing_Date] [date] NULL,
	[Continuing_License_Date] [date] NULL,
	[Ref_License_Exempt_Id] [int] NULL,
 CONSTRAINT [PK_EL_Facility_Licensing] PRIMARY KEY CLUSTERED 
(
	[EL_Facility_Licensing_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Eligibility_Evaluation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Eligibility_Evaluation](
	[Eligibility_Evaluation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Evaluation_Date] [date] NULL,
 CONSTRAINT [PK_Eligibility_Evaluation] PRIMARY KEY CLUSTERED 
(
	[Eligibility_Evaluation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Organization] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Organization](
	[Organization_Id] [int] NOT NULL,
	[Ref_Profit_Status_Id] [int] NULL,
 CONSTRAINT [PK_EL_Organization] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Organization_Availability] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Organization_Availability](
	[Organization_Id] [int] NOT NULL,
	[Days_Available_Per_Week] [int] NULL,
	[Hours_Available_Per_Day] [decimal](5, 2) NULL,
	[Youngest_Age_Served] [int] NULL,
	[Oldest_Age_Served] [int] NULL,
	[Age_Unit] [nvarchar](10) NULL,
	[Ref_Environment_Setting_Id] [int] NULL,
	[Number_Of_Classrooms] [int] NULL,
	[Ref_Service_Option_Id] [int] NULL,
	[Ref_Population_Served_Id] [int] NULL,
	[Annual_Operating_Weeks] [int] NULL,
 CONSTRAINT [PK_EL_Organization_Availability] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Organization_Funds] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Organization_Funds](
	[Organization_Id] [int] NOT NULL,
	[Ref_EL_Federal_Funding_Type_Id] [int] NULL,
	[Ref_EL_Local_Revenue_Source_Id] [int] NULL,
	[Ref_EL_Other_Federal_Funding_Sources_Id] [int] NULL,
	[Ref_EL_State_Revenue_Source_Id] [int] NULL,
	[Ref_Billable_Basis_Type_Id] [int] NULL,
	[Ref_Reimbursement_Type_Id] [int] NULL,
 CONSTRAINT [PK_EL_Organization_Funds] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Organization_Monitoring] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Organization_Monitoring](
	[EL_Organization_Monitoring_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Visit_Start_Date] [date] NULL,
	[Visit_End_Date] [date] NULL,
	[Ref_Purpose_Of_Monitoring_Visit_Id] [int] NULL,
	[Type_Of_Monitoring] [nvarchar](300) NULL,
	[Ref_Organization_Monitoring_Notifications_Id] [int] NULL,
 CONSTRAINT [PK_EL_Organization_Monitoring] PRIMARY KEY CLUSTERED 
(
	[EL_Organization_Monitoring_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Program_Licensing] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Program_Licensing](
	[EL_Program_Licensing_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_EL_Program_License_Status_Id] [int] NULL,
	[Initial_License_Date] [date] NULL,
	[Continuing_License_Date] [date] NULL,
	[License_Suspension_Status] [bit] NULL,
	[License_Revocation_Status] [bit] NULL,
	[Number_Of_Fatalities] [int] NULL,
	[Number_Of_Injuries] [int] NULL,
	[Ref_License_Exempt_Id] [int] NULL,
 CONSTRAINT [PK_EL_Program_Licensing] PRIMARY KEY CLUSTERED 
(
	[EL_Program_Licensing_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Quality_Initiative] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Quality_Initiative](
	[EL_Quality_Initiative_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Maximum_Score] [nvarchar](30) NULL,
	[Minimum_Score] [nvarchar](30) NULL,
	[Score_Level] [nvarchar](30) NULL,
	[Participation_Indicator] [bit] NULL,
	[Participation_Start_Date] [date] NULL,
	[Participation_End_Date] [date] NULL,
 CONSTRAINT [PK_EL_Quality_Initiative] PRIMARY KEY CLUSTERED 
(
	[EL_Quality_Initiative_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Quality_Rating_Improvement] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Quality_Rating_Improvement](
	[EL_Quality_Rating_Improvement_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Number_Qris_Levels] [int] NULL,
	[Qris_Award_Date] [date] NULL,
	[QRIS_Expiration_Date] [date] NULL,
	[Ref_Qris_Participation_Id] [int] NULL,
	[Qris_Score] [nvarchar](45) NULL,
 CONSTRAINT [PK_EL_Quality_Rating_Improvement] PRIMARY KEY CLUSTERED 
(
	[EL_Quality_Rating_Improvement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Service_Partner] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Service_Partner](
	[Organization_Id] [int] NOT NULL,
	[Service_Partner_Name] [nvarchar](100) NULL,
	[Service_Partner_Description] [nvarchar](300) NULL,
	[Memorandum_Of_Understanding_End_Date] [date] NULL,
	[Memorandum_Of_Understanding_Start_Date] [date] NULL,
 CONSTRAINT [PK_EL_Service_Partner] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Staff] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Staff](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Child_Development_Associate_Type_Id] [int] NULL,
 CONSTRAINT [PK_EL_Staff] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Staff_Assignment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Staff_Assignment](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Itinerant_Provider] [bit] NOT NULL,
 CONSTRAINT [PK_EL_Staff_Assignment] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Staff_Education] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Staff_Education](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[EC_Degree_Or_Certificate_Holder] [bit] NULL,
	[Total_College_Credits_Earned] [decimal](10, 2) NULL,
	[Ref_EL_Level_Of_Specialization_Id] [int] NULL,
	[Total_Approved_EC_Credits_Earned] [decimal](10, 2) NULL,
	[School_Age_Education_PS_Credits] [decimal](10, 2) NULL,
	[Ref_EL_Professional_Development_Topic_Area_Id] [int] NULL,
 CONSTRAINT [PK_EL_Staff_Education] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[EL_Staff_Employment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[EL_Staff_Employment](
	[Staff_Employment_Id] [int] NOT NULL,
	[Ref_Employment_Status_Id] [int] NULL,
	[Hours_Worked_Per_Week] [decimal](5, 2) NULL,
	[Hourly_Wage] [decimal](5, 2) NULL,
	[Ref_Wage_Collection_Method_Id] [int] NULL,
	[Ref_Wage_Verification_Id] [int] NULL,
	[Union_Membership_Status] [bit] NULL,
	[Staff_Approval_Indicator] [bit] NULL,
	[Ref_EL_Education_Staff_Classification_Id] [int] NULL,
	[Ref_EL_Employment_Separation_Reason_Id] [int] NULL,
	[Ref_EL_Service_Professional_Staff_Classification_Id] [int] NULL,
 CONSTRAINT [PK_EL_Staff_Employment] PRIMARY KEY CLUSTERED 
(
	[Staff_Employment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Facility] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Facility](
	[Location_Id] [int] NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[Building_Name] [nvarchar](60) NULL,
	[Space_Description] [nvarchar](300) NULL,
	[Ref_Space_Use_Type_Id] [int] NULL,
	[Building_Site_Number] [nvarchar](30) NULL,
	[Ref_Building_Use_Type_Id] [int] NULL,
 CONSTRAINT [PK_Facility] PRIMARY KEY CLUSTERED 
(
	[Location_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Financial_Account] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Financial_Account](
	[Financial_Account_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](300) NULL,
	[Account_Number] [nvarchar](30) NULL,
	[Ref_Financial_Account_Category_Id] [int] NULL,
	[Ref_Financial_Account_Fund_Classification_Id] [int] NULL,
	[Ref_Financial_Account_Program_Code_Id] [int] NULL,
	[Ref_Financial_Account_Balance_Sheet_Code_Id] [int] NULL,
	[Ref_Financial_Expenditure_Function_Code_Id] [int] NULL,
	[Ref_Financial_Expenditure_Object_Code_Id] [int] NULL,
	[Financial_Account_Number] [nvarchar](30) NULL,
	[Financial_Expenditure_Project_Reporting_Code] [decimal](3, 0) NULL,
	[Ref_Financial_Expenditure_Level_Of_Instruction_Code_Id] [int] NULL,
	[Ref_Financial_Account_Revenue_Code_Id] [int] NULL,
 CONSTRAINT [PK_Financial_Account] PRIMARY KEY CLUSTERED 
(
	[Financial_Account_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Financial_Account_Program] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Financial_Account_Program](
	[Financial_Account_Program_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Program_Number] [nvarchar](30) NULL,
 CONSTRAINT [PK_Financial_Account_Program] PRIMARY KEY CLUSTERED 
(
	[Financial_Account_Program_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Financial_Aid_Application] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Financial_Aid_Application](
	[Financial_Aid_Application_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Financial_Aid_Application_Type_Id] [int] NOT NULL,
	[Financial_Aid_Year_Designator] [nchar](9) NULL,
 CONSTRAINT [PK_Financial_Aid_Application] PRIMARY KEY CLUSTERED 
(
	[Financial_Aid_Application_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Financial_Aid_Award] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Financial_Aid_Award](
	[Financial_Aid_Award_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Financial_Aid_Award_Type_Id] [int] NULL,
	[Ref_Financial_Aid_Status_Id] [int] NULL,
	[Financial_Aid_Award_Amount] [decimal](9, 2) NULL,
	[Financial_Aid_Year_Designator] [nchar](9) NULL,
 CONSTRAINT [PK_Financial_Aid_Award] PRIMARY KEY CLUSTERED 
(
	[Financial_Aid_Award_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Goal] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Goal](
	[Goal_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](300) NULL,
	[Start_Date] [date] NULL,
	[End_Date] [date] NULL,
	[Organization_Person_Role_Id] [int] NULL,
	[Competency_Set_Id] [int] NULL,
 CONSTRAINT [PK_Goal] PRIMARY KEY CLUSTERED 
(
	[Goal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Goal_Measurement] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Goal_Measurement](
	[Goal_Measurement_Id] [int] IDENTITY(1,1) NOT NULL,
	[Goal_Id] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Schedule] [nvarchar](max) NULL,
	[Success_Criteria] [nvarchar](300) NULL,
	[Ref_Goal_Measurement_Type_Id] [int] NULL,
 CONSTRAINT [PK_Goal_Measurement] PRIMARY KEY CLUSTERED 
(
	[Goal_Measurement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Goal_Measurement_Criterion] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Goal_Measurement_Criterion](
	[Goal_Measurement_Criterion_Id] [int] IDENTITY(1,1) NOT NULL,
	[Goal_Measurement_Id] [int] NOT NULL,
	[Accuracy_Percent] [decimal](3, 2) NULL,
	[Attempts_Count] [int] NULL,
	[Metric] [nvarchar](60) NULL,
	[Success_Count] [int] NULL,
 CONSTRAINT [PK_Goal_Measurement_Criterion] PRIMARY KEY CLUSTERED 
(
	[Goal_Measurement_Criterion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Goal_Performance] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Goal_Performance](
	[Goal_Performance_Id] [int] IDENTITY(1,1) NOT NULL,
	[Goal_Id] [int] NOT NULL,
	[Current_Performance_Description] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
	[Ref_Goal_Status_Type_Id] [int] NULL,
 CONSTRAINT [PK_Goal_Performance] PRIMARY KEY CLUSTERED 
(
	[Goal_Performance_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[IDEA_Eligibility_Evaluation_Category] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[IDEA_Eligibility_Evaluation_Category](
	[IDEA_Eligibility_Evaluation_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Eligibility_Evaluation_Id] [int] NOT NULL,
	[Ref_IDEA_Eligibility_Evaluation_Category_Id] [int] NOT NULL,
 CONSTRAINT [PK_IDEA_Eligibility_Evaluation_Category] PRIMARY KEY CLUSTERED 
(
	[IDEA_Eligibility_Evaluation_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Eligibility_Evaluation_Ref_IDEA_Eligibility_Evaluation_Category] UNIQUE NONCLUSTERED 
(
	[Eligibility_Evaluation_Id] ASC,
	[Ref_IDEA_Eligibility_Evaluation_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[IEP_Authorization] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[IEP_Authorization](
	[IEP_Authorization_Id] [int] IDENTITY(1,1) NOT NULL,
	[Authorization_Document_Id] [int] NOT NULL,
	[Individualized_Program_Id] [int] NOT NULL,
	[Ref_IEP_Authorization_Document_Type_Id] [int] NULL,
 CONSTRAINT [PK_IEP_Authorization] PRIMARY KEY CLUSTERED 
(
	[IEP_Authorization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[IEP_Authorization_Rejected] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[IEP_Authorization_Rejected](
	[IEP_Authorization_Rejected_Id] [int] IDENTITY(1,1) NOT NULL,
	[IEP_Authorization_Id] [int] NOT NULL,
	[Portion_Description] [nvarchar](max) NULL,
	[Portion_Explanation] [nvarchar](max) NULL,
 CONSTRAINT [PK_IEP_Authorization_Rejected] PRIMARY KEY CLUSTERED 
(
	[IEP_Authorization_Rejected_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[IEP_Present_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[IEP_Present_Level](
	[Individualized_Program_Id] [int] NOT NULL,
	[Academic_Description] [nvarchar](max) NULL,
	[Functional_Description] [nvarchar](max) NULL,
	[General_Education_Description] [nvarchar](max) NULL,
	[Parent_Concern_Description] [nvarchar](max) NULL,
	[Preschool_Description] [nvarchar](max) NULL,
	[Student_Concern_Description] [nvarchar](max) NULL,
	[Student_Strengths_Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_IEP_Present_Level] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Incident] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Incident](
	[Incident_Id] [int] IDENTITY(1,1) NOT NULL,
	[Incident_Identifier] [nvarchar](40) NULL,
	[Incident_Date] [date] NULL,
	[Incident_Time] [time](7) NULL,
	[Ref_Incident_Time_Description_Code_Id] [int] NULL,
	[Incident_Description] [nvarchar](max) NULL,
	[Ref_Incident_Behavior_Id] [int] NULL,
	[Ref_Incident_Behavior_Secondary_Id] [int] NULL,
	[Ref_Incident_Injury_Type_Id] [int] NULL,
	[Ref_Weapon_Type_Id] [int] NULL,
	[Incident_Cost] [nvarchar](30) NULL,
	[Organization_Person_Role_Id] [int] NULL,
	[Incident_Reporter_Id] [int] NULL,
	[Ref_Incident_Reporter_Type_Id] [int] NULL,
	[Ref_Incident_Location_Id] [int] NULL,
	[Ref_Firearm_Type_Id] [int] NULL,
	[Regulation_Violated_Description] [nvarchar](100) NULL,
	[Related_To_Disability_Manifestation_Ind] [bit] NULL,
	[Reported_To_Law_Enforcement_Ind] [bit] NULL,
	[Ref_Incident_Multiple_Offense_Type_Id] [int] NULL,
	[Ref_Incident_Perpetrator_Injury_Type_Id] [int] NULL,
 CONSTRAINT [PK_Incident] PRIMARY KEY CLUSTERED 
(
	[Incident_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Incident_Person] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Incident_Person](
	[Incident_Id] [int] NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[Ref_Incident_Person_Role_Type_Id] [int] NOT NULL,
	[Ref_Incident_Person_Type_Id] [int] NULL,
 CONSTRAINT [PK_Incident_Person] PRIMARY KEY NONCLUSTERED 
(
	[Incident_Id] ASC,
	[Person_Id] ASC,
	[Ref_Incident_Person_Role_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program](
	[Individualized_Program_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Individualized_Program_Date_Type] [int] NULL,
	[Individualized_Program_Date] [date] NULL,
	[Non_Inclusion_Minutes_Per_Week] [int] NULL,
	[Inclusion_Minutes_Per_Week] [int] NULL,
	[Ref_Individualized_Program_Transition_Type_Id] [int] NULL,
	[Ref_Individualized_Program_Type_Id] [int] NULL,
	[Service_Plan_Date] [date] NULL,
	[Ref_Individualized_Program_Location_Id] [int] NULL,
	[Service_Plan_Meeting_Participants] [nvarchar](4000) NULL,
	[Service_Plan_Signed_By] [nvarchar](4000) NULL,
	[Service_Plan_Signature_Date] [date] NULL,
	[Service_Plan_Reevaluation_Date] [date] NULL,
	[Ref_Student_Support_Service_Type_Id] [int] NULL,
	[Inclusive_Setting_Indicator] [bit] NULL,
	[Service_Plan_End_Date] [date] NULL,
	[Transfer_Of_Rights_Statement] [nvarchar](max) NULL,
 CONSTRAINT [XPK_Individualized_Program] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Accommodation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Accommodation](
	[Individualized_Program_Accommodation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Individualized_Program_Id] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Applicability] [nvarchar](max) NULL,
	[Ref_Accommodation_Type_Id] [int] NULL,
 CONSTRAINT [PK_Individualized_Program_Accommodation] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Accommodation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Accommodation_Subject] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Accommodation_Subject](
	[Individualized_Program_Accommodation_Subject_Id] [int] IDENTITY(1,1) NOT NULL,
	[Individualized_Program_Accommodation_Id] [int] NOT NULL,
	[Ref_SCED_Course_Subject_Area_Id] [int] NOT NULL,
 CONSTRAINT [PK_Individualized_Program_Accommodation_Subject] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Accommodation_Subject_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Individualized_Program_Accommodation_Ref_SCED_Course_Subject_Area] UNIQUE NONCLUSTERED 
(
	[Individualized_Program_Accommodation_Id] ASC,
	[Ref_SCED_Course_Subject_Area_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Amendment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Amendment](
	[Individualized_Program_Amendment_Id] [int] IDENTITY(1,1) NOT NULL,
	[Individualized_Program_Id] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Reason_Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Individualized_Program_Amendment] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Amendment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Assessment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Assessment](
	[Individualized_Program_Assessment_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Id] [int] NOT NULL,
	[Individualized_Program_Id] [int] NOT NULL,
	[IEP_Alternative_Assessment_Rationale] [nvarchar](max) NULL,
 CONSTRAINT [PK_Individualized_Program_Assessment] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Assessment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Assessment_Accommodation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Assessment_Accommodation](
	[Individualized_Program_Assessment_Accommodation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Accommodation_Id] [int] NOT NULL,
	[Individualized_Program_Assessment_Id] [int] NOT NULL,
 CONSTRAINT [PK_Individualized_Program_Assessment_Accommodation] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Assessment_Accommodation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Assessment_Accommodation_Individualized_Program_Assessment] UNIQUE NONCLUSTERED 
(
	[Assessment_Accommodation_Id] ASC,
	[Individualized_Program_Assessment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Eligibility] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Eligibility](
	[Individualized_Program_Eligibility_Id] [int] IDENTITY(1,1) NOT NULL,
	[Individualized_Program_Id] [int] NOT NULL,
	[Consent_To_Evaluate_Date] [date] NULL,
	[Consent_To_Evaluate_Indicator] [bit] NULL,
	[Parent_Observations] [nvarchar](max) NULL,
 CONSTRAINT [PK_Individualized_Program_Eligibility] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Eligibility_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Eligibility_Evaluation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Eligibility_Evaluation](
	[Individualized_Program_Eligibility_Evaluation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Eligibility_Evaluation_Id] [int] NOT NULL,
	[Individualized_Program_Eligibility_Id] [int] NOT NULL,
	[Ref_IEP_Eligibility_Evaluation_Type_Id] [int] NULL,
 CONSTRAINT [PK_Individualized_Program_Eligibility_Evaluation] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Eligibility_Evaluation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Goal] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Goal](
	[Individualized_Program_Goal_Id] [int] IDENTITY(1,1) NOT NULL,
	[Goal_Id] [int] NOT NULL,
	[Individualized_Program_Id] [int] NOT NULL,
	[Ref_IEP_Goal_Type_Id] [int] NULL,
 CONSTRAINT [PK_Individualized_Program_Goal] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Goal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Meeting] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Meeting](
	[Individualized_Program_Meeting_Id] [int] IDENTITY(1,1) NOT NULL,
	[Individualized_Program_Id] [int] NOT NULL,
	[Meeting_Date] [date] NULL,
 CONSTRAINT [PK_Individualized_Program_Meeting] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Meeting_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Meeting_Attendee] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Meeting_Attendee](
	[Individualized_Program_Meeting_Attendee_Id] [int] IDENTITY(1,1) NOT NULL,
	[Individualized_Program_Meeting_Id] [int] NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
 CONSTRAINT [PK_Individualized_Program_Meeting_Attendee] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Meeting_Attendee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Individualized_Program_Meeting_Organization_Person_Role] UNIQUE NONCLUSTERED 
(
	[Individualized_Program_Meeting_Id] ASC,
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Progress_Goal] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Progress_Goal](
	[Individualized_Program_Progress_Goal_Id] [int] IDENTITY(1,1) NOT NULL,
	[Goal_Performance_Id] [int] NOT NULL,
	[Individualized_Program_Progress_Report_Id] [int] NOT NULL,
 CONSTRAINT [PK_Individualized_Program_Progress_Goal] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Progress_Goal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Goal_Performance_Individualized_Program_Progress_Report] UNIQUE NONCLUSTERED 
(
	[Goal_Performance_Id] ASC,
	[Individualized_Program_Progress_Report_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Progress_Report] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Progress_Report](
	[Individualized_Program_Progress_Report_Id] [int] IDENTITY(1,1) NOT NULL,
	[Individualized_Program_Id] [int] NOT NULL,
	[Individualized_Program_Progress_Report_Plan_Id] [int] NOT NULL,
	[Progress_Description] [nvarchar](max) NULL,
	[Progress_Report_Date] [date] NULL,
	[Ref_IPSP_Progress_Report_Type_Id] [int] NULL,
 CONSTRAINT [PK_Individualized_Program_Progress_Report] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Progress_Report_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Progress_Report_Plan] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Progress_Report_Plan](
	[Individualized_Program_Progress_Report_Plan_Id] [int] IDENTITY(1,1) NOT NULL,
	[Individualized_Program_Id] [int] NOT NULL,
	[Ref_IPSP_Progress_Report_Schedule_Id] [int] NULL,
	[Ref_IPSP_Progress_Report_Type_Id] [int] NULL,
 CONSTRAINT [PK_Individualized_Program_Progress_Report_Plan] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Progress_Report_Plan_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Service] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Service](
	[Individualized_Program_Service_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Ref_Individualized_Program_Planned_Service_Type_Id] [int] NULL,
	[Ref_Method_Of_Service_Delivery_Id] [int] NULL,
	[Ref_Service_Frequency_Id] [int] NULL,
	[Planned_Service_Duration] [decimal](6, 2) NULL,
	[Planned_Service_Start_Date] [date] NULL,
 CONSTRAINT [PK_Individualized_Program_Service] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Service_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Individualized_Program_Services_Received] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Individualized_Program_Services_Received](
	[Individualized_Program_Services_Received_Id] [int] IDENTITY(1,1) NOT NULL,
	[Individualized_Program_Id] [int] NOT NULL,
	[Services_Received_Id] [int] NOT NULL,
 CONSTRAINT [PK_Individualized_Program_Services_Received] PRIMARY KEY CLUSTERED 
(
	[Individualized_Program_Services_Received_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Individualized_Program_Services_Received] UNIQUE NONCLUSTERED 
(
	[Individualized_Program_Id] ASC,
	[Services_Received_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[IPEDS_Finance] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[IPEDS_Finance](
	[Organization_Financial_Id] [int] NOT NULL,
	[Ref_IPEDSFASB_Financial_Position_Id] [int] NULL,
	[Ref_IPEDSFASB_Functional_Expense_Id] [int] NULL,
	[Ref_IPEDSFASB_Pell_Grant_Transactions_Id] [int] NULL,
	[Ref_IPEDSFASB_Revenue_Id] [int] NULL,
	[Ref_IPEDSFASB_Revenue_Restriction_Id] [int] NULL,
	[Ref_IPEDSFASB_Scholarshipsand_Fellowships_Revenue_Id] [int] NULL,
	[Ref_IPEDSGASB_Financial_Position_Id] [int] NULL,
	[Ref_IPEDSGASB_Functional_Expense_Id] [int] NULL,
	[Ref_IPEDSGASB_Revenue_Id] [int] NULL,
	[Ref_IPEDSGASB_Scholarshipsand_Fellowships_Revenue_Id] [int] NULL,
	[Ref_IPEDS_Intercollegiate_Athletics_Expenses_Id] [int] NULL,
	[Ref_IPEDS_Natural_Expense_Id] [int] NULL,
 CONSTRAINT [PK_IPEDS_Finance] PRIMARY KEY CLUSTERED 
(
	[Organization_Financial_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Course] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Course](
	[Organization_Id] [int] NOT NULL,
	[High_School_Course_Requirement] [bit] NULL,
	[Ref_Additional_Credit_Type_Id] [int] NULL,
	[Available_Carnegie_Unit_Credit] [decimal](9, 2) NULL,
	[Ref_Course_Gpa_Applicability_Id] [int] NULL,
	[Core_Academic_Course] [bit] NULL,
	[Ref_Curriculum_Framework_Type_Id] [int] NULL,
	[Course_Aligned_With_Standards] [bit] NULL,
	[Ref_Credit_Type_Earned_Id] [int] NOT NULL,
	[Funding_Program] [nvarchar](30) NULL,
	[Family_Consumer_Sciences_Course_Ind] [bit] NULL,
	[SCED_Course_Code] [nchar](5) NULL,
	[SCED_Grade_Span] [nchar](4) NULL,
	[Ref_SCED_Course_Level_Id] [int] NULL,
	[Ref_SCED_Course_Subject_Area_Id] [int] NULL,
	[Ref_Career_Cluster_Id] [int] NULL,
	[Ref_Blended_Learning_Model_Type_Id] [int] NULL,
	[Ref_Course_Interaction_Mode_Id] [int] NULL,
	[Ref_K12_End_Of_Course_Requirement_Id] [int] NULL,
	[Ref_Workbased_Learning_Opportunity_Type_Id] [int] NULL,
	[Course_Department_Name] [nvarchar](60) NULL,
 CONSTRAINT [PK_K12_Course] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Lea] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Lea](
	[Organization_Id] [int] NOT NULL,
	[Ref_Lea_Type_Id] [int] NULL,
	[Supervisory_Union_Identification_Number] [nchar](3) NULL,
	[Ref_LEA_Improvement_Status_Id] [int] NULL,
	[Ref_Public_School_Choice_Status_Id] [int] NULL,
 CONSTRAINT [XPK_K12_Lea] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Lea_Federal_Funds] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Lea_Federal_Funds](
	[Organization_Id] [int] NOT NULL,
	[Federal_Programs_Funding_Allocation] [numeric](12, 2) NULL,
	[Ref_Federal_Program_Funding_Allocation_Type_Id] [int] NULL,
	[Funds_Transfer_Amount] [numeric](12, 2) NULL,
	[Innovative_Programs_Funds_Received] [numeric](12, 2) NULL,
	[Innovative_Dollars_Spent] [numeric](12, 2) NULL,
	[Innovative_Dollars_Spent_On_Strategic_Priorities] [numeric](12, 2) NULL,
	[Lea_Transferability_Of_Funds] [bit] NULL,
	[Ref_Lea_Funds_Transfer_Type_Id] [int] NULL,
	[Public_School_Choice_Funds_Spent] [numeric](12, 2) NULL,
	[School_Improvement_Reserved_Percent] [numeric](5, 2) NULL,
	[School_Improvement_Allocation] [numeric](12, 2) NULL,
	[Ses_Funds_Spent] [numeric](12, 2) NULL,
	[Ses_Per_Pupil_Expenditure] [numeric](12, 2) NULL,
	[Ses_School_Choice20_Percent_Obligation] [numeric](12, 2) NULL,
	[Ref_Rlis_Program_Use_Id] [int] NULL,
	[Ref_Reap_Alternative_Funding_Status_Id] [int] NULL,
	[Number_Of_Immigrant_Program_Subgrants] [int] NULL,
 CONSTRAINT [PK_K12_LEA_Federal_Funds] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Lea_Federal_Reporting] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Lea_Federal_Reporting](
	[Organization_Id] [int] NOT NULL,
	[Ref_Barrier_To_Educating_Homeless_Id] [int] NULL,
	[Desegregation_Order_Or_Plan] [bit] NULL,
	[Harassment_Or_Bullying_Policy] [bit] NULL,
	[Ref_Integrated_Technology_Status_Id] [int] NULL,
	[State_Assessment_Admin_Funding] [numeric](5, 2) NULL,
	[State_Assess_Standards_Funding] [numeric](5, 2) NULL,
	[Terminated_Title_III_Program_Failure] [bit] NULL,
	[Interscholastic_Sports_Male_Only] [int] NULL,
	[Interscholastic_Sports_Female_Only] [int] NULL,
	[Interscholastic_Teams_Male_Only] [int] NULL,
	[Interscholastic_Teams_Female_Only] [int] NULL,
	[Interscholastic_Sport_Participants_Male] [int] NULL,
	[Interscholastic_Sport_Participants_Female] [int] NULL,
 CONSTRAINT [PK_K12_LEA_Federal_Reporting] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Lea_Pre_K_Eligibility] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Lea_Pre_K_Eligibility](
	[K12_LEA_Pre_K_Eligibility_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Pre_Kindergarten_Eligibility_Id] [int] NOT NULL,
 CONSTRAINT [PK_K12_Lea_Pre_K_Eligibility] PRIMARY KEY CLUSTERED 
(
	[K12_LEA_Pre_K_Eligibility_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_K12_Lea_Pre_K_Eligibility] UNIQUE NONCLUSTERED 
(
	[Organization_Id] ASC,
	[Ref_Pre_Kindergarten_Eligibility_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Lea_Pre_K_Eligible_Ages_IDEA] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Lea_Pre_K_Eligible_Ages_IDEA](
	[K12_LEA_Pre_K_Eligible_Ages_IDEA_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Pre_K_Eligible_Ages_Non_IDEA_Id] [int] NOT NULL,
 CONSTRAINT [PK_K12_LEA_Pre_K_Eligible_Ages_IDEA] PRIMARY KEY CLUSTERED 
(
	[K12_LEA_Pre_K_Eligible_Ages_IDEA_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Lea_Safe_Drug_Free] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Lea_Safe_Drug_Free](
	[Organization_Id] [int] NOT NULL,
	[Baseline] [nvarchar](60) NULL,
	[Baseline_Year] [nvarchar](20) NULL,
	[Collection_Frequency] [nvarchar](60) NULL,
	[Indicator_Name] [nvarchar](60) NULL,
	[Instrument] [nvarchar](100) NULL,
	[Performance] [nvarchar](20) NULL,
	[Target] [nvarchar](20) NULL,
	[Most_Recent_Collection] [nvarchar](20) NULL,
 CONSTRAINT [XPK_K12_School_Safe_Drug_Free] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Lea_Title_III_Professional_Development] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Lea_Title_III_Professional_Development](
	[K12_LEA_Title_III_Professional_Development_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Title_III_Professional_Development_Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_K12_LEA_Title_III_Professional_Dev] PRIMARY KEY CLUSTERED 
(
	[K12_LEA_Title_III_Professional_Development_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_K12_Lea_Title_III_Professional_Development] UNIQUE NONCLUSTERED 
(
	[Organization_Id] ASC,
	[Ref_Title_III_Professional_Development_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Lea_Title_I_Support_Service] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Lea_Title_I_Support_Service](
	[K12_Lea_Title_I_Support_Service_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_K12_Lea_Title_I_Support_Service_Id] [int] NOT NULL,
 CONSTRAINT [PK_K12_LEA_Title_I_Support_Service] PRIMARY KEY CLUSTERED 
(
	[K12_Lea_Title_I_Support_Service_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Organization_Student_Responsibility] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Organization_Student_Responsibility](
	[K12_Organization_Student_Responsibility_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_K12_Responsibility_Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_K12_Org_Student_Responsibility] PRIMARY KEY CLUSTERED 
(
	[K12_Organization_Student_Responsibility_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_K12_Organization_Student_Responsibility] UNIQUE NONCLUSTERED 
(
	[Organization_Person_Role_Id] ASC,
	[Ref_K12_Responsibility_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Program_Or_Service] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Program_Or_Service](
	[Organization_Id] [int] NOT NULL,
	[Ref_Pre_Kindergarten_Daily_Length_Id] [int] NULL,
	[Ref_Kindergarten_Daily_Length_Id] [int] NULL,
	[Ref_Program_Gifted_Eligibility_Id] [int] NULL,
	[Ref_Mep_Session_Type_Id] [int] NULL,
	[Ref_Mep_Project_Type_Id] [int] NULL,
	[Program_In_Multiple_Purpose_Facility] [bit] NULL,
	[Ref_Title_I_Instructional_Services_Id] [int] NULL,
	[Ref_Title_I_Program_Type_Id] [int] NULL,
 CONSTRAINT [PK_K12_LEA_Program] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_School] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_School](
	[Organization_Id] [int] NOT NULL,
	[Ref_School_Type_Id] [int] NULL,
	[Ref_School_Level_Id] [int] NULL,
	[Ref_Administrative_Funding_Control_Id] [int] NULL,
	[Charter_School_Indicator] [bit] NULL,
	[Ref_Charter_School_Type_Id] [int] NULL,
	[Ref_Increased_Learning_Time_Type_Id] [int] NULL,
	[Ref_State_Poverty_Designation_Id] [int] NULL,
	[Charter_School_Approval_Year] [nvarchar](9) NULL,
	[Ref_Charter_School_Approval_Agency_Type_Id] [int] NULL,
	[Accreditation_Agency_Name] [nvarchar](300) NULL,
	[Charter_School_Open_Enrollment_Indicator] [bit] NULL,
	[Charter_School_Contract_Approval_Date] [date] NULL,
	[Charter_School_Contract_Id_Number] [nvarchar](30) NULL,
	[Charter_School_Contract_Renewal_Date] [date] NULL,
	[Ref_Charter_School_Management_Organization_Type_Id] [int] NULL,
 CONSTRAINT [XPK_K12_School] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_School_Corrective_Action] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_School_Corrective_Action](
	[K12_School_Corrective_Action_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Corrective_Action_Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_K12_School_Corrective_Action] PRIMARY KEY CLUSTERED 
(
	[K12_School_Corrective_Action_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_School_Grade_Offered] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_School_Grade_Offered](
	[K12_School_Grade_Offered_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Grade_Level_Id] [int] NOT NULL,
 CONSTRAINT [PK_K12_School_Grade_Offered] PRIMARY KEY CLUSTERED 
(
	[K12_School_Grade_Offered_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_School_Improvement] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_School_Improvement](
	[K12_School_Improvement_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_School_Improvement_Status_Id] [int] NULL,
	[Ref_School_Improvement_Funds_Id] [int] NULL,
	[Ref_Sig_Intervention_Type_Id] [int] NULL,
	[School_Improvement_Exit_Date] [date] NULL,
 CONSTRAINT [XPK_K12_School_Improvement] PRIMARY KEY CLUSTERED 
(
	[K12_School_Improvement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_School_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_School_Status](
	[Organization_Id] [int] NOT NULL,
	[Ref_Magnet_Special_Program_Id] [int] NULL,
	[Ref_Alternative_School_Focus_Id] [int] NULL,
	[Ref_Internet_Access_Id] [int] NULL,
	[Ref_Restructuring_Action_Id] [int] NULL,
	[Ref_Title_I_School_Status_Id] [int] NULL,
	[Consolidated_Mep_Funds_Status] [bit] NULL,
 CONSTRAINT [PK_K12_School_Status] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Sea] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

SET ANSI_PADDING ON;

CREATE TABLE [dbo].[K12_Sea](
	[Organization_Id] [int] NOT NULL,
	[Ref_State_ANSI_Code] [char](2) NULL,
 CONSTRAINT [XPK_K12_Sea] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

SET ANSI_PADDING OFF;

/****** Object:  Table [dbo].[K12_Sea_Alternate_Fund_Use] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Sea_Alternate_Fund_Use](
	[K12_SE_Alternate_Fund_Use_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Alternate_Fund_Uses_Id] [int] NOT NULL,
 CONSTRAINT [PK_K12_SEA_Alternate_Fund_Use] PRIMARY KEY CLUSTERED 
(
	[K12_SE_Alternate_Fund_Use_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_K12_Sea_Alternate_Fund_Use] UNIQUE NONCLUSTERED 
(
	[Organization_Id] ASC,
	[Ref_Alternate_Fund_Uses_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Sea_Federal_Fund_Allocation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Sea_Federal_Fund_Allocation](
	[K12_SEA_Federal_Fund_Allocation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Federal_Program_Code] [nvarchar](10) NOT NULL,
	[Ref_Federal_Program_Funding_Allocation_Type_Id] [int] NULL,
	[Federal_Programs_Funding_Allocation] [numeric](18, 2) NULL,
 CONSTRAINT [PK_K12_SEA_Federal_Fund_Allocation] PRIMARY KEY CLUSTERED 
(
	[K12_SEA_Federal_Fund_Allocation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Sea_Federal_Funds] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Sea_Federal_Funds](
	[Organization_Id] [int] NOT NULL,
	[State_Transferability_Of_Funds] [bit] NULL,
	[Date_State_Received_Title_III_Allocation] [date] NULL,
	[Date_Title_III_Funds_Available_To_Subgrantees] [date] NULL,
	[Number_Of_Days_For_Title_III_Subgrants] [numeric](6, 2) NULL,
 CONSTRAINT [PK_K12_SEA_Federal_Funds] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Staff_Assignment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Staff_Assignment](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_K12_Staff_Classification_Id] [int] NULL,
	[Ref_Professional_Education_Job_Classification_Id] [int] NULL,
	[Ref_Teaching_Assignment_Role_Id] [int] NULL,
	[Primary_Assignment] [bit] NULL,
	[Teacher_Of_Record] [bit] NULL,
	[Ref_Classroom_Position_Type_Id] [int] NULL,
	[Full_Time_Equivalency] [decimal](5, 4) NULL,
	[Contribution_Percentage] [decimal](5, 2) NULL,
	[Itinerant_Teacher] [bit] NULL,
	[Highly_Qualified_Teacher_Indicator] [bit] NULL,
	[Special_Education_Teacher] [bit] NULL,
	[Ref_Special_Education_Staff_Category_Id] [int] NULL,
	[Special_Education_Related_Services_Personnel] [bit] NULL,
	[Special_Education_Paraprofessional] [bit] NULL,
	[Ref_Special_Education_Age_Group_Taught_Id] [int] NULL,
	[Ref_Mep_Staff_Category_Id] [int] NULL,
	[Ref_Title_I_Program_Staff_Category_Id] [int] NULL,
 CONSTRAINT [PK_K12_Staff_Assignment] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Staff_Employment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Staff_Employment](
	[Staff_Employment_Id] [int] NOT NULL,
	[Ref_K12_Staff_Classification_Id] [int] NULL,
	[Ref_Employment_Status_Id] [int] NULL,
	[Contract_Days_Of_Service_Per_Year] [decimal](5, 2) NULL,
	[Staff_Compensation_Base_Salary] [decimal](9, 2) NULL,
	[Staff_Compensation_Retirement_Benefits] [decimal](9, 2) NULL,
	[Staff_Compensation_Health_Benefits] [decimal](9, 2) NULL,
	[Staff_Compensation_Other_Benefits] [decimal](9, 2) NULL,
	[Staff_Compensation_Total_Benefits] [decimal](9, 2) NULL,
	[Staff_Compensation_Total_Salary] [decimal](9, 2) NULL,
	[Mep_Personnel_Indicator] [bit] NULL,
	[Title_I_Targeted_Assistance_Staff_Funded] [bit] NULL,
	[Salary_For_Teaching_Assignment_Only_Indicator] [bit] NULL,
 CONSTRAINT [PK_K12_Staff_Employment] PRIMARY KEY CLUSTERED 
(
	[Staff_Employment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Student_Academic_Honor] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Student_Academic_Honor](
	[K12_Student_Academic_Honor_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Academic_Honor_Type_Id] [int] NULL,
	[Honor_Description] [nvarchar](80) NULL,
 CONSTRAINT [PK_K12_Student_Academic_Honor] PRIMARY KEY CLUSTERED 
(
	[K12_Student_Academic_Honor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Student_Academic_Record] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Student_Academic_Record](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Credits_Attempted_Cumulative] [decimal](9, 2) NULL,
	[Credits_Earned_Cumulative] [decimal](9, 2) NULL,
	[Grade_Points_Earned_Cumulative] [decimal](9, 2) NULL,
	[Grade_Point_Average_Cumulative] [decimal](9, 4) NULL,
	[Ref_Gpa_Weighted_Indicator_Id] [int] NULL,
	[Projected_Graduation_Date] [nchar](7) NULL,
	[High_School_Student_Class_Rank] [int] NULL,
	[Class_Ranking_Date] [nvarchar](10) NULL,
	[Total_Number_In_Class] [int] NULL,
	[Diploma_Or_Credential_Award_Date] [nchar](7) NULL,
	[Ref_High_School_Diploma_Type_Id] [int] NULL,
	[Ref_High_School_Diploma_Distinction_Type_Id] [int] NULL,
	[Ref_Technology_Literacy_Status_Id] [int] NULL,
	[Ref_Ps_Enrollment_Action_Id] [int] NULL,
	[Ref_Pre_And_Post_Test_Indicator_Id] [int] NULL,
	[Ref_Professional_Technical_Credential_Type_Id] [int] NULL,
	[Ref_Progress_Level_Id] [int] NULL,
 CONSTRAINT [PK_K12_Student_Academic_Record] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Student_Activity] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Student_Activity](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Activity_Time_Involved] [decimal](9, 2) NULL,
	[Ref_Activity_Time_Measurement_Type_Id] [int] NULL,
 CONSTRAINT [PK_K12_Student_Activity] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Student_Cohort] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Student_Cohort](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Cohort_Year] [nchar](4) NULL,
	[Cohort_Graduation_Year] [nchar](4) NULL,
	[Graduation_Rate_Survey_Cohort_Year] [nchar](4) NULL,
	[Graduation_Rate_Survey_Indicator] [bit] NULL,
	[Cohort_Description] [nvarchar](30) NULL,
 CONSTRAINT [PK_K12_Student_Cohort] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Student_Course_Section] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Student_Course_Section](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Course_Repeat_Code_Id] [int] NULL,
	[Ref_Course_Section_Enrollment_Status_Type_Id] [int] NULL,
	[Ref_Course_Section_Entry_Type_Id] [int] NULL,
	[Ref_Course_Section_Exit_Type_Id] [int] NULL,
	[Ref_Exit_Or_Withdrawal_Status_Id] [int] NULL,
	[Ref_Grade_Level_When_Course_Taken_Id] [int] NULL,
	[Grade_Earned] [nvarchar](15) NULL,
	[Grade_Value_Qualifier] [nvarchar](100) NULL,
	[Number_Of_Credits_Attempted] [decimal](9, 2) NULL,
	[Ref_Credit_Type_Earned_Id] [int] NULL,
	[Ref_Additional_Credit_Type_Id] [int] NULL,
	[Ref_Pre_And_Post_Test_Indicator_Id] [int] NULL,
	[Ref_Progress_Level_Id] [int] NULL,
	[Ref_Course_Gpa_Applicability_Id] [int] NULL,
	[Number_Of_Credits_Earned] [decimal](9, 2) NULL,
	[Tuition_Funded] [bit] NULL,
	[Exit_Withdrawal_Date] [date] NULL,
 CONSTRAINT [PK_K12_Student_Course_Section] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Student_Course_Section_Mark] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Student_Course_Section_Mark](
	[K12_Student_Course_Section_Mark_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Marking_Period_Name] [nvarchar](30) NULL,
	[Final_Indicator] [bit] NULL,
	[Grade_Earned] [nvarchar](15) NULL,
	[Mid_Term_Mark] [nvarchar](15) NULL,
	[Grade_Value_Qualifier] [nvarchar](100) NULL,
	[Student_Course_Section_Grade_Narrative] [nvarchar](300) NULL,
 CONSTRAINT [PK_K12_Student_Course_Section_Mark] PRIMARY KEY CLUSTERED 
(
	[K12_Student_Course_Section_Mark_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Student_Discipline] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Student_Discipline](
	[K12_Student_Discipline_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Discipline_Reason_Id] [int] NULL,
	[Ref_Disciplinary_Action_Taken_Id] [int] NULL,
	[Disciplinary_Action_Start_Date] [date] NULL,
	[Disciplinary_Action_End_Date] [date] NULL,
	[Duration_Of_Disciplinary_Action] [decimal](9, 2) NULL,
	[Ref_Discipline_Length_Difference_Reason_Id] [int] NULL,
	[Full_Year_Expulsion] [bit] NULL,
	[Shortened_Expulsion] [bit] NULL,
	[Educational_Services_After_Removal] [bit] NULL,
	[Ref_Idea_Interim_Removal_Id] [int] NULL,
	[Ref_Idea_Interim_Removal_Reason_Id] [int] NULL,
	[Related_To_Zero_Tolerance_Policy] [bit] NULL,
	[Incident_Id] [int] NULL,
	[IEP_Placement_Meeting_Indicator] [bit] NULL,
	[Ref_Discipline_Method_Firearms_Id] [int] NULL,
	[Ref_Discipline_Method_Of_Cwd_Id] [int] NULL,
	[Ref_IDEA_Discipline_Method_Firearm_Id] [int] NULL,
 CONSTRAINT [PK_K12_Student_Discipline] PRIMARY KEY CLUSTERED 
(
	[K12_Student_Discipline_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Student_Employment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Student_Employment](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Employed_While_Enrolled_Id] [int] NULL,
	[Ref_Employed_After_Exit_Id] [int] NULL,
	[Employment_Naics_Code] [nchar](6) NULL,
 CONSTRAINT [PK_K12_Student_Employment] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Student_Enrollment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Student_Enrollment](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Entry_Grade_Level_Id] [int] NULL,
	[Ref_Public_School_Residence] [int] NULL,
	[Ref_Enrollment_Status_Id] [int] NULL,
	[Ref_Entry_Type] [int] NULL,
	[Ref_Exit_Grade_Level] [int] NULL,
	[Ref_Exit_Or_Withdrawal_Status_Id] [int] NULL,
	[Ref_Exit_Or_Withdrawal_Type_Id] [int] NULL,
	[Displaced_Student_Status] [bit] NULL,
	[Ref_End_Of_Term_Status_Id] [int] NULL,
	[Ref_Promotion_Reason_Id] [int] NULL,
	[Ref_Non_Promotion_Reason_Id] [int] NULL,
	[Ref_Food_Service_Eligibility_Id] [int] NULL,
	[First_Entry_Date_Into_US_School] [date] NULL,
	[Ref_Directory_Information_Block_Status_Id] [int] NULL,
	[NSLP_Direct_Certification_Indicator] [bit] NULL,
 CONSTRAINT [XPK_K12_Enrollment_Member] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Student_Graduation_Plan] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Student_Graduation_Plan](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[K12_Course_Id] [int] NOT NULL,
	[Credits_Required] [decimal](9, 2) NULL,
	[Ref_SCED_Course_Subject_Area_Id] [int] NULL,
	[Ref_Grade_Level_When_Course_Taken_Id] [int] NULL,
 CONSTRAINT [PK_K12_Student_Graduation_Plan] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Student_Literacy_Assessment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Student_Literacy_Assessment](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Literacy_Assessment_Id] [int] NULL,
	[Literacy_Pre_Test_Status] [bit] NULL,
	[Literacy_Post_Test_Status] [bit] NULL,
	[Literacy_Goal_Met_Status] [bit] NULL,
 CONSTRAINT [PK_K12_Student_Literacy_Assessment] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Student_Session] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Student_Session](
	[K12_Student_Session_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Organization_Calendar_Session_Id] [int] NULL,
	[Grade_Point_Average_Given_Session] [decimal](9, 4) NULL,
 CONSTRAINT [PK_K12_Student_Session] PRIMARY KEY CLUSTERED 
(
	[K12_Student_Session_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[K12_Title_III_Language_Instruction] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[K12_Title_III_Language_Instruction](
	[K12_Title_III_Language_Instruction_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Title_III_Language_Instruction_Program_Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_K12_LEA_Title_III_Language_Instr] PRIMARY KEY CLUSTERED 
(
	[K12_Title_III_Language_Instruction_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_K12_Lea_Title_III_Language_Instruction] UNIQUE NONCLUSTERED 
(
	[Organization_Id] ASC,
	[Ref_Title_III_Language_Instruction_Program_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Learner_Action] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Learner_Action](
	[Learner_Action_Id] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Item_Response_Id] [int] NULL,
	[Ref_Learner_Action_Type_Id] [int] NULL,
	[Value] [nvarchar](max) NULL,
	[Learner_Action_Date_Time] [datetime] NULL,
	[Learner_Action_Actor_Identifier] [nvarchar](40) NULL,
	[Learner_Action_Object_Description] [nvarchar](300) NULL,
	[Learner_Action_Object_Identifier] [nvarchar](40) NULL,
	[Learner_Action_Object_Type] [nvarchar](60) NULL,
 CONSTRAINT [PK_Assessment_Item_Learner_Action] PRIMARY KEY CLUSTERED 
(
	[Learner_Action_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Learner_Activity] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Learner_Activity](
	[Learner_Activity_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Assessment_Registration_Id] [int] NULL,
	[Course_Section_Id] [int] NULL,
	[Organization_Calendar_Session_Id] [int] NULL,
	[Title] [nvarchar](30) NULL,
	[Description] [nvarchar](300) NULL,
	[Prerequisite] [nvarchar](300) NULL,
	[Ref_Learner_Activity_Type_Id] [int] NULL,
	[Rubric_Url] [nvarchar](512) NULL,
	[Creation_Date] [date] NULL,
	[Maximum_Time_Allowed] [decimal](9, 0) NULL,
	[Ref_Learner_Activity_Maximum_Time_Allowed_Units_Id] [int] NULL,
	[Due_Date] [date] NULL,
	[Due_Time] [time](7) NULL,
	[Maximum_Attempts_Allowed] [decimal](9, 0) NULL,
	[Ref_Learner_Activity_Add_To_Grade_Book_Flag_Id] [int] NULL,
	[Release_Date] [date] NULL,
	[Weight] [decimal](9, 2) NULL,
	[Possible_Points] [decimal](9, 2) NULL,
	[Ref_Language_Id] [int] NULL,
	[Assigned_By_Person_Id] [int] NULL,
	[School_Organization_Id] [int] NULL,
	[Lea_Organization_Id] [int] NULL,
 CONSTRAINT [PK_Learner_Activity] PRIMARY KEY CLUSTERED 
(
	[Learner_Activity_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Learner_Activity_Learning_Resource] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Learner_Activity_Learning_Resource](
	[Learner_Activity_Learning_Resource_Id] [int] IDENTITY(1,1) NOT NULL,
	[Learner_Activity_Id] [int] NOT NULL,
	[Learning_Resource_Id] [int] NOT NULL,
 CONSTRAINT [PK_Learner_Activity_Learning_Resource] PRIMARY KEY CLUSTERED 
(
	[Learner_Activity_Learning_Resource_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Learner_Activity_Learning_Resource] UNIQUE NONCLUSTERED 
(
	[Learner_Activity_Id] ASC,
	[Learning_Resource_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Learning_Resource] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Learning_Resource](
	[Learning_Resource_Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Description] [nvarchar](300) NULL,
	[Url] [nvarchar](512) NULL,
	[Concept_Keyword] [nvarchar](300) NULL,
	[Subject_Name] [nvarchar](30) NULL,
	[Subject_Code] [nvarchar](30) NULL,
	[Subject_Code_System] [nvarchar](30) NULL,
	[Ref_Learning_Resource_Type_Id] [int] NULL,
	[Date_Created] [date] NULL,
	[Version] [nvarchar](30) NULL,
	[Creator] [nvarchar](60) NULL,
	[Publisher_Name] [nvarchar](60) NULL,
	[Published_Date] [date] NULL,
	[Copyright_Holder_Name] [nvarchar](60) NULL,
	[Copyright_Year] [nchar](4) NULL,
	[Learning_Resource_License_URL] [nvarchar](512) NULL,
	[Based_On_Url] [nvarchar](512) NULL,
	[Ref_Learning_Resource_Intended_End_User_Role_Id] [int] NULL,
	[Ref_Learning_Resource_Educational_Use_Id] [int] NULL,
	[Ref_Learning_Resource_Interactivity_Type_Id] [int] NULL,
	[Ref_Language_Id] [int] NULL,
	[Time_Required] [decimal](9, 2) NULL,
	[Typical_Age_Range_Minimum] [tinyint] NULL,
	[Typical_Age_Range_Maximum] [tinyint] NULL,
	[Text_Complexity_Value] [nvarchar](30) NULL,
	[Text_Complexity_System] [nvarchar](30) NULL,
	[Adapted_From_URL] [nvarchar](512) NULL,
	[Assistive_Technologies_Compatible_Ind] [bit] NULL,
	[Peer_Rating_Sample_Size] [int] NULL,
	[Ref_Learning_Resource_Access_API_Type_Id] [int] NULL,
	[Ref_Learning_Resource_Access_Hazard_Type_Id] [int] NULL,
	[Ref_Learning_Resource_Access_Mode_Type_Id] [int] NULL,
	[Ref_Learning_Resource_Book_Format_Type_Id] [int] NULL,
	[Ref_Learning_Resource_Control_Flexibility_Type_Id] [int] NULL,
	[Ref_Learning_Resource_Digital_Media_Sub_Type_Id] [int] NULL,
	[Ref_Learning_Resource_Digital_Media_Type_Id] [int] NULL,
	[Learning_Resource_Author_Email] [nvarchar](128) NULL,
	[Learning_Resource_Author_URL] [nvarchar](512) NULL,
	[Learning_Resource_Date_Modified] [date] NULL,
	[Learning_Resource_Publisher_Email] [nvarchar](128) NULL,
	[Learning_Resource_Publisher_URL] [nvarchar](512) NULL,
	[Ref_Learning_Resource_Access_Rights_Url_Id] [int] NULL,
	[Ref_Learning_Resource_Author_Type_Id] [int] NULL,
	[Ref_Learning_Resource_Interaction_Mode_Id] [int] NULL,
 CONSTRAINT [PK_Learning_Resource] PRIMARY KEY CLUSTERED 
(
	[Learning_Resource_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Learning_Resource_Adaptation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Learning_Resource_Adaptation](
	[Learning_Resource_Adaptation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Learning_Resource_Id] [int] NOT NULL,
	[Adaptation_URL] [nvarchar](512) NOT NULL,
 CONSTRAINT [PK_Learning_Resource_Adaptation] PRIMARY KEY NONCLUSTERED 
(
	[Learning_Resource_Adaptation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Learning_Resource_Education_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Learning_Resource_Education_Level](
	[Learning_Resource_Education_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Learning_Resource_Id] [int] NOT NULL,
	[Ref_Education_Level_Id] [int] NOT NULL,
 CONSTRAINT [PK_Learning_Resource_Education_Lvl] PRIMARY KEY CLUSTERED 
(
	[Learning_Resource_Education_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Learning_Resource_Education_Level] UNIQUE NONCLUSTERED 
(
	[Learning_Resource_Id] ASC,
	[Ref_Education_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Learning_Resource_Media_Feature] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Learning_Resource_Media_Feature](
	[Learning_Resource_Media_Feature_Id] [int] IDENTITY(1,1) NOT NULL,
	[Learning_Resource_Id] [int] NOT NULL,
	[Ref_Learning_Resource_Media_Feature_Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_Learning_Resource_Media_Feature] PRIMARY KEY NONCLUSTERED 
(
	[Learning_Resource_Media_Feature_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Learning_Resource_Peer_Rating] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Learning_Resource_Peer_Rating](
	[Learning_Resource_Peer_Rating_Id] [int] IDENTITY(1,1) NOT NULL,
	[Learning_Resource_Id] [int] NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Peer_Rating_System_Id] [int] NOT NULL,
	[Value] [numeric](18, 4) NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Learning_Resource_Peer_Rating_1] PRIMARY KEY CLUSTERED 
(
	[Learning_Resource_Peer_Rating_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Learning_Resource_Physical_Media] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Learning_Resource_Physical_Media](
	[Learning_Resource_Physical_Media_Id] [int] IDENTITY(1,1) NOT NULL,
	[Learning_Resource_Id] [int] NOT NULL,
	[Ref_Learning_Resource_Physical_Media_Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_Learning_Resource_Physical_Media] PRIMARY KEY NONCLUSTERED 
(
	[Learning_Resource_Physical_Media_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Location] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Location](
	[Location_Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Location_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Location_Address] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Location_Address](
	[Location_Id] [int] NOT NULL,
	[Street_Number_And_Name] [nvarchar](40) NULL,
	[Apartment_Room_Or_Suite_Number] [nvarchar](30) NULL,
	[Building_Site_Number] [nvarchar](30) NULL,
	[City] [nvarchar](30) NULL,
	[Ref_State_Id] [int] NULL,
	[Postal_Code] [nvarchar](17) NULL,
	[County_Name] [nvarchar](30) NULL,
	[Ref_County_Id] [int] NULL,
	[Ref_Country_Id] [int] NULL,
	[Latitude] [nvarchar](20) NULL,
	[Longitude] [nvarchar](20) NULL,
	[Ref_ERS_Rural_Urban_Continuum_Code_Id] [int] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Location_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization](
	[Organization_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NULL,
	[Ref_Organization_Type_Id] [int] NULL,
	[Short_Name] [nvarchar](30) NULL,
	[Region_Geo_JSON] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Accreditation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Accreditation](
	[Organization_Accreditation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Accreditation_Status] [bit] NULL,
	[Ref_Accreditation_Agency_Id] [int] NULL,
	[Accreditation_Award_Date] [date] NULL,
	[Accreditation_Expiration_Date] [date] NULL,
	[Seeking_Accreditation_Date] [date] NULL,
	[Ref_Higher_Education_Institution_Accreditation_Status_Id] [int] NULL,
 CONSTRAINT [PK_Organization_Accreditation] PRIMARY KEY CLUSTERED 
(
	[Organization_Accreditation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Calendar] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Calendar](
	[Organization_Calendar_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Calendar_Code] [nvarchar](30) NULL,
	[Calendar_Description] [nvarchar](60) NOT NULL,
	[Calendar_Year] [nchar](4) NULL,
 CONSTRAINT [PK_Organization_Calendar] PRIMARY KEY CLUSTERED 
(
	[Organization_Calendar_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Calendar_Crisis] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Calendar_Crisis](
	[Organization_Calendar_Crisis_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Code] [nvarchar](30) NULL,
	[Name] [nvarchar](50) NULL,
	[Start_Date] [date] NULL,
	[End_Date] [date] NULL,
	[Type] [nvarchar](50) NULL,
	[Crisis_Description] [nvarchar](300) NULL,
	[Crisis_End_Date] [date] NULL,
 CONSTRAINT [PK_Organization_Calendar_Crisis] PRIMARY KEY CLUSTERED 
(
	[Organization_Calendar_Crisis_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Calendar_Day] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Calendar_Day](
	[Organization_Calendar_Day_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Calendar_Id] [int] NOT NULL,
	[Day_Name] [nvarchar](30) NOT NULL,
	[Alternate_Day_Name] [nvarchar](30) NULL,
 CONSTRAINT [PK_Organization_Calendar_Day] PRIMARY KEY CLUSTERED 
(
	[Organization_Calendar_Day_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Calendar_Event] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Calendar_Event](
	[Organization_Calendar_Event_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Calendar_Id] [int] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Event_Date] [date] NOT NULL,
	[Ref_Calendar_Event_Type] [int] NULL,
 CONSTRAINT [PK_Organization_Calendar_Event] PRIMARY KEY CLUSTERED 
(
	[Organization_Calendar_Event_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Calendar_Session] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Calendar_Session](
	[Organization_Calendar_Session_Id] [int] IDENTITY(1,1) NOT NULL,
	[Designator] [nvarchar](7) NULL,
	[Begin_Date] [date] NULL,
	[End_Date] [date] NULL,
	[Ref_Session_Type_Id] [int] NULL,
	[Instructional_Minutes] [numeric](18, 0) NULL,
	[Code] [nvarchar](30) NULL,
	[Description] [nvarchar](max) NULL,
	[Marking_Term_Indicator] [bit] NULL,
	[Scheduling_Term_Indicator] [bit] NULL,
	[Attendance_Term_Indicator] [bit] NULL,
	[Organization_Calendar_Id] [int] NULL,
	[Days_In_Session] [int] NULL,
	[First_Instruction_Date] [date] NULL,
	[Last_Instruction_Date] [date] NULL,
	[Minutes_Per_Day] [int] NULL,
	[Session_Start_Time] [time](7) NULL,
	[Session_End_Time] [time](7) NULL,
 CONSTRAINT [PK_Organization_Calendar_Session] PRIMARY KEY CLUSTERED 
(
	[Organization_Calendar_Session_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Email] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Email](
	[Organization_Email_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Electronic_Mail_Address] [nvarchar](128) NULL,
	[Ref_Email_Type_Id] [int] NULL,
 CONSTRAINT [PK_Organization_Email] PRIMARY KEY CLUSTERED 
(
	[Organization_Email_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Employee_Benefit] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Employee_Benefit](
	[Organization_Employee_Benefit_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Full_Time_Benefit_Indicator] [bit] NULL,
	[Part_Time_Benefit_Indicator] [bit] NULL,
	[Ref_Employee_Benefit_Id] [int] NULL,
 CONSTRAINT [PK_Organization_Employee_Benefit] PRIMARY KEY CLUSTERED 
(
	[Organization_Employee_Benefit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Federal_Accountability] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Federal_Accountability](
	[Organization_Federal_Accountability_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Ayp_Status_Id] [int] NULL,
	[Alternate_Ayp_Approach_Indicator] [bit] NULL,
	[Ayp_Appeal_Changed_Designation] [bit] NULL,
	[Ayp_Appeal_Process_Date] [date] NULL,
	[Ayp_Appeal_Process_Designation] [bit] NULL,
	[Amao_Ayp_Progress_Attainment_Lep_Students] [int] NULL,
	[Amao_Proficiency_Attainment_Lep_Students] [int] NULL,
	[Amao_Progress_Attainment_Lep_Students] [int] NULL,
	[Ref_Gun_Free_Schools_Act_Status_Reporting_Id] [int] NULL,
	[Ref_High_School_Graduation_Rate_Indicator] [int] NULL,
	[Ref_Participation_Status_Math_Id] [int] NULL,
	[Ref_Participation_Status_Rla_Id] [int] NULL,
	[Ref_Proficiency_Target_Status_Math_Id] [int] NULL,
	[Ref_Proficiency_Target_Status_RLA_Id] [int] NULL,
	[Persistently_Dangerous_Status] [bit] NULL,
	[Ref_Reconstituted_Status_Id] [int] NULL,
	[Ref_Elementary_Middle_Additional_Id] [int] NULL,
	[Accountability_Report_Title] [nvarchar](80) NULL,
	[Ref_Cte_Graduation_Rate_Inclusion_Id] [int] NULL,
 CONSTRAINT [PK_Organization_Federal_Accountability] PRIMARY KEY CLUSTERED 
(
	[Organization_Federal_Accountability_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Financial] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Financial](
	[Organization_Financial_Id] [int] IDENTITY(1,1) NOT NULL,
	[Financial_Account_Id] [int] NOT NULL,
	[Organization_Calendar_Session_Id] [int] NOT NULL,
	[Actual_Value] [decimal](12, 2) NULL,
	[Budgeted_Value] [decimal](12, 1) NULL,
	[Date] [date] NULL,
	[Encumbered_Value] [decimal](9, 2) NULL,
	[Value] [decimal](9, 2) NULL,
	[Fiscal_Period_Begin_Date] [date] NULL,
	[Fiscal_Period_End_Date] [date] NULL,
	[Fiscal_Year] [nchar](4) NULL,
	[Financial_Account_Program_Id] [int] NULL,
 CONSTRAINT [PK_Organization_Financial] PRIMARY KEY CLUSTERED 
(
	[Organization_Financial_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Identifier] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Identifier](
	[Organization_Identifier_Id] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[Ref_Organization_Identification_System_Id] [int] NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Organization_Identifier_Type_Id] [int] NULL,
 CONSTRAINT [PK_Organization_Identifier] PRIMARY KEY CLUSTERED 
(
	[Organization_Identifier_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Image] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Image](
	[Organization_Id] [int] NOT NULL,
	[URL] [nvarchar](512) NULL,
 CONSTRAINT [PK_Organization_Image] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Indicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Indicator](
	[Organization_Indicator_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Indicator_Value] [nvarchar](50) NOT NULL,
	[Ref_Organization_Indicator_Id] [int] NOT NULL,
 CONSTRAINT [PK_Organization_Indicator] PRIMARY KEY CLUSTERED 
(
	[Organization_Indicator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Location] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Location](
	[Organization_Location_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Location_Id] [int] NOT NULL,
	[Ref_Organization_Location_Type_Id] [int] NULL,
 CONSTRAINT [PK_Organization_Location] PRIMARY KEY CLUSTERED 
(
	[Organization_Location_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Operational_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Operational_Status](
	[Organization_Operational_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Operational_Status_Id] [int] NOT NULL,
	[Operational_Status_Effective_Date] [date] NULL,
 CONSTRAINT [PK_Organization_Operational_Status] PRIMARY KEY CLUSTERED 
(
	[Organization_Operational_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Person_Role] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Person_Role](
	[Organization_Person_Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Role_Id] [int] NOT NULL,
	[Entry_Date] [datetime] NULL,
	[Exit_Date] [datetime] NULL,
 CONSTRAINT [PK_Organization_Person_Role] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Policy] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Policy](
	[Organization_Policy_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Policy_Type] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Organization_Policy] PRIMARY KEY CLUSTERED 
(
	[Organization_Policy_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Program_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Program_Type](
	[Organization_Program_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Program_Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_Organization_Program_Type] PRIMARY KEY CLUSTERED 
(
	[Organization_Program_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Relationship] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Relationship](
	[Organization_Relationship_Id] [int] IDENTITY(1,1) NOT NULL,
	[Parent_Organization_Id] [int] NOT NULL,
	[Organization_Id] [int] NULL,
	[Ref_Organization_Relationship_Id] [int] NOT NULL,
 CONSTRAINT [PK_Organization_Relationship] PRIMARY KEY CLUSTERED 
(
	[Organization_Relationship_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Service] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Service](
	[Organization_Service_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Student_Support_Service_Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_Organization_Service] PRIMARY KEY CLUSTERED 
(
	[Organization_Service_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Organization_Ref_Student_Support_Service_Type] UNIQUE NONCLUSTERED 
(
	[Organization_Id] ASC,
	[Ref_Student_Support_Service_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Technical_Assistance] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Technical_Assistance](
	[Organization_Technical_Assistance_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Technical_Assistance_Type_Id] [int] NULL,
	[Ref_Technical_Assistance_Delivery_Type_Id] [int] NULL,
	[Technical_Assistance_Approved_Ind] [bit] NULL,
 CONSTRAINT [PK_Organization_Technical_Assistance] PRIMARY KEY CLUSTERED 
(
	[Organization_Technical_Assistance_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Telephone] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Telephone](
	[Organization_Telephone_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Telephone_Number] [nvarchar](24) NOT NULL,
	[Primary_Telephone_Number_Indicator] [bit] NOT NULL,
	[Ref_Institution_Telephone_Type_Id] [int] NULL,
 CONSTRAINT [PK_Organization_Phone_Phone] PRIMARY KEY CLUSTERED 
(
	[Organization_Telephone_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Organization_Website] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Organization_Website](
	[Organization_Id] [int] NOT NULL,
	[Website] [nvarchar](300) NULL,
 CONSTRAINT [PK_Organization_Website] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[PD_Activity_Education_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[PD_Activity_Education_Level](
	[PD_Activity_Education_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Professional_Development_Activity_Id] [int] NOT NULL,
	[Ref_PD_Activity_Education_Levels_Addressed_Id] [int] NOT NULL,
 CONSTRAINT [PK_PD_Activity_Education_Level] PRIMARY KEY NONCLUSTERED 
(
	[PD_Activity_Education_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Peer_Rating_System] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Peer_Rating_System](
	[Peer_Rating_System_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[Maximum_Value] [numeric](18, 4) NULL,
	[Minimum_Value] [numeric](18, 4) NOT NULL,
	[Optimum_Value] [numeric](18, 4) NULL,
 CONSTRAINT [PK_Peer_Rating_System] PRIMARY KEY CLUSTERED 
(
	[Peer_Rating_System_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person](
	[Person_Id] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [nvarchar](35) NULL,
	[Middle_Name] [nvarchar](35) NULL,
	[Last_Name] [nvarchar](35) NOT NULL,
	[Generation_Code] [nvarchar](10) NULL,
	[Prefix] [nvarchar](30) NULL,
	[Birthdate] [date] NULL,
	[Ref_Sex_Id] [int] NULL,
	[Hispanic_Latino_Ethnicity] [bit] NULL,
	[Ref_US_Citizenship_Status_Id] [int] NULL,
	[Ref_Visa_Type_Id] [int] NULL,
	[Ref_State_Of_Residence_Id] [int] NULL,
	[Ref_Proof_Of_Residency_Type_Id] [int] NULL,
	[Ref_Highest_Education_Level_Completed_Id] [int] NULL,
	[Ref_Personal_Information_Verification_Id] [int] NULL,
	[Birthdate_Verification] [nvarchar](60) NULL,
	[Ref_Tribal_Affiliation_Id] [int] NULL,
 CONSTRAINT [XPK_Person] PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Assessment_Personal_Needs_Profile] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Assessment_Personal_Needs_Profile](
	[Person_Assessment_Personal_Needs_Profile_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Assessment_Personal_Needs_Profile_Id] [int] NOT NULL,
 CONSTRAINT [PK_Person_Assessment_Personal_Needs_Profile] PRIMARY KEY CLUSTERED 
(
	[Person_Assessment_Personal_Needs_Profile_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Person_Assessment_Personal_Needs_Profile] UNIQUE NONCLUSTERED 
(
	[Person_Id] ASC,
	[Assessment_Personal_Needs_Profile_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Address] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Address](
	[Person_Address_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Ref_Person_Location_Type_Id] [int] NOT NULL,
	[Street_Number_And_Name] [nvarchar](40) NULL,
	[Apartment_Room_Or_Suite_Number] [nvarchar](30) NULL,
	[City] [nvarchar](30) NULL,
	[Ref_State_Id] [int] NULL,
	[Postal_Code] [nvarchar](17) NULL,
	[Address_County_Name] [nvarchar](30) NULL,
	[Ref_County_Id] [int] NULL,
	[Ref_Country_Id] [int] NULL,
	[Latitude] [nvarchar](20) NULL,
	[Longitude] [nvarchar](20) NULL,
	[Ref_Personal_Information_Verification_Id] [int] NULL,
 CONSTRAINT [PK_Person_Address] PRIMARY KEY CLUSTERED 
(
	[Person_Address_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Allergy] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Allergy](
	[Person_Allergy_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Ref_Allergy_Type_Id] [int] NOT NULL,
	[Ref_Allergy_Severity_Id] [int] NULL,
	[Reaction_Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Person_Allergy] PRIMARY KEY CLUSTERED 
(
	[Person_Allergy_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Birthplace] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Birthplace](
	[Person_Id] [int] NOT NULL,
	[City] [nvarchar](30) NULL,
	[Ref_State_Id] [int] NULL,
	[Ref_Country_Id] [int] NULL,
 CONSTRAINT [XPK_Person_Birthplace] PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Career_Education_Plan] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Career_Education_Plan](
	[Person_Career_Education_Plan_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Last_Updated] [date] NULL,
	[Ref_Career_Education_Plan_Type_Id] [int] NULL,
	[Professional_Development_Plan_Approved_By_Supervisor] [bit] NULL,
	[Professional_Development_Plan_Completion] [date] NULL,
	[Tuition_Funded] [bit] NULL,
 CONSTRAINT [PK_Person_Career_Education_Plan] PRIMARY KEY CLUSTERED 
(
	[Person_Career_Education_Plan_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Credential] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Credential](
	[Person_Credential_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Credential_Name] [nvarchar](60) NULL,
	[Ref_Credential_Type_Id] [int] NULL,
	[Issuance_Date] [date] NULL,
	[Expiration_Date] [date] NULL,
	[Ref_Issuing_State_Id] [int] NULL,
	[Professional_Certificate_Or_License_Number] [nvarchar](30) NULL,
	[Credential_Or_License_Award_Entity] [nvarchar](60) NULL,
 CONSTRAINT [PK_Person_Credential] PRIMARY KEY CLUSTERED 
(
	[Person_Credential_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Degree_Or_Certificate] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Degree_Or_Certificate](
	[Person_Degree_Or_Certificate_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Degree_Or_Certificate_Title_Or_Subject] [nvarchar](45) NULL,
	[Ref_Degree_Or_Certificate_Type_Id] [int] NULL,
	[Award_Date] [date] NULL,
	[Name_Of_Institution] [nvarchar](60) NULL,
	[Ref_Higher_Education_Institution_Accreditation_Status_Id] [int] NULL,
	[Ref_Education_Verification_Method_Id] [int] NULL,
 CONSTRAINT [XPK_Person_Degree_Or_Certificate] PRIMARY KEY CLUSTERED 
(
	[Person_Degree_Or_Certificate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Demographic_Race] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Demographic_Race](
	[Person_Demographic_Race_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Ref_Race_Id] [int] NOT NULL,
 CONSTRAINT [XPK_Demographic_Race] PRIMARY KEY CLUSTERED 
(
	[Person_Demographic_Race_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Disability] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Disability](
	[Person_Id] [int] NOT NULL,
	[Primary_Disability_Type_Id] [int] NULL,
	[Disability_Status] [bit] NULL,
	[Ref_Accommodations_Needed_Type_Id] [int] NULL,
	[Ref_Disability_Condition_Type_Id] [int] NULL,
	[Ref_Disability_Determination_Source_Type_Id] [int] NULL,
	[Ref_Disability_Condition_Status_Code_Id] [int] NULL,
	[Ref_IDEA_Disability_Type_Id] [int] NULL,
 CONSTRAINT [PK_Person_Disability] PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Email_Address] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Email_Address](
	[Person_Email_Address_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Email_Address] [nvarchar](128) NULL,
	[Ref_Email_Type_Id] [int] NULL,
 CONSTRAINT [PK_Person_Email_Address] PRIMARY KEY CLUSTERED 
(
	[Person_Email_Address_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Family] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Family](
	[Person_Family_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Family_Identifier] [nvarchar](40) NULL,
	[Number_Of_People_In_Family] [int] NULL,
	[Number_Of_People_In_Household] [int] NULL,
	[Family_Income] [decimal](10, 2) NULL,
	[Ref_Family_Income_Source_Id] [int] NULL,
	[Ref_Income_Calculation_Method_Id] [int] NULL,
	[Ref_Proof_Of_Residency_Type_Id] [int] NULL,
	[Ref_EL_Program_Eligibility_Id] [int] NULL,
	[Ref_Highest_Education_Level_Completed_Id] [int] NULL,
	[Ref_Communication_Method_Id] [int] NULL,
	[Included_In_Counted_Family_Size] [bit] NULL,
 CONSTRAINT [XPK_Person_Family] PRIMARY KEY CLUSTERED 
(
	[Person_Family_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Health] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Health](
	[Person_Health_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Vision_Screening_Date] [date] NULL,
	[Ref_Vision_Screening_Status_Id] [int] NULL,
	[Hearing_Screening_Date] [date] NULL,
	[Ref_Hearing_Screening_Status_Id] [int] NULL,
	[Dental_Screening_Date] [date] NOT NULL,
	[Ref_Dental_Screening_Status_Id] [int] NULL,
	[Ref_Health_Insurance_Coverage_Id] [int] NULL,
	[Ref_Dental_Insurance_Coverage_Type_Id] [int] NULL,
	[Ref_Medical_Alert_Indicator_Id] [int] NULL,
	[Health_Screening_Equipment_Used] [nvarchar](300) NULL,
	[Health_Screening_Follow_Up_Recommendation] [nvarchar](max) NULL,
 CONSTRAINT [XPK_Person_Health] PRIMARY KEY CLUSTERED 
(
	[Person_Health_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Health_Birth] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Health_Birth](
	[Person_Id] [int] NOT NULL,
	[Weeks_Of_Gestation] [int] NULL,
	[Multiple_Birth_Indicator] [bit] NULL,
	[Weight_At_Birth] [nvarchar](20) NULL,
	[Ref_Trimester_When_Prenatal_Care_Began_Id] [int] NULL,
 CONSTRAINT [PK_Person_Health_Birth] PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Homelessness] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Homelessness](
	[Person_Id] [int] NOT NULL,
	[Homelessness_Status] [bit] NOT NULL,
	[Ref_Homeless_Nighttime_Residence_Id] [int] NOT NULL,
 CONSTRAINT [PK_Homeless_Primary_Nighttime_Residence] PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Identifier] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Identifier](
	[Person_Identifier_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[Ref_Person_Identification_System_Id] [int] NOT NULL,
	[Ref_Personal_Information_Verification_Id] [int] NULL,
 CONSTRAINT [XPK_Person_Identifier] PRIMARY KEY CLUSTERED 
(
	[Person_Identifier_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Immunization] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Immunization](
	[Person_Immunization_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Immunization_Date] [date] NOT NULL,
	[Ref_Immunization_Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_Person_Immunization] PRIMARY KEY CLUSTERED 
(
	[Person_Immunization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Language] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Language](
	[Person_Language_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Ref_Language_Id] [int] NOT NULL,
	[Ref_Language_Use_Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_Person_Language] PRIMARY KEY CLUSTERED 
(
	[Person_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Military] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Military](
	[Person_Id] [int] NOT NULL,
	[Ref_Military_Active_Student_Indicator_Id] [int] NULL,
	[Ref_Military_Connected_Student_Indicator_Id] [int] NULL,
	[Ref_Military_Veteran_Student_Indicator_Id] [int] NULL,
	[Ref_Military_Branch_Id] [int] NULL,
 CONSTRAINT [PK_Person_Military] PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Other_Name] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Other_Name](
	[Person_Other_Name_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Ref_Other_Name_Type_Id] [int] NULL,
	[Other_Name] [nvarchar](40) NULL,
	[First_Name] [nvarchar](35) NULL,
	[Middle_Name] [nvarchar](35) NULL,
	[Last_Name] [nvarchar](35) NULL,
 CONSTRAINT [PK_Person_Other_Name] PRIMARY KEY CLUSTERED 
(
	[Person_Other_Name_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Program_Participation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Program_Participation](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Participation_Type_Id] [int] NULL,
	[Ref_Program_Exit_Reason_Id] [int] NULL,
	[Participation_Status] [nvarchar](100) NULL,
 CONSTRAINT [PK_Person_Program_Participation_1] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Referral] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Referral](
	[Person_Referral_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Referral_Date] [date] NULL,
	[Reason] [nvarchar](max) NULL,
	[Source] [nvarchar](60) NULL,
	[Referral_Type_Received] [nvarchar](60) NULL,
	[Referred_To] [nvarchar](60) NULL,
	[Ref_Referral_Outcome_Id] [int] NULL,
 CONSTRAINT [PK_Person_Referral] PRIMARY KEY CLUSTERED 
(
	[Person_Referral_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Relationship] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Relationship](
	[Person_Relationship_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Related_Person_Id] [int] NOT NULL,
	[Ref_Person_Relationship_Id] [int] NULL,
	[Custodial_Relationship_Indicator] [bit] NULL,
	[Emergency_Contact_Ind] [bit] NULL,
	[Contact_Priority_Number] [int] NULL,
	[Contact_Restrictions] [nvarchar](2000) NULL,
	[Lives_With_Indicator] [bit] NULL,
	[Primary_Contact_Indicator] [bit] NULL,
 CONSTRAINT [XPK_Person_Relationship] PRIMARY KEY CLUSTERED 
(
	[Person_Relationship_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Status](
	[Person_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Ref_Person_Status_Type_Id] [int] NOT NULL,
	[Status_Value] [bit] NOT NULL,
	[Status_Start_Date] [date] NULL,
	[Status_End_Date] [date] NULL,
 CONSTRAINT [PK_Person_Status] PRIMARY KEY CLUSTERED 
(
	[Person_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Person_Telephone] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Person_Telephone](
	[Person_Telephone_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Telephone_Number] [nvarchar](24) NULL,
	[Primary_Telephone_Number_Indicator] [bit] NOT NULL,
	[Ref_Person_Telephone_Number_Type_Id] [int] NULL,
 CONSTRAINT [XPK_Person_Phone] PRIMARY KEY CLUSTERED 
(
	[Person_Telephone_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Professional_Development_Activity] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Professional_Development_Activity](
	[Professional_Development_Activity_Id] [int] IDENTITY(1,1) NOT NULL,
	[Course_Id] [int] NULL,
	[Professional_Development_Requirement_Id] [int] NOT NULL,
	[Title] [nvarchar](60) NULL,
	[Activity_Identifier] [nvarchar](40) NULL,
	[Description] [nvarchar](2000) NULL,
	[Objective] [nvarchar](2000) NULL,
	[Activity_Code] [nvarchar](30) NULL,
	[Approval_Code] [nvarchar](30) NULL,
	[Cost] [decimal](6, 2) NULL,
	[Credits] [decimal](6, 2) NULL,
	[Ref_Course_Credit_Unit_Id] [int] NULL,
	[Scholarship_Status] [bit] NULL,
	[Ref_Professional_Development_Financial_Support_Id] [int] NULL,
	[Publish_Indicator] [bit] NULL,
	[Ref_PD_Audience_Type_Id] [int] NULL,
	[Ref_PD_Activity_Approved_Purpose_Id] [int] NULL,
	[Ref_PD_Activity_Credit_Type_Id] [int] NULL,
	[Ref_PD_Activity_Level_Id] [int] NULL,
	[Ref_PD_Activity_Type_Id] [int] NULL,
	[Professional_Development_Activity_State_Approved_Status] [bit] NULL,
 CONSTRAINT [PK_Professional_Development_Activity] PRIMARY KEY CLUSTERED 
(
	[Professional_Development_Activity_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Professional_Development_Requirement] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Professional_Development_Requirement](
	[Professional_Development_Requirement_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Required_Training_Clock_Hours] [decimal](6, 2) NULL,
	[Competency_Set_Id] [int] NULL,
 CONSTRAINT [PK_Professional_Development_Requirement] PRIMARY KEY CLUSTERED 
(
	[Professional_Development_Requirement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Professional_Development_Session] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Professional_Development_Session](
	[Professional_Development_Session_Id] [int] IDENTITY(1,1) NOT NULL,
	[Professional_Development_Activity_Id] [int] NOT NULL,
	[Session_Identifier] [nvarchar](40) NULL,
	[Ref_PD_Delivery_Method_Id] [int] NULL,
	[Capacity] [int] NULL,
	[Start_Date] [date] NULL,
	[Start_Time] [nvarchar](15) NULL,
	[End_Date] [date] NULL,
	[End_Time] [nvarchar](15) NULL,
	[Location_Name] [nvarchar](60) NULL,
	[Evaluation_Method] [nvarchar](30) NULL,
	[Evaluation_Score] [nvarchar](30) NULL,
	[Expiration_Date] [date] NULL,
	[Ref_PD_Session_Status_Id] [int] NULL,
	[Ref_PD_Instructional_Delivery_Mode_Id] [int] NULL,
	[Sponsoring_Agency_Name] [nvarchar](60) NULL,
	[Ref_Language_Id] [int] NULL,
	[Funding_Source] [nvarchar](30) NULL,
	[Training_And_Technical_Assistance_Level] [nvarchar](100) NULL,
	[Ref_EL_Trainer_Core_Knowledge_Area_Id] [int] NULL,
 CONSTRAINT [PK_Professional_Development_Session] PRIMARY KEY CLUSTERED 
(
	[Professional_Development_Session_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Professional_Development_Session_Instructor] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Professional_Development_Session_Instructor](
	[Professional_Development_Session_Instructor_Id] [int] IDENTITY(1,1) NOT NULL,
	[Professional_Development_Session_Id] [int] NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
 CONSTRAINT [PK_Professional_Development_Session_Instructor] PRIMARY KEY NONCLUSTERED 
(
	[Professional_Development_Session_Instructor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Program] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Program](
	[Organization_Id] [int] NOT NULL,
	[Credits_Required] [decimal](9, 2) NULL,
 CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Program_Participation_AE] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Program_Participation_AE](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Ae_Instructional_Program_Type_Id] [int] NULL,
	[Ref_Ae_Postsecondary_Transition_Action_Id] [int] NULL,
	[Postsecondary_Transition_Date] [date] NULL,
	[Ref_Ae_Special_Program_Type_Id] [int] NULL,
	[Ref_Ae_Functioning_Level_At_Intake_Id] [int] NULL,
	[Ref_Ae_Functioning_Level_At_Posttest_Id] [int] NULL,
	[Ref_Goals_For_Attending_Adult_Education_Id] [int] NULL,
	[Displaced_Homemaker_Indicator] [bit] NULL,
	[Proxy_Contact_Hours] [decimal](5, 1) NULL,
	[Instructional_Activity_Hours_Completed] [decimal](9, 2) NULL,
	[Ref_Correctional_Education_Facility_Type_Id] [int] NULL,
	[Ref_Workbased_Learning_Opportunity_Type_Id] [int] NULL,
 CONSTRAINT [PK_Program_Participation_AE] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Program_Participation_Cte] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Program_Participation_Cte](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Cte_Participant] [bit] NULL,
	[Cte_Concentrator] [bit] NULL,
	[Cte_Completer] [bit] NULL,
	[Single_Parent_Or_Single_Pregnant_Woman] [bit] NULL,
	[Displaced_Homemaker_Indicator] [bit] NULL,
	[Cte_Non_Traditional_Completion] [bit] NULL,
	[Ref_Non_Traditional_Gender_Status_Id] [int] NULL,
	[Ref_Workbased_Learning_Opportunity_Type_Id] [int] NULL,
	[Career_Pathways_Program_Participation_Exit_Date] [date] NULL,
	[Career_Pathways_Program_Participation_Start_Date] [date] NULL,
 CONSTRAINT [PK_Program_Participation_Cte] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Program_Participation_Food_Service] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Program_Participation_Food_Service](
	[Program_Participation_Food_Service_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_School_Food_Service_Program_Id] [int] NOT NULL,
 CONSTRAINT [PK_Program_Participation_Food_Service] PRIMARY KEY CLUSTERED 
(
	[Program_Participation_Food_Service_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Program_Participation_Migrant] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Program_Participation_Migrant](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Mep_Enrollment_Type_Id] [int] NULL,
	[Ref_Mep_Project_Based_Id] [int] NULL,
	[Ref_Mep_Service_Type_Id] [int] NULL,
	[Mep_Eligibility_Expiration_Date] [date] NULL,
	[Continuation_Of_Services_Status] [bit] NULL,
	[Ref_Continuation_Of_Services_Reason_Id] [int] NULL,
	[Birthdate_Verification] [nvarchar](60) NULL,
	[Immunization_Record_Flag] [bit] NULL,
	[Migrant_Student_Qualifying_Arrival_Date] [date] NULL,
	[Last_Qualifying_Move_Date] [date] NULL,
	[Qualifying_Move_From_City] [nvarchar](30) NULL,
	[Ref_Qualifying_Move_From_State_Id] [int] NULL,
	[Ref_Qualifying_Move_From_Country_Id] [int] NULL,
	[Designated_Graduation_School_Id] [int] NULL,
	[Prioritized_For_Services] [bit] NULL,
 CONSTRAINT [PK_Program_Participation_Migrant] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Program_Participation_Neglected] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Program_Participation_Neglected](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Neglected_Program_Type_Id] [int] NULL,
	[Achievement_Indicator] [bit] NULL,
	[Outcome_Indicator] [bit] NULL,
	[Obtained_Employment] [bit] NULL,
 CONSTRAINT [PK_Program_Participation_Neglected] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Program_Participation_Special_Education] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Program_Participation_Special_Education](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Awaiting_Initial_IDEA_Evaluation_Status] [bit] NULL,
	[Ref_IDEA_Educational_Environment_EC_Id] [int] NULL,
	[Ref_IDEA_Ed_Environment_School_Age_Id] [int] NULL,
	[Special_Education_FTE] [decimal](5, 4) NULL,
	[Ref_Special_Education_Exit_Reason_Id] [int] NULL,
	[Special_Education_Services_Exit_Date] [date] NULL,
	[IDEA_Placement_Rationale] [nvarchar](max) NULL,
 CONSTRAINT [PK_Program_Participation_Special_Education] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Program_Participation_Teacher_Prep] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Program_Participation_Teacher_Prep](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Teacher_Prep_Enrollment_Status_Id] [int] NULL,
	[Ref_Teacher_Prep_Completer_Status_Id] [int] NULL,
	[Ref_Supervised_Clinical_Experience_Id] [int] NULL,
	[Clinical_Experience_Clock_Hours] [int] NULL,
	[Ref_Teaching_Credential_Basis_Id] [int] NULL,
	[Ref_Teaching_Credential_Type_Id] [int] NULL,
	[Ref_Critical_Teacher_Shortage_Candidate_Id] [int] NULL,
	[Ref_Alt_Route_To_Certification_Or_Licensure_Id] [int] NULL,
 CONSTRAINT [PK_Prgm_Participation_Teacher_Prep] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Program_Participation_Title_I] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Program_Participation_Title_I](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Title_I_Indicator_Id] [int] NULL,
 CONSTRAINT [PK_Program_Participation_Title_I] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Program_Participation_Title_III_Lep] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Program_Participation_Title_III_Lep](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Title_III_Accountability_Id] [int] NULL,
	[Ref_Title_III_Language_Instruction_Program_Type_Id] [int] NULL,
 CONSTRAINT [PK_Program_Participation_Title_III] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Course] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Course](
	[Organization_Id] [int] NOT NULL,
	[Ref_Course_Credit_Basis_Type_Id] [int] NULL,
	[Ref_Course_Credit_Level_Type_Id] [int] NULL,
	[Course_Number] [nvarchar](30) NULL,
	[Original_Course_Identifier] [nvarchar](40) NULL,
	[Override_School_Course_Number] [nvarchar](30) NULL,
	[Ref_NCES_College_Course_Map_Code_Id] [int] NULL,
	[NCAA_Eligibility_Ind] [int] NULL,
	[Ref_Cip_Code_Id] [int] NULL,
 CONSTRAINT [PK_Ps_Course] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Institution] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Institution](
	[Organization_Id] [int] NOT NULL,
	[Ref_Carnegie_Basic_Classification_Id] [int] NULL,
	[Ref_Control_Of_Institution_Id] [int] NULL,
	[Ref_Level_Of_Institution_Id] [int] NULL,
	[Ref_Predominant_Calendar_System_Id] [int] NULL,
	[Ref_Tenure_System_Id] [int] NULL,
	[Virtual_Indicator] [bit] NULL,
	[Institutionally_Controlled_Housing_Status] [bit] NULL,
	[Ref_Admission_Consideration_Level_Id] [int] NULL,
	[Ref_Admission_Consideration_Type_Id] [int] NULL,
 CONSTRAINT [PK_Ps_Institution] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Price_Of_Attendance] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Price_Of_Attendance](
	[PS_Price_Of_Attendance_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Session_Designator] [nchar](7) NULL,
	[Tuition_Published] [decimal](9, 2) NULL,
	[Ref_Tuition_Unit_Id] [int] NULL,
	[Board_Charges] [decimal](9, 2) NULL,
	[Room_Charges] [decimal](9, 2) NULL,
	[Books_And_Supplies_Costs] [decimal](9, 2) NULL,
	[Required_Student_Fees] [decimal](9, 2) NULL,
	[Comprehensive_Fee] [decimal](9, 2) NULL,
	[Other_Student_Expenses] [decimal](9, 2) NULL,
	[Price_Of_Attendance] [decimal](9, 2) NULL,
	[IPEDS_Collection_Year_Designator] [nchar](9) NULL,
 CONSTRAINT [PK_PS_Price_Of_Attendance] PRIMARY KEY CLUSTERED 
(
	[PS_Price_Of_Attendance_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Program] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Program](
	[Ps_Program_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Cip_Version_Id] [int] NULL,
	[Ref_Cip_Code_Id] [int] NULL,
	[Program_Length_Hours] [decimal](9, 2) NULL,
	[Ref_Program_Length_Hours_Type_Id] [int] NULL,
	[Normal_Length_Time_For_Completion] [nvarchar](60) NULL,
	[Ref_Time_For_Completion_Units_Id] [int] NULL,
	[Ref_PS_Exit_Or_Withdrawal_Type_Id] [int] NULL,
	[Ref_PS_Program_Level_Id] [int] NULL,
	[Ref_DQP_Categories_Of_Learning_Id] [int] NULL,
 CONSTRAINT [PK_Ps_Program] PRIMARY KEY CLUSTERED 
(
	[Ps_Program_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Section] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Section](
	[Organization_Id] [int] NOT NULL,
	[Grade_Value_Qualifier] [nchar](2) NULL,
	[Ref_Cip_Code_Id] [int] NULL,
	[Ref_Course_Gpa_Applicability_Id] [int] NULL,
	[Ref_Course_Honors_Type_Id] [int] NULL,
	[Ref_Course_Instruction_Method_Id] [int] NULL,
	[Ref_Course_Level_Type_Id] [int] NULL,
	[Ref_Developmental_Education_Type_Id] [int] NULL,
	[Ref_Workbased_Learning_Opportunity_Type_Id] [int] NULL,
 CONSTRAINT [PK_Ps_Section] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Section_Location] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Section_Location](
	[Organization_Id] [int] NOT NULL,
	[Course_Instruction_Site_Name] [nvarchar](60) NULL,
	[Ref_Course_Instruction_Site_Type_Id] [int] NULL,
 CONSTRAINT [PK_Ps_Section_Location] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Staff_Employment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Staff_Employment](
	[Staff_Employment_Id] [int] NOT NULL,
	[Ref_Full_Time_Status_Id] [int] NULL,
	[Faculty_Status] [bit] NULL,
	[Ref_Employment_Contract_Type_Id] [int] NULL,
	[Standard_Occupational_Class] [nchar](7) NULL,
	[Ref_Ipeds_Occupational_Category_Id] [int] NULL,
	[Instructional_Staff_Status] [bit] NULL,
	[Medical_School_Staff_Status] [bit] NULL,
	[Ref_Instructional_Staff_Contract_Length_Id] [int] NULL,
	[Ref_Instructional_Staff_Faculty_Tenure_Id] [int] NULL,
	[Ref_Academic_Rank_Id] [int] NULL,
	[Ref_Instruction_Credit_Type_Id] [int] NULL,
	[Graduate_Assistant_Status] [bit] NULL,
	[Ref_Graduate_Assistant_Ipeds_Category_Id] [int] NULL,
	[Annual_Base_Contractual_Salary] [decimal](9, 2) NULL,
 CONSTRAINT [PK_Ps_Staff_Employment] PRIMARY KEY CLUSTERED 
(
	[Staff_Employment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Student_Academic_Award] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Student_Academic_Award](
	[Ps_Student_Academic_Award_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Academic_Award_Date] [nvarchar](14) NULL,
	[Ref_Academic_Award_Level_Id] [int] NULL,
	[Academic_Award_Title] [nvarchar](80) NULL,
	[Requirements_URL] [nvarchar](512) NULL,
	[Ref_Academic_Award_Prerequisite_Type_Id] [int] NULL,
	[Ref_PESC_Award_Level_Type_Id] [int] NULL,
 CONSTRAINT [PK_Ps_Student_Academic_Award] PRIMARY KEY CLUSTERED 
(
	[Ps_Student_Academic_Award_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Student_Academic_Record] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Student_Academic_Record](
	[Ps_Student_Academic_Record_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Academic_Year_Designator] [nchar](9) NULL,
	[Ref_Academic_Term_Designator_Id] [int] NULL,
	[Grade_Point_Average] [decimal](9, 4) NULL,
	[Grade_Point_Average_Cumulative] [decimal](9, 4) NULL,
	[Dual_Credit_Dual_Enrollment_Credits] [decimal](9, 4) NULL,
	[Advanced_Placement_Credits_Awarded] [int] NULL,
	[Ref_Professional_Tech_Credential_Type_Id] [int] NULL,
	[Diploma_Or_Credential_Award_Date] [nchar](7) NULL,
	[Entering_Term] [nvarchar](30) NULL,
	[Course_Total] [int] NULL,
	[Ref_Credit_Hours_Applied_Other_Program_Id] [int] NULL,
 CONSTRAINT [PK_Ps_Student_Academic_Record] PRIMARY KEY CLUSTERED 
(
	[Ps_Student_Academic_Record_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Student_Admission_Test] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Student_Admission_Test](
	[Ps_Student_Admission_Test_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Standardized_Admission_Test_Id] [int] NOT NULL,
	[Standardized_Admission_Test_Score] [decimal](9, 2) NULL,
 CONSTRAINT [PK_Ps_Admission_Test] PRIMARY KEY CLUSTERED 
(
	[Ps_Student_Admission_Test_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Student_Application] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Student_Application](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Postsecondary_Applicant] [bit] NULL,
	[Grade_Point_Average_Cumulative] [decimal](9, 4) NULL,
	[Ref_Grade_Point_Average_Domain_Id] [int] NULL,
	[Ref_Gpa_Weighted_Indicator_Id] [int] NULL,
	[High_School_Percentile] [decimal](5, 4) NULL,
	[High_School_Student_Class_Rank] [int] NULL,
	[High_School_Graduating_Class_Size] [int] NULL,
	[Ref_Admitted_Student_Id] [int] NULL,
	[Wait_Listed_Student] [bit] NULL,
 CONSTRAINT [PK_Ps_Student_Application] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Student_Cohort] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Student_Cohort](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Cohort_Graduation_Year] [nchar](4) NULL,
 CONSTRAINT [PK_Ps_Student_Cohort] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Student_Course_Section_Mark] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Student_Course_Section_Mark](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Course_Academic_Grade_Status_Code_Id] [int] NULL,
	[Course_Narrative_Explanation_Grade] [nvarchar](300) NULL,
	[Student_Course_Section_Grade_Narrative] [nvarchar](300) NULL,
 CONSTRAINT [PK_Ps_Student_Course_Section_Mark] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Student_Demographic] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Student_Demographic](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Dependency_Status_Id] [int] NULL,
	[Ref_Tuition_Residency_Type_Id] [int] NULL,
	[Ref_Campus_Residency_Type_Id] [int] NULL,
	[Ref_Ps_Lep_Type_Id] [int] NULL,
	[Ref_Paternal_Education_Level_Id] [int] NULL,
	[Ref_Maternal_Education_Level_Id] [int] NULL,
	[Ref_Cohort_Exclusion_Id] [int] NULL,
	[Number_Of_Dependents] [int] NULL,
 CONSTRAINT [PK_Ps_Student_Demographic] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Student_Employment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Student_Employment](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Employed_While_Enrolled_Id] [int] NULL,
	[Ref_Employed_After_Exit_Id] [int] NULL,
	[Employment_Naics_Code] [nchar](6) NULL,
	[Ref_Employment_Status_While_Enrolled_Id] [int] NULL,
 CONSTRAINT [PK_Ps_Student_Employment] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Student_Enrollment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Student_Enrollment](
	[PS_Student_Enrollment_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Ps_Enrollment_Type_Id] [int] NULL,
	[Ref_Ps_Enrollment_Status_Id] [int] NULL,
	[Degree_Or_Certificate_Seeking_Student] [bit] NULL,
	[First_Time_Postsecondary_Student] [bit] NULL,
	[Ref_Ps_Student_Level_Id] [int] NULL,
	[Ref_Ps_Enrollment_Award_Type_Id] [int] NULL,
	[Initial_Enrollment_Term] [nvarchar](30) NULL,
	[Ref_Transfer_Ready_Id] [int] NULL,
	[Instructional_Activity_Hours_Attempted] [decimal](9, 2) NULL,
	[Instructional_Activity_Hours_Completed] [decimal](9, 2) NULL,
	[Ref_Instructional_Activity_Hours_Id] [int] NULL,
	[Ref_Distance_Education_Course_Enrollment_Id] [int] NULL,
	[Housing_On_Campus] [bit] NULL,
	[Fraternity_Participation_Status] [bit] NULL,
	[Sorority_Participation_Status] [bit] NULL,
	[Entry_Date_Into_Postsecondary] [date] NULL,
	[Distance_Education_Program_Enrollment_Ind] [bit] NULL,
	[Doctoral_Candidacy_Admit_Ind] [bit] NULL,
	[Doctoral_Candidacy_Date] [date] NULL,
	[Doctoral_Exam_Taken_Date] [date] NULL,
	[Ref_Doctoral_Exams_Required_Code_Id] [int] NULL,
	[Ref_Graduate_Or_Doctoral_Exam_Results_Status_Id] [int] NULL,
	[Oral_Defense_Completed_Indicator] [bit] NULL,
	[Oral_Defense_Date] [date] NULL,
	[Postsecondary_Entering_Student_Ind] [bit] NULL,
	[Thesis_Or_Dissertation_Title] [nvarchar](300) NULL,
	[Ref_Developmental_Education_Referral_Status_Id] [int] NULL,
	[Ref_Developmental_Education_Type_Id] [int] NULL,
 CONSTRAINT [PK_Ps_Student_Enrollment] PRIMARY KEY CLUSTERED 
(
	[PS_Student_Enrollment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Student_Financial_Aid] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Student_Financial_Aid](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Financial_Aid_Applicant] [bit] NULL,
	[Financial_Need] [decimal](9, 2) NULL,
	[Ref_Need_Determination_Method_Id] [int] NULL,
	[Title_IV_Participant_And_Recipient] [bit] NULL,
	[Financial_Aid_Income_Level] [decimal](9, 2) NULL,
	[Ref_Financial_Aid_Veterans_Benefit_Status_Id] [int] NULL,
	[Ref_Financial_Aid_Veterans_Benefit_Type_Id] [int] NULL,
 CONSTRAINT [PK_Ps_Student_Financial_Aid] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[PS_Student_Program] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[PS_Student_Program](
	[PS_Student_Program_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Cip_Use_Id] [int] NULL,
	[Ps_Program_Id] [int] NULL,
	[Ref_Workbased_Learning_Opportunity_Type_Id] [int] NULL,
	[Ref_Transfer_Out_Indicator_Id] [int] NULL,
 CONSTRAINT [PK_PS_Student_Enrollment_CIP] PRIMARY KEY CLUSTERED 
(
	[PS_Student_Program_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ps_Student_Section] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ps_Student_Section](
	[Organization_Person_Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[Course_Override_School] [nvarchar](80) NULL,
	[Degree_Applicability] [bit] NULL,
	[Academic_Grade] [nvarchar](15) NULL,
	[Number_Of_Credits_Earned] [decimal](9, 2) NULL,
	[Quality_Points_Earned] [decimal](9, 2) NULL,
	[Ref_Course_Repeat_Code_Id] [int] NULL,
	[Ref_Course_Academic_Grade_Status_Code_Id] [int] NULL,
 CONSTRAINT [PK_Ps_Student_Section] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Quarterly_Employment_Record] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Quarterly_Employment_Record](
	[Quarterly_Employment_Record_Id] [int] IDENTITY(1,1) NOT NULL,
	[Person_Id] [int] NOT NULL,
	[Earnings] [decimal](9, 2) NULL,
	[Employment_NAICS_Code] [nvarchar](50) NULL,
	[Reference_Period_Start_Date] [date] NULL,
	[Reference_Period_End_Date] [date] NULL,
	[Ref_ER_Administrative_Data_Source_Id] [int] NULL,
	[Ref_Employment_Location_Id] [int] NULL,
	[Ref_Employed_Prior_To_Enrollment_Id] [int] NULL,
 CONSTRAINT [PK_Workforce_Employment_Record] PRIMARY KEY CLUSTERED 
(
	[Quarterly_Employment_Record_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Absent_Attendance_Category] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Absent_Attendance_Category](
	[Ref_Absent_Attendance_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Absent_Attendance_Category] PRIMARY KEY CLUSTERED 
(
	[Ref_Absent_Attendance_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Academic_Award_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Academic_Award_Level](
	[Ref_Academic_Award_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Academic_Award_Level] PRIMARY KEY CLUSTERED 
(
	[Ref_Academic_Award_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Academic_Award_Prerequisite_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Academic_Award_Prerequisite_Type](
	[Ref_Academic_Award_Prerequisite_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Academic_Award_Prerequisite_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Academic_Award_Prerequisite_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Academic_Honor_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Academic_Honor_Type](
	[Ref_Academic_Honor_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Academic_Honor_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Academic_Honor_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Academic_Rank] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Academic_Rank](
	[Ref_Academic_Rank_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Academic_Rank] PRIMARY KEY CLUSTERED 
(
	[Ref_Academic_Rank_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Academic_Subject] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Academic_Subject](
	[Ref_Academic_Subject_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Academic_Rank] PRIMARY KEY CLUSTERED 
(
	[Ref_Academic_Subject_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Academic_Term_Designator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Academic_Term_Designator](
	[Ref_Academic_Term_Designator_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Academic_Term_Designator] PRIMARY KEY CLUSTERED 
(
	[Ref_Academic_Term_Designator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Accommodations_Needed_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Accommodations_Needed_Type](
	[Ref_Accommodations_Needed_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Accommodations_Needed_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Accommodations_Needed_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Accommodation_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Accommodation_Type](
	[Ref_Accommodation_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Accommodation_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Accommodation_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Accreditation_Agency] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Accreditation_Agency](
	[Ref_Accreditation_Agency_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Accreditation_Agency] PRIMARY KEY CLUSTERED 
(
	[Ref_Accreditation_Agency_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Activity_Recognition_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Activity_Recognition_Type](
	[Ref_Activity_Recognition_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Activity_Recognition_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Activity_Recognition_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Activity_Time_Measurement_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Activity_Time_Measurement_Type](
	[Ref_Activity_Time_Measurement_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Activity_Time_Measurement_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Activity_Time_Measurement_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Additional_Credit_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Additional_Credit_Type](
	[Ref_Additional_Credit_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Additional_Credit_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Additional_Credit_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Address_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Address_Type](
	[Ref_Address_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Address_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Address_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Administrative_Funding_Control] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Administrative_Funding_Control](
	[Ref_Administrative_Funding_Control_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Admin_Funding_Control] PRIMARY KEY CLUSTERED 
(
	[Ref_Administrative_Funding_Control_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Admission_Consideration_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Admission_Consideration_Level](
	[Ref_Admission_Consideration_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Admission_Consideration_Level] PRIMARY KEY CLUSTERED 
(
	[Ref_Admission_Consideration_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Admission_Consideration_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Admission_Consideration_Type](
	[Ref_Admission_Consideration_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Admission_Consideration_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Admission_Consideration_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Admitted_Student] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Admitted_Student](
	[Ref_Admitted_Student_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Admitted_Student] PRIMARY KEY CLUSTERED 
(
	[Ref_Admitted_Student_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Advanced_Placement_Course_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Advanced_Placement_Course_Code](
	[Ref_Advanced_Placement_Course_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Advanced_Placement_Course_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_Advanced_Placement_Course_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ae_Certification_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ae_Certification_Type](
	[Ref_Ae_Certification_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Ae_Certification_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Ae_Certification_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ae_Functioning_Level_At_Intake] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ae_Functioning_Level_At_Intake](
	[Ref_Ae_Functioning_Level_At_Intake_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_AE_Functioning_Level_At_Intake] PRIMARY KEY CLUSTERED 
(
	[Ref_Ae_Functioning_Level_At_Intake_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ae_Functioning_Level_At_Posttest] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ae_Functioning_Level_At_Posttest](
	[Ref_Ae_Functioning_Level_At_Posttest_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_AE_Functioning_Level_At_Posttest] PRIMARY KEY CLUSTERED 
(
	[Ref_Ae_Functioning_Level_At_Posttest_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ae_Instructional_Program_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ae_Instructional_Program_Type](
	[Ref_Ae_Instructional_Program_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Ae_Instructional_Program_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Ae_Instructional_Program_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ae_Postsecondary_Transition_Action] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ae_Postsecondary_Transition_Action](
	[Ref_Ae_Postsecondary_Transition_Action_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_AE_Postsecondary_Transition_Action] PRIMARY KEY CLUSTERED 
(
	[Ref_Ae_Postsecondary_Transition_Action_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ae_Special_Program_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ae_Special_Program_Type](
	[Ref_Ae_Special_Program_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Ae_Special_Program_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Ae_Special_Program_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ae_Staff_Classification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ae_Staff_Classification](
	[Ref_Ae_Staff_Classification_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Ae_Staff_Classification] PRIMARY KEY CLUSTERED 
(
	[Ref_Ae_Staff_Classification_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ae_Staff_Employment_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ae_Staff_Employment_Status](
	[Ref_Ae_Staff_Employment_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Ae_Staff_Employment_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Ae_Staff_Employment_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Allergy_Severity] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Allergy_Severity](
	[Ref_Allergy_Severity_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Allergy_Severity] PRIMARY KEY CLUSTERED 
(
	[Ref_Allergy_Severity_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Allergy_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Allergy_Type](
	[Ref_Allergy_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Allergy_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Allergy_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Alternate_Fund_Uses] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Alternate_Fund_Uses](
	[Ref_Alternate_Fund_Uses_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Alternate_Fund_Uses] PRIMARY KEY CLUSTERED 
(
	[Ref_Alternate_Fund_Uses_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Alternative_School_Focus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Alternative_School_Focus](
	[Ref_Alternative_School_Focus_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Alternative_Focus] PRIMARY KEY CLUSTERED 
(
	[Ref_Alternative_School_Focus_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Alt_Route_To_Certification_Or_Licensure] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Alt_Route_To_Certification_Or_Licensure](
	[Ref_Alt_Route_To_Certification_Or_Licensure_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Alt_Route_To_Certification_Or_Licensure] PRIMARY KEY CLUSTERED 
(
	[Ref_Alt_Route_To_Certification_Or_Licensure_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Amao_Attainment_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Amao_Attainment_Status](
	[Ref_Amao_Attainment_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Amao_Attainment_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Amao_Attainment_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Apip_Interaction_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Apip_Interaction_Type](
	[Ref_APIP_Interaction_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Apip_Interaction_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_APIP_Interaction_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Accommodation_Category] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Accommodation_Category](
	[Ref_Assessment_Accommodation_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Accommodation_Category] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Accommodation_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Asset_Identifier_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Asset_Identifier_Type](
	[Ref_Assessment_Asset_Identifier_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assesment_Assest_Identifier_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Asset_Identifier_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Asset_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Asset_Type](
	[Ref_Assessment_Asset_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Asset_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Asset_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_EL_Developmental_Domain] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_EL_Developmental_Domain](
	[Ref_Assessment_EL_Developmental_Domain_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_EL_Developmental_Domain] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_EL_Developmental_Domain_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Form_Section_Identification_System] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Form_Section_Identification_System](
	[Ref_Assessment_Form_Section_Identification_System_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Form_Section_Identification_System] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Form_Section_Identification_System_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Item_Characteristic_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Item_Characteristic_Type](
	[Ref_Assessment_Item_Characteristic_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Item_Characteristic_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Item_Characteristic_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Item_Response_Score_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Item_Response_Score_Status](
	[Ref_Assessment_Item_Response_Score_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Item_Response_Score_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Item_Response_Score_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Item_Response_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Item_Response_Status](
	[Ref_Assessment_Item_Response_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Item_Response_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Item_Response_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Item_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Item_Type](
	[Ref_Assessment_Item_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Item_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Item_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_Alternative_Representation_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_Alternative_Representation_Type](
	[Ref_Assessment_Need_Alternative_Representation_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Need_Alternative_Representation_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_Alternative_Representation_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_Braille_Grade_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_Braille_Grade_Type](
	[Ref_Assessment_Need_Braille_Grade_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Assessment_Need_Braille_Grade_Type_Id] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_Braille_Grade_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_Braille_Mark_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_Braille_Mark_Type](
	[Ref_Assessment_Need_Braille_Mark_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Need_Braille_Mark_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_Braille_Mark_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_Braille_Status_Cell_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_Braille_Status_Cell_Type](
	[Ref_Assessment_Need_Braille_Status_Cell_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Need_Braille_Status_Cell_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_Braille_Status_Cell_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_Hazard_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_Hazard_Type](
	[Ref_Assessment_Need_Hazard_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Need_Hazard_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_Hazard_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_Increased_Whitespacing_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_Increased_Whitespacing_Type](
	[Ref_Assessment_Need_Increased_Whitespacing_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Need_Increased_Whitespacing_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_Increased_Whitespacing_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_Language_Learner_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_Language_Learner_Type](
	[Ref_Assessment_Need_Language_Learner_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Needs_Profile_Content_Language_Learner_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_Language_Learner_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_Link_Indication_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_Link_Indication_Type](
	[Ref_Assessment_Need_Link_Indication_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Need_Link_Indication_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_Link_Indication_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_Masking_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_Masking_Type](
	[Ref_Assessment_Need_Masking_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Need_Display_Masking_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_Masking_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_Number_Of_Braille_Dots] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_Number_Of_Braille_Dots](
	[Ref_Assessment_Need_Number_Of_Braille_Dots_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Need_Number_Of_Braille_Dots] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_Number_Of_Braille_Dots_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_Signing_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_Signing_Type](
	[Ref_Assessment_Need_Signing_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Need_Signing_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_Signing_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_Spoken_Source_Preference_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_Spoken_Source_Preference_Type](
	[Ref_Assessment_Need_Spoken_Source_Preference_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Need_Spoken_Source_Preference_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_Spoken_Source_Preference_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_Support_Tool] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_Support_Tool](
	[Ref_Assessment_Need_Support_Tool_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Need_Support_Tool] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_Support_Tool_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_Usage_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_Usage_Type](
	[Ref_Assessment_Need_Usage_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Need_Usage_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_Usage_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Need_User_Spoken_Preference_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Need_User_Spoken_Preference_Type](
	[Ref_Assessment_Need_User_Spoken_Preference_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Need_User_Spoken_Preference_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Need_User_Spoken_Preference_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Participation_Indicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Participation_Indicator](
	[Ref_Assessment_Participation_Indicator_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Participation_Indicator] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Participation_Indicator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Platform_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Platform_Type](
	[Ref_Assessment_Platform_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assesessment_Platform_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Platform_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Pretest_Outcome] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Pretest_Outcome](
	[Ref_Assessment_Pretest_Outcome_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Assessment_Pretest_Outcome] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Pretest_Outcome_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Purpose] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Purpose](
	[Ref_Assessment_Purpose_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Purpose] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Purpose_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Reason_Not_Completing] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Reason_Not_Completing](
	[Ref_Assessment_Reason_Not_Completing_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Reason_Not_Completing] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Reason_Not_Completing_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Reason_Not_Tested] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Reason_Not_Tested](
	[Ref_Assessment_Reason_Not_Tested_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Reason_Not_Tested] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Reason_Not_Tested_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Registration_Completion_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Registration_Completion_Status](
	[Ref_Assessment_Registration_Completion_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Registration_Completion_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Registration_Completion_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Reporting_Method] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Reporting_Method](
	[Ref_Assessment_Reporting_Method_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Reporting_Method] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Reporting_Method_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Result_Data_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Result_Data_Type](
	[Ref_Assessment_Result_Data_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Result_Data_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Result_Data_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Result_Score_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Result_Score_Type](
	[Ref_Assessment_Result_Score_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Result_Score_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Result_Score_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Session_Special_Circumstance_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Session_Special_Circumstance_Type](
	[Ref_Assessment_Session_Special_Circumstance_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Special_Circumstance] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Session_Special_Circumstance_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Session_Staff_Role_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Session_Staff_Role_Type](
	[Ref_Assessment_Session_Staff_Role_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Sesstion_Staff_Role_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Session_Staff_Role_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Session_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Session_Type](
	[Ref_Assessment_Session_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Session_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Session_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Subtest_Identifier_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Subtest_Identifier_Type](
	[Ref_Assessment_Subtest_Identifier_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Subtest_Identifier_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Subtest_Identifier_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Type](
	[Ref_Assessment_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Assessment_Type_Children_With_Disabilities] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Assessment_Type_Children_With_Disabilities](
	[Ref_Assessment_Type_Children_With_Disabilities_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Assessment_Type_Children_With_Disabilities] PRIMARY KEY CLUSTERED 
(
	[Ref_Assessment_Type_Children_With_Disabilities_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Attendance_Event_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Attendance_Event_Type](
	[Ref_Attendance_Event_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Attendance_Event_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Attendance_Event_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Attendance_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Attendance_Status](
	[Ref_Attendance_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Attendance_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Attendance_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Authorizer_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Authorizer_Type](
	[Ref_Authorizer_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Authorizer_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Authorizer_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ayp_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ayp_Status](
	[Ref_Ayp_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ayp_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Ayp_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Barrier_To_Educating_Homeless] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Barrier_To_Educating_Homeless](
	[Ref_Barrier_To_Educating_Homeless_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Barrier_To_Educating_Homeless] PRIMARY KEY CLUSTERED 
(
	[Ref_Barrier_To_Educating_Homeless_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Billable_Basis_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Billable_Basis_Type](
	[Ref_Billable_Basis_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Billable_Basis_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Billable_Basis_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Blended_Learning_Model_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Blended_Learning_Model_Type](
	[Ref_Blended_Learning_Model_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Blended_Learning_Model_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Blended_Learning_Model_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Blooms_Taxonomy_Domain] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Blooms_Taxonomy_Domain](
	[Ref_Blooms_Taxonomy_Domain_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Bloom_Taxonomy_Domain] PRIMARY KEY CLUSTERED 
(
	[Ref_Blooms_Taxonomy_Domain_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Building_Use_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Building_Use_Type](
	[Ref_Building_Use_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Building_Use_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Building_Use_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Calendar_Event_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Calendar_Event_Type](
	[Ref_Calendar_Event_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Calendar_Event_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Calendar_Event_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Campus_Residency_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Campus_Residency_Type](
	[Ref_Campus_Residency_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Campus_Residency_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Campus_Residency_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Career_Cluster] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Career_Cluster](
	[Ref_Career_Cluster_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Career_Cluster] PRIMARY KEY CLUSTERED 
(
	[Ref_Career_Cluster_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Career_Education_Plan_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Career_Education_Plan_Type](
	[Ref_Career_Education_Plan_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Career_Education_Plan_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Career_Education_Plan_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Carnegie_Basic_Classification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Carnegie_Basic_Classification](
	[Ref_Carnegie_Basic_Classification_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Classification] PRIMARY KEY CLUSTERED 
(
	[Ref_Carnegie_Basic_Classification_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Charter_School_Approval_Agency_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Charter_School_Approval_Agency_Type](
	[Ref_Charter_School_Approval_Agency_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Charter_School_Approval_Agency_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Charter_School_Approval_Agency_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Charter_School_Management_Organization_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Charter_School_Management_Organization_Type](
	[Ref_Charter_School_Management_Organization_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Charter_School_Management_Organization_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Charter_School_Management_Organization_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Charter_School_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Charter_School_Type](
	[Ref_Charter_School_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Charter_School_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Charter_School_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Child_Developmental_Screening_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Child_Developmental_Screening_Status](
	[Ref_Child_Developmental_Screening_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Child_Developmental_Screening_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Child_Developmental_Screening_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Child_Development_Associate_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Child_Development_Associate_Type](
	[Ref_Child_Development_Associate_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Child_E_Development_Associate_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Child_Development_Associate_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Child_Outcomes_Summary_Rating] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Child_Outcomes_Summary_Rating](
	[Ref_Child_Outcomes_Summary_Rating_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Child_Outcomes_Summary_Rating] PRIMARY KEY CLUSTERED 
(
	[Ref_Child_Outcomes_Summary_Rating_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Cip_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Cip_Code](
	[Ref_Cip_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Cip_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_Cip_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Cip_Use] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Cip_Use](
	[Ref_Cip_Use_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Cip_Use] PRIMARY KEY CLUSTERED 
(
	[Ref_Cip_Use_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Cip_Version] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Cip_Version](
	[Ref_Cip_Version_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Cip_Version] PRIMARY KEY CLUSTERED 
(
	[Ref_Cip_Version_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Classroom_Position_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Classroom_Position_Type](
	[Ref_Classroom_Position_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Classroom_Position_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Classroom_Position_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Cohort_Exclusion] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Cohort_Exclusion](
	[Ref_Cohort_Exclusion_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Cohort_Exclusion] PRIMARY KEY CLUSTERED 
(
	[Ref_Cohort_Exclusion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Communication_Method] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Communication_Method](
	[Ref_Communication_Method_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Communication_Method] PRIMARY KEY CLUSTERED 
(
	[Ref_Communication_Method_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Community_Based_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Community_Based_Type](
	[Ref_Community_Based_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Community_Based_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Community_Based_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Competency_Framework_Item_Association_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Competency_Framework_Item_Association_Type](
	[Ref_Competency_Framework_Item_Association_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Competency_Framework_Item_Association_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Competency_Framework_Item_Association_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Competency_Framework_Item_Node_Accessibility_Profile] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Competency_Framework_Item_Node_Accessibility_Profile](
	[Ref_Competency_Framework_Item_Node_Accessibility_Profile_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Competency_Framework_Item_Node_Accessibility_Profile] PRIMARY KEY CLUSTERED 
(
	[Ref_Competency_Framework_Item_Node_Accessibility_Profile_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Competency_Framework_Item_Testability_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Competency_Framework_Item_Testability_Type](
	[Ref_Competency_Framework_Item_Testability_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Competency_Framework_Item_Testability_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Competency_Framework_Item_Testability_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Competency_Framework_Publication_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Competency_Framework_Publication_Status](
	[Ref_Competency_Framework_Publication_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Competency_Framework_Publication_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Competency_Framework_Publication_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Competency_Set_Completion_Criteria] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Competency_Set_Completion_Criteria](
	[Ref_Competency_Set_Completion_Criteria_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Competency_Set_Completion_Criteria] PRIMARY KEY CLUSTERED 
(
	[Ref_Competency_Set_Completion_Criteria_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Content_Standard_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Content_Standard_Type](
	[Ref_Content_Standard_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Content_Standard_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Content_Standard_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Continuation_Of_Services] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Continuation_Of_Services](
	[Ref_Continuation_Of_Services_Reason_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Continuation_Of_Services] PRIMARY KEY CLUSTERED 
(
	[Ref_Continuation_Of_Services_Reason_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Control_Of_Institution] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Control_Of_Institution](
	[Ref_Control_Of_Institution_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Control_Of_Institution] PRIMARY KEY CLUSTERED 
(
	[Ref_Control_Of_Institution_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Core_Knowledge_Area] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Core_Knowledge_Area](
	[Ref_Core_Knowledge_Area_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Core_Knowledge_Area] PRIMARY KEY CLUSTERED 
(
	[Ref_Core_Knowledge_Area_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Correctional_Education_Facility_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Correctional_Education_Facility_Type](
	[Ref_Correctional_Education_Facility_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Correctional_Education_Facility_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Correctional_Education_Facility_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Corrective_Action_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Corrective_Action_Type](
	[Ref_Corrective_Action_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Corrective_Action] PRIMARY KEY CLUSTERED 
(
	[Ref_Corrective_Action_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Country] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Country](
	[Ref_Country_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Country] PRIMARY KEY CLUSTERED 
(
	[Ref_Country_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_County] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_County](
	[Ref_County_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_County] PRIMARY KEY CLUSTERED 
(
	[Ref_County_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Academic_Grade_Status_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Academic_Grade_Status_Code](
	[Ref_Course_Academic_Grade_Status_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Academic_Grade_Status_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Academic_Grade_Status_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Applicable_Education_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Applicable_Education_Level](
	[Ref_Course_Applicable_Education_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Applicable_Education_Level] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Applicable_Education_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Credit_Basis_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Credit_Basis_Type](
	[Ref_Course_Credit_Basis_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Credit_Basis_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Credit_Basis_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Credit_Level_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Credit_Level_Type](
	[Ref_Course_Credit_Level_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Credit_Level_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Credit_Level_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Credit_Unit] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Credit_Unit](
	[Ref_Course_Credit_Unit_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Credit_Unit] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Credit_Unit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Gpa_Applicability] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Gpa_Applicability](
	[Ref_Course_GPA_Applicability_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Gpa_Applicability] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_GPA_Applicability_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Honors_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Honors_Type](
	[Ref_Course_Honors_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Honors_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Honors_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Instruction_Method] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Instruction_Method](
	[Ref_Course_Instruction_Method_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Instruction_Method] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Instruction_Method_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Instruction_Site_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Instruction_Site_Type](
	[Ref_Course_Instruction_Site_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Instruction_Site_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Instruction_Site_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Interaction_Mode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Interaction_Mode](
	[Ref_Course_Interaction_Mode_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Interaction_Mode] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Interaction_Mode_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Level_Characteristic] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Level_Characteristic](
	[Ref_Course_Level_Characteristic_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Level_Characteristic] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Level_Characteristic_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Level_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Level_Type](
	[Ref_Course_Level_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Level_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Level_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Repeat_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Repeat_Code](
	[Ref_Course_Repeat_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Repeat_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Repeat_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Section_Assessment_Reporting_Method] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Section_Assessment_Reporting_Method](
	[Ref_Course_Section_Assessment_Reporting_Method_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Section_Assessment_Reporting_Method] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Section_Assessment_Reporting_Method_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Section_Delivery_Mode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Section_Delivery_Mode](
	[Ref_Course_Section_Delivery_Mode_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Section_Delivery_Mode] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Section_Delivery_Mode_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Section_Enrollment_Status_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Section_Enrollment_Status_Type](
	[Ref_Course_Section_Enrollment_Status_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Section_Enrollment_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Section_Enrollment_Status_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Section_Entry_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Section_Entry_Type](
	[Ref_Course_Section_Entry_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Section_Entry_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Section_Entry_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Course_Section_Exit_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Course_Section_Exit_Type](
	[Ref_Course_Section_Exit_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Course_Section_Exit_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Course_Section_Exit_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Credential_Assessment_Method_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Credential_Assessment_Method_Type](
	[Ref_Credential_Assessment_Method_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Credential_Assessment_Method_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Credential_Assessment_Method_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Credential_Identifier_System] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Credential_Identifier_System](
	[Ref_Credential_Identifier_System_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Credential_Identifier_System] PRIMARY KEY CLUSTERED 
(
	[Ref_Credential_Identifier_System_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Credential_Intended_Purpose_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Credential_Intended_Purpose_Type](
	[Ref_Credential_Intended_Purpose_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Credential_Intended_Purpose_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Credential_Intended_Purpose_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Credential_Status_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Credential_Status_Type](
	[Ref_Credential_Status_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Credential_Status_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Credential_Status_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Credential_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Credential_Type](
	[Ref_Credential_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Credential] PRIMARY KEY CLUSTERED 
(
	[Ref_Credential_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Credential_Verification_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Credential_Verification_Type](
	[Ref_Credential_Verification_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Credential_Verification_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Credential_Verification_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Credit_Hours_Applied_Other_Program] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Credit_Hours_Applied_Other_Program](
	[Ref_Credit_Hours_Applied_Other_Program_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Credit_Hours_Applied_Other_Program] PRIMARY KEY CLUSTERED 
(
	[Ref_Credit_Hours_Applied_Other_Program_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Credit_Type_Earned] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Credit_Type_Earned](
	[Ref_Credit_Type_Earned_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Credit_Type_Earned] PRIMARY KEY CLUSTERED 
(
	[Ref_Credit_Type_Earned_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Critical_Teacher_Shortage_Candidate] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Critical_Teacher_Shortage_Candidate](
	[Ref_Critical_Teacher_Shortage_Candidate_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Critical_Teacher_Shortage_Candidate] PRIMARY KEY CLUSTERED 
(
	[Ref_Critical_Teacher_Shortage_Candidate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_CTDL_Organization_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_CTDL_Organization_Type](
	[Ref_CTDL_Organization_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_CTDL_Organization_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_CTDL_Organization_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Cte_Graduation_Rate_Inclusion] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Cte_Graduation_Rate_Inclusion](
	[Ref_Cte_Graduation_Rate_Inclusion_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Cte_Graduation_Rate_Inclusion] PRIMARY KEY CLUSTERED 
(
	[Ref_Cte_Graduation_Rate_Inclusion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Cte_Non_Traditional_Gender_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Cte_Non_Traditional_Gender_Status](
	[Ref_CTE_Non_Traditional_Gender_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_CTE_Non_Traditional_Gender_Status_Id] PRIMARY KEY CLUSTERED 
(
	[Ref_CTE_Non_Traditional_Gender_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Curriculum_Framework_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Curriculum_Framework_Type](
	[Ref_Curriculum_Framework_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Curriculum_Framework_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Curriculum_Framework_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Degree_Or_Certificate_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Degree_Or_Certificate_Type](
	[Ref_Degree_Or_Certificate_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Degree_Or_Certificate_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Degree_Or_Certificate_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Dental_Insurance_Coverage_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Dental_Insurance_Coverage_Type](
	[Ref_Dental_Insurance_Coverage_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Dental_Insurance_Coverage_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Dental_Insurance_Coverage_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Dental_Screening_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Dental_Screening_Status](
	[Ref_Dental_Screening_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Dental_Screen] PRIMARY KEY CLUSTERED 
(
	[Ref_Dental_Screening_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Dependency_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Dependency_Status](
	[Ref_Dependency_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Dependency_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Dependency_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Developmental_Education_Referral_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Developmental_Education_Referral_Status](
	[Ref_Developmental_Education_Referral_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Developmental_Education_Referral_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Developmental_Education_Referral_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Developmental_Education_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Developmental_Education_Type](
	[Ref_Developmental_Education_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Developmental_Education_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Developmental_Education_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Developmental_Evaluation_Finding] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Developmental_Evaluation_Finding](
	[Ref_Developmental_Evaluation_Finding_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Developmental_Evaluation_Finding] PRIMARY KEY CLUSTERED 
(
	[Ref_Developmental_Evaluation_Finding_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Directory_Information_Block_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Directory_Information_Block_Status](
	[Ref_Directory_Information_Block_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Directory_Information_Block_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Directory_Information_Block_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Disability_Condition_Status_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Disability_Condition_Status_Code](
	[Ref_Disability_Condition_Status_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Disability_Condition_Status_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_Disability_Condition_Status_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Disability_Condition_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Disability_Condition_Type](
	[Ref_Disability_Condition_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Disability_Condition_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Disability_Condition_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Disability_Determination_Source_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Disability_Determination_Source_Type](
	[Ref_Disability_Determination_Source_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Disability_Determination_Source_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Disability_Determination_Source_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Disability_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Disability_Type](
	[Ref_Disability_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Disability_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Disability_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Disciplinary_Action_Taken] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Disciplinary_Action_Taken](
	[Ref_Disciplinary_Action_Taken_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Disciplinary_Action_Taken] PRIMARY KEY CLUSTERED 
(
	[Ref_Disciplinary_Action_Taken_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Discipline_Length_Difference_Reason] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Discipline_Length_Difference_Reason](
	[Ref_Discipline_Length_Difference_Reason_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Discipline_Length_Difference_Reason] PRIMARY KEY CLUSTERED 
(
	[Ref_Discipline_Length_Difference_Reason_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Discipline_Method_Firearms] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Discipline_Method_Firearms](
	[Ref_Discipline_Method_Firearms_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Discine_Method_Firearms] PRIMARY KEY CLUSTERED 
(
	[Ref_Discipline_Method_Firearms_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Discipline_Method_Of_Cwd] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Discipline_Method_Of_Cwd](
	[Ref_Discipline_Method_Of_Cwd_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Discipline_Method_Of_CWD] PRIMARY KEY CLUSTERED 
(
	[Ref_Discipline_Method_Of_Cwd_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Discipline_Reason] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Discipline_Reason](
	[Ref_Discipline_Reason_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Discipline_Reason] PRIMARY KEY CLUSTERED 
(
	[Ref_Discipline_Reason_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Distance_Education_Course_Enrollment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Distance_Education_Course_Enrollment](
	[Ref_Distance_Education_Course_Enrollment_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Distance_Education_Course_Enr] PRIMARY KEY CLUSTERED 
(
	[Ref_Distance_Education_Course_Enrollment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Doctoral_Exams_Required_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Doctoral_Exams_Required_Code](
	[Ref_Doctoral_Exams_Required_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Doctoral_Exams_Required_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_Doctoral_Exams_Required_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_DQP_Categories_Of_Learning] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_DQP_Categories_Of_Learning](
	[Ref_DQP_Categories_Of_Learning_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_DQP_Categories_Of_Learning] PRIMARY KEY CLUSTERED 
(
	[Ref_DQP_Categories_Of_Learning_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Early_Childhood_Credential] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Early_Childhood_Credential](
	[Ref_Early_Childhood_Credential_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Early_Childhood_Credential] PRIMARY KEY CLUSTERED 
(
	[Ref_Early_Childhood_Credential_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Early_Childhood_Program_Enrollment_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Early_Childhood_Program_Enrollment_Type](
	[Ref_Early_Childhood_Program_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Early_Learning_Program_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Early_Childhood_Program_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Early_Childhood_Services] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Early_Childhood_Services](
	[Ref_Early_Childhood_Services_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Early_Childhood_Services] PRIMARY KEY CLUSTERED 
(
	[Ref_Early_Childhood_Services_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Education_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Education_Level](
	[Ref_Education_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Ref_Education_Level_Type_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Education_Level] PRIMARY KEY CLUSTERED 
(
	[Ref_Education_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Education_Level_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Education_Level_Type](
	[Ref_Education_Level_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Education_Level_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Education_Level_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Education_Verification_Method] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Education_Verification_Method](
	[Ref_Education_Verification_Method_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Education_Verification_Method] PRIMARY KEY CLUSTERED 
(
	[Ref_Education_Verification_Method_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Education_Staff_Classification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Education_Staff_Classification](
	[Ref_EL_Education_Staff_Classification_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Education_Staff_Classification] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Education_Staff_Classification_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Elementary_Middle_Additional] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Elementary_Middle_Additional](
	[Ref_Elementary_Middle_Additional_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Elementary_Middle_Additional] PRIMARY KEY CLUSTERED 
(
	[Ref_Elementary_Middle_Additional_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Employment_Separation_Reason] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Employment_Separation_Reason](
	[Ref_EL_Employment_Separation_Reason_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Employment_Separation_Reason] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Employment_Separation_Reason_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Facility_Licensing_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Facility_Licensing_Status](
	[Ref_EL_Facility_Licensing_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Facility_Licensing_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Facility_Licensing_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Federal_Funding_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Federal_Funding_Type](
	[Ref_EL_Federal_Funding_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Federal_Funding_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Federal_Funding_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Group_Size_Standard_Met] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Group_Size_Standard_Met](
	[Ref_EL_Group_Size_Standard_Met_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Group_Size_Standard_Met] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Group_Size_Standard_Met_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Level_Of_Specialization] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Level_Of_Specialization](
	[Ref_EL_Level_Of_Specialization_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Level_Of_Specialization] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Level_Of_Specialization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Local_Revenue_Source] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Local_Revenue_Source](
	[Ref_EL_Local_Revenue_Source_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Local_Revenue_Source] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Local_Revenue_Source_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Other_Federal_Funding_Sources] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Other_Federal_Funding_Sources](
	[Ref_EL_Other_Federal_Funding_Sources_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Other_Federal_Funding_Sources] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Other_Federal_Funding_Sources_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Outcome_Measurement_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Outcome_Measurement_Level](
	[Ref_EL_Outcome_Measurement_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Outcome_Measurement_Level] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Outcome_Measurement_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Professional_Development_Topic_Area] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Professional_Development_Topic_Area](
	[Ref_EL_Professional_Development_Topic_Area_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Professional_Development_Topic_Area] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Professional_Development_Topic_Area_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Program_Eligibility] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Program_Eligibility](
	[Ref_EL_Program_Eligibility_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_EL_Program_Eligibility] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Program_Eligibility_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Program_Eligibility_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Program_Eligibility_Status](
	[Ref_EL_Program_Eligibility_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Program_Eligibility_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Program_Eligibility_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Program_License_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Program_License_Status](
	[Ref_EL_Program_License_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Program_License_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Program_License_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Service_Professional_Staff_Classification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Service_Professional_Staff_Classification](
	[Ref_EL_Service_Professional_Staff_Classification_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Service_Professional_Staff_Classification] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Service_Professional_Staff_Classification_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Service_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Service_Type](
	[Ref_EL_Service_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Service_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Service_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_State_Revenue_Source] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_State_Revenue_Source](
	[Ref_EL_State_Revenue_Source_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_State_Revenue_Source] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_State_Revenue_Source_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_EL_Trainer_Core_Knowledge_Area] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_EL_Trainer_Core_Knowledge_Area](
	[Ref_EL_Trainer_Core_Knowledge_Area_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_EL_Trainer_Core_Knowledge_Area] PRIMARY KEY CLUSTERED 
(
	[Ref_EL_Trainer_Core_Knowledge_Area_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Email_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Email_Type](
	[Ref_Email_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Email_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Email_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Employed_After_Exit] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Employed_After_Exit](
	[Ref_Employed_After_Exit_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Employed_After_Exit] PRIMARY KEY CLUSTERED 
(
	[Ref_Employed_After_Exit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Employed_Prior_To_Enrollment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Employed_Prior_To_Enrollment](
	[Ref_Employed_Prior_To_Enrollment_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Employed_Prior_To_Enrollment] PRIMARY KEY CLUSTERED 
(
	[Ref_Employed_Prior_To_Enrollment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Employed_While_Enrolled] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Employed_While_Enrolled](
	[Ref_Employed_While_Enrolled_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Employed_While_Enrolled] PRIMARY KEY CLUSTERED 
(
	[Ref_Employed_While_Enrolled_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Employee_Benefit] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Employee_Benefit](
	[Ref_Employee_Benefit_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Employee_Benefit] PRIMARY KEY CLUSTERED 
(
	[Ref_Employee_Benefit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Employment_Contract_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Employment_Contract_Type](
	[Ref_Employment_Contract_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Employment_Contract_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Employment_Contract_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Employment_Location] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Employment_Location](
	[Ref_Employment_Location_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Employment_Location] PRIMARY KEY CLUSTERED 
(
	[Ref_Employment_Location_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Employment_Separation_Reason] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Employment_Separation_Reason](
	[Ref_Employment_Separation_Reason_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Employment_Separation_Reason] PRIMARY KEY CLUSTERED 
(
	[Ref_Employment_Separation_Reason_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Employment_Separation_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Employment_Separation_Type](
	[Ref_Employment_Separation_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Employment_Separation_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Employment_Separation_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Employment_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Employment_Status](
	[Ref_Employment_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Employment_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Employment_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Employment_Status_While_Enrolled] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Employment_Status_While_Enrolled](
	[Ref_Employment_Status_While_Enrolled_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Employment_Status_While_Enrolled] PRIMARY KEY CLUSTERED 
(
	[Ref_Employment_Status_While_Enrolled_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_End_Of_Term_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_End_Of_Term_Status](
	[Ref_End_Of_Term_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_End_Of_Term_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_End_Of_Term_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Enrollment_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Enrollment_Status](
	[Ref_Enrollment_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Enrollment_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Enrollment_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Entity_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Entity_Type](
	[Ref_Entity_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Associated_Entity_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Entity_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Entry_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Entry_Type](
	[Ref_Entry_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Entry_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Entry_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Environment_Setting] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Environment_Setting](
	[Ref_Environment_Setting_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Environment_Setting] PRIMARY KEY CLUSTERED 
(
	[Ref_Environment_Setting_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Ref_ER_Administrative_Data_Source] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_ER_Administrative_Data_Source](
	[Ref_ER_Administrative_Data_Source_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_ER_Administrative_Data_Source] PRIMARY KEY CLUSTERED 
(
	[Ref_ER_Administrative_Data_Source_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
