
/****** Object:  Table [dbo].[Ref_ERS_Rural_Urban_Continuum_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_ERS_Rural_Urban_Continuum_Code](
	[Ref_ERS_Rural_Urban_Continuum_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_ERS_Rural_Urban_Continuum_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_ERS_Rural_Urban_Continuum_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Exit_Or_Withdrawal_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Exit_Or_Withdrawal_Status](
	[Ref_Exit_Or_Withdrawal_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Exit_Or_Withdrawel_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Exit_Or_Withdrawal_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Exit_Or_Withdrawal_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Exit_Or_Withdrawal_Type](
	[Ref_Exit_Or_Withdrawal_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Exit_Or_Withdrawal_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Exit_Or_Withdrawal_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Family_Income_Source] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Family_Income_Source](
	[Ref_Family_Income_Source_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Family_Income_Source] PRIMARY KEY CLUSTERED 
(
	[Ref_Family_Income_Source_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Federal_Program_Funding_Allocation_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Federal_Program_Funding_Allocation_Type](
	[Ref_Federal_Program_Funding_Allocation_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Federal_Program_Funding_Allocation_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Federal_Program_Funding_Allocation_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Financial_Account_Balance_Sheet_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Financial_Account_Balance_Sheet_Code](
	[Ref_Financial_Balance_Sheet_Account_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Financial_Balance_Sheet_Account_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_Financial_Balance_Sheet_Account_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Financial_Account_Category] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Financial_Account_Category](
	[Ref_Financial_Account_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Financial_Account_Category] PRIMARY KEY CLUSTERED 
(
	[Ref_Financial_Account_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Financial_Account_Fund_Classification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Financial_Account_Fund_Classification](
	[Ref_Financial_Account_Fund_Classification_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Financial_Account_Fund_Classification] PRIMARY KEY CLUSTERED 
(
	[Ref_Financial_Account_Fund_Classification_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Financial_Account_Program_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Financial_Account_Program_Code](
	[Ref_Financial_Account_Program_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Financial_Account_Program_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_Financial_Account_Program_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Financial_Account_Revenue_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Financial_Account_Revenue_Code](
	[Ref_Financial_Account_Revenue_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Financial_Revenue_Account_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_Financial_Account_Revenue_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Financial_Aid_Application_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Financial_Aid_Application_Type](
	[Ref_Financial_Aid_Application_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Financial_Aid_Appl_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Financial_Aid_Application_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Financial_Aid_Award_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Financial_Aid_Award_Status](
	[Ref_Financial_Aid_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Financial_Aid_Award_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Financial_Aid_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Financial_Aid_Award_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Financial_Aid_Award_Type](
	[Ref_Financial_Aid_Award_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Financial_Aid_Award_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Financial_Aid_Award_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Financial_Aid_Veterans_Benefit_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Financial_Aid_Veterans_Benefit_Status](
	[Ref_Financial_Aid_Veterans_Benefit_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Financial_Aid_Veterans_Benefit_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Financial_Aid_Veterans_Benefit_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Financial_Aid_Veterans_Benefit_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Financial_Aid_Veterans_Benefit_Type](
	[Ref_Financial_Aid_Veterans_Benefit_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Financial_Aid_Veterans_Benefit_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Financial_Aid_Veterans_Benefit_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Financial_Expenditure_Function_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Financial_Expenditure_Function_Code](
	[Ref_Financial_Expenditure_Function_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Financial_Expenditure_Function_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_Financial_Expenditure_Function_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Financial_Expenditure_Level_Of_Instruction_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Financial_Expenditure_Level_Of_Instruction_Code](
	[Ref_Financial_Expenditure_Level_Of_Instruction_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Financial_Expenditure_Level_Of_Instruction_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_Financial_Expenditure_Level_Of_Instruction_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Financial_Expenditure_Object_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Financial_Expenditure_Object_Code](
	[Ref_Financial_Expenditure_Object_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Financial_Expenditure_Object_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_Financial_Expenditure_Object_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Firearm_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Firearm_Type](
	[Ref_Firearm_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Firearm_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Firearm_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Food_Service_Eligibility] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Food_Service_Eligibility](
	[Ref_Food_Service_Eligibility_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Food_Service_Eligibility] PRIMARY KEY CLUSTERED 
(
	[Ref_Food_Service_Eligibility_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Food_Service_Participation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Food_Service_Participation](
	[Ref_Food_Service_Participation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Food_Service_Participation] PRIMARY KEY CLUSTERED 
(
	[Ref_Food_Service_Participation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Frequency_Of_Service] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Frequency_Of_Service](
	[Ref_Frequency_Of_Service_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Frequency_Of_Service] PRIMARY KEY CLUSTERED 
(
	[Ref_Frequency_Of_Service_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Frequency_Unit] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Frequency_Unit](
	[Ref_Frequency_Unit_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Frequency_Unit] PRIMARY KEY CLUSTERED 
(
	[Ref_Frequency_Unit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Full_Time_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Full_Time_Status](
	[Ref_Full_Time_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Full_Time_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Full_Time_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Goal_Measurement_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Goal_Measurement_Type](
	[Ref_Goal_Measurement_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Goal_Measurement_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Goal_Measurement_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Goals_For_Attending_Adult_Education] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Goals_For_Attending_Adult_Education](
	[Ref_Goals_For_Attending_Adult_Education_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Goals_For_Attending_Adult_Education] PRIMARY KEY CLUSTERED 
(
	[Ref_Goals_For_Attending_Adult_Education_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Goal_Status_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Goal_Status_Type](
	[Ref_Goal_Status_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Goal_Status_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Goal_Status_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Gpa_Weighted_Indicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Gpa_Weighted_Indicator](
	[Ref_Gpa_Weighted_Indicator_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Gpa_Weighted_Indicator] PRIMARY KEY CLUSTERED 
(
	[Ref_Gpa_Weighted_Indicator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Grade_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Grade_Level](
	[Ref_Grade_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Ref_Grade_Level_Type_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Grade] PRIMARY KEY CLUSTERED 
(
	[Ref_Grade_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Grade_Level_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Grade_Level_Type](
	[Ref_Grade_Level_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Grade_Level_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Grade_Level_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Grade_Point_Average_Domain] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Grade_Point_Average_Domain](
	[Ref_Grade_Point_Average_Domain_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Grade_Point_Average_Domain] PRIMARY KEY CLUSTERED 
(
	[Ref_Grade_Point_Average_Domain_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Graduate_Assistant_Ipeds_Category] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Graduate_Assistant_Ipeds_Category](
	[Ref_Graduate_Assistant_Ipeds_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Graduate_Assist_Ipeds_Category] PRIMARY KEY CLUSTERED 
(
	[Ref_Graduate_Assistant_Ipeds_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Graduate_Or_Doctoral_Exam_Results_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Graduate_Or_Doctoral_Exam_Results_Status](
	[Ref_Graduate_Or_Doctoral_Exam_Results_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Graduate_Or_Doctoral_Exam_Results_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Graduate_Or_Doctoral_Exam_Results_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Gun_Free_Schools_Act_Reporting_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Gun_Free_Schools_Act_Reporting_Status](
	[Ref_Gun_Free_Schools_Act_Status_Reporting_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Gun_Free_Schools_Act_Status_Reporting] PRIMARY KEY CLUSTERED 
(
	[Ref_Gun_Free_Schools_Act_Status_Reporting_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Health_Insurance_Coverage] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Health_Insurance_Coverage](
	[Ref_Health_Insurance_Coverage_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Insurance] PRIMARY KEY CLUSTERED 
(
	[Ref_Health_Insurance_Coverage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Hearing_Screening_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Hearing_Screening_Status](
	[Ref_Hearing_Screening_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Hearing_Screen] PRIMARY KEY CLUSTERED 
(
	[Ref_Hearing_Screening_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Higher_Education_Institution_Accreditation_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Higher_Education_Institution_Accreditation_Status](
	[Ref_Higher_Education_Institution_Accreditation_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Higher_Education_Institution_Accreditation_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Higher_Education_Institution_Accreditation_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_High_School_Diploma_Distinction_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_High_School_Diploma_Distinction_Type](
	[Ref_High_School_Diploma_Distinction_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_HS_Diploma_Distinction_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_High_School_Diploma_Distinction_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_High_School_Diploma_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_High_School_Diploma_Type](
	[Ref_High_School_Diploma_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_High_School_Diploma_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_High_School_Diploma_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_High_School_Graduation_Rate_Indicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_High_School_Graduation_Rate_Indicator](
	[Ref_HS_Graduation_Rate_Indicator_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_HS_Graduation_Rate_Indicator] PRIMARY KEY CLUSTERED 
(
	[Ref_HS_Graduation_Rate_Indicator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Homeless_Nighttime_Residence] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Homeless_Nighttime_Residence](
	[Ref_Homeless_Nighttime_Residence_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Homeless_Nighttime_Residence] PRIMARY KEY CLUSTERED 
(
	[Ref_Homeless_Nighttime_Residence_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IDEA_Disability_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IDEA_Disability_Type](
	[Ref_IDEA_Disability_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IDEA_Disability_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_IDEA_Disability_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IDEA_Discipline_Method_Firearm] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IDEA_Discipline_Method_Firearm](
	[Ref_IDEA_Discipline_Method_Firearm_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_IDEA_Discipline_Method_Firearm] PRIMARY KEY CLUSTERED 
(
	[Ref_IDEA_Discipline_Method_Firearm_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IDEA_Educational_Environment_EC] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IDEA_Educational_Environment_EC](
	[Ref_IDEA_Educational_Environment_EC_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_IDEA_Educational_Environment_EC] PRIMARY KEY CLUSTERED 
(
	[Ref_IDEA_Educational_Environment_EC_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IDEA_Educational_Environment_School_Age] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IDEA_Educational_Environment_School_Age](
	[Ref_IDES_Educational_Environment_School_Age] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_IDEA_Educational_Environment_School_Age] PRIMARY KEY CLUSTERED 
(
	[Ref_IDES_Educational_Environment_School_Age] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IDEA_Eligibility_Evaluation_Category] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IDEA_Eligibility_Evaluation_Category](
	[Ref_IDEA_Eligibility_Evaluation_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IDEA_Eligibility_Evaluation_Category] PRIMARY KEY CLUSTERED 
(
	[Ref_IDEA_Eligibility_Evaluation_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IDEA_Environment_EL] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IDEA_Environment_EL](
	[Ref_IDEA_Environment_EL_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_IDEA_Environment_EL] PRIMARY KEY CLUSTERED 
(
	[Ref_IDEA_Environment_EL_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IDEA_IEP_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IDEA_IEP_Status](
	[Ref_IDEA_IEP_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_IDEA_IEP_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_IDEA_IEP_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IDEA_Interim_Removal] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IDEA_Interim_Removal](
	[Ref_IDEA_Interim_Removal_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_IDEA_Interim_Removal_Id] PRIMARY KEY CLUSTERED 
(
	[Ref_IDEA_Interim_Removal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IDEA_Interim_Removal_Reason] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IDEA_Interim_Removal_Reason](
	[Ref_IDEA_Interim_Removal_Reason_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_IDEA_Interim_Removal_Reason] PRIMARY KEY CLUSTERED 
(
	[Ref_IDEA_Interim_Removal_Reason_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IDEA_Part_C_Eligibility_Category] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IDEA_Part_C_Eligibility_Category](
	[Ref_IDEA_Part_C_Eligibility_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IDEA_Part_C_Eligibility_Category] PRIMARY KEY CLUSTERED 
(
	[Ref_IDEA_Part_C_Eligibility_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IEP_Authorization_Document_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IEP_Authorization_Document_Type](
	[Ref_IEP_Authorization_Document_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IEP_Authorization_Document_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_IEP_Authorization_Document_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IEP_Eligibility_Evaluation_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IEP_Eligibility_Evaluation_Type](
	[Ref_IEP_Eligibility_Evaluation_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IEP_Eligibility_Evaluation_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_IEP_Eligibility_Evaluation_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IEP_Goal_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IEP_Goal_Type](
	[Ref_IEP_Goal_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IEP_Goal_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_IEP_Goal_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Immunization_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Immunization_Type](
	[Ref_Immunization_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Immunization_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Immunization_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Incident_Behavior] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Incident_Behavior](
	[Ref_Incident_Behavior_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Incident_Behavior] PRIMARY KEY CLUSTERED 
(
	[Ref_Incident_Behavior_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Incident_Behavior_Secondary] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Incident_Behavior_Secondary](
	[Ref_Incident_Behavior_Secondary_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Incident_Behavior_Secondary] PRIMARY KEY CLUSTERED 
(
	[Ref_Incident_Behavior_Secondary_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Incident_Injury_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Incident_Injury_Type](
	[Ref_Incident_Injury_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Incident_Injury_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Incident_Injury_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Incident_Location] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Incident_Location](
	[Ref_Incident_Location_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Inciddent_Location] PRIMARY KEY CLUSTERED 
(
	[Ref_Incident_Location_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Incident_Multiple_Offense_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Incident_Multiple_Offense_Type](
	[Ref_Incident_Multiple_Offense_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Incident_Multiple_Offense_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Incident_Multiple_Offense_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Incident_Perpetrator_Injury_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Incident_Perpetrator_Injury_Type](
	[Ref_Incident_Perpetrator_Injury_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Incident_Perpetrator_Injury_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Incident_Perpetrator_Injury_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Incident_Person_Role_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Incident_Person_Role_Type](
	[Ref_Incident_Person_Role_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Incident_Person_Role_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Incident_Person_Role_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Incident_Person_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Incident_Person_Type](
	[Ref_Incident_Person_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Incident_Person_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Incident_Person_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Incident_Reporter_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Incident_Reporter_Type](
	[Ref_Incident_Reporter_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Incident_Reporter_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Incident_Reporter_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Incident_Time_Description_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Incident_Time_Description_Code](
	[Ref_Incident_Time_Description_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Incident_Time_Description_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_Incident_Time_Description_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Income_Calculation_Method] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Income_Calculation_Method](
	[Ref_Income_Calculation_Method_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Income_Calculation] PRIMARY KEY CLUSTERED 
(
	[Ref_Income_Calculation_Method_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Increased_Learning_Time_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Increased_Learning_Time_Type](
	[Ref_Increased_Learning_Time_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Increased_Learning_Time_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Increased_Learning_Time_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Individualized_Program_Date_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Individualized_Program_Date_Type](
	[Ref_Individualized_Program_Date_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Individualized_Program_Date_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Individualized_Program_Date_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Individualized_Program_Location] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Individualized_Program_Location](
	[Ref_Individualized_Program_Location_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Individualized_Program_Location] PRIMARY KEY CLUSTERED 
(
	[Ref_Individualized_Program_Location_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Individualized_Program_Planned_Service_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Individualized_Program_Planned_Service_Type](
	[Ref_Individualized_Program_Planned_Service_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Individualized_Program_Planned_Service_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Individualized_Program_Planned_Service_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Individualized_Program_Transition_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Individualized_Program_Transition_Type](
	[Ref_Individualized_Program_Transition_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Individualized_Program_Transition_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Individualized_Program_Transition_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Individualized_Program_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Individualized_Program_Type](
	[Ref_Individualized_Program_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Individualized_Program_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Individualized_Program_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Institution_Telephone_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Institution_Telephone_Type](
	[Ref_Institution_Telephone_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Institution_Telephone] PRIMARY KEY CLUSTERED 
(
	[Ref_Institution_Telephone_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Instructional_Activity_Hours] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Instructional_Activity_Hours](
	[Ref_Instructional_Activity_Hours_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Instructional_Activity_Hours] PRIMARY KEY CLUSTERED 
(
	[Ref_Instructional_Activity_Hours_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Instructional_Staff_Contract_Length] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Instructional_Staff_Contract_Length](
	[Ref_Instructional_Staff_Contract_Length_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Instruct_Staff_Contract_Length] PRIMARY KEY CLUSTERED 
(
	[Ref_Instructional_Staff_Contract_Length_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Instructional_Staff_Faculty_Tenure] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Instructional_Staff_Faculty_Tenure](
	[Ref_Instructional_Staff_Faculty_Tenure_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Instruct_Staff_Faculty_Tenure] PRIMARY KEY CLUSTERED 
(
	[Ref_Instructional_Staff_Faculty_Tenure_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Instruction_Credit_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Instruction_Credit_Type](
	[Ref_Instruction_Credit_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Instruction_Credit_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Instruction_Credit_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Instruction_Location_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Instruction_Location_Type](
	[Ref_Instruction_Location_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Instruction_Location_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Instruction_Location_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Integrated_Technology_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Integrated_Technology_Status](
	[Ref_Integrated_Technology_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Integrated_Technology_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Integrated_Technology_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Internet_Access] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Internet_Access](
	[Ref_Internet_Access_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Internet_Access] PRIMARY KEY CLUSTERED 
(
	[Ref_Internet_Access_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IPEDSFASB_Financial_Position] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IPEDSFASB_Financial_Position](
	[Ref_IPEDSFASB_Financial_Position_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IPEDSFASB_Financial_Position] PRIMARY KEY CLUSTERED 
(
	[Ref_IPEDSFASB_Financial_Position_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IPEDSFASB_Functional_Expense] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IPEDSFASB_Functional_Expense](
	[Ref_IPEDSFASB_Functional_Expense_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IPEDSFASB_Functional_Expense] PRIMARY KEY CLUSTERED 
(
	[Ref_IPEDSFASB_Functional_Expense_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IPEDSFASB_Pell_Grant_Transactions] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IPEDSFASB_Pell_Grant_Transactions](
	[Ref_IPEDSFASB_Pell_Grant_Transactions_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IPEDSFASB_Pell_Grant_Transactions] PRIMARY KEY CLUSTERED 
(
	[Ref_IPEDSFASB_Pell_Grant_Transactions_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IPEDSFASB_Revenue] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IPEDSFASB_Revenue](
	[Ref_IPEDSFASB_Revenue_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IPEDSFASB_Revenue] PRIMARY KEY CLUSTERED 
(
	[Ref_IPEDSFASB_Revenue_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IPEDSFASB_Revenue_Restriction] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IPEDSFASB_Revenue_Restriction](
	[Ref_IPEDSFASB_Revenue_Restriction_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IPEDSFASB_Revenue_Restriction] PRIMARY KEY CLUSTERED 
(
	[Ref_IPEDSFASB_Revenue_Restriction_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IPEDSFASB_Scholarshipsand_Fellowships_Revenue] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IPEDSFASB_Scholarshipsand_Fellowships_Revenue](
	[Ref_IPEDSFASB_Scholarshipsand_Fellowships_Revenue_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IPEDSFASB_Scholarshipsand_Fellowships_Revenue] PRIMARY KEY CLUSTERED 
(
	[Ref_IPEDSFASB_Scholarshipsand_Fellowships_Revenue_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IPEDSGASB_Financial_Position] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IPEDSGASB_Financial_Position](
	[Ref_IPEDSGASB_Financial_Position_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IPEDSGASB_Financial_Position] PRIMARY KEY CLUSTERED 
(
	[Ref_IPEDSGASB_Financial_Position_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IPEDSGASB_Functional_Expense] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IPEDSGASB_Functional_Expense](
	[Ref_IPEDSGASB_Functional_Expense_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IPEDSGASB_Functional_Expense] PRIMARY KEY CLUSTERED 
(
	[Ref_IPEDSGASB_Functional_Expense_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IPEDSGASB_Revenue] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IPEDSGASB_Revenue](
	[Ref_IPEDSGASB_Revenue_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IPEDSGASB_Revenue] PRIMARY KEY CLUSTERED 
(
	[Ref_IPEDSGASB_Revenue_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IPEDSGASB_Scholarshipsand_Fellowships_Revenue] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IPEDSGASB_Scholarshipsand_Fellowships_Revenue](
	[Ref_IPEDSGASB_Scholarshipsand_Fellowships_Revenue_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IPEDSGASB_Scholarshipsand_Fellowships_Revenue] PRIMARY KEY CLUSTERED 
(
	[Ref_IPEDSGASB_Scholarshipsand_Fellowships_Revenue_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IPEDS_Intercollegiate_Athletics_Expenses] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IPEDS_Intercollegiate_Athletics_Expenses](
	[Ref_IPEDS_Intercollegiate_Athletics_Expenses_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IPEDS_Intercollegiate_Athletics_Expenses] PRIMARY KEY CLUSTERED 
(
	[Ref_IPEDS_Intercollegiate_Athletics_Expenses_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IPEDS_Natural_Expense] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IPEDS_Natural_Expense](
	[Ref_IPEDS_Natural_Expense_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IPEDS_Natural_Expense] PRIMARY KEY CLUSTERED 
(
	[Ref_IPEDS_Natural_Expense_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ipeds_Occupational_Category] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ipeds_Occupational_Category](
	[Ref_Ipeds_Occupational_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_IPEDS_Occupational_Category] PRIMARY KEY CLUSTERED 
(
	[Ref_Ipeds_Occupational_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IPSP_Progress_Report_Schedule] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IPSP_Progress_Report_Schedule](
	[Ref_IPSP_Progress_Report_Schedule_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IPSP_Progress_Report_Schedule] PRIMARY KEY CLUSTERED 
(
	[Ref_IPSP_Progress_Report_Schedule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_IPSP_Progress_Report_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_IPSP_Progress_Report_Type](
	[Ref_IPSP_Progress_Report_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_IPSP_Progress_Report_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_IPSP_Progress_Report_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_ISO6392_Language] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_ISO6392_Language](
	[Ref_ISO6392_Language_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_ISO6392_Language] PRIMARY KEY CLUSTERED 
(
	[Ref_ISO6392_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_ISO6393_Language] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_ISO6393_Language](
	[Ref_ISO6393_Language_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_ISO6393_Language] PRIMARY KEY CLUSTERED 
(
	[Ref_ISO6393_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_ISO6395_Language_Family] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_ISO6395_Language_Family](
	[Ref_ISO6395_Language_Family_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_ISO6395_Language_Family] PRIMARY KEY CLUSTERED 
(
	[Ref_ISO6395_Language_Family_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Item_Response_Theory_Difficulty_Category] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Item_Response_Theory_Difficulty_Category](
	[Ref_Item_Response_Theory_Difficulty_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Item_Responsse_Theory_Difficulty_Category] PRIMARY KEY CLUSTERED 
(
	[Ref_Item_Response_Theory_Difficulty_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Item_Response_Theory_Kappa_Algorithm] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Item_Response_Theory_Kappa_Algorithm](
	[Ref_Item_Response_Theory_Kappa_Algorithm_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Item_Response_Theory_Kappa_Algorithm] PRIMARY KEY CLUSTERED 
(
	[Ref_Item_Response_Theory_Kappa_Algorithm_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_K12_End_Of_Course_Requirement] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_K12_End_Of_Course_Requirement](
	[Ref_K12_End_Of_Course_Requirement_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_K12_End_Of_Course_Requirement] PRIMARY KEY CLUSTERED 
(
	[Ref_K12_End_Of_Course_Requirement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_K12_Lea_Title_I_Support_Service] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_K12_Lea_Title_I_Support_Service](
	[Ref_K12_LEA_Title_I_Support_Service_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_K12_LEA_Title_I_Support_Service] PRIMARY KEY CLUSTERED 
(
	[Ref_K12_LEA_Title_I_Support_Service_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_K12_Responsibility_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_K12_Responsibility_Type](
	[Ref_K12_Responsibility_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_K12_Responsibility_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_K12_Responsibility_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_K12_Staff_Classification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_K12_Staff_Classification](
	[Ref_Education_Staff_Classification_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Education_Staff_Classification] PRIMARY KEY CLUSTERED 
(
	[Ref_Education_Staff_Classification_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Language] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Language](
	[Ref_Language_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](max) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Ref_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Language_Use_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Language_Use_Type](
	[Ref_Language_Use_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Language_Use_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Language_Use_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Lea_Funds_Transfer_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Lea_Funds_Transfer_Type](
	[Ref_Lea_Funds_Transfer_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_LEA_Funds_Transfer_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Lea_Funds_Transfer_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Lea_Improvement_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Lea_Improvement_Status](
	[Ref_Lea_Improvement_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Lea_Improvement_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Lea_Improvement_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learner_Action_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learner_Action_Type](
	[Ref_Learner_Action_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learner_Action_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learner_Action_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learner_Activity_Add_To_Grade_Book_Flag] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learner_Activity_Add_To_Grade_Book_Flag](
	[Ref_Learner_Activity_Add_To_Grade_Book_Flag_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Learner_Activity_Add_To_Grade_Book_Flag] PRIMARY KEY CLUSTERED 
(
	[Ref_Learner_Activity_Add_To_Grade_Book_Flag_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learner_Activity_Maximum_Time_Allowed_Units] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learner_Activity_Maximum_Time_Allowed_Units](
	[Ref_Learner_Activity_Maximum_Time_Allowed_Units_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learner_Activity_Maximum_Time_Allowed_Units] PRIMARY KEY CLUSTERED 
(
	[Ref_Learner_Activity_Maximum_Time_Allowed_Units_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learner_Activity_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learner_Activity_Type](
	[Ref_Learner_Activity_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learner_Activity_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learner_Activity_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Access_API_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Access_API_Type](
	[Ref_Learning_Resource_Access_API_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Access_API_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Access_API_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Access_Hazard_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Access_Hazard_Type](
	[Ref_Learning_Resource_Access_Hazard_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Access_Hazard_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Access_Hazard_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Access_Mode_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Access_Mode_Type](
	[Ref_Learning_Resource_Access_Mode_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Access_Mode_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Access_Mode_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Access_Rights_Url] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Access_Rights_Url](
	[Ref_Learning_Resource_Access_Rights_Url_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Access_Rights_Url] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Access_Rights_Url_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Author_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Author_Type](
	[Ref_Learning_Resource_Author_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Author_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Author_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Book_Format_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Book_Format_Type](
	[Ref_Learning_Resource_Book_Format_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Book_Format_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Book_Format_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Competency_Alignment_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Competency_Alignment_Type](
	[Ref_Learning_Resource_Competency_Alignment_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Competency_Alignment_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Competency_Alignment_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Control_Flexibility_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Control_Flexibility_Type](
	[Ref_Learning_Resource_Control_Flexibility_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Control_Flexibility_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Control_Flexibility_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Digital_Media_Sub_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Digital_Media_Sub_Type](
	[Ref_Learning_Resource_Digital_Media_Sub_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Digital_Media_Sub_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Digital_Media_Sub_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Digital_Media_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Digital_Media_Type](
	[Ref_Learning_Resource_Digital_Media_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Digital_Media_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Digital_Media_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Educational_Use] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Educational_Use](
	[Ref_Learning_Resource_Educational_Use_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Educational_Use] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Educational_Use_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Intended_End_User_Role] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Intended_End_User_Role](
	[Ref_Learning_Resource_Intended_End_User_Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Intended_Use] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Intended_End_User_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Interaction_Mode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Interaction_Mode](
	[Ref_Learning_Resource_Interaction_Mode_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Interaction_Mode] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Interaction_Mode_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Interactivity_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Interactivity_Type](
	[Ref_Learning_Resource_Interactivity_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Interactivity_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Interactivity_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Media_Feature_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Media_Feature_Type](
	[Ref_Learning_Resource_Media_Feature_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Media_Feature_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Media_Feature_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Physical_Media_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Physical_Media_Type](
	[Ref_Learning_Resource_Physical_Media_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Physical_Media_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Physical_Media_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Learning_Resource_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Learning_Resource_Type](
	[Ref_Learning_Resource_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Learning_Resource_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Learning_Resource_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Lea_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Lea_Type](
	[Ref_Lea_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Lea_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Lea_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Leave_Event_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Leave_Event_Type](
	[Ref_Leave_Event_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Leave_Event_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Leave_Event_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Level_Of_Institution] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Level_Of_Institution](
	[Ref_Level_Of_Institution_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Level_Of_Institution] PRIMARY KEY CLUSTERED 
(
	[Ref_Level_Of_Institution_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_License_Exempt] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_License_Exempt](
	[Ref_License_Exempt_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_License_Exempt] PRIMARY KEY CLUSTERED 
(
	[Ref_License_Exempt_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Literacy_Assessment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Literacy_Assessment](
	[Ref_Literacy_Assessment_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Literacy_Assessment] PRIMARY KEY CLUSTERED 
(
	[Ref_Literacy_Assessment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Magnet_Special_Program] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Magnet_Special_Program](
	[Ref_Magnet_Special_Program_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Magnet_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Magnet_Special_Program_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Medical_Alert_Indicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Medical_Alert_Indicator](
	[Ref_Medical_Alert_Indicator_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Med_Alert] PRIMARY KEY CLUSTERED 
(
	[Ref_Medical_Alert_Indicator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Mep_Enrollment_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Mep_Enrollment_Type](
	[Ref_Mep_Enrollment_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Mep_Enrollment_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Mep_Enrollment_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Mep_Project_Based] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Mep_Project_Based](
	[Ref_Mep_Project_Based_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Mep_Project_Based] PRIMARY KEY CLUSTERED 
(
	[Ref_Mep_Project_Based_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Mep_Project_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Mep_Project_Type](
	[Ref_Mep_Project_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Mep_Project_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Mep_Project_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Mep_Service_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Mep_Service_Type](
	[Ref_Mep_Service_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_MEP_Service_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Mep_Service_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Mep_Session_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Mep_Session_Type](
	[Ref_Mep_Session_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Mep_Session_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Mep_Session_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Mep_Staff_Category] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Mep_Staff_Category](
	[Ref_Mep_Staff_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Mep_Staff_Category] PRIMARY KEY CLUSTERED 
(
	[Ref_Mep_Staff_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Method_Of_Service_Delivery] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Method_Of_Service_Delivery](
	[Ref_Method_Of_Service_Delivery_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Method_Of_Service_Delivery] PRIMARY KEY CLUSTERED 
(
	[Ref_Method_Of_Service_Delivery_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Military_Active_Student_Indicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Military_Active_Student_Indicator](
	[Ref_Military_Active_Student_Indicator_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Military_Active_Student_Indicator] PRIMARY KEY CLUSTERED 
(
	[Ref_Military_Active_Student_Indicator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Military_Branch] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Military_Branch](
	[Ref_Military_Branch_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Military_Branch] PRIMARY KEY CLUSTERED 
(
	[Ref_Military_Branch_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Military_Connected_Student_Indicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Military_Connected_Student_Indicator](
	[Ref_Military_Connected_Student_Indicator_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Military_Connected_Student_Indicator] PRIMARY KEY CLUSTERED 
(
	[Ref_Military_Connected_Student_Indicator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Military_Veteran_Student_Indicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Military_Veteran_Student_Indicator](
	[Ref_Military_Veteran_Student_Indicator_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Military_Veteran_Student_Indicator] PRIMARY KEY CLUSTERED 
(
	[Ref_Military_Veteran_Student_Indicator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Multiple_Intelligence_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Multiple_Intelligence_Type](
	[Ref_Multiple_Intelligence_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Multiple_Intelligence_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Multiple_Intelligence_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Naep_Aspects_Of_Reading] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Naep_Aspects_Of_Reading](
	[Ref_Naep_Aspects_Of_Reading_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Naep_Aspecs_Of_Reading] PRIMARY KEY CLUSTERED 
(
	[Ref_Naep_Aspects_Of_Reading_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Naep_Math_Complexity_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Naep_Math_Complexity_Level](
	[Ref_Naep_Math_Complexity_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Naep_Math_Complexity] PRIMARY KEY CLUSTERED 
(
	[Ref_Naep_Math_Complexity_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_NCES_College_Course_Map_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_NCES_College_Course_Map_Code](
	[Ref_NCES_College_Course_Map_Code_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_NCES_College_Course_Map_Code] PRIMARY KEY CLUSTERED 
(
	[Ref_NCES_College_Course_Map_Code_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Need_Determination_Method] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Need_Determination_Method](
	[Ref_Need_Determination_Method_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Need_Determination_Method] PRIMARY KEY CLUSTERED 
(
	[Ref_Need_Determination_Method_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Neglected_Program_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Neglected_Program_Type](
	[Ref_Neglected_Program_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Neglected_Program_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Neglected_Program_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Non_Promotion_Reason] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Non_Promotion_Reason](
	[Ref_Non_Promotion_Reason_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Non_Promotion_Reason] PRIMARY KEY CLUSTERED 
(
	[Ref_Non_Promotion_Reason_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Non_Traditional_Gender_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Non_Traditional_Gender_Status](
	[Ref_Non_Traditional_Gender_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Non_Traditional_Gender_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Non_Traditional_Gender_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_ONETSOC_Occupation_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_ONETSOC_Occupation_Type](
	[Ref_ONETSOC_Occupation_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_ONETSOC_Occupation_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_ONETSOC_Occupation_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Operational_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Operational_Status](
	[Ref_Operational_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Ref_Operational_Status_Type_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Operational_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Operational_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Operational_Status_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Operational_Status_Type](
	[Ref_Operational_Status_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Operational_Status_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Operational_Status_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Organization_Element_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Organization_Element_Type](
	[Ref_Organization_Element_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Organization_Element_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Organization_Element_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Organization_Identification_System] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Organization_Identification_System](
	[Ref_Organization_Identification_System_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Ref_Organization_Identifier_Type_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Organization_Identification_System] PRIMARY KEY CLUSTERED 
(
	[Ref_Organization_Identification_System_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Organization_Identifier_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Organization_Identifier_Type](
	[Ref_Organization_Identifier_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Organization_Identifier_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Organization_Identifier_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Organization_Indicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Organization_Indicator](
	[Ref_Organization_Indicator_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Ref_Organization_Type_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Organization_Indicator] PRIMARY KEY CLUSTERED 
(
	[Ref_Organization_Indicator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Organization_Location_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Organization_Location_Type](
	[Ref_Organization_Location_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Organization_Location] PRIMARY KEY CLUSTERED 
(
	[Ref_Organization_Location_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Organization_Monitoring_Notifications] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Organization_Monitoring_Notifications](
	[Ref_Organization_Monitoring_Notifications_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Organization_Monitoring_Notifications] PRIMARY KEY CLUSTERED 
(
	[Ref_Organization_Monitoring_Notifications_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Organization_Relationship] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Organization_Relationship](
	[Ref_Organization_Relationship_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Organization_Relationship] PRIMARY KEY CLUSTERED 
(
	[Ref_Organization_Relationship_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Organization_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Organization_Type](
	[Ref_Organization_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Ref_Organization_Element_Type_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Organization] PRIMARY KEY CLUSTERED 
(
	[Ref_Organization_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Other_Name_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Other_Name_Type](
	[Ref_Other_Name_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Other_Name_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Other_Name_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Outcome_Time_Point] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Outcome_Time_Point](
	[Ref_Outcome_Time_Point_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Outcome_Time_Point] PRIMARY KEY CLUSTERED 
(
	[Ref_Outcome_Time_Point_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Paraprofessional_Qualification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Paraprofessional_Qualification](
	[Ref_Paraprofessional_Qualification_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Parapaprofessional_Qualification] PRIMARY KEY CLUSTERED 
(
	[Ref_Paraprofessional_Qualification_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Participation_Status_Ayp] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Participation_Status_Ayp](
	[Ref_Participation_Status_Ayp_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Participation_Status_AYP] PRIMARY KEY CLUSTERED 
(
	[Ref_Participation_Status_Ayp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Participation_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Participation_Type](
	[Ref_Participation_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Participation_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Participation_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_PD_Activity_Approved_Purpose] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_PD_Activity_Approved_Purpose](
	[Ref_PD_Activity_Approved_For_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_PD_Activity_Approved_For] PRIMARY KEY CLUSTERED 
(
	[Ref_PD_Activity_Approved_For_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_PD_Activity_Credit_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_PD_Activity_Credit_Type](
	[Ref_PD_Activity_Credit_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_PD_Activity_Credit_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_PD_Activity_Credit_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_PD_Activity_Education_Levels_Addressed] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_PD_Activity_Education_Levels_Addressed](
	[Ref_PD_Activity_Education_Levels_Addressed_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_PD_Activity_Education_Levels_Addressed] PRIMARY KEY CLUSTERED 
(
	[Ref_PD_Activity_Education_Levels_Addressed_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_PD_Activity_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_PD_Activity_Level](
	[Ref_PD_Activity_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_PD_Activity_Level] PRIMARY KEY CLUSTERED 
(
	[Ref_PD_Activity_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_PD_Activity_Target_Audience] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_PD_Activity_Target_Audience](
	[Ref_PD_Activity_Target_Audience_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_PD_Activity_Target_Audience] PRIMARY KEY CLUSTERED 
(
	[Ref_PD_Activity_Target_Audience_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_PD_Activity_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_PD_Activity_Type](
	[Ref_PD_Activity_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_PD_Activity_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_PD_Activity_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_PD_Audience_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_PD_Audience_Type](
	[Ref_PD_Audience_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_PD_Audience_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_PD_Audience_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_PD_Delivery_Method] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_PD_Delivery_Method](
	[Ref_PD_Delivery_Method_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_PD_Delivery_Method] PRIMARY KEY CLUSTERED 
(
	[Ref_PD_Delivery_Method_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_PD_Instructional_Delivery_Mode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_PD_Instructional_Delivery_Mode](
	[Ref_PD_Instructional_Delivery_Mode_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_PD_Instructional_Delivery_Mode] PRIMARY KEY CLUSTERED 
(
	[Ref_PD_Instructional_Delivery_Mode_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_PD_Session_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_PD_Session_Status](
	[Ref_PD_Session_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_PD_Session_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_PD_Session_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Personal_Information_Verification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Personal_Information_Verification](
	[Ref_Personal_Information_Verification_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Personal_Inforrmation_Verification_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Personal_Information_Verification_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Person_Identification_System] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Person_Identification_System](
	[Ref_Person_Identification_System_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Ref_Person_Identifier_Type_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Identifier] PRIMARY KEY CLUSTERED 
(
	[Ref_Person_Identification_System_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Person_Identifier_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Person_Identifier_Type](
	[Ref_Person_Identifier_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Person_Identifier_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Person_Identifier_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Person_Location_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Person_Location_Type](
	[Ref_Person_Location_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Role_Id] [int] NULL,
	[Ref_Address_Type_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Person_Location] PRIMARY KEY CLUSTERED 
(
	[Ref_Person_Location_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Person_Relationship] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Person_Relationship](
	[Ref_Person_Relationship_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Relationship] PRIMARY KEY CLUSTERED 
(
	[Ref_Person_Relationship_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Person_Status_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Person_Status_Type](
	[Ref_Person_Status_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Person_Status_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Person_Status_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Person_Telephone_Number_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Person_Telephone_Number_Type](
	[Ref_Person_Telephone_Number_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Person_Telephone_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Person_Telephone_Number_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_PESC_Award_Level_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_PESC_Award_Level_Type](
	[Ref_PESC_Award_Level_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_PESC_Award_Level_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_PESC_Award_Level_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Population_Served] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Population_Served](
	[Ref_Population_Served_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Population_Served] PRIMARY KEY CLUSTERED 
(
	[Ref_Population_Served_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Pre_And_Post_Test_Indicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Pre_And_Post_Test_Indicator](
	[Ref_Pre_And_Post_Test_Indicator_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Pre_And_Post_Test_Indicator] PRIMARY KEY CLUSTERED 
(
	[Ref_Pre_And_Post_Test_Indicator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Predominant_Calendar_System] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Predominant_Calendar_System](
	[Ref_Predominant_Calendar_System_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Predominant_Calendar_System] PRIMARY KEY CLUSTERED 
(
	[Ref_Predominant_Calendar_System_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Pre_K_Eligible_Ages_Non_IDEA] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Pre_K_Eligible_Ages_Non_IDEA](
	[Ref_Pre_K_Eligible_Ages_Non_IDEA_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Pre_K_Eligible_Ages_Non_IDEA] PRIMARY KEY CLUSTERED 
(
	[Ref_Pre_K_Eligible_Ages_Non_IDEA_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Pre_Kindergarten_Eligibility] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Pre_Kindergarten_Eligibility](
	[Ref_Pre_Kindergarten_Eligibility_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Pre_Kindergarten_Eligibility] PRIMARY KEY CLUSTERED 
(
	[Ref_Pre_Kindergarten_Eligibility_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Present_Attendance_Category] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Present_Attendance_Category](
	[Ref_Present_Attendance_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Present_Attendance_Category] PRIMARY KEY CLUSTERED 
(
	[Ref_Present_Attendance_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Professional_Development_Financial_Support] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Professional_Development_Financial_Support](
	[Ref_Professional_Development_Financial_Support_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Professional_Development_Financial_Support] PRIMARY KEY CLUSTERED 
(
	[Ref_Professional_Development_Financial_Support_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Professional_Education_Job_Classification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Professional_Education_Job_Classification](
	[Ref_Professional_Education_Job_Classification_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Professional_Education_Job_Classification] PRIMARY KEY CLUSTERED 
(
	[Ref_Professional_Education_Job_Classification_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Professional_Technical_Credential_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Professional_Technical_Credential_Type](
	[Ref_Professional_Technical_Credential_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Prof_Tech_Credential_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Professional_Technical_Credential_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Proficiency_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Proficiency_Status](
	[Ref_Proficiency_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Proficiency_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Proficiency_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Proficiency_Target_Ayp] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Proficiency_Target_Ayp](
	[Ref_Proficiency_Target_Ayp_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Proficiency_Target_AYP] PRIMARY KEY CLUSTERED 
(
	[Ref_Proficiency_Target_Ayp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Profit_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Profit_Status](
	[Ref_Profit_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Profit_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Profit_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Program_Day_Length] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Program_Day_Length](
	[Ref_Program_Day_Length_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Kindergarten_Day_Length] PRIMARY KEY CLUSTERED 
(
	[Ref_Program_Day_Length_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Program_Exit_Reason] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Program_Exit_Reason](
	[Ref_Program_Exit_Reason_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Program_Exit_Reason] PRIMARY KEY CLUSTERED 
(
	[Ref_Program_Exit_Reason_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Program_Gifted_Eligibility] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Program_Gifted_Eligibility](
	[Ref_Program_Gifted_Eligibility_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Program_Gifted_Eligibility] PRIMARY KEY CLUSTERED 
(
	[Ref_Program_Gifted_Eligibility_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Program_Length_Hours_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Program_Length_Hours_Type](
	[Ref_Program_Length_Hours_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Program_Length] PRIMARY KEY CLUSTERED 
(
	[Ref_Program_Length_Hours_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Program_Sponsor_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Program_Sponsor_Type](
	[Ref_Program_Sponsor_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Program_Sponsor_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Program_Sponsor_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Program_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Program_Type](
	[Ref_Program_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Program_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Program_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Progress_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Progress_Level](
	[Ref_Progress_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Progress_Level] PRIMARY KEY CLUSTERED 
(
	[Ref_Progress_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Promotion_Reason] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Promotion_Reason](
	[Ref_Promotion_Reason_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Promotion_Reason] PRIMARY KEY CLUSTERED 
(
	[Ref_Promotion_Reason_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Proof_Of_Residency_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Proof_Of_Residency_Type](
	[Ref_Proof_Of_Residency_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Proof_Of_Residency_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Proof_Of_Residency_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ps_Enrollment_Action] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ps_Enrollment_Action](
	[Ref_Ps_Enrollment_Action_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_PS_Enrollment_Action] PRIMARY KEY CLUSTERED 
(
	[Ref_Ps_Enrollment_Action_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ps_Enrollment_Award_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ps_Enrollment_Award_Type](
	[Ref_Ps_Enrollment_Award_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Ps_Enrollment_Award_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Ps_Enrollment_Award_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ps_Enrollment_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ps_Enrollment_Status](
	[Ref_Ps_Enrollment_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Ps_Enrollment_Status_1] PRIMARY KEY CLUSTERED 
(
	[Ref_Ps_Enrollment_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ps_Enrollment_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ps_Enrollment_Type](
	[Ref_Ps_Enrollment_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Ps_Enrollment_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Ps_Enrollment_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_PS_Exit_Or_Withdrawal_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_PS_Exit_Or_Withdrawal_Type](
	[Ref_PS_Exit_Or_Withdrawal_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_PS_Exit_Or_Withdrawal_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_PS_Exit_Or_Withdrawal_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ps_Lep_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ps_Lep_Type](
	[Ref_Ps_Lep_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Ps_Lep_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Ps_Lep_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_PS_Program_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_PS_Program_Level](
	[Ref_PS_Program_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_PS_Program_Level] PRIMARY KEY CLUSTERED 
(
	[Ref_PS_Program_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Ps_Student_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Ps_Student_Level](
	[Ref_Ps_Student_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Ps_Student_Level] PRIMARY KEY CLUSTERED 
(
	[Ref_Ps_Student_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Public_School_Choice_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Public_School_Choice_Status](
	[Ref_Public_School_Choice_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Public_School_Choice_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Public_School_Choice_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Public_School_Residence] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Public_School_Residence](
	[Ref_Public_School_Residence_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Public_School_Residence] PRIMARY KEY CLUSTERED 
(
	[Ref_Public_School_Residence_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Purpose_Of_Monitoring_Visit] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Purpose_Of_Monitoring_Visit](
	[Ref_Purpose_Of_Monitoring_Visit_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Purpose_Of_Monitoring_Visit] PRIMARY KEY CLUSTERED 
(
	[Ref_Purpose_Of_Monitoring_Visit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Qris_Participation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Qris_Participation](
	[Ref_Qris_Participation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_QRIS_Participation] PRIMARY KEY CLUSTERED 
(
	[Ref_Qris_Participation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Race] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Race](
	[Ref_Race_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Race] PRIMARY KEY CLUSTERED 
(
	[Ref_Race_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Reap_Alternative_Funding_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Reap_Alternative_Funding_Status](
	[Ref_Reap_Alternative_Funding_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_REAP_Alternative_Funding_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Reap_Alternative_Funding_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Reason_Delay_Transition_Conf] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Reason_Delay_Transition_Conf](
	[Ref_Reason_Delay_Transition_Conf_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Reason_Delay_Transition_Conf] PRIMARY KEY CLUSTERED 
(
	[Ref_Reason_Delay_Transition_Conf_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Reconstituted_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Reconstituted_Status](
	[Ref_Reconstituted_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Reconstituted_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Reconstituted_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Referral_Outcome] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Referral_Outcome](
	[Ref_Referral_Outcome_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Referral_Outcome] PRIMARY KEY CLUSTERED 
(
	[Ref_Referral_Outcome_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Reimbursement_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Reimbursement_Type](
	[Ref_Reimbursement_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Reimbursement_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Reimbursement_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Restructuring_Action] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Restructuring_Action](
	[Ref_Restructuring_Action_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Restructuring_Action] PRIMARY KEY CLUSTERED 
(
	[Ref_Restructuring_Action_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Rlis_Program_Use] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Rlis_Program_Use](
	[Ref_Rlis_Program_Use_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_RLIS_Program_Use] PRIMARY KEY CLUSTERED 
(
	[Ref_Rlis_Program_Use_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Role_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Role_Status](
	[Ref_Role_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
	[Ref_Role_Status_Type_Id] [int] NULL,
 CONSTRAINT [PK_Ref_Role_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Role_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Role_Status_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Role_Status_Type](
	[Ref_Role_Status_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Role_Status_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Role_Status_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_SCED_Course_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_SCED_Course_Level](
	[Ref_SCED_Course_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_SCED_Course_Level] PRIMARY KEY CLUSTERED 
(
	[Ref_SCED_Course_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_SCED_Course_Subject_Area] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_SCED_Course_Subject_Area](
	[Ref_SCED_Course_Subject_Area_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_SCED_Course_Subject_Area] PRIMARY KEY CLUSTERED 
(
	[Ref_SCED_Course_Subject_Area_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Scheduled_Well_Child_Screening] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Scheduled_Well_Child_Screening](
	[Ref_Scheduled_Well_Child_Screening_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Scheduled_Well_Child_Screening] PRIMARY KEY CLUSTERED 
(
	[Ref_Scheduled_Well_Child_Screening_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_School_Food_Service_Program] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_School_Food_Service_Program](
	[Ref_School_Food_Service_Program_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_School_Food_Service_Program] PRIMARY KEY CLUSTERED 
(
	[Ref_School_Food_Service_Program_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_School_Improvement_Funds] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_School_Improvement_Funds](
	[Ref_School_Improvement_Funds_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_School_Improvement_Funds] PRIMARY KEY CLUSTERED 
(
	[Ref_School_Improvement_Funds_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_School_Improvement_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_School_Improvement_Status](
	[Ref_School_Improvement_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_School_Improvement_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_School_Improvement_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_School_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_School_Level](
	[Ref_School_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_School_Level] PRIMARY KEY CLUSTERED 
(
	[Ref_School_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_School_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_School_Type](
	[Ref_School_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_School_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_School_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Score_Metric_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Score_Metric_Type](
	[Ref_Score_Metric_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Score_Metric_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Score_Metric_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Service_Frequency] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Service_Frequency](
	[Ref_Service_Frequency_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Service_Frequency] PRIMARY KEY CLUSTERED 
(
	[Ref_Service_Frequency_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Service_Option] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Service_Option](
	[Ref_Service_Option_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Service_Option] PRIMARY KEY CLUSTERED 
(
	[Ref_Service_Option_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Services] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Services](
	[Ref_Services_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Services] PRIMARY KEY CLUSTERED 
(
	[Ref_Services_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Session_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Session_Type](
	[Ref_Session_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Session_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Session_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Sex] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Sex](
	[Ref_Sex_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Sex] PRIMARY KEY CLUSTERED 
(
	[Ref_Sex_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Sig_Intervention_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Sig_Intervention_Type](
	[Ref_Sig_Intervention_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Sig_Intervention_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Sig_Intervention_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Single_Sex_Class_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Single_Sex_Class_Status](
	[Ref_Single_Sex_Class_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Single_Sex_Class_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Single_Sex_Class_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Space_Use_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Space_Use_Type](
	[Ref_Space_Use_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Space_Use_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Space_Use_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Special_Education_Age_Group_Taught] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Special_Education_Age_Group_Taught](
	[Ref_Special_Education_Age_Group_Taught_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Special_Education_Age_Group_Taught] PRIMARY KEY CLUSTERED 
(
	[Ref_Special_Education_Age_Group_Taught_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Special_Education_Exit_Reason] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Special_Education_Exit_Reason](
	[Ref_Special_Education_Exit_Reason_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Special_Education_Exit_Reason] PRIMARY KEY CLUSTERED 
(
	[Ref_Special_Education_Exit_Reason_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Special_Education_Staff_Category] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Special_Education_Staff_Category](
	[Ref_Special_Education_Staff_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Special_Education_Staff_Category] PRIMARY KEY CLUSTERED 
(
	[Ref_Special_Education_Staff_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Staff_Performance_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Staff_Performance_Level](
	[Ref_Staff_Performance_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Staff_Performance_Level] PRIMARY KEY CLUSTERED 
(
	[Ref_Staff_Performance_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Standardized_Admission_Test] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Standardized_Admission_Test](
	[Ref_Standardized_Admission_Test_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Standardized_Admission_Test] PRIMARY KEY CLUSTERED 
(
	[Ref_Standardized_Admission_Test_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_State] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_State](
	[Ref_State_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_State] PRIMARY KEY CLUSTERED 
(
	[Ref_State_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_State_ANSI_Code] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

SET ANSI_PADDING ON;

CREATE TABLE [dbo].[Ref_State_ANSI_Code](
	[Code] [char](2) NOT NULL,
	[State_Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Ref_State_ANSI_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

SET ANSI_PADDING OFF;

/****** Object:  Table [dbo].[Ref_State_Poverty_Designation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_State_Poverty_Designation](
	[Ref_State_Poverty_Designation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_State_Poverty_Designation] PRIMARY KEY CLUSTERED 
(
	[Ref_State_Poverty_Designation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Student_Support_Service_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Student_Support_Service_Type](
	[Ref_Student_Support_Service_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Student_Support_Service_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Student_Support_Service_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Supervised_Clinical_Experience] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Supervised_Clinical_Experience](
	[Ref_Supervised_Clinical_Experience_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Supervised_Clinical_Experience] PRIMARY KEY CLUSTERED 
(
	[Ref_Supervised_Clinical_Experience_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Teacher_Education_Credential_Exam] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Teacher_Education_Credential_Exam](
	[Ref_Teacher_Education_Credential_Exam_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Teacher_Education_Credential_Exam] PRIMARY KEY CLUSTERED 
(
	[Ref_Teacher_Education_Credential_Exam_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Teacher_Education_Exam_Score_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Teacher_Education_Exam_Score_Type](
	[Ref_Teacher_Education_Exam_Score_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Teacher_Education_Exam_Score_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Teacher_Education_Exam_Score_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Teacher_Education_Test_Company] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Teacher_Education_Test_Company](
	[Ref_Teacher_Education_Test_Company_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Teacher_Education_Test_Company] PRIMARY KEY CLUSTERED 
(
	[Ref_Teacher_Education_Test_Company_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Teacher_Prep_Completer_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Teacher_Prep_Completer_Status](
	[Ref_Teacher_Prep_Completer_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Teacher_Prep_Completer_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Teacher_Prep_Completer_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Teacher_Prep_Enrollment_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Teacher_Prep_Enrollment_Status](
	[Ref_Teacher_Prep_Enrollment_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Teacher_Prep_Enroll_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Teacher_Prep_Enrollment_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Teaching_Assignment_Role] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Teaching_Assignment_Role](
	[Ref_Teaching_Assignment_Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Teaching_Assignment_Role] PRIMARY KEY CLUSTERED 
(
	[Ref_Teaching_Assignment_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Teaching_Credential_Basis] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Teaching_Credential_Basis](
	[Ref_Teaching_Credential_Basis_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Teaching_Credential_Basis] PRIMARY KEY CLUSTERED 
(
	[Ref_Teaching_Credential_Basis_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Teaching_Credential_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Teaching_Credential_Type](
	[Ref_Teaching_Credential_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Teaching_Credential_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Teaching_Credential_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Technical_Assistance_Delivery_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Technical_Assistance_Delivery_Type](
	[Ref_Technical_Assistance_Delivery_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Technical_Assistance_Delivery_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Technical_Assistance_Delivery_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Technical_Assistance_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Technical_Assistance_Type](
	[Ref_Technical_Assistance_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Technical_Assistance_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Technical_Assistance_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Technology_Literacy_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Technology_Literacy_Status](
	[Ref_Technology_Literacy_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Technology_Literacy_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Technology_Literacy_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Telephone_Number_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Telephone_Number_Type](
	[Ref_Telephone_Number_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Telephone_Number_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Telephone_Number_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Tenure_System] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Tenure_System](
	[Ref_Tenure_System_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Tenure_System] PRIMARY KEY CLUSTERED 
(
	[Ref_Tenure_System_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Text_Complexity_System] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Text_Complexity_System](
	[Ref_Text_Complexity_System_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Text_Complexity_System] PRIMARY KEY CLUSTERED 
(
	[Ref_Text_Complexity_System_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Time_For_Completion_Units] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Time_For_Completion_Units](
	[Ref_Time_For_Completion_Units_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Time_For_Completion_Units] PRIMARY KEY CLUSTERED 
(
	[Ref_Time_For_Completion_Units_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Title_III_Accountability] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Title_III_Accountability](
	[Ref_Title_III_Accountability_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Title_III_Accountability] PRIMARY KEY CLUSTERED 
(
	[Ref_Title_III_Accountability_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Title_III_Language_Instruction_Program_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Title_III_Language_Instruction_Program_Type](
	[Ref_Title_III_Language_Instruction_Program_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Title_III_Language_Instruction] PRIMARY KEY CLUSTERED 
(
	[Ref_Title_III_Language_Instruction_Program_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Title_III_Professional_Development_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Title_III_Professional_Development_Type](
	[Ref_Title_III_Professional_Development_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Title_III_Professional_Dev_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Title_III_Professional_Development_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Title_I_Indicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Title_I_Indicator](
	[Ref_Title_I_Indicator_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Title_I_Indicator] PRIMARY KEY CLUSTERED 
(
	[Ref_Title_I_Indicator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Title_I_Instructional_Services] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Title_I_Instructional_Services](
	[Ref_Title_I_Instructional_Services_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Title_I_Instructional_Services] PRIMARY KEY CLUSTERED 
(
	[Ref_Title_I_Instructional_Services_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Title_I_Program_Staff_Category] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Title_I_Program_Staff_Category](
	[Ref_Title_I_Program_Staff_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Title_I_Program_Staff_Category] PRIMARY KEY CLUSTERED 
(
	[Ref_Title_I_Program_Staff_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Title_I_Program_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Title_I_Program_Type](
	[Ref_Title_I_Program_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Title_I_Program_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Title_I_Program_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Title_I_School_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Title_I_School_Status](
	[Ref_Title_1_School_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](400) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Title_1_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_Title_1_School_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Transfer_Out_Indicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Transfer_Out_Indicator](
	[Ref_Transfer_Out_Indicator_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Transfer_Out_Indicator] PRIMARY KEY CLUSTERED 
(
	[Ref_Transfer_Out_Indicator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Transfer_Ready] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Transfer_Ready](
	[Ref_Transfer_Ready_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Transfer_Ready] PRIMARY KEY CLUSTERED 
(
	[Ref_Transfer_Ready_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Tribal_Affiliation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Tribal_Affiliation](
	[Ref_Tribal_Affiliation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Ref_Tribal_Affiliation] PRIMARY KEY CLUSTERED 
(
	[Ref_Tribal_Affiliation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Trimester_When_Prenatal_Care_Began] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Trimester_When_Prenatal_Care_Began](
	[Ref_Trimester_When_Prenatal_Care_Began_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Trimester_When_Prenatal_Care_Began] PRIMARY KEY CLUSTERED 
(
	[Ref_Trimester_When_Prenatal_Care_Began_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Tuition_Residency_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Tuition_Residency_Type](
	[Ref_Tuition_Residency_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Tuition_Residency_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Tuition_Residency_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Tuition_Unit] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Tuition_Unit](
	[Ref_Tuition_Unit_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Tuition_Unit] PRIMARY KEY CLUSTERED 
(
	[Ref_Tuition_Unit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_US_Citizenship_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_US_Citizenship_Status](
	[Ref_US_Citizenship_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_US_Citizen_Status] PRIMARY KEY CLUSTERED 
(
	[Ref_US_Citizenship_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Visa_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Visa_Type](
	[Ref_Visa_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Visa_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Visa_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Vision_Screening_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Vision_Screening_Status](
	[Ref_Vision_Screening_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Vision_Screen] PRIMARY KEY CLUSTERED 
(
	[Ref_Vision_Screening_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Wage_Collection_Method] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Wage_Collection_Method](
	[Ref_Wage_Collection_Method_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Wage_Collection_Method] PRIMARY KEY CLUSTERED 
(
	[Ref_Wage_Collection_Method_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Wage_Verification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Wage_Verification](
	[Ref_Wage_Verification_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Wage_Verification] PRIMARY KEY CLUSTERED 
(
	[Ref_Wage_Verification_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Weapon_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Weapon_Type](
	[Ref_Weapon_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [XPK_Ref_Weapon_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Weapon_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Wf_Program_Participation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Wf_Program_Participation](
	[Ref_Wf_Program_Participation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Wf_Program_Participation] PRIMARY KEY CLUSTERED 
(
	[Ref_Wf_Program_Participation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Ref_Workbased_Learning_Opportunity_Type] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Ref_Workbased_Learning_Opportunity_Type](
	[Ref_Workbased_Learning_Opportunity_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
	[Sort_Order] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Ref_Workbased_Learning_Opportunity_Type] PRIMARY KEY CLUSTERED 
(
	[Ref_Workbased_Learning_Opportunity_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Required_Immunization] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Required_Immunization](
	[Required_Immunization_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Ref_Immunization_Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_Required_Immunization] PRIMARY KEY CLUSTERED 
(
	[Required_Immunization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Required_Immunization] UNIQUE NONCLUSTERED 
(
	[Organization_Id] ASC,
	[Ref_Immunization_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Role] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Role](
	[Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Ref_Jurisdiction_Id] [int] NULL,
 CONSTRAINT [PK_Ref_Role] PRIMARY KEY CLUSTERED 
(
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Role_Attendance] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Role_Attendance](
	[Role_Attendance_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Number_Of_Days_In_Attendance] [decimal](9, 2) NULL,
	[Number_Of_Days_Absent] [decimal](9, 2) NULL,
	[Attendance_Rate] [decimal](5, 4) NULL,
 CONSTRAINT [PK_Role_Attendance] PRIMARY KEY CLUSTERED 
(
	[Role_Attendance_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Role_Attendance_Event] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Role_Attendance_Event](
	[Role_Attendance_Event_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Ref_Attendance_Event_Type_Id] [int] NULL,
	[Ref_Attendance_Status_Id] [int] NULL,
	[Ref_Absent_Attendance_Category_Id] [int] NULL,
	[Ref_Present_Attendance_Category_Id] [int] NULL,
	[Ref_Leave_Event_Type_Id] [int] NULL,
 CONSTRAINT [PK_Role_Attendance_Event] PRIMARY KEY CLUSTERED 
(
	[Role_Attendance_Event_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Role_Status] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Role_Status](
	[Role_Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Status_Start_Date] [date] NOT NULL,
	[Status_End_Date] [datetime] NULL,
	[Ref_Role_Status_Id] [int] NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
 CONSTRAINT [PK_Role_Status] PRIMARY KEY CLUSTERED 
(
	[Role_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Rubric] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Rubric](
	[Rubric_Id] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[Title] [nvarchar](30) NULL,
	[Url_Reference] [nvarchar](512) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Rubric] PRIMARY KEY CLUSTERED 
(
	[Rubric_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Rubric_Criterion] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Rubric_Criterion](
	[Rubric_Criterion_Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](30) NULL,
	[Title] [nvarchar](60) NULL,
	[Description] [nvarchar](max) NULL,
	[Weight] [decimal](18, 0) NULL,
	[Position] [int] NULL,
	[Rubric_Id] [int] NOT NULL,
 CONSTRAINT [PK_Rubric_Criterion] PRIMARY KEY CLUSTERED 
(
	[Rubric_Criterion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Rubric_Criterion_Level] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Rubric_Criterion_Level](
	[Rubric_Criterion_Level_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Quality] [nvarchar](max) NULL,
	[Score] [decimal](18, 0) NULL,
	[Feedback] [nvarchar](max) NULL,
	[Position] [int] NULL,
	[Rubric_Criterion_Id] [int] NOT NULL,
 CONSTRAINT [PK_Rubric_Criterion_Level] PRIMARY KEY CLUSTERED 
(
	[Rubric_Criterion_Level_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Service_Frequency] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Service_Frequency](
	[Service_Frequency_Id] [int] IDENTITY(1,1) NOT NULL,
	[Service_Plan_Id] [int] NOT NULL,
	[Duration_In_Minutes] [int] NULL,
	[Frequency_Length] [int] NULL,
	[Instances_Per_Cycle] [int] NULL,
	[Ref_Frequency_Unit_Id] [int] NULL,
 CONSTRAINT [PK_Service_Frequency] PRIMARY KEY CLUSTERED 
(
	[Service_Frequency_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Service_Plan] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Service_Plan](
	[Service_Plan_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Declined_Services_Date] [date] NULL,
	[Extends_Outside_School_Year] [bit] NULL,
	[Inclusive_Setting_Indicator] [bit] NULL,
	[Reason_For_Declined_Services] [nvarchar](max) NULL,
	[Setting_Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Service_Plan] PRIMARY KEY CLUSTERED 
(
	[Service_Plan_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[Service_Provided] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Service_Provided](
	[Service_Provided_Id] [int] IDENTITY(1,1) NOT NULL,
	[Services_Received_Id] [int] NOT NULL,
	[Ref_Services_Id] [int] NULL,
	[Ref_Student_Support_Service_Type_Id] [int] NULL,
 CONSTRAINT [PK_Service_Provided] PRIMARY KEY CLUSTERED 
(
	[Service_Provided_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Service_Provider] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Service_Provider](
	[Service_Provider_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Id] [int] NOT NULL,
	[Service_Provided_Id] [int] NOT NULL,
	[Service_Staff_Id] [int] NOT NULL,
 CONSTRAINT [PK_Service_Provider] PRIMARY KEY CLUSTERED 
(
	[Service_Provider_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Services_Received] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Services_Received](
	[Services_Received_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Full_Time_Equivalency] [decimal](3, 2) NULL,
	[Service_Plan_Id] [int] NOT NULL,
 CONSTRAINT [PK_Services_Received] PRIMARY KEY CLUSTERED 
(
	[Services_Received_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Service_Staff] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Service_Staff](
	[Service_Staff_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Special_Education_Staff_Category_Id] [int] NOT NULL,
 CONSTRAINT [PK_Service_Staff] PRIMARY KEY CLUSTERED 
(
	[Service_Staff_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Organization_Person_Role_Ref_Special_Education_Staff_Category] UNIQUE NONCLUSTERED 
(
	[Organization_Person_Role_Id] ASC,
	[Ref_Special_Education_Staff_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Staff_Credential] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Staff_Credential](
	[Person_Credential_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ref_Teaching_Credential_Type_Id] [int] NULL,
	[Ref_Teaching_Credential_Basis_Id] [int] NULL,
	[Ref_Child_Dev_Associate_Type_Id] [int] NULL,
	[Ref_Paraprofessional_Qualification_Id] [int] NULL,
	[Technology_Skills_Standards_Met] [bit] NULL,
	[Diploma_Or_Credential_Award_Date] [nvarchar](7) NULL,
	[Ref_Program_Sponsor_Type_Id] [int] NULL,
	[CTE_Instructor_Industry_Certification] [bit] NULL,
	[Cardiopulmonary_Resuscitation_Certification] [date] NULL,
	[First_Aid_Certification] [date] NULL,
 CONSTRAINT [PK_Staff_Credential] PRIMARY KEY CLUSTERED 
(
	[Person_Credential_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Staff_Employment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Staff_Employment](
	[Staff_Employment_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Hire_Date] [date] NULL,
	[Position_Title] [nvarchar](45) NULL,
	[Ref_Employment_Separation_Type_Id] [int] NULL,
	[Ref_Employment_Separation_Reason_Id] [int] NULL,
	[Union_Membership_Name] [nvarchar](200) NULL,
	[Weeks_Employed_Per_Year] [int] NULL,
 CONSTRAINT [PK_Staff_Employment] PRIMARY KEY CLUSTERED 
(
	[Staff_Employment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Staff_Evaluation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Staff_Evaluation](
	[Staff_Evaluation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[System] [nvarchar](60) NULL,
	[Scale] [nvarchar](80) NULL,
	[Score_Or_Rating] [nvarchar](60) NULL,
	[Outcome] [nvarchar](80) NULL,
	[Ref_Staff_Performance_Level_Id] [int] NULL,
 CONSTRAINT [PK_Staff_Evaluation] PRIMARY KEY CLUSTERED 
(
	[Staff_Evaluation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Staff_Experience] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Staff_Experience](
	[Person_Id] [int] NOT NULL,
	[Years_Of_Prior_Teaching_Experience] [decimal](9, 2) NULL,
	[Years_Of_Prior_AE_Teaching_Experience] [decimal](9, 2) NULL,
 CONSTRAINT [PK_Staff_Experience] PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Staff_Professional_Development_Activity] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Staff_Professional_Development_Activity](
	[Staff_Professional_Development_Activity_Id] [int] IDENTITY(1,1) NOT NULL,
	[Professional_Development_Requirement_Id] [int] NOT NULL,
	[Activity_Title] [nvarchar](60) NULL,
	[Activity_Identifier] [nvarchar](40) NULL,
	[Activity_Start_Date] [date] NULL,
	[Activity_Completion_Date] [date] NULL,
	[Scholarship_Status] [bit] NULL,
	[Ref_Professional_Development_Financial_Support_Id] [int] NULL,
	[Number_Of_Credits_Earned] [decimal](10, 2) NULL,
	[Ref_Course_Credit_Unit_Id] [int] NULL,
	[Professional_Development_Activity_Id] [int] NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Professional_Development_Session_Id] [int] NOT NULL,
 CONSTRAINT [PK_Staff_Professional_Development_Activity] PRIMARY KEY CLUSTERED 
(
	[Staff_Professional_Development_Activity_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Staff_Technical_Assistance] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Staff_Technical_Assistance](
	[Staff_Technical_Assistance_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Technical_Assistance_Type_Id] [int] NULL,
	[Ref_Technical_Assistance_Delivery_Type_Id] [int] NULL,
	[Technical_Assistance_Approved_Ind] [bit] NULL,
 CONSTRAINT [PK_Staff_Technical_Assistance] PRIMARY KEY CLUSTERED 
(
	[Staff_Technical_Assistance_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Teacher_Education_Credential_Exam] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Teacher_Education_Credential_Exam](
	[Teacher_Education_Credential_Exam_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Person_Role_Id] [int] NULL,
	[Ref_Teacher_Education_Credential_Exam_Id] [int] NULL,
	[Ref_Teacher_Education_Exam_Score_Type_Id] [int] NULL,
	[Ref_Teacher_Education_Test_Company_Id] [int] NULL,
 CONSTRAINT [PK_Teacher_Edu_Credential_Exam] PRIMARY KEY CLUSTERED 
(
	[Teacher_Education_Credential_Exam_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Teacher_Student_Data_Link_Exclusion] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Teacher_Student_Data_Link_Exclusion](
	[Teacher_Student_Data_Link_Exclusion_Id] [int] IDENTITY(1,1) NOT NULL,
	[Student_Organization_Person_Role_Id] [int] NOT NULL,
	[Teacher_Organization_Person_Role_Id] [int] NOT NULL,
 CONSTRAINT [PK_Teacher_Student_Data_Link_Exclusion] PRIMARY KEY CLUSTERED 
(
	[Teacher_Student_Data_Link_Exclusion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Workforce_Employment_Quarterly_Data] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Workforce_Employment_Quarterly_Data](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Employed_While_Enrolled_Id] [int] NULL,
	[Ref_Employed_After_Exit_Id] [int] NULL,
	[Employed_In_Multiple_Jobs_Count] [decimal](2, 0) NULL,
	[Military_Enlistment_After_Exit] [bit] NULL,
 CONSTRAINT [PK_Workforce_Employment_Quarterly_Data] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Workforce_Program_Participation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Workforce_Program_Participation](
	[Organization_Person_Role_Id] [int] NOT NULL,
	[Ref_Wf_Program_Participation_Id] [int] NULL,
	[Ref_Professional_Technical_Credential_Type_Id] [int] NULL,
	[Diploma_Or_Credential_Award_Date] [nchar](7) NULL,
 CONSTRAINT [PK_Workforce_Program_Participation] PRIMARY KEY CLUSTERED 
(
	[Organization_Person_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  View [dbo].[v_CEDS_Element_Details] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;



CREATE VIEW [dbo].[v_CEDS_Element_Details]
AS 
SELECT 
	  c.TABLE_NAME Table_Name
	, c.COLUMN_NAME Column_Name
	, data_type as Data_Type
	, character_maximum_length as [Max_Length]
	, c.ORDINAL_POSITION Column_Postion
	, CAST(ISNULL(de.value,me.value) AS varchar(MAX)) [Description]
	, CAST(el.value AS varchar(MAX)) [Ceds_Element]
	, CAST(ur.value AS varchar(MAX)) [Url]
	, CAST(gi.value as VARCHAR(MAX)) [Global_Id]
FROM INFORMATION_SCHEMA.COLUMNS c 
INNER JOIN INFORMATION_SCHEMA.TABLES t ON t.TABLE_NAME = c.TABLE_NAME 
OUTER APPLY fn_listextendedproperty ('MS_Description', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) me
OUTER APPLY fn_listextendedproperty ('CEDS_Def_Desc', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) de
OUTER APPLY fn_listextendedproperty ('CEDS_Element', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) el
OUTER APPLY fn_listextendedproperty ('CEDS_URL', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) ur
OUTER APPLY fn_listextendedproperty ('CEDS_Global_Id', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) gi
WHERE t.table_type = 'BASE TABLE'
	AND me.Value IS NOT NULL
UNION
SELECT 
	  t.TABLE_NAME Table_Name
	, NULL Column_Name
	, NULL as Data_Type
	, NULL as [Max_Length]
	, NULL Column_Postion
	, CAST(ISNULL(de.value,me.value) AS varchar(MAX)) [Description]
	, CAST(el.value AS varchar(MAX)) [Ceds_Element]
	, CAST(ur.value AS varchar(MAX)) [Url]
	, CAST(gi.value as VARCHAR(MAX)) [Global_Id]
FROM INFORMATION_SCHEMA.TABLES t 
OUTER APPLY fn_listextendedproperty ('MS_Description', 'schema', 'dbo', N'table', t.TABLE_NAME, NULL, DEFAULT) me
OUTER APPLY fn_listextendedproperty ('CEDS_Def_Desc', 'schema', 'dbo', N'table', t.TABLE_NAME, NULL, DEFAULT) de
OUTER APPLY fn_listextendedproperty ('CEDS_Element', 'schema', 'dbo', N'table', t.TABLE_NAME, NULL, DEFAULT) el
OUTER APPLY fn_listextendedproperty ('CEDS_URL', 'schema', 'dbo', N'table', t.TABLE_NAME, NULL, DEFAULT) ur
OUTER APPLY fn_listextendedproperty ('CEDS_Global_Id', 'schema', 'dbo', N'table', t.TABLE_NAME, NULL, DEFAULT) gi
WHERE t.table_type = 'BASE TABLE'
	AND me.Value IS NOT NULL
;

/****** Object:  View [dbo].[v_CEDS_Mapping] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;



CREATE VIEW [dbo].[v_CEDS_Mapping]
AS 
SELECT 
	  c.TABLE_NAME Table_Name
	, c.COLUMN_NAME Column_Name
	, LTRIM(ms.Item) [Global_Id]
	, LTRIM(es.Item) [Element_Name]
	, LTRIM(us.Item) [URL]
FROM INFORMATION_SCHEMA.COLUMNS c 
INNER JOIN INFORMATION_SCHEMA.TABLES t ON t.TABLE_NAME = c.TABLE_NAME 
OUTER APPLY fn_listextendedproperty ('CEDS_Global_Id', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) m
OUTER APPLY fn_listextendedproperty ('CEDS_Element', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) e
OUTER APPLY fn_listextendedproperty ('CEDS_URL', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) u
CROSS APPLY dbo.fn_Split(CAST(m.Value AS VARCHAR(MAX)), ',') ms
CROSS APPLY dbo.fn_Split(CAST(e.Value AS VARCHAR(MAX)), ',') es
CROSS APPLY dbo.fn_Split(CAST(u.Value AS VARCHAR(MAX)), ',') us
WHERE ms.Row_Number = es.Row_Number
	AND ms.Row_Number = us.Row_Number
UNION
SELECT 
	  T.TABLE_NAME
	, NULL 
	, LTRIM(ms.Item) [Global_Id]
	, LTRIM(es.Item) [Element_Name]
	, LTRIM(us.Item) [URL]
FROM INFORMATION_SCHEMA.COLUMNS c 
INNER JOIN INFORMATION_SCHEMA.TABLES t ON t.TABLE_NAME = c.TABLE_NAME 
OUTER APPLY fn_listextendedproperty ('CEDS_Global_Id', 'schema', 'dbo', N'table', c.TABLE_NAME, NULL, DEFAULT) m
OUTER APPLY fn_listextendedproperty ('CEDS_Element', 'schema', 'dbo', N'table', c.TABLE_NAME, NULL, DEFAULT) e
OUTER APPLY fn_listextendedproperty ('CEDS_URL', 'schema', 'dbo', N'table', c.TABLE_NAME, NULL, DEFAULT) u
CROSS APPLY dbo.fn_Split(CAST(m.Value AS VARCHAR(MAX)), ',') ms
CROSS APPLY dbo.fn_Split(CAST(e.Value AS VARCHAR(MAX)), ',') es
CROSS APPLY dbo.fn_Split(CAST(u.Value AS VARCHAR(MAX)), ',') us
WHERE ms.Row_Number = es.Row_Number
	AND ms.Row_Number = us.Row_Number
;

ALTER TABLE [dbo].[Person_Telephone] ADD  CONSTRAINT [DF_Person_Pho_Prima_50_E5_F592]  DEFAULT ((0)) FOR [Primary_Telephone_Number_Indicator];

ALTER TABLE [dbo].[Activity]  WITH CHECK ADD  CONSTRAINT [FK_Activity_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[Activity] CHECK CONSTRAINT [FK_Activity_Organization];

ALTER TABLE [dbo].[Activity_Recognition]  WITH CHECK ADD  CONSTRAINT [FK_Activity_Recognition_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Activity_Recognition] CHECK CONSTRAINT [FK_Activity_Recognition_Organization_Person_Role];

ALTER TABLE [dbo].[Activity_Recognition]  WITH CHECK ADD  CONSTRAINT [FK_Activity_Recognition_Ref_Activity_Recognition_Type] FOREIGN KEY([Ref_Activity_Recognition_Type_Id])
REFERENCES [dbo].[Ref_Activity_Recognition_Type] ([Ref_Activity_Recognition_Type_Id]);

ALTER TABLE [dbo].[Activity_Recognition] CHECK CONSTRAINT [FK_Activity_Recognition_Ref_Activity_Recognition_Type];

ALTER TABLE [dbo].[Ae_Course]  WITH CHECK ADD  CONSTRAINT [FK_Ae_Course_Ref_Career_Cluster] FOREIGN KEY([Ref_Career_Cluster_Id])
REFERENCES [dbo].[Ref_Career_Cluster] ([Ref_Career_Cluster_Id]);

ALTER TABLE [dbo].[Ae_Course] CHECK CONSTRAINT [FK_Ae_Course_Ref_Career_Cluster];

ALTER TABLE [dbo].[Ae_Provider]  WITH CHECK ADD  CONSTRAINT [FK_Ae_Provider_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[Ae_Provider] CHECK CONSTRAINT [FK_Ae_Provider_Organization];

ALTER TABLE [dbo].[Ae_Provider]  WITH CHECK ADD  CONSTRAINT [FK_Ae_Provider_Ref_Level_Of_Institution] FOREIGN KEY([Ref_Level_Of_Institution_Id])
REFERENCES [dbo].[Ref_Level_Of_Institution] ([Ref_Level_Of_Institution_Id]);

ALTER TABLE [dbo].[Ae_Provider] CHECK CONSTRAINT [FK_Ae_Provider_Ref_Level_Of_Institution];

ALTER TABLE [dbo].[Ae_Staff]  WITH CHECK ADD  CONSTRAINT [FK_Ae_Staff_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Ae_Staff] CHECK CONSTRAINT [FK_Ae_Staff_Organization_Person_Role];

ALTER TABLE [dbo].[Ae_Staff]  WITH CHECK ADD  CONSTRAINT [FK_Ae_Staff_Ref_Ae_Certification_Type] FOREIGN KEY([Ref_Ae_Certification_Type_Id])
REFERENCES [dbo].[Ref_Ae_Certification_Type] ([Ref_Ae_Certification_Type_Id]);

ALTER TABLE [dbo].[Ae_Staff] CHECK CONSTRAINT [FK_Ae_Staff_Ref_Ae_Certification_Type];

ALTER TABLE [dbo].[Ae_Staff]  WITH CHECK ADD  CONSTRAINT [FK_Ae_Staff_Ref_Ae_Staff_Classification] FOREIGN KEY([Ref_Ae_Staff_Classification_Id])
REFERENCES [dbo].[Ref_Ae_Staff_Classification] ([Ref_Ae_Staff_Classification_Id]);

ALTER TABLE [dbo].[Ae_Staff] CHECK CONSTRAINT [FK_Ae_Staff_Ref_Ae_Staff_Classification];

ALTER TABLE [dbo].[Ae_Staff]  WITH CHECK ADD  CONSTRAINT [FK_Ae_Staff_Ref_Ae_Staff_Employment_Status] FOREIGN KEY([Ref_Ae_Staff_Employment_Status_Id])
REFERENCES [dbo].[Ref_Ae_Staff_Employment_Status] ([Ref_Ae_Staff_Employment_Status_Id]);

ALTER TABLE [dbo].[Ae_Staff] CHECK CONSTRAINT [FK_Ae_Staff_Ref_Ae_Staff_Employment_Status];

ALTER TABLE [dbo].[Ae_Student_Academic_Record]  WITH CHECK ADD  CONSTRAINT [FK_Ae_Student_Academic_Record_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Ae_Student_Academic_Record] CHECK CONSTRAINT [FK_Ae_Student_Academic_Record_Organization_Person_Role];

ALTER TABLE [dbo].[Ae_Student_Academic_Record]  WITH CHECK ADD  CONSTRAINT [FK_Ae_Student_Academic_Record_Ref_High_School_Diploma_Type] FOREIGN KEY([Ref_High_School_Diploma_Type_Id])
REFERENCES [dbo].[Ref_High_School_Diploma_Type] ([Ref_High_School_Diploma_Type_Id]);

ALTER TABLE [dbo].[Ae_Student_Academic_Record] CHECK CONSTRAINT [FK_Ae_Student_Academic_Record_Ref_High_School_Diploma_Type];

ALTER TABLE [dbo].[Ae_Student_Academic_Record]  WITH CHECK ADD  CONSTRAINT [FK_Ae_Student_Academic_Record_Ref_Prof_Technical_Credential_Type] FOREIGN KEY([Ref_Professional_Technical_Credential_Type_Id])
REFERENCES [dbo].[Ref_Professional_Technical_Credential_Type] ([Ref_Professional_Technical_Credential_Type_Id]);

ALTER TABLE [dbo].[Ae_Student_Academic_Record] CHECK CONSTRAINT [FK_Ae_Student_Academic_Record_Ref_Prof_Technical_Credential_Type];

ALTER TABLE [dbo].[Ae_Student_Employment]  WITH CHECK ADD  CONSTRAINT [FK_Ae_Student_Employment_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Ae_Student_Employment] CHECK CONSTRAINT [FK_Ae_Student_Employment_Organization_Person_Role];

ALTER TABLE [dbo].[Ae_Student_Employment]  WITH CHECK ADD  CONSTRAINT [FK_Ae_Student_Employment_Ref_Employed_After_Exit] FOREIGN KEY([Ref_Employed_After_Exit_Id])
REFERENCES [dbo].[Ref_Employed_After_Exit] ([Ref_Employed_After_Exit_Id]);

ALTER TABLE [dbo].[Ae_Student_Employment] CHECK CONSTRAINT [FK_Ae_Student_Employment_Ref_Employed_After_Exit];

ALTER TABLE [dbo].[Ae_Student_Employment]  WITH CHECK ADD  CONSTRAINT [FK_Ae_Student_Employment_Ref_Employed_While_Enrolled] FOREIGN KEY([Ref_Employed_While_Enrolled_Id])
REFERENCES [dbo].[Ref_Employed_While_Enrolled] ([Ref_Employed_While_Enrolled_Id]);

ALTER TABLE [dbo].[Ae_Student_Employment] CHECK CONSTRAINT [FK_Ae_Student_Employment_Ref_Employed_While_Enrolled];

ALTER TABLE [dbo].[Apip_Interaction]  WITH CHECK ADD  CONSTRAINT [FK_Apip_Interaction_Assessment_Item_Apip] FOREIGN KEY([Assessment_Item_Id])
REFERENCES [dbo].[Assessment_Item_Apip] ([Assessment_Item_Id]);

ALTER TABLE [dbo].[Apip_Interaction] CHECK CONSTRAINT [FK_Apip_Interaction_Assessment_Item_Apip];

ALTER TABLE [dbo].[Apip_Interaction]  WITH CHECK ADD  CONSTRAINT [FK_Apip_Interaction_Ref_APIP_Interaction_Type] FOREIGN KEY([Ref_Apip_Interaction_Type_Id])
REFERENCES [dbo].[Ref_Apip_Interaction_Type] ([Ref_APIP_Interaction_Type_Id]);

ALTER TABLE [dbo].[Apip_Interaction] CHECK CONSTRAINT [FK_Apip_Interaction_Ref_APIP_Interaction_Type];

ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Ref_Assessment_Purpose] FOREIGN KEY([Ref_Assessment_Purpose_Id])
REFERENCES [dbo].[Ref_Assessment_Purpose] ([Ref_Assessment_Purpose_Id]);

ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_Ref_Assessment_Purpose];

ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Ref_Assessment_Type] FOREIGN KEY([Ref_Assessment_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Type] ([Ref_Assessment_Type_Id]);

ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_Ref_Assessment_Type];

ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Ref_Assessment_Type_Children_With_Disabilities] FOREIGN KEY([Ref_Assessment_Type_Children_With_Disabilities_Id])
REFERENCES [dbo].[Ref_Assessment_Type_Children_With_Disabilities] ([Ref_Assessment_Type_Children_With_Disabilities_Id]);

ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_Ref_Assessment_Type_Children_With_Disabilities];

ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Ref_Ref_Academic_Subject] FOREIGN KEY([Ref_Academic_Subject_Id])
REFERENCES [dbo].[Ref_Academic_Subject] ([Ref_Academic_Subject_Id]);

ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_Ref_Ref_Academic_Subject];

ALTER TABLE [dbo].[Assessment_Assessment_Administration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Assessment_Administration_Assessment] FOREIGN KEY([Assessment_Id])
REFERENCES [dbo].[Assessment] ([Assessment_Id]);

ALTER TABLE [dbo].[Assessment_Assessment_Administration] CHECK CONSTRAINT [FK_Assessment_Assessment_Administration_Assessment];

ALTER TABLE [dbo].[Assessment_Assessment_Administration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Assessment_Administration_Assessment_Administration] FOREIGN KEY([Assessment_Administration_Id])
REFERENCES [dbo].[Assessment_Administration] ([Assessment_Administration_Id]);

ALTER TABLE [dbo].[Assessment_Assessment_Administration] CHECK CONSTRAINT [FK_Assessment_Assessment_Administration_Assessment_Administration];

ALTER TABLE [dbo].[Assessment_Accommodation]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Accommodation_Ref_Accommodation_Type] FOREIGN KEY([Ref_Accommodation_Type_Id])
REFERENCES [dbo].[Ref_Accommodation_Type] ([Ref_Accommodation_Type_Id]);

ALTER TABLE [dbo].[Assessment_Accommodation] CHECK CONSTRAINT [FK_Assessment_Accommodation_Ref_Accommodation_Type];

ALTER TABLE [dbo].[Assessment_Accommodation]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Accommodation_Ref_Assessment_Accommodation_Category] FOREIGN KEY([Ref_Assessment_Accommodation_Category_Id])
REFERENCES [dbo].[Ref_Assessment_Accommodation_Category] ([Ref_Assessment_Accommodation_Category_Id]);

ALTER TABLE [dbo].[Assessment_Accommodation] CHECK CONSTRAINT [FK_Assessment_Accommodation_Ref_Assessment_Accommodation_Category];

ALTER TABLE [dbo].[Assessment_Administration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Administration_Ref_Assessment_Reporting_Method] FOREIGN KEY([Ref_Assessment_Reporting_Method_Id])
REFERENCES [dbo].[Ref_Assessment_Reporting_Method] ([Ref_Assessment_Reporting_Method_Id]);

ALTER TABLE [dbo].[Assessment_Administration] CHECK CONSTRAINT [FK_Assessment_Administration_Ref_Assessment_Reporting_Method];

ALTER TABLE [dbo].[Assessment_Administration_Organization]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Administration_Organization_Assessment_Admin] FOREIGN KEY([Assessment_Administration_Id])
REFERENCES [dbo].[Assessment_Administration] ([Assessment_Administration_Id]);

ALTER TABLE [dbo].[Assessment_Administration_Organization] CHECK CONSTRAINT [FK_Assessment_Administration_Organization_Assessment_Admin];

ALTER TABLE [dbo].[Assessment_Administration_Organization]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Administration_Organization_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[Assessment_Administration_Organization] CHECK CONSTRAINT [FK_Assessment_Administration_Organization_Organization];

ALTER TABLE [dbo].[Assessment_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Asset_Learning_Resource] FOREIGN KEY([Learning_Resource_Id])
REFERENCES [dbo].[Learning_Resource] ([Learning_Resource_Id]);

ALTER TABLE [dbo].[Assessment_Asset] CHECK CONSTRAINT [FK_Assessment_Asset_Learning_Resource];

ALTER TABLE [dbo].[Assessment_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Asset_Ref_Assess_Asset_ID_Type] FOREIGN KEY([Ref_Assessment_Assest_Identifier_Type])
REFERENCES [dbo].[Ref_Assessment_Asset_Identifier_Type] ([Ref_Assessment_Asset_Identifier_Type_Id]);

ALTER TABLE [dbo].[Assessment_Asset] CHECK CONSTRAINT [FK_Assessment_Asset_Ref_Assess_Asset_ID_Type];

ALTER TABLE [dbo].[Assessment_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Asset_Ref_Assessment_Asset_Type] FOREIGN KEY([Ref_Assessment_Asset_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Asset_Type] ([Ref_Assessment_Asset_Type_Id]);

ALTER TABLE [dbo].[Assessment_Asset] CHECK CONSTRAINT [FK_Assessment_Asset_Ref_Assessment_Asset_Type];

ALTER TABLE [dbo].[Assessment_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Asset_Ref_Language] FOREIGN KEY([Ref_Assessment_Language_Id])
REFERENCES [dbo].[Ref_Language] ([Ref_Language_Id]);

ALTER TABLE [dbo].[Assessment_Asset] CHECK CONSTRAINT [FK_Assessment_Asset_Ref_Language];

ALTER TABLE [dbo].[Assessment_EL_Developmental_Domain]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Assessment_EL_Developmental_Domain_Assessment] FOREIGN KEY([Assessment_Id])
REFERENCES [dbo].[Assessment] ([Assessment_Id]);

ALTER TABLE [dbo].[Assessment_EL_Developmental_Domain] CHECK CONSTRAINT [FK_Assessment_Assessment_EL_Developmental_Domain_Assessment];

ALTER TABLE [dbo].[Assessment_EL_Developmental_Domain]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Assessment_EL_Developmental_Domain_Ref_Assessment_EL_Developmental_Domain] FOREIGN KEY([Ref_Assessment_EL_Developmental_Domain_Id])
REFERENCES [dbo].[Ref_Assessment_EL_Developmental_Domain] ([Ref_Assessment_EL_Developmental_Domain_Id]);

ALTER TABLE [dbo].[Assessment_EL_Developmental_Domain] CHECK CONSTRAINT [FK_Assessment_Assessment_EL_Developmental_Domain_Ref_Assessment_EL_Developmental_Domain];

ALTER TABLE [dbo].[Assessment_Form]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Form_Assessment] FOREIGN KEY([Assessment_Id])
REFERENCES [dbo].[Assessment] ([Assessment_Id]);

ALTER TABLE [dbo].[Assessment_Form] CHECK CONSTRAINT [FK_Assessment_Form_Assessment];

ALTER TABLE [dbo].[Assessment_Form]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Form_Learning_Resource] FOREIGN KEY([Learning_Resource_Id])
REFERENCES [dbo].[Learning_Resource] ([Learning_Resource_Id]);

ALTER TABLE [dbo].[Assessment_Form] CHECK CONSTRAINT [FK_Assessment_Form_Learning_Resource];

ALTER TABLE [dbo].[Assessment_Form]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Form_Ref_Language] FOREIGN KEY([Ref_Assessment_Language_Id])
REFERENCES [dbo].[Ref_Language] ([Ref_Language_Id]);

ALTER TABLE [dbo].[Assessment_Form] CHECK CONSTRAINT [FK_Assessment_Form_Ref_Language];

ALTER TABLE [dbo].[Assessment_Form_Assessment_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Form_Assessment_Asset_Assessment_Asset] FOREIGN KEY([Assessment_Asset_Id])
REFERENCES [dbo].[Assessment_Asset] ([Assessment_Asset_Id]);

ALTER TABLE [dbo].[Assessment_Form_Assessment_Asset] CHECK CONSTRAINT [FK_Assessment_Form_Assessment_Asset_Assessment_Asset];

ALTER TABLE [dbo].[Assessment_Form_Assessment_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Form_Assessment_Asset_Assessment_Form] FOREIGN KEY([Assessment_Form_Id])
REFERENCES [dbo].[Assessment_Form] ([Assessment_Form_Id]);

ALTER TABLE [dbo].[Assessment_Form_Assessment_Asset] CHECK CONSTRAINT [FK_Assessment_Form_Assessment_Asset_Assessment_Form];

ALTER TABLE [dbo].[Assessment_Form_Assessment_Form_Section]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Form_Assessment_Form_Section_Assessment_Form] FOREIGN KEY([Assessment_Form_Id])
REFERENCES [dbo].[Assessment_Form] ([Assessment_Form_Id]);

ALTER TABLE [dbo].[Assessment_Form_Assessment_Form_Section] CHECK CONSTRAINT [FK_Assessment_Form_Assessment_Form_Section_Assessment_Form];

ALTER TABLE [dbo].[Assessment_Form_Assessment_Form_Section]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Form_Assessment_Form_Section_Form_Section] FOREIGN KEY([Assessment_Form_Section_Id])
REFERENCES [dbo].[Assessment_Form_Section] ([Assessment_Form_Section_Id]);

ALTER TABLE [dbo].[Assessment_Form_Assessment_Form_Section] CHECK CONSTRAINT [FK_Assessment_Form_Assessment_Form_Section_Form_Section];

ALTER TABLE [dbo].[Assessment_Form_Section]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Form_Section_Learning_Resource] FOREIGN KEY([Learning_Resource_Id])
REFERENCES [dbo].[Learning_Resource] ([Learning_Resource_Id]);

ALTER TABLE [dbo].[Assessment_Form_Section] CHECK CONSTRAINT [FK_Assessment_Form_Section_Learning_Resource];

ALTER TABLE [dbo].[Assessment_Form_Section]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Form_Section_Ref_Assessment_Form_Section_ID_Type] FOREIGN KEY([Ref_Assessment_Form_Section_Identification_System_Id])
REFERENCES [dbo].[Ref_Assessment_Form_Section_Identification_System] ([Ref_Assessment_Form_Section_Identification_System_Id]);

ALTER TABLE [dbo].[Assessment_Form_Section] CHECK CONSTRAINT [FK_Assessment_Form_Section_Ref_Assessment_Form_Section_ID_Type];

ALTER TABLE [dbo].[Assessment_Form_Section]  WITH CHECK ADD  CONSTRAINT [FK_Form_Section_Form_Section] FOREIGN KEY([Child_Of_Form_Section_Id])
REFERENCES [dbo].[Assessment_Form_Section] ([Assessment_Form_Section_Id]);

ALTER TABLE [dbo].[Assessment_Form_Section] CHECK CONSTRAINT [FK_Form_Section_Form_Section];

ALTER TABLE [dbo].[Assessment_Form_Section_Assessment_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Form_Section_Assessment_Asset_Assessment_Asset] FOREIGN KEY([Assessment_Asset_Id])
REFERENCES [dbo].[Assessment_Asset] ([Assessment_Asset_Id]);

ALTER TABLE [dbo].[Assessment_Form_Section_Assessment_Asset] CHECK CONSTRAINT [FK_Assessment_Form_Section_Assessment_Asset_Assessment_Asset];

ALTER TABLE [dbo].[Assessment_Form_Section_Assessment_Asset]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Form_Section_Assessment_Asset_Assessment_Form_Section] FOREIGN KEY([Assessment_Form_Section_Id])
REFERENCES [dbo].[Assessment_Form_Section] ([Assessment_Form_Section_Id]);

ALTER TABLE [dbo].[Assessment_Form_Section_Assessment_Asset] CHECK CONSTRAINT [FK_Assessment_Form_Section_Assessment_Asset_Assessment_Form_Section];

ALTER TABLE [dbo].[Assessment_Form_Section_Assessment_Item]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Form_Section_Assessment_Item_Assessment_Item] FOREIGN KEY([Assessment_Item_Id])
REFERENCES [dbo].[Assessment_Item] ([Assessment_Item_Id]);

ALTER TABLE [dbo].[Assessment_Form_Section_Assessment_Item] CHECK CONSTRAINT [FK_Assessment_Form_Section_Assessment_Item_Assessment_Item];

ALTER TABLE [dbo].[Assessment_Form_Section_Assessment_Item]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Form_Section_Assessment_Item_Form_Section] FOREIGN KEY([Assessment_Form_Section_Id])
REFERENCES [dbo].[Assessment_Form_Section] ([Assessment_Form_Section_Id]);

ALTER TABLE [dbo].[Assessment_Form_Section_Assessment_Item] CHECK CONSTRAINT [FK_Assessment_Form_Section_Assessment_Item_Form_Section];

ALTER TABLE [dbo].[Assessment_Item]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Learning_Resource] FOREIGN KEY([Learning_Resource_Id])
REFERENCES [dbo].[Learning_Resource] ([Learning_Resource_Id]);

ALTER TABLE [dbo].[Assessment_Item] CHECK CONSTRAINT [FK_Assessment_Item_Learning_Resource];

ALTER TABLE [dbo].[Assessment_Item]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Ref_Assessment_Item_Type] FOREIGN KEY([Ref_Assessment_Item_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Item_Type] ([Ref_Assessment_Item_Type_Id]);

ALTER TABLE [dbo].[Assessment_Item] CHECK CONSTRAINT [FK_Assessment_Item_Ref_Assessment_Item_Type];

ALTER TABLE [dbo].[Assessment_Item]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Ref_NAEP_Aspects_Of_Reading] FOREIGN KEY([Ref_Naep_Aspects_Of_Reading_Id])
REFERENCES [dbo].[Ref_Naep_Aspects_Of_Reading] ([Ref_Naep_Aspects_Of_Reading_Id]);

ALTER TABLE [dbo].[Assessment_Item] CHECK CONSTRAINT [FK_Assessment_Item_Ref_NAEP_Aspects_Of_Reading];

ALTER TABLE [dbo].[Assessment_Item]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Ref_NAEP_Math_Complexity_Level] FOREIGN KEY([Ref_Naep_Math_Complexity_Level_Id])
REFERENCES [dbo].[Ref_Naep_Math_Complexity_Level] ([Ref_Naep_Math_Complexity_Level_Id]);

ALTER TABLE [dbo].[Assessment_Item] CHECK CONSTRAINT [FK_Assessment_Item_Ref_NAEP_Math_Complexity_Level];

ALTER TABLE [dbo].[Assessment_Item]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Ref_Text_Complexity_System] FOREIGN KEY([Ref_Text_Complexity_System_Id])
REFERENCES [dbo].[Ref_Text_Complexity_System] ([Ref_Text_Complexity_System_Id]);

ALTER TABLE [dbo].[Assessment_Item] CHECK CONSTRAINT [FK_Assessment_Item_Ref_Text_Complexity_System];

ALTER TABLE [dbo].[Assessment_Item]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Rubric] FOREIGN KEY([Rubric_Id])
REFERENCES [dbo].[Rubric] ([Rubric_Id]);

ALTER TABLE [dbo].[Assessment_Item] CHECK CONSTRAINT [FK_Assessment_Item_Rubric];

ALTER TABLE [dbo].[Assessment_Item_Apip]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Body_Assessment_Item1] FOREIGN KEY([Assessment_Item_Id])
REFERENCES [dbo].[Assessment_Item] ([Assessment_Item_Id]);

ALTER TABLE [dbo].[Assessment_Item_Apip] CHECK CONSTRAINT [FK_Assessment_Item_Body_Assessment_Item1];

ALTER TABLE [dbo].[Assessment_Item_Apip_Description]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Apip_Description_Assessment_Item_Apip] FOREIGN KEY([Assessment_Item_Id])
REFERENCES [dbo].[Assessment_Item_Apip] ([Assessment_Item_Id]);

ALTER TABLE [dbo].[Assessment_Item_Apip_Description] CHECK CONSTRAINT [FK_Assessment_Item_Apip_Description_Assessment_Item_Apip];

ALTER TABLE [dbo].[Assessment_Item_Apip_Description]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Apip_Description_Ref_Language] FOREIGN KEY([Ref_Keyword_Translation_Language_Id])
REFERENCES [dbo].[Ref_Language] ([Ref_Language_Id]);

ALTER TABLE [dbo].[Assessment_Item_Apip_Description] CHECK CONSTRAINT [FK_Assessment_Item_Apip_Description_Ref_Language];

ALTER TABLE [dbo].[Assessment_Item_Characteristic]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Characteristic_Ref_Assess_Item_Char_Type] FOREIGN KEY([Ref_Assessment_Item_Characteristic_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Item_Characteristic_Type] ([Ref_Assessment_Item_Characteristic_Type_Id]);

ALTER TABLE [dbo].[Assessment_Item_Characteristic] CHECK CONSTRAINT [FK_Assessment_Item_Characteristic_Ref_Assess_Item_Char_Type];

ALTER TABLE [dbo].[Assessment_Item_Characteristic]  WITH CHECK ADD  CONSTRAINT [FK_Item_Characteristic_Item] FOREIGN KEY([Assessment_Item_Id])
REFERENCES [dbo].[Assessment_Item] ([Assessment_Item_Id]);

ALTER TABLE [dbo].[Assessment_Item_Characteristic] CHECK CONSTRAINT [FK_Item_Characteristic_Item];

ALTER TABLE [dbo].[Assessment_Item_Possible_Response]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Possible_Response_Assessment_Item] FOREIGN KEY([Assessment_Item_Id])
REFERENCES [dbo].[Assessment_Item] ([Assessment_Item_Id]);

ALTER TABLE [dbo].[Assessment_Item_Possible_Response] CHECK CONSTRAINT [FK_Assessment_Item_Possible_Response_Assessment_Item];

ALTER TABLE [dbo].[Assessment_Item_Response]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Response_Assessment_Item] FOREIGN KEY([Assessment_Item_Id])
REFERENCES [dbo].[Assessment_Item] ([Assessment_Item_Id]);

ALTER TABLE [dbo].[Assessment_Item_Response] CHECK CONSTRAINT [FK_Assessment_Item_Response_Assessment_Item];

ALTER TABLE [dbo].[Assessment_Item_Response]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Response_Assessment_Participant_Session] FOREIGN KEY([Assessment_Participant_Session_Id])
REFERENCES [dbo].[Assessment_Participant_Session] ([Assessment_Participant_Session_Id]);

ALTER TABLE [dbo].[Assessment_Item_Response] CHECK CONSTRAINT [FK_Assessment_Item_Response_Assessment_Participant_Session];

ALTER TABLE [dbo].[Assessment_Item_Response]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Response_Ref_Assess_Item_Response_Status] FOREIGN KEY([Ref_Assess_Item_Response_Status_Id])
REFERENCES [dbo].[Ref_Assessment_Item_Response_Status] ([Ref_Assessment_Item_Response_Status_Id]);

ALTER TABLE [dbo].[Assessment_Item_Response] CHECK CONSTRAINT [FK_Assessment_Item_Response_Ref_Assess_Item_Response_Status];

ALTER TABLE [dbo].[Assessment_Item_Response]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Response_Ref_Assessment_Item_Response_Score_Status] FOREIGN KEY([Ref_Assessment_Item_Response_Score_Status_Id])
REFERENCES [dbo].[Ref_Assessment_Item_Response_Score_Status] ([Ref_Assessment_Item_Response_Score_Status_Id]);

ALTER TABLE [dbo].[Assessment_Item_Response] CHECK CONSTRAINT [FK_Assessment_Item_Response_Ref_Assessment_Item_Response_Score_Status];

ALTER TABLE [dbo].[Assessment_Item_Response]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Response_Ref_Proficiency_Status] FOREIGN KEY([Ref_Proficiency_Status_Id])
REFERENCES [dbo].[Ref_Proficiency_Status] ([Ref_Proficiency_Status_Id]);

ALTER TABLE [dbo].[Assessment_Item_Response] CHECK CONSTRAINT [FK_Assessment_Item_Response_Ref_Proficiency_Status];

ALTER TABLE [dbo].[Assessment_Item_Response_Theory]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Response_Theory_Assessment_Item] FOREIGN KEY([Assessment_Item_Id])
REFERENCES [dbo].[Assessment_Item] ([Assessment_Item_Id]);

ALTER TABLE [dbo].[Assessment_Item_Response_Theory] CHECK CONSTRAINT [FK_Assessment_Item_Response_Theory_Assessment_Item];

ALTER TABLE [dbo].[Assessment_Item_Response_Theory]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Response_Theory_Ref_IRT_Difficulty_Category] FOREIGN KEY([Ref_Item_Response_Theory_Difficulty_Category_Id])
REFERENCES [dbo].[Ref_Item_Response_Theory_Difficulty_Category] ([Ref_Item_Response_Theory_Difficulty_Category_Id]);

ALTER TABLE [dbo].[Assessment_Item_Response_Theory] CHECK CONSTRAINT [FK_Assessment_Item_Response_Theory_Ref_IRT_Difficulty_Category];

ALTER TABLE [dbo].[Assessment_Item_Response_Theory]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Item_Response_Theory_Ref_IRT_Kappa_Algorithm] FOREIGN KEY([Ref_Item_Response_Theory_Kappa_Algorithm_Id])
REFERENCES [dbo].[Ref_Item_Response_Theory_Kappa_Algorithm] ([Ref_Item_Response_Theory_Kappa_Algorithm_Id]);

ALTER TABLE [dbo].[Assessment_Item_Response_Theory] CHECK CONSTRAINT [FK_Assessment_Item_Response_Theory_Ref_IRT_Kappa_Algorithm];

ALTER TABLE [dbo].[Assessment_Item_Rubric_Criterion_Result]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Item_Rubric_Criterion_Result_Assess_Item_Response] FOREIGN KEY([Assessment_Item_Response_Id])
REFERENCES [dbo].[Assessment_Item_Response] ([Assessment_Item_Response_Id]);

ALTER TABLE [dbo].[Assessment_Item_Rubric_Criterion_Result] CHECK CONSTRAINT [FK_Assess_Item_Rubric_Criterion_Result_Assess_Item_Response];

ALTER TABLE [dbo].[Assessment_Item_Rubric_Criterion_Result]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Item_Rubric_Criterion_Result_Rubric_Criterion_Level] FOREIGN KEY([Rubric_Criterion_Level_Id])
REFERENCES [dbo].[Rubric_Criterion_Level] ([Rubric_Criterion_Level_Id]);

ALTER TABLE [dbo].[Assessment_Item_Rubric_Criterion_Result] CHECK CONSTRAINT [FK_Assess_Item_Rubric_Criterion_Result_Rubric_Criterion_Level];

ALTER TABLE [dbo].[Assessment_Language]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Language_Assessment] FOREIGN KEY([Assessment_Id])
REFERENCES [dbo].[Assessment] ([Assessment_Id]);

ALTER TABLE [dbo].[Assessment_Language] CHECK CONSTRAINT [FK_Assessment_Language_Assessment];

ALTER TABLE [dbo].[Assessment_Language]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Language_Ref_Language] FOREIGN KEY([Ref_Language_Id])
REFERENCES [dbo].[Ref_Language] ([Ref_Language_Id]);

ALTER TABLE [dbo].[Assessment_Language] CHECK CONSTRAINT [FK_Assessment_Language_Ref_Language];

ALTER TABLE [dbo].[Assessment_Levels_For_Which_Designed]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Levels_For_Which_Designed_Assessment] FOREIGN KEY([Assessment_Id])
REFERENCES [dbo].[Assessment] ([Assessment_Id]);

ALTER TABLE [dbo].[Assessment_Levels_For_Which_Designed] CHECK CONSTRAINT [FK_Assessment_Levels_For_Which_Designed_Assessment];

ALTER TABLE [dbo].[Assessment_Levels_For_Which_Designed]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Levels_For_Which_Designed_Ref_Grade] FOREIGN KEY([Ref_Grade_Level_Id])
REFERENCES [dbo].[Ref_Grade_Level] ([Ref_Grade_Level_Id]);

ALTER TABLE [dbo].[Assessment_Levels_For_Which_Designed] CHECK CONSTRAINT [FK_Assessment_Levels_For_Which_Designed_Ref_Grade];

ALTER TABLE [dbo].[Assessment_Need_Apip_Content]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Need_Apip_Content_Ref_Assessment_Need_Signing_Type] FOREIGN KEY([Ref_Assessment_Need_Signing_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Signing_Type] ([Ref_Assessment_Need_Signing_Type_Id]);

ALTER TABLE [dbo].[Assessment_Need_Apip_Content] CHECK CONSTRAINT [FK_Assessment_Need_Apip_Content_Ref_Assessment_Need_Signing_Type];

ALTER TABLE [dbo].[Assessment_Need_Apip_Content]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Need_Apip_Content_Ref_Language] FOREIGN KEY([Item_Translation_Display_Language_Type_Id])
REFERENCES [dbo].[Ref_Language] ([Ref_Language_Id]);

ALTER TABLE [dbo].[Assessment_Need_Apip_Content] CHECK CONSTRAINT [FK_Assessment_Need_Apip_Content_Ref_Language];

ALTER TABLE [dbo].[Assessment_Need_Apip_Content]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Need_Apip_Content_Ref_Language1] FOREIGN KEY([Keyword_Translation_Language_Type_Id])
REFERENCES [dbo].[Ref_Language] ([Ref_Language_Id]);

ALTER TABLE [dbo].[Assessment_Need_Apip_Content] CHECK CONSTRAINT [FK_Assessment_Need_Apip_Content_Ref_Language1];

ALTER TABLE [dbo].[Assessment_Need_Apip_Content]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Need_Apip_Content_Assessment_Personal_Needs_Profile_Content] FOREIGN KEY([Assessment_Personal_Needs_Profile_Content_Id])
REFERENCES [dbo].[Assessment_Personal_Needs_Profile_Content] ([Assessment_Personal_Needs_Profile_Content_Id]);

ALTER TABLE [dbo].[Assessment_Need_Apip_Content] CHECK CONSTRAINT [FK_Assess_Need_Apip_Content_Assessment_Personal_Needs_Profile_Content];

ALTER TABLE [dbo].[Assessment_Need_Apip_Content]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Need_Apip_Content_Ref_Assessment_Need_Alternative_Represent] FOREIGN KEY([Ref_Assessment_Need_Alternative_Representation_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Alternative_Representation_Type] ([Ref_Assessment_Need_Alternative_Representation_Type_Id]);

ALTER TABLE [dbo].[Assessment_Need_Apip_Content] CHECK CONSTRAINT [FK_Assess_Need_Apip_Content_Ref_Assessment_Need_Alternative_Represent];

ALTER TABLE [dbo].[Assessment_Need_Apip_Content]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Need_Apip_Content_Ref_Assessment_Need_Spoken_Source_Pref] FOREIGN KEY([Ref_Assessment_Need_Spoken_Source_Preference_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Spoken_Source_Preference_Type] ([Ref_Assessment_Need_Spoken_Source_Preference_Type_Id]);

ALTER TABLE [dbo].[Assessment_Need_Apip_Content] CHECK CONSTRAINT [FK_Assess_Need_Apip_Content_Ref_Assessment_Need_Spoken_Source_Pref];

ALTER TABLE [dbo].[Assessment_Need_Apip_Content]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Need_Apip_Content_Ref_Assessment_Need_User_Spoken_Preference] FOREIGN KEY([Ref_Assessment_Need_User_Spoken_Preference_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Need_User_Spoken_Preference_Type] ([Ref_Assessment_Need_User_Spoken_Preference_Type_Id]);

ALTER TABLE [dbo].[Assessment_Need_Apip_Content] CHECK CONSTRAINT [FK_Assess_Need_Apip_Content_Ref_Assessment_Need_User_Spoken_Preference];

ALTER TABLE [dbo].[Assessment_Need_Apip_Control]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Need_Apip_Control_Assessment_Personal_Needs_Profile_Control] FOREIGN KEY([Assessment_Personal_Needs_Profile_Control_Id])
REFERENCES [dbo].[Assessment_Personal_Needs_Profile_Control] ([Assessment_Personal_Needs_Profile_Control_Id]);

ALTER TABLE [dbo].[Assessment_Need_Apip_Control] CHECK CONSTRAINT [FK_Assess_Need_Apip_Control_Assessment_Personal_Needs_Profile_Control];

ALTER TABLE [dbo].[Assessment_Need_Apip_Control]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Need_Apip_Control_Ref_Assessment_Need_Increased_Whitespacing] FOREIGN KEY([Ref_Assessment_Need_Increased_Whitespacing_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Increased_Whitespacing_Type] ([Ref_Assessment_Need_Increased_Whitespacing_Type_Id]);

ALTER TABLE [dbo].[Assessment_Need_Apip_Control] CHECK CONSTRAINT [FK_Assess_Need_Apip_Control_Ref_Assessment_Need_Increased_Whitespacing];

ALTER TABLE [dbo].[Assessment_Need_Apip_Display]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Need_Apip_Display_Ref_Assessment_Need_Masking_Type] FOREIGN KEY([Ref_Assessment_Need_Masking_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Masking_Type] ([Ref_Assessment_Need_Masking_Type_Id]);

ALTER TABLE [dbo].[Assessment_Need_Apip_Display] CHECK CONSTRAINT [FK_Assessment_Need_Apip_Display_Ref_Assessment_Need_Masking_Type];

ALTER TABLE [dbo].[Assessment_Need_Apip_Display]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Need_Apip_Display_Assessment_Personal_Needs_Profile_Display] FOREIGN KEY([Assessment_Personal_Needs_Profile_Display_Id])
REFERENCES [dbo].[Assessment_Personal_Needs_Profile_Display] ([Assessment_Personal_Needs_Profile_Display_Id]);

ALTER TABLE [dbo].[Assessment_Need_Apip_Display] CHECK CONSTRAINT [FK_Assess_Need_Apip_Display_Assessment_Personal_Needs_Profile_Display];

ALTER TABLE [dbo].[Assessment_Need_Braille]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Need_Braille_Assessment_Need_Braille_Grade_Type_Id] FOREIGN KEY([Ref_Assessment_Need_Braille_Grade_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Braille_Grade_Type] ([Ref_Assessment_Need_Braille_Grade_Type_Id]);

ALTER TABLE [dbo].[Assessment_Need_Braille] CHECK CONSTRAINT [FK_Assessment_Need_Braille_Assessment_Need_Braille_Grade_Type_Id];

ALTER TABLE [dbo].[Assessment_Need_Braille]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Need_Braille_Assessment_Personal_Needs_Profile_Display] FOREIGN KEY([Assessment_Personal_Needs_Profile_Display_Id])
REFERENCES [dbo].[Assessment_Personal_Needs_Profile_Display] ([Assessment_Personal_Needs_Profile_Display_Id]);

ALTER TABLE [dbo].[Assessment_Need_Braille] CHECK CONSTRAINT [FK_Assessment_Need_Braille_Assessment_Personal_Needs_Profile_Display];

ALTER TABLE [dbo].[Assessment_Need_Braille]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Need_Braille_Ref_Assessment_Need_Braille_Mark_Type] FOREIGN KEY([Ref_Assessment_Need_Braille_Mark_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Braille_Mark_Type] ([Ref_Assessment_Need_Braille_Mark_Type_Id]);

ALTER TABLE [dbo].[Assessment_Need_Braille] CHECK CONSTRAINT [FK_Assessment_Need_Braille_Ref_Assessment_Need_Braille_Mark_Type];

ALTER TABLE [dbo].[Assessment_Need_Braille]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Need_Braille_Ref_Assessment_Need_Braille_Status_Cell_Type] FOREIGN KEY([Ref_Assessment_Need_Braille_Status_Cell_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Braille_Status_Cell_Type] ([Ref_Assessment_Need_Braille_Status_Cell_Type_Id]);

ALTER TABLE [dbo].[Assessment_Need_Braille] CHECK CONSTRAINT [FK_Assessment_Need_Braille_Ref_Assessment_Need_Braille_Status_Cell_Type];

ALTER TABLE [dbo].[Assessment_Need_Braille]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Need_Braille_Ref_Assessment_Need_Number_Of_Braille_Dots] FOREIGN KEY([Ref_Assessment_Need_Number_Of_Braille_Dots_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Number_Of_Braille_Dots] ([Ref_Assessment_Need_Number_Of_Braille_Dots_Id]);

ALTER TABLE [dbo].[Assessment_Need_Braille] CHECK CONSTRAINT [FK_Assessment_Need_Braille_Ref_Assessment_Need_Number_Of_Braille_Dots];

ALTER TABLE [dbo].[Assessment_Need_Braille]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Need_Braille_Ref_Assessment_Need_Usage_Type] FOREIGN KEY([Ref_Assessment_Need_Usage_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Usage_Type] ([Ref_Assessment_Need_Usage_Type_Id]);

ALTER TABLE [dbo].[Assessment_Need_Braille] CHECK CONSTRAINT [FK_Assessment_Need_Braille_Ref_Assessment_Need_Usage_Type];

ALTER TABLE [dbo].[Assessment_Need_Screen_Enhancement]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Need_Screen_Enhancement_APN_Profile_Screen_Enhancement] FOREIGN KEY([Assessment_Personal_Needs_Profile_Screen_Enhancement_Id])
REFERENCES [dbo].[Assessment_Personal_Needs_Profile_Screen_Enhancement] ([Assessment_Personal_Needs_Profile_Screen_Enhancement_Id]);

ALTER TABLE [dbo].[Assessment_Need_Screen_Enhancement] CHECK CONSTRAINT [FK_Assess_Need_Screen_Enhancement_APN_Profile_Screen_Enhancement];

ALTER TABLE [dbo].[Assessment_Need_Screen_Enhancement]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Need_Screen_Enhancement_Assess_Personal_Need_Profile_Display] FOREIGN KEY([Assessment_Personal_Needs_Profile_Display_Id])
REFERENCES [dbo].[Assessment_Personal_Needs_Profile_Display] ([Assessment_Personal_Needs_Profile_Display_Id]);

ALTER TABLE [dbo].[Assessment_Need_Screen_Enhancement] CHECK CONSTRAINT [FK_Assess_Need_Screen_Enhancement_Assess_Personal_Need_Profile_Display];

ALTER TABLE [dbo].[Assessment_Participant_Session]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Participant_Session_Assessment_Form_Section] FOREIGN KEY([Assessment_Form_Section_Id])
REFERENCES [dbo].[Assessment_Form_Section] ([Assessment_Form_Section_Id]);

ALTER TABLE [dbo].[Assessment_Participant_Session] CHECK CONSTRAINT [FK_Assessment_Participant_Session_Assessment_Form_Section];

ALTER TABLE [dbo].[Assessment_Participant_Session]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Participant_Session_Assessment_Registration] FOREIGN KEY([Assessment_Registration_Id])
REFERENCES [dbo].[Assessment_Registration] ([Assessment_Registration_Id]);

ALTER TABLE [dbo].[Assessment_Participant_Session] CHECK CONSTRAINT [FK_Assessment_Participant_Session_Assessment_Registration];

ALTER TABLE [dbo].[Assessment_Participant_Session]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Participant_Session_Assessment_Session] FOREIGN KEY([Assessment_Session_Id])
REFERENCES [dbo].[Assessment_Session] ([Assessment_Session_Id]);

ALTER TABLE [dbo].[Assessment_Participant_Session] CHECK CONSTRAINT [FK_Assessment_Participant_Session_Assessment_Session];

ALTER TABLE [dbo].[Assessment_Participant_Session]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Participant_Session_Location] FOREIGN KEY([Location_Id])
REFERENCES [dbo].[Location] ([Location_Id]);

ALTER TABLE [dbo].[Assessment_Participant_Session] CHECK CONSTRAINT [FK_Assessment_Participant_Session_Location];

ALTER TABLE [dbo].[Assessment_Participant_Session]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Participant_Session_Ref_Language] FOREIGN KEY([Ref_Language_Id])
REFERENCES [dbo].[Ref_Language] ([Ref_Language_Id]);

ALTER TABLE [dbo].[Assessment_Participant_Session] CHECK CONSTRAINT [FK_Assessment_Participant_Session_Ref_Language];

ALTER TABLE [dbo].[Assessment_Participant_Session]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Participant_Session_Ref_Assessment_Participant_Session_Plat] FOREIGN KEY([Ref_Assessment_Platform_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Platform_Type] ([Ref_Assessment_Platform_Type_Id]);

ALTER TABLE [dbo].[Assessment_Participant_Session] CHECK CONSTRAINT [FK_Assess_Participant_Session_Ref_Assessment_Participant_Session_Plat];

ALTER TABLE [dbo].[Assessment_Participant_Session]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Participant_Session_Ref_Assessment_Session_Special_Circumst] FOREIGN KEY([Ref_Assessment_Session_Special_Circumstance_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Session_Special_Circumstance_Type] ([Ref_Assessment_Session_Special_Circumstance_Type_Id]);

ALTER TABLE [dbo].[Assessment_Participant_Session] CHECK CONSTRAINT [FK_Assess_Participant_Session_Ref_Assessment_Session_Special_Circumst];

ALTER TABLE [dbo].[Assessment_Participant_Session_Accommodation]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Participant_Session_Accommodation_Assessment_Accommodation] FOREIGN KEY([Assessment_Accommodation_Id])
REFERENCES [dbo].[Assessment_Accommodation] ([Assessment_Accommodation_Id]);

ALTER TABLE [dbo].[Assessment_Participant_Session_Accommodation] CHECK CONSTRAINT [FK_Assessment_Participant_Session_Accommodation_Assessment_Accommodation];

ALTER TABLE [dbo].[Assessment_Participant_Session_Accommodation]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Partic_Session_Accomodation_Assess_Participant_Session] FOREIGN KEY([Assessment_Participant_Session_Id])
REFERENCES [dbo].[Assessment_Participant_Session] ([Assessment_Participant_Session_Id]);

ALTER TABLE [dbo].[Assessment_Participant_Session_Accommodation] CHECK CONSTRAINT [FK_Assess_Partic_Session_Accomodation_Assess_Participant_Session];

ALTER TABLE [dbo].[Assessment_Performance_Level]  WITH CHECK ADD  CONSTRAINT [FK_Performance_Level_Assessment_Sub_Test] FOREIGN KEY([Assessment_Subtest_Id])
REFERENCES [dbo].[Assessment_Subtest] ([Assessment_Subtest_Id]);

ALTER TABLE [dbo].[Assessment_Performance_Level] CHECK CONSTRAINT [FK_Performance_Level_Assessment_Sub_Test];

ALTER TABLE [dbo].[Assessment_Personal_Need_Language_Learner]  WITH CHECK ADD  CONSTRAINT [FK_ANP_Content_Language_Learner_Assessment_Needs_Profile_Content] FOREIGN KEY([Assessment_Needs_Profile_Content_Id])
REFERENCES [dbo].[Assessment_Personal_Needs_Profile_Content] ([Assessment_Personal_Needs_Profile_Content_Id]);

ALTER TABLE [dbo].[Assessment_Personal_Need_Language_Learner] CHECK CONSTRAINT [FK_ANP_Content_Language_Learner_Assessment_Needs_Profile_Content];

ALTER TABLE [dbo].[Assessment_Personal_Need_Language_Learner]  WITH CHECK ADD  CONSTRAINT [FK_ANP_Content_Language_Learner_Ref_Assess_Needs_Profile_Content_Lang] FOREIGN KEY([Ref_Assessment_Needs_Profile_Content_Language_Learner_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Language_Learner_Type] ([Ref_Assessment_Need_Language_Learner_Type_Id]);

ALTER TABLE [dbo].[Assessment_Personal_Need_Language_Learner] CHECK CONSTRAINT [FK_ANP_Content_Language_Learner_Ref_Assess_Needs_Profile_Content_Lang];

ALTER TABLE [dbo].[Assessment_Personal_Need_Screen_Reader]  WITH CHECK ADD  CONSTRAINT [FK_APN_Screen_Reader_Assessment_Personal_Needs_Profile_Display] FOREIGN KEY([Assessment_Personal_Needs_Profile_Display_Id])
REFERENCES [dbo].[Assessment_Personal_Needs_Profile_Display] ([Assessment_Personal_Needs_Profile_Display_Id]);

ALTER TABLE [dbo].[Assessment_Personal_Need_Screen_Reader] CHECK CONSTRAINT [FK_APN_Screen_Reader_Assessment_Personal_Needs_Profile_Display];

ALTER TABLE [dbo].[Assessment_Personal_Need_Screen_Reader]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Personal_Need_Screen_Reader_Ref_Assessment_Need_Link_Indication_Type] FOREIGN KEY([Ref_Assessment_Need_Link_Indication_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Link_Indication_Type] ([Ref_Assessment_Need_Link_Indication_Type_Id]);

ALTER TABLE [dbo].[Assessment_Personal_Need_Screen_Reader] CHECK CONSTRAINT [FK_Assessment_Personal_Need_Screen_Reader_Ref_Assessment_Need_Link_Indication_Type];

ALTER TABLE [dbo].[Assessment_Personal_Need_Screen_Reader]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Personal_Need_Screen_Reader_Ref_Assessment_Need_Usage] FOREIGN KEY([Ref_Assessment_Need_Usage_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Usage_Type] ([Ref_Assessment_Need_Usage_Type_Id]);

ALTER TABLE [dbo].[Assessment_Personal_Need_Screen_Reader] CHECK CONSTRAINT [FK_Assessment_Personal_Need_Screen_Reader_Ref_Assessment_Need_Usage];

ALTER TABLE [dbo].[Assessment_Personal_Needs_Profile_Content]  WITH CHECK ADD  CONSTRAINT [FK_Apn_Profile_Content_Ref_Assessment_Need_Support_Tool] FOREIGN KEY([Ref_Assessment_Need_Support_Tool_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Support_Tool] ([Ref_Assessment_Need_Support_Tool_Id]);

ALTER TABLE [dbo].[Assessment_Personal_Needs_Profile_Content] CHECK CONSTRAINT [FK_Apn_Profile_Content_Ref_Assessment_Need_Support_Tool];

ALTER TABLE [dbo].[Assessment_Personal_Needs_Profile_Content]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Needs_Profile_Content_Assessment_Needs_Profile] FOREIGN KEY([Assessment_Personal_Needs_Profile_Id])
REFERENCES [dbo].[Assessment_Personal_Needs_Profile] ([Assessment_Personal_Needs_Profile_Id]);

ALTER TABLE [dbo].[Assessment_Personal_Needs_Profile_Content] CHECK CONSTRAINT [FK_Assessment_Needs_Profile_Content_Assessment_Needs_Profile];

ALTER TABLE [dbo].[Assessment_Personal_Needs_Profile_Content]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Personal_Needs_Profile_Content_Ref_Assessment_Need_Hazrd] FOREIGN KEY([Ref_Assessment_Need_Hazard_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Need_Hazard_Type] ([Ref_Assessment_Need_Hazard_Type_Id]);

ALTER TABLE [dbo].[Assessment_Personal_Needs_Profile_Content] CHECK CONSTRAINT [FK_Assessment_Personal_Needs_Profile_Content_Ref_Assessment_Need_Hazrd];

ALTER TABLE [dbo].[Assessment_Personal_Needs_Profile_Content]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Personal_Needs_Profile_Content_Ref_Language] FOREIGN KEY([Ref_Keyword_Translations_Language_Id])
REFERENCES [dbo].[Ref_Language] ([Ref_Language_Id]);

ALTER TABLE [dbo].[Assessment_Personal_Needs_Profile_Content] CHECK CONSTRAINT [FK_Assessment_Personal_Needs_Profile_Content_Ref_Language];

ALTER TABLE [dbo].[Assessment_Personal_Needs_Profile_Control]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Needs_Profile_Control_Assessment_Needs_Profile] FOREIGN KEY([Assessment_Personal_Needs_Profile_Id])
REFERENCES [dbo].[Assessment_Personal_Needs_Profile] ([Assessment_Personal_Needs_Profile_Id]);

ALTER TABLE [dbo].[Assessment_Personal_Needs_Profile_Control] CHECK CONSTRAINT [FK_Assessment_Needs_Profile_Control_Assessment_Needs_Profile];

ALTER TABLE [dbo].[Assessment_Personal_Needs_Profile_Display]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Needs_Profile_Display_Assessment_Needs_Profile] FOREIGN KEY([Assessment_Personal_Needs_Profile_Id])
REFERENCES [dbo].[Assessment_Personal_Needs_Profile] ([Assessment_Personal_Needs_Profile_Id]);

ALTER TABLE [dbo].[Assessment_Personal_Needs_Profile_Display] CHECK CONSTRAINT [FK_Assessment_Needs_Profile_Display_Assessment_Needs_Profile];

ALTER TABLE [dbo].[Assessment_Personal_Needs_Profile_Screen_Enhancement]  WITH CHECK ADD  CONSTRAINT [FK_Anp_Screen_Enhancement_Assessment_Needs_Profile] FOREIGN KEY([Assessment_Personal_Needs_Profile_Id])
REFERENCES [dbo].[Assessment_Personal_Needs_Profile] ([Assessment_Personal_Needs_Profile_Id]);

ALTER TABLE [dbo].[Assessment_Personal_Needs_Profile_Screen_Enhancement] CHECK CONSTRAINT [FK_Anp_Screen_Enhancement_Assessment_Needs_Profile];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Regirstration_Ref_Assessment_Form] FOREIGN KEY([Assessment_Form_Id])
REFERENCES [dbo].[Assessment_Form] ([Assessment_Form_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Regirstration_Ref_Assessment_Form];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Assessment_Administration] FOREIGN KEY([Assessment_Administration_Id])
REFERENCES [dbo].[Assessment_Administration] ([Assessment_Administration_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Registration_Assessment_Administration];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Course_Section] FOREIGN KEY([Course_Section_Organization_Id])
REFERENCES [dbo].[Course_Section] ([Organization_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Registration_Course_Section];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Registration_Organization];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Person] FOREIGN KEY([Assigned_By_Person_Id])
REFERENCES [dbo].[Person] ([Person_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Registration_Person];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Person2] FOREIGN KEY([Person_Id])
REFERENCES [dbo].[Person] ([Person_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Registration_Person2];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Ref_Assessment_Participation_Indicator] FOREIGN KEY([Ref_Assessment_Participation_Indicator_Id])
REFERENCES [dbo].[Ref_Assessment_Participation_Indicator] ([Ref_Assessment_Participation_Indicator_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Registration_Ref_Assessment_Participation_Indicator];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Ref_Assessment_Purpose] FOREIGN KEY([Ref_Assessment_Purpose_Id])
REFERENCES [dbo].[Ref_Assessment_Purpose] ([Ref_Assessment_Purpose_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Registration_Ref_Assessment_Purpose];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Ref_Assessment_Reason_Not_Completing] FOREIGN KEY([Ref_Assessment_Reason_Not_Completing_Id])
REFERENCES [dbo].[Ref_Assessment_Reason_Not_Completing] ([Ref_Assessment_Reason_Not_Completing_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Registration_Ref_Assessment_Reason_Not_Completing];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Ref_Assessment_Reason_Not_Tested] FOREIGN KEY([Ref_Assessment_Reason_Not_Tested_Id])
REFERENCES [dbo].[Ref_Assessment_Reason_Not_Tested] ([Ref_Assessment_Reason_Not_Tested_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Registration_Ref_Assessment_Reason_Not_Tested];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Ref_Assessment_Registration_Completion_Status] FOREIGN KEY([Ref_Assessment_Registration_Completion_Status_Id])
REFERENCES [dbo].[Ref_Assessment_Registration_Completion_Status] ([Ref_Assessment_Registration_Completion_Status_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Registration_Ref_Assessment_Registration_Completion_Status];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Ref_Grade_Level] FOREIGN KEY([Ref_Grade_Level_When_Assessed_Id])
REFERENCES [dbo].[Ref_Grade_Level] ([Ref_Grade_Level_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Registration_Ref_Grade_Level];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Ref_Grade_Level1] FOREIGN KEY([Ref_Grade_Level_To_Be_Assessed_Id])
REFERENCES [dbo].[Ref_Grade_Level] ([Ref_Grade_Level_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Registration_Ref_Grade_Level1];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Ref_Organization1] FOREIGN KEY([School_Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Registration_Ref_Organization1];

ALTER TABLE [dbo].[Assessment_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Ref_Organization2] FOREIGN KEY([Lea_Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[Assessment_Registration] CHECK CONSTRAINT [FK_Assessment_Registration_Ref_Organization2];

ALTER TABLE [dbo].[Assessment_Registration_Accommodation]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Accommodation_Assessment_Accommodation] FOREIGN KEY([Assessment_Accommodation_Id])
REFERENCES [dbo].[Assessment_Accommodation] ([Assessment_Accommodation_Id]);

ALTER TABLE [dbo].[Assessment_Registration_Accommodation] CHECK CONSTRAINT [FK_Assessment_Registration_Accommodation_Assessment_Accommodation];

ALTER TABLE [dbo].[Assessment_Registration_Accommodation]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Registration_Registration] FOREIGN KEY([Assessment_Registration_Id])
REFERENCES [dbo].[Assessment_Registration] ([Assessment_Registration_Id]);

ALTER TABLE [dbo].[Assessment_Registration_Accommodation] CHECK CONSTRAINT [FK_Assessment_Registration_Registration];

ALTER TABLE [dbo].[Assessment_Result]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Result_Assessment_Registration] FOREIGN KEY([Assessment_Registration_Id])
REFERENCES [dbo].[Assessment_Registration] ([Assessment_Registration_Id]);

ALTER TABLE [dbo].[Assessment_Result] CHECK CONSTRAINT [FK_Assessment_Result_Assessment_Registration];

ALTER TABLE [dbo].[Assessment_Result]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Result_Assessment_Sub_Test] FOREIGN KEY([Assessment_Subtest_Id])
REFERENCES [dbo].[Assessment_Subtest] ([Assessment_Subtest_Id]);

ALTER TABLE [dbo].[Assessment_Result] CHECK CONSTRAINT [FK_Assessment_Result_Assessment_Sub_Test];

ALTER TABLE [dbo].[Assessment_Result]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Result_Ref_Assessment_Pretest_Outcome] FOREIGN KEY([Ref_Assessment_Pretest_Outcome_Id])
REFERENCES [dbo].[Ref_Assessment_Pretest_Outcome] ([Ref_Assessment_Pretest_Outcome_Id]);

ALTER TABLE [dbo].[Assessment_Result] CHECK CONSTRAINT [FK_Assessment_Result_Ref_Assessment_Pretest_Outcome];

ALTER TABLE [dbo].[Assessment_Result]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Result_Ref_Assessment_Result_Data_Type] FOREIGN KEY([Ref_Assessment_Result_Data_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Result_Data_Type] ([Ref_Assessment_Result_Data_Type_Id]);

ALTER TABLE [dbo].[Assessment_Result] CHECK CONSTRAINT [FK_Assessment_Result_Ref_Assessment_Result_Data_Type];

ALTER TABLE [dbo].[Assessment_Result]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Result_Ref_Assessment_Result_Score_Type] FOREIGN KEY([Ref_Assessment_Result_Score_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Result_Score_Type] ([Ref_Assessment_Result_Score_Type_Id]);

ALTER TABLE [dbo].[Assessment_Result] CHECK CONSTRAINT [FK_Assessment_Result_Ref_Assessment_Result_Score_Type];

ALTER TABLE [dbo].[Assessment_Result]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Result_Ref_EL_Outcome_Measurement] FOREIGN KEY([Ref_EL_Outcome_Measurement_Level_Id])
REFERENCES [dbo].[Ref_EL_Outcome_Measurement_Level] ([Ref_EL_Outcome_Measurement_Level_Id]);

ALTER TABLE [dbo].[Assessment_Result] CHECK CONSTRAINT [FK_Assessment_Result_Ref_EL_Outcome_Measurement];

ALTER TABLE [dbo].[Assessment_Result]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Result_Ref_Outcome_Time_Point] FOREIGN KEY([Ref_Outcome_Time_Point_Id])
REFERENCES [dbo].[Ref_Outcome_Time_Point] ([Ref_Outcome_Time_Point_Id]);

ALTER TABLE [dbo].[Assessment_Result] CHECK CONSTRAINT [FK_Assessment_Result_Ref_Outcome_Time_Point];

ALTER TABLE [dbo].[Assessment_Result]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Result_Ref_Score_Metric_Type] FOREIGN KEY([Ref_Score_Metric_Type_Id])
REFERENCES [dbo].[Ref_Score_Metric_Type] ([Ref_Score_Metric_Type_Id]);

ALTER TABLE [dbo].[Assessment_Result] CHECK CONSTRAINT [FK_Assessment_Result_Ref_Score_Metric_Type];

ALTER TABLE [dbo].[Assessment_Result_Performance_Level]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Result_Performance_Level_Assessment_Performance_Level] FOREIGN KEY([Assessment_Performance_Level_Id])
REFERENCES [dbo].[Assessment_Performance_Level] ([Assessment_Performance_Level_Id]);

ALTER TABLE [dbo].[Assessment_Result_Performance_Level] CHECK CONSTRAINT [FK_Assessment_Result_Performance_Level_Assessment_Performance_Level];

ALTER TABLE [dbo].[Assessment_Result_Performance_Level]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Result_Performance_Level_Assessment_Result] FOREIGN KEY([Assessment_Result_Id])
REFERENCES [dbo].[Assessment_Result] ([Assessment_Result_Id]);

ALTER TABLE [dbo].[Assessment_Result_Performance_Level] CHECK CONSTRAINT [FK_Assessment_Result_Performance_Level_Assessment_Result];

ALTER TABLE [dbo].[Assessment_Result_Rubric_Criterion_Result]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Result_Rubric_Criterion_Result_Assessment_Result] FOREIGN KEY([Assessment_Result_Id])
REFERENCES [dbo].[Assessment_Result] ([Assessment_Result_Id]);

ALTER TABLE [dbo].[Assessment_Result_Rubric_Criterion_Result] CHECK CONSTRAINT [FK_Assessment_Result_Rubric_Criterion_Result_Assessment_Result];

ALTER TABLE [dbo].[Assessment_Result_Rubric_Criterion_Result]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Result_Rubric_Criterion_Result_Rubric_Criterion_Level] FOREIGN KEY([Rubric_Criterion_Level_Id])
REFERENCES [dbo].[Rubric_Criterion_Level] ([Rubric_Criterion_Level_Id]);

ALTER TABLE [dbo].[Assessment_Result_Rubric_Criterion_Result] CHECK CONSTRAINT [FK_Assessment_Result_Rubric_Criterion_Result_Rubric_Criterion_Level];

ALTER TABLE [dbo].[Assessment_Session]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Session_Assessment_Administration] FOREIGN KEY([Assessment_Administration_Id])
REFERENCES [dbo].[Assessment_Administration] ([Assessment_Administration_Id]);

ALTER TABLE [dbo].[Assessment_Session] CHECK CONSTRAINT [FK_Assessment_Session_Assessment_Administration];

ALTER TABLE [dbo].[Assessment_Session]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Session_Organization] FOREIGN KEY([Lea_Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[Assessment_Session] CHECK CONSTRAINT [FK_Assessment_Session_Organization];

ALTER TABLE [dbo].[Assessment_Session]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Session_Organization1] FOREIGN KEY([School_Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[Assessment_Session] CHECK CONSTRAINT [FK_Assessment_Session_Organization1];

ALTER TABLE [dbo].[Assessment_Session]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Session_Organization2] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[Assessment_Session] CHECK CONSTRAINT [FK_Assessment_Session_Organization2];

ALTER TABLE [dbo].[Assessment_Session]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Session_Ref_Assessment_Session_Special_Circumstance] FOREIGN KEY([Ref_Assessment_Session_Special_Circumstance_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Session_Special_Circumstance_Type] ([Ref_Assessment_Session_Special_Circumstance_Type_Id]);

ALTER TABLE [dbo].[Assessment_Session] CHECK CONSTRAINT [FK_Assessment_Session_Ref_Assessment_Session_Special_Circumstance];

ALTER TABLE [dbo].[Assessment_Session]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Session_Ref_Assessment_Session_Type] FOREIGN KEY([Ref_Assessment_Session_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Session_Type] ([Ref_Assessment_Session_Type_Id]);

ALTER TABLE [dbo].[Assessment_Session] CHECK CONSTRAINT [FK_Assessment_Session_Ref_Assessment_Session_Type];

ALTER TABLE [dbo].[Assessment_Session_Staff_Role]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Session_Staff_Role_Assessment_Participant_Session] FOREIGN KEY([Assessment_Participant_Session_Id])
REFERENCES [dbo].[Assessment_Participant_Session] ([Assessment_Participant_Session_Id]);

ALTER TABLE [dbo].[Assessment_Session_Staff_Role] CHECK CONSTRAINT [FK_Assessment_Session_Staff_Role_Assessment_Participant_Session];

ALTER TABLE [dbo].[Assessment_Session_Staff_Role]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Session_Staff_Role_Assessment_Session] FOREIGN KEY([Assessment_Session_Id])
REFERENCES [dbo].[Assessment_Session] ([Assessment_Session_Id]);

ALTER TABLE [dbo].[Assessment_Session_Staff_Role] CHECK CONSTRAINT [FK_Assessment_Session_Staff_Role_Assessment_Session];

ALTER TABLE [dbo].[Assessment_Session_Staff_Role]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Session_Staff_Role_Person] FOREIGN KEY([Person_Id])
REFERENCES [dbo].[Person] ([Person_Id]);

ALTER TABLE [dbo].[Assessment_Session_Staff_Role] CHECK CONSTRAINT [FK_Assessment_Session_Staff_Role_Person];

ALTER TABLE [dbo].[Assessment_Session_Staff_Role]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Session_Staff_Role_Ref_Assessment_Session_Staff_Role_Type] FOREIGN KEY([Ref_Assessment_Session_Staff_Role_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Session_Staff_Role_Type] ([Ref_Assessment_Session_Staff_Role_Type_Id]);

ALTER TABLE [dbo].[Assessment_Session_Staff_Role] CHECK CONSTRAINT [FK_Assessment_Session_Staff_Role_Ref_Assessment_Session_Staff_Role_Type];

ALTER TABLE [dbo].[Assessment_Subtest]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Sub_Test_Assessment_Form] FOREIGN KEY([Assessment_Form_Id])
REFERENCES [dbo].[Assessment_Form] ([Assessment_Form_Id]);

ALTER TABLE [dbo].[Assessment_Subtest] CHECK CONSTRAINT [FK_Assessment_Sub_Test_Assessment_Form];

ALTER TABLE [dbo].[Assessment_Subtest]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subtest_Assessment_Sub_Test] FOREIGN KEY([Child_Of_Assessment_Subtest_Id])
REFERENCES [dbo].[Assessment_Subtest] ([Assessment_Subtest_Id]);

ALTER TABLE [dbo].[Assessment_Subtest] CHECK CONSTRAINT [FK_Assessment_Subtest_Assessment_Sub_Test];

ALTER TABLE [dbo].[Assessment_Subtest]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subtest_Ref_Assessment_Purpose] FOREIGN KEY([Ref_Assessment_Purpose_Id])
REFERENCES [dbo].[Ref_Assessment_Purpose] ([Ref_Assessment_Purpose_Id]);

ALTER TABLE [dbo].[Assessment_Subtest] CHECK CONSTRAINT [FK_Assessment_Subtest_Ref_Assessment_Purpose];

ALTER TABLE [dbo].[Assessment_Subtest]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subtest_Ref_Assess_Subtest_Identifier_Type] FOREIGN KEY([Ref_Assessment_Subtest_Identifier_Type_Id])
REFERENCES [dbo].[Ref_Assessment_Subtest_Identifier_Type] ([Ref_Assessment_Subtest_Identifier_Type_Id]);

ALTER TABLE [dbo].[Assessment_Subtest] CHECK CONSTRAINT [FK_Assessment_Subtest_Ref_Assess_Subtest_Identifier_Type];

ALTER TABLE [dbo].[Assessment_Subtest]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subtest_Ref_Content_Standard_Type] FOREIGN KEY([Ref_Content_Standard_Type_Id])
REFERENCES [dbo].[Ref_Content_Standard_Type] ([Ref_Content_Standard_Type_Id]);

ALTER TABLE [dbo].[Assessment_Subtest] CHECK CONSTRAINT [FK_Assessment_Subtest_Ref_Content_Standard_Type];

ALTER TABLE [dbo].[Assessment_Subtest]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subtest_Ref_Score_Metric_Type] FOREIGN KEY([Ref_Score_Metric_Type_Id])
REFERENCES [dbo].[Ref_Score_Metric_Type] ([Ref_Score_Metric_Type_Id]);

ALTER TABLE [dbo].[Assessment_Subtest] CHECK CONSTRAINT [FK_Assessment_Subtest_Ref_Score_Metric_Type];

ALTER TABLE [dbo].[Assessment_Subtest]  WITH CHECK ADD  CONSTRAINT [FK_Form_Sub_Test_Ref_Academic_Subject] FOREIGN KEY([Ref_Academic_Subject_Id])
REFERENCES [dbo].[Ref_Academic_Subject] ([Ref_Academic_Subject_Id]);

ALTER TABLE [dbo].[Assessment_Subtest] CHECK CONSTRAINT [FK_Form_Sub_Test_Ref_Academic_Subject];

ALTER TABLE [dbo].[Assessment_Subtest_Assessment_Item]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subtest_AI_Assessment_Item] FOREIGN KEY([Assessment_Item_Id])
REFERENCES [dbo].[Assessment_Item] ([Assessment_Item_Id]);

ALTER TABLE [dbo].[Assessment_Subtest_Assessment_Item] CHECK CONSTRAINT [FK_Assessment_Subtest_AI_Assessment_Item];

ALTER TABLE [dbo].[Assessment_Subtest_Assessment_Item]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subtest_Items_Assessment_Sub_Test] FOREIGN KEY([Assessment_Subtest_Id])
REFERENCES [dbo].[Assessment_Subtest] ([Assessment_Subtest_Id]);

ALTER TABLE [dbo].[Assessment_Subtest_Assessment_Item] CHECK CONSTRAINT [FK_Assessment_Subtest_Items_Assessment_Sub_Test];

ALTER TABLE [dbo].[Assessment_Subtest_Competency_Framework_Item]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subtest_Competency_Framework_Item_Assessment_Subtest] FOREIGN KEY([Assessment_Subtest_Id])
REFERENCES [dbo].[Assessment_Subtest] ([Assessment_Subtest_Id]);

ALTER TABLE [dbo].[Assessment_Subtest_Competency_Framework_Item] CHECK CONSTRAINT [FK_Assessment_Subtest_Competency_Framework_Item_Assessment_Subtest];

ALTER TABLE [dbo].[Assessment_Subtest_Competency_Framework_Item]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subtest_Competency_Framework_Item_Competency_Framework_Item] FOREIGN KEY([Competency_Framework_Item_Id])
REFERENCES [dbo].[Competency_Framework_Item] ([Competency_Framework_Item_Id]);

ALTER TABLE [dbo].[Assessment_Subtest_Competency_Framework_Item] CHECK CONSTRAINT [FK_Assessment_Subtest_Competency_Framework_Item_Competency_Framework_Item];

ALTER TABLE [dbo].[Assessment_Subtest_EL_Developmental_Domain]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subtest_Assessment_EL_Developmental_Domain_Assessment_Subtest] FOREIGN KEY([Assessment_Subtest_Id])
REFERENCES [dbo].[Assessment_Subtest] ([Assessment_Subtest_Id]);

ALTER TABLE [dbo].[Assessment_Subtest_EL_Developmental_Domain] CHECK CONSTRAINT [FK_Assessment_Subtest_Assessment_EL_Developmental_Domain_Assessment_Subtest];

ALTER TABLE [dbo].[Assessment_Subtest_EL_Developmental_Domain]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subtest_Assessment_EL_Developmental_Domain_Ref_Assessment_EL_Developmental_Domain] FOREIGN KEY([Ref_Assessment_EL_Developmental_Domain_Id])
REFERENCES [dbo].[Ref_Assessment_EL_Developmental_Domain] ([Ref_Assessment_EL_Developmental_Domain_Id]);

ALTER TABLE [dbo].[Assessment_Subtest_EL_Developmental_Domain] CHECK CONSTRAINT [FK_Assessment_Subtest_Assessment_EL_Developmental_Domain_Ref_Assessment_EL_Developmental_Domain];

ALTER TABLE [dbo].[Assessment_Subtest_Levels_For_Which_Designed]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subtest_Levels_For_Which_Designed_Assessment_Subtest] FOREIGN KEY([Assessment_Sub_Test_Id])
REFERENCES [dbo].[Assessment_Subtest] ([Assessment_Subtest_Id]);

ALTER TABLE [dbo].[Assessment_Subtest_Levels_For_Which_Designed] CHECK CONSTRAINT [FK_Assessment_Subtest_Levels_For_Which_Designed_Assessment_Subtest];

ALTER TABLE [dbo].[Assessment_Subtest_Levels_For_Which_Designed]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subtest_Levels_For_Which_Designed_Ref_Grade] FOREIGN KEY([Ref_Grade_Id])
REFERENCES [dbo].[Ref_Grade_Level] ([Ref_Grade_Level_Id]);

ALTER TABLE [dbo].[Assessment_Subtest_Levels_For_Which_Designed] CHECK CONSTRAINT [FK_Assessment_Subtest_Levels_For_Which_Designed_Ref_Grade];

ALTER TABLE [dbo].[Authentication]  WITH CHECK ADD  CONSTRAINT [FK_Authentication_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Authentication] CHECK CONSTRAINT [FK_Authentication_Organization_Person_Role];

ALTER TABLE [dbo].[Authorization]  WITH CHECK ADD  CONSTRAINT [FK_Authorization_Application] FOREIGN KEY([Application_Id])
REFERENCES [dbo].[Application] ([Application_Id]);

ALTER TABLE [dbo].[Authorization] CHECK CONSTRAINT [FK_Authorization_Application];

ALTER TABLE [dbo].[Authorization]  WITH CHECK ADD  CONSTRAINT [FK_Authorization_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Authorization] CHECK CONSTRAINT [FK_Authorization_Organization_Person_Role];

ALTER TABLE [dbo].[Authorization_Document]  WITH CHECK ADD  CONSTRAINT [FK_Authorization_Document_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Authorization_Document] CHECK CONSTRAINT [FK_Authorization_Document_Organization_Person_Role];

ALTER TABLE [dbo].[Authorization_Document]  WITH CHECK ADD  CONSTRAINT [FK_Authorization_Document_Ref_Authorizer_Type] FOREIGN KEY([Ref_Authorizer_Type_Id])
REFERENCES [dbo].[Ref_Authorizer_Type] ([Ref_Authorizer_Type_Id]);

ALTER TABLE [dbo].[Authorization_Document] CHECK CONSTRAINT [FK_Authorization_Document_Ref_Authorizer_Type];

ALTER TABLE [dbo].[Classroom]  WITH CHECK ADD  CONSTRAINT [FK_Classroom_Location] FOREIGN KEY([Location_Id])
REFERENCES [dbo].[Location] ([Location_Id]);

ALTER TABLE [dbo].[Classroom] CHECK CONSTRAINT [FK_Classroom_Location];

ALTER TABLE [dbo].[Competency_Framework]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Framework_Ref_Competency_Framework_Publication_Status] FOREIGN KEY([Ref_Competency_Framework_Publication_Status_Id])
REFERENCES [dbo].[Ref_Competency_Framework_Publication_Status] ([Ref_Competency_Framework_Publication_Status_Id]);

ALTER TABLE [dbo].[Competency_Framework] CHECK CONSTRAINT [FK_Competency_Framework_Ref_Competency_Framework_Publication_Status];

ALTER TABLE [dbo].[Competency_Framework]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Framework_Ref_Language] FOREIGN KEY([Ref_Language_Id])
REFERENCES [dbo].[Ref_Language] ([Ref_Language_Id]);

ALTER TABLE [dbo].[Competency_Framework] CHECK CONSTRAINT [FK_Competency_Framework_Ref_Language];

ALTER TABLE [dbo].[Competency_Framework_Item]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Framework_Item_Competency_Framework] FOREIGN KEY([Competency_Framework_Id])
REFERENCES [dbo].[Competency_Framework] ([Competency_Framework_Id]);

ALTER TABLE [dbo].[Competency_Framework_Item] CHECK CONSTRAINT [FK_Competency_Framework_Item_Competency_Framework];

ALTER TABLE [dbo].[Competency_Framework_Item]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Framework_Item_Competency_Framework_Item] FOREIGN KEY([Child_Of_Competency_Framework_Item])
REFERENCES [dbo].[Competency_Framework_Item] ([Competency_Framework_Item_Id]);

ALTER TABLE [dbo].[Competency_Framework_Item] CHECK CONSTRAINT [FK_Competency_Framework_Item_Competency_Framework_Item];

ALTER TABLE [dbo].[Competency_Framework_Item]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Framework_Item_Ref_Blooms_Taxonomy_Domain] FOREIGN KEY([Ref_Blooms_Taxonomy_Domain_Id])
REFERENCES [dbo].[Ref_Blooms_Taxonomy_Domain] ([Ref_Blooms_Taxonomy_Domain_Id]);

ALTER TABLE [dbo].[Competency_Framework_Item] CHECK CONSTRAINT [FK_Competency_Framework_Item_Ref_Blooms_Taxonomy_Domain];

ALTER TABLE [dbo].[Competency_Framework_Item]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Framework_Item_Ref_Competency_Framework_Item_Node_Accessibility_Profile] FOREIGN KEY([Ref_Competency_Framework_Item_Node_Accessibility_Profile_Id])
REFERENCES [dbo].[Ref_Competency_Framework_Item_Node_Accessibility_Profile] ([Ref_Competency_Framework_Item_Node_Accessibility_Profile_Id]);

ALTER TABLE [dbo].[Competency_Framework_Item] CHECK CONSTRAINT [FK_Competency_Framework_Item_Ref_Competency_Framework_Item_Node_Accessibility_Profile];

ALTER TABLE [dbo].[Competency_Framework_Item]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Framework_Item_Ref_Competency_Framework_Item_Testability_Type] FOREIGN KEY([Ref_Competency_Framework_Item_Testability_Type_Id])
REFERENCES [dbo].[Ref_Competency_Framework_Item_Testability_Type] ([Ref_Competency_Framework_Item_Testability_Type_Id]);

ALTER TABLE [dbo].[Competency_Framework_Item] CHECK CONSTRAINT [FK_Competency_Framework_Item_Ref_Competency_Framework_Item_Testability_Type];

ALTER TABLE [dbo].[Competency_Framework_Item]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Framework_Item_Ref_Language] FOREIGN KEY([Ref_Language_Id])
REFERENCES [dbo].[Ref_Language] ([Ref_Language_Id]);

ALTER TABLE [dbo].[Competency_Framework_Item] CHECK CONSTRAINT [FK_Competency_Framework_Item_Ref_Language];

ALTER TABLE [dbo].[Competency_Framework_Item]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Framework_Item_Ref_Multiple_Intelligence_Type] FOREIGN KEY([Ref_Multiple_Intelligence_Type_Id])
REFERENCES [dbo].[Ref_Multiple_Intelligence_Type] ([Ref_Multiple_Intelligence_Type_Id]);

ALTER TABLE [dbo].[Competency_Framework_Item] CHECK CONSTRAINT [FK_Competency_Framework_Item_Ref_Multiple_Intelligence_Type];

ALTER TABLE [dbo].[Competency_Framework_Item_Association]  WITH CHECK ADD  CONSTRAINT [FK_CF_Item_Association_Ref_Competency_Framework_Item_Association] FOREIGN KEY([Ref_Competency_Framework_Item_Association_Type_Id])
REFERENCES [dbo].[Ref_Competency_Framework_Item_Association_Type] ([Ref_Competency_Framework_Item_Association_Type_Id]);

ALTER TABLE [dbo].[Competency_Framework_Item_Association] CHECK CONSTRAINT [FK_CF_Item_Association_Ref_Competency_Framework_Item_Association];

ALTER TABLE [dbo].[Competency_Framework_Item_Association]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Framework_Item_Association_Competency_Framework_Item] FOREIGN KEY([Competency_Framework_Item_Id])
REFERENCES [dbo].[Competency_Framework_Item] ([Competency_Framework_Item_Id]);

ALTER TABLE [dbo].[Competency_Framework_Item_Association] CHECK CONSTRAINT [FK_Competency_Framework_Item_Association_Competency_Framework_Item];

ALTER TABLE [dbo].[Competency_Framework_Item_Association]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Framework_Item_Association_Ref_Associated_Entity_Type] FOREIGN KEY([Ref_Entity_Type_Id])
REFERENCES [dbo].[Ref_Entity_Type] ([Ref_Entity_Type_Id]);

ALTER TABLE [dbo].[Competency_Framework_Item_Association] CHECK CONSTRAINT [FK_Competency_Framework_Item_Association_Ref_Associated_Entity_Type];

ALTER TABLE [dbo].[Competency_Framework_Item_Education_Level]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Framework_Item_Education_Level_Competency_Framework_Item] FOREIGN KEY([Competency_Framework_Item_Id])
REFERENCES [dbo].[Competency_Framework_Item] ([Competency_Framework_Item_Id]);

ALTER TABLE [dbo].[Competency_Framework_Item_Education_Level] CHECK CONSTRAINT [FK_Competency_Framework_Item_Education_Level_Competency_Framework_Item];

ALTER TABLE [dbo].[Competency_Framework_Item_Education_Level]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Framework_Item_Education_Level_Ref_Education_Level] FOREIGN KEY([Ref_Education_Level_Id])
REFERENCES [dbo].[Ref_Education_Level] ([Ref_Education_Level_Id]);

ALTER TABLE [dbo].[Competency_Framework_Item_Education_Level] CHECK CONSTRAINT [FK_Competency_Framework_Item_Education_Level_Ref_Education_Level];

ALTER TABLE [dbo].[Competency_Item_Competency_Set]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Item_Competency_Set_Competency_Framework_Item] FOREIGN KEY([Competency_Framework_Item_Id])
REFERENCES [dbo].[Competency_Framework_Item] ([Competency_Framework_Item_Id]);

ALTER TABLE [dbo].[Competency_Item_Competency_Set] CHECK CONSTRAINT [FK_Competency_Item_Competency_Set_Competency_Framework_Item];

ALTER TABLE [dbo].[Competency_Item_Competency_Set]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Item_Competency_Set_Competency_Set] FOREIGN KEY([Competency_Set_Id])
REFERENCES [dbo].[Competency_Set] ([Competency_Set_Id]);

ALTER TABLE [dbo].[Competency_Item_Competency_Set] CHECK CONSTRAINT [FK_Competency_Item_Competency_Set_Competency_Set];

ALTER TABLE [dbo].[Competency_Set]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Set_Learning_Standard_Item_Set] FOREIGN KEY([Child_Of_Competency_Set])
REFERENCES [dbo].[Competency_Set] ([Competency_Set_Id]);

ALTER TABLE [dbo].[Competency_Set] CHECK CONSTRAINT [FK_Competency_Set_Learning_Standard_Item_Set];

ALTER TABLE [dbo].[Competency_Set]  WITH CHECK ADD  CONSTRAINT [FK_Competency_Set_Ref_Competency_Set_Completion_Criteria] FOREIGN KEY([Ref_Completion_Criteria_Id])
REFERENCES [dbo].[Ref_Competency_Set_Completion_Criteria] ([Ref_Competency_Set_Completion_Criteria_Id]);

ALTER TABLE [dbo].[Competency_Set] CHECK CONSTRAINT [FK_Competency_Set_Ref_Competency_Set_Completion_Criteria];

ALTER TABLE [dbo].[Core_Knowledge_Area]  WITH CHECK ADD  CONSTRAINT [FK_Core_Knowledge_Area_Professional_Development_Activity] FOREIGN KEY([Professional_Development_Activity_Id])
REFERENCES [dbo].[Staff_Professional_Development_Activity] ([Staff_Professional_Development_Activity_Id]);

ALTER TABLE [dbo].[Core_Knowledge_Area] CHECK CONSTRAINT [FK_Core_Knowledge_Area_Professional_Development_Activity];

ALTER TABLE [dbo].[Core_Knowledge_Area]  WITH CHECK ADD  CONSTRAINT [FK_Core_Knowledge_Area_Ref_Core_Knowledge_Area] FOREIGN KEY([Ref_Core_Knowledge_Area_Id])
REFERENCES [dbo].[Ref_Core_Knowledge_Area] ([Ref_Core_Knowledge_Area_Id]);

ALTER TABLE [dbo].[Core_Knowledge_Area] CHECK CONSTRAINT [FK_Core_Knowledge_Area_Ref_Core_Knowledge_Area];

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Organization];

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Ref_Course_Applicable_Education_Level] FOREIGN KEY([Ref_Course_Applicable_Education_Level_Id])
REFERENCES [dbo].[Ref_Course_Applicable_Education_Level] ([Ref_Course_Applicable_Education_Level_Id]);

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Ref_Course_Applicable_Education_Level];

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Ref_Course_Credit_Unit] FOREIGN KEY([Ref_Course_Credit_Unit_Id])
REFERENCES [dbo].[Ref_Course_Credit_Unit] ([Ref_Course_Credit_Unit_Id]);

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Ref_Course_Credit_Unit];

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Ref_Course_Level_Characteristic] FOREIGN KEY([Ref_Course_Level_Characteristics_Id])
REFERENCES [dbo].[Ref_Course_Level_Characteristic] ([Ref_Course_Level_Characteristic_Id]);

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Ref_Course_Level_Characteristic];

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Ref_Language] FOREIGN KEY([Ref_Instruction_Language])
REFERENCES [dbo].[Ref_Language] ([Ref_Language_Id]);

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Ref_Language];

ALTER TABLE [dbo].[Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_Course_Section_Course] FOREIGN KEY([Course_Id])
REFERENCES [dbo].[Course] ([Organization_Id]);

ALTER TABLE [dbo].[Course_Section] CHECK CONSTRAINT [FK_Course_Section_Course];

ALTER TABLE [dbo].[Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_Course_Section_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[Course_Section] CHECK CONSTRAINT [FK_Course_Section_Organization];

ALTER TABLE [dbo].[Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_Course_Section_Organization_Calendar_Session] FOREIGN KEY([Organization_Calendar_Session_Id])
REFERENCES [dbo].[Organization_Calendar_Session] ([Organization_Calendar_Session_Id]);

ALTER TABLE [dbo].[Course_Section] CHECK CONSTRAINT [FK_Course_Section_Organization_Calendar_Session];

ALTER TABLE [dbo].[Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_Course_Section_Ref_Advanced_Placement_Course_Code_Id] FOREIGN KEY([Ref_Advanced_Placement_Course_Code_Id])
REFERENCES [dbo].[Ref_Advanced_Placement_Course_Code] ([Ref_Advanced_Placement_Course_Code_Id]);

ALTER TABLE [dbo].[Course_Section] CHECK CONSTRAINT [FK_Course_Section_Ref_Advanced_Placement_Course_Code_Id];

ALTER TABLE [dbo].[Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_Course_Section_Ref_Course_Section_Delivery_Mode] FOREIGN KEY([Ref_Course_Section_Delivery_Mode_Id])
REFERENCES [dbo].[Ref_Course_Section_Delivery_Mode] ([Ref_Course_Section_Delivery_Mode_Id]);

ALTER TABLE [dbo].[Course_Section] CHECK CONSTRAINT [FK_Course_Section_Ref_Course_Section_Delivery_Mode];

ALTER TABLE [dbo].[Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_Course_Section_Ref_Course_Section_Single_Sex_Class_Status] FOREIGN KEY([Ref_Single_Sex_Class_Status_Id])
REFERENCES [dbo].[Ref_Single_Sex_Class_Status] ([Ref_Single_Sex_Class_Status_Id]);

ALTER TABLE [dbo].[Course_Section] CHECK CONSTRAINT [FK_Course_Section_Ref_Course_Section_Single_Sex_Class_Status];

ALTER TABLE [dbo].[Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_Course_Section_Ref_Credit_Type_Earned] FOREIGN KEY([Ref_Credit_Type_Earned_Id])
REFERENCES [dbo].[Ref_Credit_Type_Earned] ([Ref_Credit_Type_Earned_Id]);

ALTER TABLE [dbo].[Course_Section] CHECK CONSTRAINT [FK_Course_Section_Ref_Credit_Type_Earned];

ALTER TABLE [dbo].[Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_Course_Section_Ref_Language] FOREIGN KEY([Ref_Instruction_Language_Id])
REFERENCES [dbo].[Ref_Language] ([Ref_Language_Id]);

ALTER TABLE [dbo].[Course_Section] CHECK CONSTRAINT [FK_Course_Section_Ref_Language];

ALTER TABLE [dbo].[Course_Section_Assessment_Reporting]  WITH CHECK ADD  CONSTRAINT [FK_Course_Section_Assessment_Reporting_Course_Section] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Course_Section] ([Organization_Id]);

ALTER TABLE [dbo].[Course_Section_Assessment_Reporting] CHECK CONSTRAINT [FK_Course_Section_Assessment_Reporting_Course_Section];

ALTER TABLE [dbo].[Course_Section_Assessment_Reporting]  WITH CHECK ADD  CONSTRAINT [FK_Course_Section_Assessment_Reporting_Ref_CS_Assessment_Report_Method] FOREIGN KEY([Ref_Course_Section_Assessment_Reporting_Method_Id])
REFERENCES [dbo].[Ref_Course_Section_Assessment_Reporting_Method] ([Ref_Course_Section_Assessment_Reporting_Method_Id]);

ALTER TABLE [dbo].[Course_Section_Assessment_Reporting] CHECK CONSTRAINT [FK_Course_Section_Assessment_Reporting_Ref_CS_Assessment_Report_Method];

ALTER TABLE [dbo].[Course_Section_Location]  WITH CHECK ADD  CONSTRAINT [FK_Course_Section_Location_Classroom] FOREIGN KEY([Location_Id])
REFERENCES [dbo].[Classroom] ([Location_Id]);

ALTER TABLE [dbo].[Course_Section_Location] CHECK CONSTRAINT [FK_Course_Section_Location_Classroom];

ALTER TABLE [dbo].[Course_Section_Location]  WITH CHECK ADD  CONSTRAINT [FK_Course_Section_Location_Course_Section] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Course_Section] ([Organization_Id]);

ALTER TABLE [dbo].[Course_Section_Location] CHECK CONSTRAINT [FK_Course_Section_Location_Course_Section];

ALTER TABLE [dbo].[Course_Section_Location]  WITH CHECK ADD  CONSTRAINT [FK_Course_Section_Location_Ref_Instruction_Location_Type] FOREIGN KEY([Ref_Instruction_Location_Type_Id])
REFERENCES [dbo].[Ref_Instruction_Location_Type] ([Ref_Instruction_Location_Type_Id]);

ALTER TABLE [dbo].[Course_Section_Location] CHECK CONSTRAINT [FK_Course_Section_Location_Ref_Instruction_Location_Type];

ALTER TABLE [dbo].[Course_Section_Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Course_Section_Schedule_Course_Section] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Course_Section] ([Organization_Id]);

ALTER TABLE [dbo].[Course_Section_Schedule] CHECK CONSTRAINT [FK_Course_Section_Schedule_Course_Section];

ALTER TABLE [dbo].[Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Ref_Career_Cluster] FOREIGN KEY([Ref_Career_Cluster_Id])
REFERENCES [dbo].[Ref_Career_Cluster] ([Ref_Career_Cluster_Id]);

ALTER TABLE [dbo].[Credential] CHECK CONSTRAINT [FK_Credential_Ref_Career_Cluster];

ALTER TABLE [dbo].[Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Ref_Cip_Code] FOREIGN KEY([Ref_Cip_Code_Id])
REFERENCES [dbo].[Ref_Cip_Code] ([Ref_Cip_Code_Id]);

ALTER TABLE [dbo].[Credential] CHECK CONSTRAINT [FK_Credential_Ref_Cip_Code];

ALTER TABLE [dbo].[Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Ref_Credential_Intended_Purpose_Type] FOREIGN KEY([Ref_Credential_Intended_Purpose_Type_Id])
REFERENCES [dbo].[Ref_Credential_Intended_Purpose_Type] ([Ref_Credential_Intended_Purpose_Type_Id]);

ALTER TABLE [dbo].[Credential] CHECK CONSTRAINT [FK_Credential_Ref_Credential_Intended_Purpose_Type];

ALTER TABLE [dbo].[Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Ref_Credential_Status_Type] FOREIGN KEY([Ref_Credential_Status_Type_Id])
REFERENCES [dbo].[Ref_Credential_Status_Type] ([Ref_Credential_Status_Type_Id]);

ALTER TABLE [dbo].[Credential] CHECK CONSTRAINT [FK_Credential_Ref_Credential_Status_Type];

ALTER TABLE [dbo].[Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Ref_Credential_Verification_Type] FOREIGN KEY([Ref_Credential_Verification_Type_Id])
REFERENCES [dbo].[Ref_Credential_Verification_Type] ([Ref_Credential_Verification_Type_Id]);

ALTER TABLE [dbo].[Credential] CHECK CONSTRAINT [FK_Credential_Ref_Credential_Verification_Type];

ALTER TABLE [dbo].[Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Ref_ONETSOC_Occupation_Type] FOREIGN KEY([Ref_ONETSOC_Occupation_Type_Id])
REFERENCES [dbo].[Ref_ONETSOC_Occupation_Type] ([Ref_ONETSOC_Occupation_Type_Id]);

ALTER TABLE [dbo].[Credential] CHECK CONSTRAINT [FK_Credential_Ref_ONETSOC_Occupation_Type];

ALTER TABLE [dbo].[Credential_Award]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Award_Credential] FOREIGN KEY([Credential_Id])
REFERENCES [dbo].[Credential] ([Credential_Id]);

ALTER TABLE [dbo].[Credential_Award] CHECK CONSTRAINT [FK_Credential_Award_Credential];

ALTER TABLE [dbo].[Credential_Award]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Award_Credential_Issuer] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Credential_Issuer] ([Organization_Id]);

ALTER TABLE [dbo].[Credential_Award] CHECK CONSTRAINT [FK_Credential_Award_Credential_Issuer];

ALTER TABLE [dbo].[Credential_Award]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Award_Person] FOREIGN KEY([Person_Id])
REFERENCES [dbo].[Person] ([Person_Id]);

ALTER TABLE [dbo].[Credential_Award] CHECK CONSTRAINT [FK_Credential_Award_Person];

ALTER TABLE [dbo].[Credential_Award_Credit]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Award_Credit_Credential_Award] FOREIGN KEY([Credential_Award_Id])
REFERENCES [dbo].[Credential_Award] ([Credential_Award_Id]);

ALTER TABLE [dbo].[Credential_Award_Credit] CHECK CONSTRAINT [FK_Credential_Award_Credit_Credential_Award];

ALTER TABLE [dbo].[Credential_Award_Credit]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Award_Credit_Credential_Criteria_Course] FOREIGN KEY([Credential_Criteria_Course_Id])
REFERENCES [dbo].[Credential_Criteria_Course] ([Credential_Criteria_Course_Id]);

ALTER TABLE [dbo].[Credential_Award_Credit] CHECK CONSTRAINT [FK_Credential_Award_Credit_Credential_Criteria_Course];

ALTER TABLE [dbo].[Credential_Award_Credit]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Award_Credit_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Credential_Award_Credit] CHECK CONSTRAINT [FK_Credential_Award_Credit_Organization_Person_Role];

ALTER TABLE [dbo].[Credential_Award_Evidence]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Award_Evidence_Assessment_Result] FOREIGN KEY([Assessment_Result_Id])
REFERENCES [dbo].[Assessment_Result] ([Assessment_Result_Id]);

ALTER TABLE [dbo].[Credential_Award_Evidence] CHECK CONSTRAINT [FK_Credential_Award_Evidence_Assessment_Result];

ALTER TABLE [dbo].[Credential_Award_Evidence]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Award_Evidence_Credential_Award] FOREIGN KEY([Credential_Award_Id])
REFERENCES [dbo].[Credential_Award] ([Credential_Award_Id]);

ALTER TABLE [dbo].[Credential_Award_Evidence] CHECK CONSTRAINT [FK_Credential_Award_Evidence_Credential_Award];

ALTER TABLE [dbo].[Credential_Category]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Category_Credential] FOREIGN KEY([Credential_Id])
REFERENCES [dbo].[Credential] ([Credential_Id]);

ALTER TABLE [dbo].[Credential_Category] CHECK CONSTRAINT [FK_Credential_Category_Credential];

ALTER TABLE [dbo].[Credential_Creator]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Creator_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[Credential_Creator] CHECK CONSTRAINT [FK_Credential_Creator_Organization];

ALTER TABLE [dbo].[Credential_Creator]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Creator_Ref_CTDL_Organization_Type] FOREIGN KEY([Ref_CTDL_Organization_Type_Id])
REFERENCES [dbo].[Ref_CTDL_Organization_Type] ([Ref_CTDL_Organization_Type_Id]);

ALTER TABLE [dbo].[Credential_Creator] CHECK CONSTRAINT [FK_Credential_Creator_Ref_CTDL_Organization_Type];

ALTER TABLE [dbo].[Credential_Creator_Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Creator_Credential_Credential] FOREIGN KEY([Credential_Id])
REFERENCES [dbo].[Credential] ([Credential_Id]);

ALTER TABLE [dbo].[Credential_Creator_Credential] CHECK CONSTRAINT [FK_Credential_Creator_Credential_Credential];

ALTER TABLE [dbo].[Credential_Creator_Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Creator_Credential_Credential_Creator] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Credential_Creator] ([Organization_Id]);

ALTER TABLE [dbo].[Credential_Creator_Credential] CHECK CONSTRAINT [FK_Credential_Creator_Credential_Credential_Creator];

ALTER TABLE [dbo].[Credential_Criteria]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Criteria_Competency_Set] FOREIGN KEY([Competency_Set_Id])
REFERENCES [dbo].[Competency_Set] ([Competency_Set_Id]);

ALTER TABLE [dbo].[Credential_Criteria] CHECK CONSTRAINT [FK_Credential_Criteria_Competency_Set];

ALTER TABLE [dbo].[Credential_Criteria]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Criteria_Credential] FOREIGN KEY([Credential_Id])
REFERENCES [dbo].[Credential] ([Credential_Id]);

ALTER TABLE [dbo].[Credential_Criteria] CHECK CONSTRAINT [FK_Credential_Criteria_Credential];

ALTER TABLE [dbo].[Credential_Criteria]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Criteria_Ref_Credential_Assessment_Method_Type] FOREIGN KEY([Ref_Credential_Assessment_Method_Type_Id])
REFERENCES [dbo].[Ref_Credential_Assessment_Method_Type] ([Ref_Credential_Assessment_Method_Type_Id]);

ALTER TABLE [dbo].[Credential_Criteria] CHECK CONSTRAINT [FK_Credential_Criteria_Ref_Credential_Assessment_Method_Type];

ALTER TABLE [dbo].[Credential_Criteria_Course]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Criteria_Course_Course] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Course] ([Organization_Id]);

ALTER TABLE [dbo].[Credential_Criteria_Course] CHECK CONSTRAINT [FK_Credential_Criteria_Course_Course];

ALTER TABLE [dbo].[Credential_Criteria_Course]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Criteria_Course_Credential_Criteria] FOREIGN KEY([Credential_Criteria_Id])
REFERENCES [dbo].[Credential_Criteria] ([Credential_Criteria_Id]);

ALTER TABLE [dbo].[Credential_Criteria_Course] CHECK CONSTRAINT [FK_Credential_Criteria_Course_Credential_Criteria];

ALTER TABLE [dbo].[Credential_Identifier]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Identifier_Credential] FOREIGN KEY([Credential_Id])
REFERENCES [dbo].[Credential] ([Credential_Id]);

ALTER TABLE [dbo].[Credential_Identifier] CHECK CONSTRAINT [FK_Credential_Identifier_Credential];

ALTER TABLE [dbo].[Credential_Identifier]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Identifier_Ref_Credential_Identifier_System] FOREIGN KEY([Ref_Credential_Identifier_System_Id])
REFERENCES [dbo].[Ref_Credential_Identifier_System] ([Ref_Credential_Identifier_System_Id]);

ALTER TABLE [dbo].[Credential_Identifier] CHECK CONSTRAINT [FK_Credential_Identifier_Ref_Credential_Identifier_System];

ALTER TABLE [dbo].[Credential_Issuer]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Issuer_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[Credential_Issuer] CHECK CONSTRAINT [FK_Credential_Issuer_Organization];

ALTER TABLE [dbo].[Credential_Issuer]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Issuer_Ref_CTDL_Organization_Type] FOREIGN KEY([Ref_CTDL_Organization_Type_Id])
REFERENCES [dbo].[Ref_CTDL_Organization_Type] ([Ref_CTDL_Organization_Type_Id]);

ALTER TABLE [dbo].[Credential_Issuer] CHECK CONSTRAINT [FK_Credential_Issuer_Ref_CTDL_Organization_Type];

ALTER TABLE [dbo].[Credential_Issuer_Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Issuer_Credential_Credential] FOREIGN KEY([Credential_Id])
REFERENCES [dbo].[Credential] ([Credential_Id]);

ALTER TABLE [dbo].[Credential_Issuer_Credential] CHECK CONSTRAINT [FK_Credential_Issuer_Credential_Credential];

ALTER TABLE [dbo].[Credential_Issuer_Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Issuer_Credential_Credential_Issuer] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Credential_Issuer] ([Organization_Id]);

ALTER TABLE [dbo].[Credential_Issuer_Credential] CHECK CONSTRAINT [FK_Credential_Issuer_Credential_Credential_Issuer];

ALTER TABLE [dbo].[Cte_Course]  WITH CHECK ADD  CONSTRAINT [FK_Cte_Course_Course] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Course] ([Organization_Id]);

ALTER TABLE [dbo].[Cte_Course] CHECK CONSTRAINT [FK_Cte_Course_Course];

ALTER TABLE [dbo].[Cte_Course]  WITH CHECK ADD  CONSTRAINT [FK_Cte_Course_Ref_Additional_Credit_Type] FOREIGN KEY([Ref_Additional_Credit_Type_Id])
REFERENCES [dbo].[Ref_Additional_Credit_Type] ([Ref_Additional_Credit_Type_Id]);

ALTER TABLE [dbo].[Cte_Course] CHECK CONSTRAINT [FK_Cte_Course_Ref_Additional_Credit_Type];

ALTER TABLE [dbo].[Cte_Course]  WITH CHECK ADD  CONSTRAINT [FK_Cte_Course_Ref_Career_Cluster] FOREIGN KEY([Ref_Career_Cluster_Id])
REFERENCES [dbo].[Ref_Career_Cluster] ([Ref_Career_Cluster_Id]);

ALTER TABLE [dbo].[Cte_Course] CHECK CONSTRAINT [FK_Cte_Course_Ref_Career_Cluster];

ALTER TABLE [dbo].[Cte_Course]  WITH CHECK ADD  CONSTRAINT [FK_Cte_Course_Ref_Course_Gpa_Applicability] FOREIGN KEY([Ref_Course_Gpa_Applicability_Id])
REFERENCES [dbo].[Ref_Course_Gpa_Applicability] ([Ref_Course_GPA_Applicability_Id]);

ALTER TABLE [dbo].[Cte_Course] CHECK CONSTRAINT [FK_Cte_Course_Ref_Course_Gpa_Applicability];

ALTER TABLE [dbo].[Cte_Course]  WITH CHECK ADD  CONSTRAINT [FK_Cte_Course_Ref_Credit_Type_Earned] FOREIGN KEY([Ref_Credit_Type_Earned_Id])
REFERENCES [dbo].[Ref_Credit_Type_Earned] ([Ref_Credit_Type_Earned_Id]);

ALTER TABLE [dbo].[Cte_Course] CHECK CONSTRAINT [FK_Cte_Course_Ref_Credit_Type_Earned];

ALTER TABLE [dbo].[Cte_Course]  WITH CHECK ADD  CONSTRAINT [FK_Cte_Course_Ref_Curriculum_Framework_Type] FOREIGN KEY([Ref_Curriculum_Framework_Type_Id])
REFERENCES [dbo].[Ref_Curriculum_Framework_Type] ([Ref_Curriculum_Framework_Type_Id]);

ALTER TABLE [dbo].[Cte_Course] CHECK CONSTRAINT [FK_Cte_Course_Ref_Curriculum_Framework_Type];

ALTER TABLE [dbo].[Cte_Course]  WITH CHECK ADD  CONSTRAINT [FK_Cte_Course_Ref_SCED_Course_Level] FOREIGN KEY([Ref_SCED_Course_Level_Id])
REFERENCES [dbo].[Ref_SCED_Course_Level] ([Ref_SCED_Course_Level_Id]);

ALTER TABLE [dbo].[Cte_Course] CHECK CONSTRAINT [FK_Cte_Course_Ref_SCED_Course_Level];

ALTER TABLE [dbo].[Cte_Course]  WITH CHECK ADD  CONSTRAINT [FK_Cte_Course_Ref_SCED_Course_Subject_Area] FOREIGN KEY([Ref_SCED_Course_Subject_Area_Id])
REFERENCES [dbo].[Ref_SCED_Course_Subject_Area] ([Ref_SCED_Course_Subject_Area_Id]);

ALTER TABLE [dbo].[Cte_Course] CHECK CONSTRAINT [FK_Cte_Course_Ref_SCED_Course_Subject_Area];

ALTER TABLE [dbo].[Cte_Student_Academic_Record]  WITH CHECK ADD  CONSTRAINT [FK_Cte_Student_Academic_Record_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Cte_Student_Academic_Record] CHECK CONSTRAINT [FK_Cte_Student_Academic_Record_Organization_Person_Role];

ALTER TABLE [dbo].[Cte_Student_Academic_Record]  WITH CHECK ADD  CONSTRAINT [FK_Cte_Student_Academic_Record_Ref_Professional_Technical_Credential] FOREIGN KEY([Ref_Professional_Technical_Credential_Type_Id])
REFERENCES [dbo].[Ref_Professional_Technical_Credential_Type] ([Ref_Professional_Technical_Credential_Type_Id]);

ALTER TABLE [dbo].[Cte_Student_Academic_Record] CHECK CONSTRAINT [FK_Cte_Student_Academic_Record_Ref_Professional_Technical_Credential];

ALTER TABLE [dbo].[Early_Childhood_Credential]  WITH CHECK ADD  CONSTRAINT [FK_Early_Childhood_Credential_Person_Credential] FOREIGN KEY([Person_Credential_Id])
REFERENCES [dbo].[Person_Credential] ([Person_Credential_Id]);

ALTER TABLE [dbo].[Early_Childhood_Credential] CHECK CONSTRAINT [FK_Early_Childhood_Credential_Person_Credential];

ALTER TABLE [dbo].[Early_Childhood_Credential]  WITH CHECK ADD  CONSTRAINT [FK_Early_Childhood_Credential_Ref_Early_Childhood_Credential] FOREIGN KEY([Ref_Early_Childhood_Credential_Id])
REFERENCES [dbo].[Ref_Early_Childhood_Credential] ([Ref_Early_Childhood_Credential_Id]);

ALTER TABLE [dbo].[Early_Childhood_Credential] CHECK CONSTRAINT [FK_Early_Childhood_Credential_Ref_Early_Childhood_Credential];

ALTER TABLE [dbo].[Early_Childhood_Program_Type_Offered]  WITH CHECK ADD  CONSTRAINT [FK_Early_Childhood_Program_Type_Offered_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[Early_Childhood_Program_Type_Offered] CHECK CONSTRAINT [FK_Early_Childhood_Program_Type_Offered_Organization];

ALTER TABLE [dbo].[Early_Childhood_Program_Type_Offered]  WITH CHECK ADD  CONSTRAINT [FK_Early_Childhood_Program_Type_Offered_Ref_Community_Based_Type] FOREIGN KEY([Ref_Community_Based_Type_Id])
REFERENCES [dbo].[Ref_Community_Based_Type] ([Ref_Community_Based_Type_Id]);

ALTER TABLE [dbo].[Early_Childhood_Program_Type_Offered] CHECK CONSTRAINT [FK_Early_Childhood_Program_Type_Offered_Ref_Community_Based_Type];

ALTER TABLE [dbo].[Early_Childhood_Program_Type_Offered]  WITH CHECK ADD  CONSTRAINT [FK_EC_Program_Type_Offered_Ref_Early_Childhood_Program_Type] FOREIGN KEY([Ref_Early_Childhood_Program_Enrollment_Type_Id])
REFERENCES [dbo].[Ref_Early_Childhood_Program_Enrollment_Type] ([Ref_Early_Childhood_Program_Type_Id]);

ALTER TABLE [dbo].[Early_Childhood_Program_Type_Offered] CHECK CONSTRAINT [FK_EC_Program_Type_Offered_Ref_Early_Childhood_Program_Type];

ALTER TABLE [dbo].[EL_Child_Demographic]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Demographic_Person] FOREIGN KEY([Person_Id])
REFERENCES [dbo].[Person] ([Person_Id]);

ALTER TABLE [dbo].[EL_Child_Demographic] CHECK CONSTRAINT [FK_EL_Child_Demographic_Person];

ALTER TABLE [dbo].[EL_Child_Developmental_Assessment]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Developmental_Assessment_Person] FOREIGN KEY([Person_Id])
REFERENCES [dbo].[Person] ([Person_Id]);

ALTER TABLE [dbo].[EL_Child_Developmental_Assessment] CHECK CONSTRAINT [FK_EL_Child_Developmental_Assessment_Person];

ALTER TABLE [dbo].[EL_Child_Developmental_Assessment]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Developmental_Assessment_Ref_Child_Developmental_Screening_Status] FOREIGN KEY([Ref_Child_Developmental_Screening_Status_Id])
REFERENCES [dbo].[Ref_Child_Developmental_Screening_Status] ([Ref_Child_Developmental_Screening_Status_Id]);

ALTER TABLE [dbo].[EL_Child_Developmental_Assessment] CHECK CONSTRAINT [FK_EL_Child_Developmental_Assessment_Ref_Child_Developmental_Screening_Status];

ALTER TABLE [dbo].[EL_Child_Developmental_Assessment]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Developmental_Assessment_Ref_Developmental_Evaluation_Finding] FOREIGN KEY([Ref_Developmental_Evaluation_Finding_Id])
REFERENCES [dbo].[Ref_Developmental_Evaluation_Finding] ([Ref_Developmental_Evaluation_Finding_Id]);

ALTER TABLE [dbo].[EL_Child_Developmental_Assessment] CHECK CONSTRAINT [FK_EL_Child_Developmental_Assessment_Ref_Developmental_Evaluation_Finding];

ALTER TABLE [dbo].[EL_Child_Health]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Health_Person] FOREIGN KEY([Person_Id])
REFERENCES [dbo].[Person] ([Person_Id]);

ALTER TABLE [dbo].[EL_Child_Health] CHECK CONSTRAINT [FK_EL_Child_Health_Person];

ALTER TABLE [dbo].[EL_Child_Health]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Health_Ref_Scheduled_Well_Child_Screening] FOREIGN KEY([Ref_Scheduled_Well_Child_Screening_Id])
REFERENCES [dbo].[Ref_Scheduled_Well_Child_Screening] ([Ref_Scheduled_Well_Child_Screening_Id]);

ALTER TABLE [dbo].[EL_Child_Health] CHECK CONSTRAINT [FK_EL_Child_Health_Ref_Scheduled_Well_Child_Screening];

ALTER TABLE [dbo].[EL_Child_Individualized_Program]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Individualized_Program_Individualized_Program] FOREIGN KEY([Individualized_Program_Id])
REFERENCES [dbo].[Individualized_Program] ([Individualized_Program_Id]);

ALTER TABLE [dbo].[EL_Child_Individualized_Program] CHECK CONSTRAINT [FK_EL_Child_Individualized_Program_Individualized_Program];

ALTER TABLE [dbo].[EL_Child_Individualized_Program]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Individualized_Program_Person] FOREIGN KEY([Person_Id])
REFERENCES [dbo].[Person] ([Person_Id]);

ALTER TABLE [dbo].[EL_Child_Individualized_Program] CHECK CONSTRAINT [FK_EL_Child_Individualized_Program_Person];

ALTER TABLE [dbo].[EL_Child_Individualized_Program]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Individualized_Program_Ref_IDEA_IEP_Status] FOREIGN KEY([Ref_IDEA_IEP_Status_Id])
REFERENCES [dbo].[Ref_IDEA_IEP_Status] ([Ref_IDEA_IEP_Status_Id]);

ALTER TABLE [dbo].[EL_Child_Individualized_Program] CHECK CONSTRAINT [FK_EL_Child_Individualized_Program_Ref_IDEA_IEP_Status];

ALTER TABLE [dbo].[EL_Child_Individualized_Program]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Individualized_Program_Ref_IDEA_Part_C_Eligibility_Category] FOREIGN KEY([Ref_IDEA_Part_C_Eligibility_Category_Id])
REFERENCES [dbo].[Ref_IDEA_Part_C_Eligibility_Category] ([Ref_IDEA_Part_C_Eligibility_Category_Id]);

ALTER TABLE [dbo].[EL_Child_Individualized_Program] CHECK CONSTRAINT [FK_EL_Child_Individualized_Program_Ref_IDEA_Part_C_Eligibility_Category];

ALTER TABLE [dbo].[EL_Child_Outcome_Summary]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Outcome_Summary_COS_Rating_A] FOREIGN KEY([COS_Rating_A_Id])
REFERENCES [dbo].[Ref_Child_Outcomes_Summary_Rating] ([Ref_Child_Outcomes_Summary_Rating_Id]);

ALTER TABLE [dbo].[EL_Child_Outcome_Summary] CHECK CONSTRAINT [FK_EL_Child_Outcome_Summary_COS_Rating_A];

ALTER TABLE [dbo].[EL_Child_Outcome_Summary]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Outcome_Summary_COS_Rating_B] FOREIGN KEY([COS_Rating_B_Id])
REFERENCES [dbo].[Ref_Child_Outcomes_Summary_Rating] ([Ref_Child_Outcomes_Summary_Rating_Id]);

ALTER TABLE [dbo].[EL_Child_Outcome_Summary] CHECK CONSTRAINT [FK_EL_Child_Outcome_Summary_COS_Rating_B];

ALTER TABLE [dbo].[EL_Child_Outcome_Summary]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Outcome_Summary_COS_Rating_C] FOREIGN KEY([COS_Rating_C_Id])
REFERENCES [dbo].[Ref_Child_Outcomes_Summary_Rating] ([Ref_Child_Outcomes_Summary_Rating_Id]);

ALTER TABLE [dbo].[EL_Child_Outcome_Summary] CHECK CONSTRAINT [FK_EL_Child_Outcome_Summary_COS_Rating_C];

ALTER TABLE [dbo].[EL_Child_Outcome_Summary]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Outcome_Summary_Person] FOREIGN KEY([Person_Id])
REFERENCES [dbo].[Person] ([Person_Id]);

ALTER TABLE [dbo].[EL_Child_Outcome_Summary] CHECK CONSTRAINT [FK_EL_Child_Outcome_Summary_Person];

ALTER TABLE [dbo].[EL_Child_Program_Eligibility]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Program_Eligibility_Org_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[EL_Child_Program_Eligibility] CHECK CONSTRAINT [FK_EL_Child_Program_Eligibility_Org_Person_Role];

ALTER TABLE [dbo].[EL_Child_Service]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Service_Org_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[EL_Child_Service] CHECK CONSTRAINT [FK_EL_Child_Service_Org_Person_Role];

ALTER TABLE [dbo].[EL_Child_Service]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Service_Ref_Early_Childhood_Services_Offered] FOREIGN KEY([Ref_Early_Childhood_Services_Offered_Id])
REFERENCES [dbo].[Ref_Early_Childhood_Services] ([Ref_Early_Childhood_Services_Id]);

ALTER TABLE [dbo].[EL_Child_Service] CHECK CONSTRAINT [FK_EL_Child_Service_Ref_Early_Childhood_Services_Offered];

ALTER TABLE [dbo].[EL_Child_Service]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Service_Ref_Early_Childhood_Services_Received] FOREIGN KEY([Ref_Early_Childhood_Services_Received_Id])
REFERENCES [dbo].[Ref_Early_Childhood_Services] ([Ref_Early_Childhood_Services_Id]);

ALTER TABLE [dbo].[EL_Child_Service] CHECK CONSTRAINT [FK_EL_Child_Service_Ref_Early_Childhood_Services_Received];

ALTER TABLE [dbo].[EL_Child_Service]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Service_Ref_EL_Service_Type] FOREIGN KEY([Ref_EL_Service_Type_Id])
REFERENCES [dbo].[Ref_EL_Service_Type] ([Ref_EL_Service_Type_Id]);

ALTER TABLE [dbo].[EL_Child_Service] CHECK CONSTRAINT [FK_EL_Child_Service_Ref_EL_Service_Type];

ALTER TABLE [dbo].[EL_Child_Services_Application]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_Services_Application_Org_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[EL_Child_Services_Application] CHECK CONSTRAINT [FK_EL_Child_Services_Application_Org_Person_Role];

ALTER TABLE [dbo].[EL_Child_Transition_Plan]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_IDEA_Individualized_Program] FOREIGN KEY([Individualized_Program_Id])
REFERENCES [dbo].[Individualized_Program] ([Individualized_Program_Id]);

ALTER TABLE [dbo].[EL_Child_Transition_Plan] CHECK CONSTRAINT [FK_EL_Child_IDEA_Individualized_Program];

ALTER TABLE [dbo].[EL_Child_Transition_Plan]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_IDEA_Person] FOREIGN KEY([Person_Id])
REFERENCES [dbo].[Person] ([Person_Id]);

ALTER TABLE [dbo].[EL_Child_Transition_Plan] CHECK CONSTRAINT [FK_EL_Child_IDEA_Person];

ALTER TABLE [dbo].[EL_Child_Transition_Plan]  WITH CHECK ADD  CONSTRAINT [FK_EL_Child_IDEA_Ref_Reason_Delay_Transition_Conf] FOREIGN KEY([Ref_Reason_Delay_Transition_Conf_Id])
REFERENCES [dbo].[Ref_Reason_Delay_Transition_Conf] ([Ref_Reason_Delay_Transition_Conf_Id]);

ALTER TABLE [dbo].[EL_Child_Transition_Plan] CHECK CONSTRAINT [FK_EL_Child_IDEA_Ref_Reason_Delay_Transition_Conf];

ALTER TABLE [dbo].[EL_Class_Section]  WITH CHECK ADD  CONSTRAINT [FK_EL_Class_Section_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[EL_Class_Section] CHECK CONSTRAINT [FK_EL_Class_Section_Organization];

ALTER TABLE [dbo].[EL_Class_Section]  WITH CHECK ADD  CONSTRAINT [FK_EL_Class_Section_Ref_Environment_Setting] FOREIGN KEY([Ref_Environment_Setting_Id])
REFERENCES [dbo].[Ref_Environment_Setting] ([Ref_Environment_Setting_Id]);

ALTER TABLE [dbo].[EL_Class_Section] CHECK CONSTRAINT [FK_EL_Class_Section_Ref_Environment_Setting];

ALTER TABLE [dbo].[EL_Class_Section]  WITH CHECK ADD  CONSTRAINT [FK_EL_Class_Section_Ref_Service_Option] FOREIGN KEY([Ref_Service_Option_Id])
REFERENCES [dbo].[Ref_Service_Option] ([Ref_Service_Option_Id]);

ALTER TABLE [dbo].[EL_Class_Section] CHECK CONSTRAINT [FK_EL_Class_Section_Ref_Service_Option];

ALTER TABLE [dbo].[EL_Class_Section_Service]  WITH CHECK ADD  CONSTRAINT [FK_EL_Class_Section_Service_EL_Class_Section] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[EL_Class_Section] ([Organization_Id]);

ALTER TABLE [dbo].[EL_Class_Section_Service] CHECK CONSTRAINT [FK_EL_Class_Section_Service_EL_Class_Section];

ALTER TABLE [dbo].[EL_Class_Section_Service]  WITH CHECK ADD  CONSTRAINT [FK_EL_Class_Section_Service_Ref_EL_Group_Size_Standard_Met] FOREIGN KEY([Ref_EL_Group_Size_Standard_Met_Id])
REFERENCES [dbo].[Ref_EL_Group_Size_Standard_Met] ([Ref_EL_Group_Size_Standard_Met_Id]);

ALTER TABLE [dbo].[EL_Class_Section_Service] CHECK CONSTRAINT [FK_EL_Class_Section_Service_Ref_EL_Group_Size_Standard_Met];

ALTER TABLE [dbo].[EL_Class_Section_Service]  WITH CHECK ADD  CONSTRAINT [FK_EL_Class_Section_Service_Ref_Frequency_Of_Service_Id] FOREIGN KEY([Ref_Frequency_Of_Service_Id])
REFERENCES [dbo].[Ref_Frequency_Of_Service] ([Ref_Frequency_Of_Service_Id]);

ALTER TABLE [dbo].[EL_Class_Section_Service] CHECK CONSTRAINT [FK_EL_Class_Section_Service_Ref_Frequency_Of_Service_Id];

ALTER TABLE [dbo].[EL_Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Ec_Program_Enrollment_Organization_Person] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[EL_Enrollment] CHECK CONSTRAINT [FK_Ec_Program_Enrollment_Organization_Person];

ALTER TABLE [dbo].[EL_Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_El_Enrollment_EL_Class_Section] FOREIGN KEY([EL_Class_Section_Id])
REFERENCES [dbo].[EL_Class_Section] ([Organization_Id]);

ALTER TABLE [dbo].[EL_Enrollment] CHECK CONSTRAINT [FK_El_Enrollment_EL_Class_Section];

ALTER TABLE [dbo].[EL_Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_EL_Enrollment_Ref_EL_Federal_Funding_Type] FOREIGN KEY([Ref_EL_Federal_Funding_Type_Id])
REFERENCES [dbo].[Ref_EL_Federal_Funding_Type] ([Ref_EL_Federal_Funding_Type_Id]);

ALTER TABLE [dbo].[EL_Enrollment] CHECK CONSTRAINT [FK_EL_Enrollment_Ref_EL_Federal_Funding_Type];

ALTER TABLE [dbo].[EL_Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_El_Enrollment_Ref_Food_Service_Participation] FOREIGN KEY([Ref_Food_Service_Participation_Id])
REFERENCES [dbo].[Ref_Food_Service_Participation] ([Ref_Food_Service_Participation_Id]);

ALTER TABLE [dbo].[EL_Enrollment] CHECK CONSTRAINT [FK_El_Enrollment_Ref_Food_Service_Participation];

ALTER TABLE [dbo].[EL_Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_El_Enrollment_Ref_IDEA_Environment_EL] FOREIGN KEY([Ref_IDEA_Environment_EL_Id])
REFERENCES [dbo].[Ref_IDEA_Environment_EL] ([Ref_IDEA_Environment_EL_Id]);

ALTER TABLE [dbo].[EL_Enrollment] CHECK CONSTRAINT [FK_El_Enrollment_Ref_IDEA_Environment_EL];

ALTER TABLE [dbo].[EL_Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_EL_Enrollment_Ref_Service_Option] FOREIGN KEY([Ref_Service_Option_Id])
REFERENCES [dbo].[Ref_Service_Option] ([Ref_Service_Option_Id]);

ALTER TABLE [dbo].[EL_Enrollment] CHECK CONSTRAINT [FK_EL_Enrollment_Ref_Service_Option];

ALTER TABLE [dbo].[EL_Enrollment_Other_Funding]  WITH CHECK ADD  CONSTRAINT [FK_EL_Enrollment_Other_Funding_Person] FOREIGN KEY([Person_Id])
REFERENCES [dbo].[Person] ([Person_Id]);

ALTER TABLE [dbo].[EL_Enrollment_Other_Funding] CHECK CONSTRAINT [FK_EL_Enrollment_Other_Funding_Person];

ALTER TABLE [dbo].[EL_Facility_Licensing]  WITH CHECK ADD  CONSTRAINT [FK_EL_Facility_Licensing_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[EL_Facility_Licensing] CHECK CONSTRAINT [FK_EL_Facility_Licensing_Organization];

ALTER TABLE [dbo].[EL_Facility_Licensing]  WITH CHECK ADD  CONSTRAINT [FK_EL_Facility_Licensing_Ref_EL_Facility_Licensing_Status] FOREIGN KEY([Ref_EL_Facility_Licensing_Status_Id])
REFERENCES [dbo].[Ref_EL_Facility_Licensing_Status] ([Ref_EL_Facility_Licensing_Status_Id]);

ALTER TABLE [dbo].[EL_Facility_Licensing] CHECK CONSTRAINT [FK_EL_Facility_Licensing_Ref_EL_Facility_Licensing_Status];

ALTER TABLE [dbo].[EL_Facility_Licensing]  WITH CHECK ADD  CONSTRAINT [FK_EL_Facility_Licensing_Ref_License_Exempt] FOREIGN KEY([Ref_License_Exempt_Id])
REFERENCES [dbo].[Ref_License_Exempt] ([Ref_License_Exempt_Id]);

ALTER TABLE [dbo].[EL_Facility_Licensing] CHECK CONSTRAINT [FK_EL_Facility_Licensing_Ref_License_Exempt];

ALTER TABLE [dbo].[EL_Organization]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[EL_Organization] CHECK CONSTRAINT [FK_EL_Organization_Organization];

ALTER TABLE [dbo].[EL_Organization]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Ref_Profit_Status] FOREIGN KEY([Ref_Profit_Status_Id])
REFERENCES [dbo].[Ref_Profit_Status] ([Ref_Profit_Status_Id]);

ALTER TABLE [dbo].[EL_Organization] CHECK CONSTRAINT [FK_EL_Organization_Ref_Profit_Status];

ALTER TABLE [dbo].[EL_Organization_Availability]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Availability_Organization1] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[EL_Organization_Availability] CHECK CONSTRAINT [FK_EL_Organization_Availability_Organization1];

ALTER TABLE [dbo].[EL_Organization_Availability]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Availability_Ref_Environment_Setting] FOREIGN KEY([Ref_Environment_Setting_Id])
REFERENCES [dbo].[Ref_Environment_Setting] ([Ref_Environment_Setting_Id]);

ALTER TABLE [dbo].[EL_Organization_Availability] CHECK CONSTRAINT [FK_EL_Organization_Availability_Ref_Environment_Setting];

ALTER TABLE [dbo].[EL_Organization_Availability]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Availability_Ref_Population_Served] FOREIGN KEY([Ref_Population_Served_Id])
REFERENCES [dbo].[Ref_Population_Served] ([Ref_Population_Served_Id]);

ALTER TABLE [dbo].[EL_Organization_Availability] CHECK CONSTRAINT [FK_EL_Organization_Availability_Ref_Population_Served];

ALTER TABLE [dbo].[EL_Organization_Availability]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Availability_Ref_Service_Option] FOREIGN KEY([Ref_Service_Option_Id])
REFERENCES [dbo].[Ref_Service_Option] ([Ref_Service_Option_Id]);

ALTER TABLE [dbo].[EL_Organization_Availability] CHECK CONSTRAINT [FK_EL_Organization_Availability_Ref_Service_Option];

ALTER TABLE [dbo].[EL_Organization_Funds]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Funds_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[EL_Organization_Funds] CHECK CONSTRAINT [FK_EL_Organization_Funds_Organization];

ALTER TABLE [dbo].[EL_Organization_Funds]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Funds_Ref_Billable_Basis_Type] FOREIGN KEY([Ref_Billable_Basis_Type_Id])
REFERENCES [dbo].[Ref_Billable_Basis_Type] ([Ref_Billable_Basis_Type_Id]);

ALTER TABLE [dbo].[EL_Organization_Funds] CHECK CONSTRAINT [FK_EL_Organization_Funds_Ref_Billable_Basis_Type];

ALTER TABLE [dbo].[EL_Organization_Funds]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Funds_Ref_EL_Federal_Funding_Type] FOREIGN KEY([Ref_EL_Federal_Funding_Type_Id])
REFERENCES [dbo].[Ref_EL_Federal_Funding_Type] ([Ref_EL_Federal_Funding_Type_Id]);

ALTER TABLE [dbo].[EL_Organization_Funds] CHECK CONSTRAINT [FK_EL_Organization_Funds_Ref_EL_Federal_Funding_Type];

ALTER TABLE [dbo].[EL_Organization_Funds]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Funds_Ref_EL_Local_Revenue_Source] FOREIGN KEY([Ref_EL_Local_Revenue_Source_Id])
REFERENCES [dbo].[Ref_EL_Local_Revenue_Source] ([Ref_EL_Local_Revenue_Source_Id]);

ALTER TABLE [dbo].[EL_Organization_Funds] CHECK CONSTRAINT [FK_EL_Organization_Funds_Ref_EL_Local_Revenue_Source];

ALTER TABLE [dbo].[EL_Organization_Funds]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Funds_Ref_EL_Other_Federal_Funding_Sources] FOREIGN KEY([Ref_EL_Other_Federal_Funding_Sources_Id])
REFERENCES [dbo].[Ref_EL_Other_Federal_Funding_Sources] ([Ref_EL_Other_Federal_Funding_Sources_Id]);

ALTER TABLE [dbo].[EL_Organization_Funds] CHECK CONSTRAINT [FK_EL_Organization_Funds_Ref_EL_Other_Federal_Funding_Sources];

ALTER TABLE [dbo].[EL_Organization_Funds]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Funds_Ref_EL_State_Revenue_Source] FOREIGN KEY([Ref_EL_State_Revenue_Source_Id])
REFERENCES [dbo].[Ref_EL_State_Revenue_Source] ([Ref_EL_State_Revenue_Source_Id]);

ALTER TABLE [dbo].[EL_Organization_Funds] CHECK CONSTRAINT [FK_EL_Organization_Funds_Ref_EL_State_Revenue_Source];

ALTER TABLE [dbo].[EL_Organization_Funds]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Funds_Ref_Reimbursement_Type] FOREIGN KEY([Ref_Reimbursement_Type_Id])
REFERENCES [dbo].[Ref_Reimbursement_Type] ([Ref_Reimbursement_Type_Id]);

ALTER TABLE [dbo].[EL_Organization_Funds] CHECK CONSTRAINT [FK_EL_Organization_Funds_Ref_Reimbursement_Type];

ALTER TABLE [dbo].[EL_Organization_Monitoring]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Monitoring_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[EL_Organization_Monitoring] CHECK CONSTRAINT [FK_EL_Organization_Monitoring_Organization];

ALTER TABLE [dbo].[EL_Organization_Monitoring]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Monitoring_Ref_Organization_Monitoring_Notifications] FOREIGN KEY([Ref_Organization_Monitoring_Notifications_Id])
REFERENCES [dbo].[Ref_Organization_Monitoring_Notifications] ([Ref_Organization_Monitoring_Notifications_Id]);

ALTER TABLE [dbo].[EL_Organization_Monitoring] CHECK CONSTRAINT [FK_EL_Organization_Monitoring_Ref_Organization_Monitoring_Notifications];

ALTER TABLE [dbo].[EL_Organization_Monitoring]  WITH CHECK ADD  CONSTRAINT [FK_EL_Organization_Monitoring_Ref_Purpose_Of_Monitoring_Visit] FOREIGN KEY([Ref_Purpose_Of_Monitoring_Visit_Id])
REFERENCES [dbo].[Ref_Purpose_Of_Monitoring_Visit] ([Ref_Purpose_Of_Monitoring_Visit_Id]);

ALTER TABLE [dbo].[EL_Organization_Monitoring] CHECK CONSTRAINT [FK_EL_Organization_Monitoring_Ref_Purpose_Of_Monitoring_Visit];

ALTER TABLE [dbo].[EL_Program_Licensing]  WITH CHECK ADD  CONSTRAINT [FK_EL_Program_Licensing_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[EL_Program_Licensing] CHECK CONSTRAINT [FK_EL_Program_Licensing_Organization];

ALTER TABLE [dbo].[EL_Program_Licensing]  WITH CHECK ADD  CONSTRAINT [FK_EL_Program_Licensing_Ref_EL_Program_License_Status] FOREIGN KEY([Ref_EL_Program_License_Status_Id])
REFERENCES [dbo].[Ref_EL_Program_License_Status] ([Ref_EL_Program_License_Status_Id]);

ALTER TABLE [dbo].[EL_Program_Licensing] CHECK CONSTRAINT [FK_EL_Program_Licensing_Ref_EL_Program_License_Status];

ALTER TABLE [dbo].[EL_Program_Licensing]  WITH CHECK ADD  CONSTRAINT [FK_EL_Program_Licensing_Ref_License_Exempt] FOREIGN KEY([Ref_License_Exempt_Id])
REFERENCES [dbo].[Ref_License_Exempt] ([Ref_License_Exempt_Id]);

ALTER TABLE [dbo].[EL_Program_Licensing] CHECK CONSTRAINT [FK_EL_Program_Licensing_Ref_License_Exempt];

ALTER TABLE [dbo].[EL_Quality_Initiative]  WITH CHECK ADD  CONSTRAINT [FK_EL_Quality_Initiative_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[EL_Quality_Initiative] CHECK CONSTRAINT [FK_EL_Quality_Initiative_Organization];

ALTER TABLE [dbo].[EL_Quality_Rating_Improvement]  WITH CHECK ADD  CONSTRAINT [FK_EL_Quality_Rating_Improvement_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[EL_Quality_Rating_Improvement] CHECK CONSTRAINT [FK_EL_Quality_Rating_Improvement_Organization];

ALTER TABLE [dbo].[EL_Quality_Rating_Improvement]  WITH CHECK ADD  CONSTRAINT [FK_EL_Quality_Rating_Improvement_Ref_QRIS_Participation] FOREIGN KEY([Ref_Qris_Participation_Id])
REFERENCES [dbo].[Ref_Qris_Participation] ([Ref_Qris_Participation_Id]);

ALTER TABLE [dbo].[EL_Quality_Rating_Improvement] CHECK CONSTRAINT [FK_EL_Quality_Rating_Improvement_Ref_QRIS_Participation];

ALTER TABLE [dbo].[EL_Service_Partner]  WITH CHECK ADD  CONSTRAINT [FK_EL_Service_Partner_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[EL_Service_Partner] CHECK CONSTRAINT [FK_EL_Service_Partner_Organization];

ALTER TABLE [dbo].[EL_Staff]  WITH CHECK ADD  CONSTRAINT [FK_EL_Staff_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[EL_Staff] CHECK CONSTRAINT [FK_EL_Staff_Organization_Person_Role];

ALTER TABLE [dbo].[EL_Staff]  WITH CHECK ADD  CONSTRAINT [FK_EL_Staff_Ref_Child_Dev_Associate_Type] FOREIGN KEY([Ref_Child_Development_Associate_Type_Id])
REFERENCES [dbo].[Ref_Child_Development_Associate_Type] ([Ref_Child_Development_Associate_Type_Id]);

ALTER TABLE [dbo].[EL_Staff] CHECK CONSTRAINT [FK_EL_Staff_Ref_Child_Dev_Associate_Type];

ALTER TABLE [dbo].[EL_Staff_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_EL_Staff_Assignment_Org_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[EL_Staff_Assignment] CHECK CONSTRAINT [FK_EL_Staff_Assignment_Org_Person_Role];

ALTER TABLE [dbo].[EL_Staff_Education]  WITH CHECK ADD  CONSTRAINT [FK_EL_Staff_Ref_EL_Level_Of_Specialization] FOREIGN KEY([Ref_EL_Level_Of_Specialization_Id])
REFERENCES [dbo].[Ref_EL_Level_Of_Specialization] ([Ref_EL_Level_Of_Specialization_Id]);

ALTER TABLE [dbo].[EL_Staff_Education] CHECK CONSTRAINT [FK_EL_Staff_Ref_EL_Level_Of_Specialization];

ALTER TABLE [dbo].[EL_Staff_Education]  WITH CHECK ADD  CONSTRAINT [FK_EL_Staff_Education_EL_Staff] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[EL_Staff] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[EL_Staff_Education] CHECK CONSTRAINT [FK_EL_Staff_Education_EL_Staff];

ALTER TABLE [dbo].[EL_Staff_Education]  WITH CHECK ADD  CONSTRAINT [FK_EL_Staff_Education_Ref_ELPD_Topic_Area] FOREIGN KEY([Ref_EL_Professional_Development_Topic_Area_Id])
REFERENCES [dbo].[Ref_EL_Professional_Development_Topic_Area] ([Ref_EL_Professional_Development_Topic_Area_Id]);

ALTER TABLE [dbo].[EL_Staff_Education] CHECK CONSTRAINT [FK_EL_Staff_Education_Ref_ELPD_Topic_Area];

ALTER TABLE [dbo].[EL_Staff_Employment]  WITH CHECK ADD  CONSTRAINT [FK_EL_Staff_Employment_Ref_EL_Education_Staff_Classification] FOREIGN KEY([Ref_EL_Education_Staff_Classification_Id])
REFERENCES [dbo].[Ref_EL_Education_Staff_Classification] ([Ref_EL_Education_Staff_Classification_Id]);

ALTER TABLE [dbo].[EL_Staff_Employment] CHECK CONSTRAINT [FK_EL_Staff_Employment_Ref_EL_Education_Staff_Classification];

ALTER TABLE [dbo].[EL_Staff_Employment]  WITH CHECK ADD  CONSTRAINT [FK_EL_Staff_Employment_Ref_EL_Employment_Separation_Reason] FOREIGN KEY([Ref_EL_Employment_Separation_Reason_Id])
REFERENCES [dbo].[Ref_EL_Employment_Separation_Reason] ([Ref_EL_Employment_Separation_Reason_Id]);

ALTER TABLE [dbo].[EL_Staff_Employment] CHECK CONSTRAINT [FK_EL_Staff_Employment_Ref_EL_Employment_Separation_Reason];

ALTER TABLE [dbo].[EL_Staff_Employment]  WITH CHECK ADD  CONSTRAINT [FK_EL_Staff_Employment_Ref_EL_Service_Professional_Staff_Classification] FOREIGN KEY([Ref_EL_Service_Professional_Staff_Classification_Id])
REFERENCES [dbo].[Ref_EL_Service_Professional_Staff_Classification] ([Ref_EL_Service_Professional_Staff_Classification_Id]);

ALTER TABLE [dbo].[EL_Staff_Employment] CHECK CONSTRAINT [FK_EL_Staff_Employment_Ref_EL_Service_Professional_Staff_Classification];

ALTER TABLE [dbo].[EL_Staff_Employment]  WITH CHECK ADD  CONSTRAINT [FK_EL_Staff_Employment_Ref_Employment_Status] FOREIGN KEY([Ref_Employment_Status_Id])
REFERENCES [dbo].[Ref_Employment_Status] ([Ref_Employment_Status_Id]);

ALTER TABLE [dbo].[EL_Staff_Employment] CHECK CONSTRAINT [FK_EL_Staff_Employment_Ref_Employment_Status];

ALTER TABLE [dbo].[EL_Staff_Employment]  WITH CHECK ADD  CONSTRAINT [FK_EL_Staff_Employment_Ref_Wage_Collection_Method] FOREIGN KEY([Ref_Wage_Collection_Method_Id])
REFERENCES [dbo].[Ref_Wage_Collection_Method] ([Ref_Wage_Collection_Method_Id]);

ALTER TABLE [dbo].[EL_Staff_Employment] CHECK CONSTRAINT [FK_EL_Staff_Employment_Ref_Wage_Collection_Method];

ALTER TABLE [dbo].[EL_Staff_Employment]  WITH CHECK ADD  CONSTRAINT [FK_EL_Staff_Employment_Ref_Wage_Verification] FOREIGN KEY([Ref_Wage_Verification_Id])
REFERENCES [dbo].[Ref_Wage_Verification] ([Ref_Wage_Verification_Id]);

ALTER TABLE [dbo].[EL_Staff_Employment] CHECK CONSTRAINT [FK_EL_Staff_Employment_Ref_Wage_Verification];

ALTER TABLE [dbo].[EL_Staff_Employment]  WITH CHECK ADD  CONSTRAINT [FK_EL_Staff_Employment_Staff_Employment] FOREIGN KEY([Staff_Employment_Id])
REFERENCES [dbo].[Staff_Employment] ([Staff_Employment_Id]);

ALTER TABLE [dbo].[EL_Staff_Employment] CHECK CONSTRAINT [FK_EL_Staff_Employment_Staff_Employment];

ALTER TABLE [dbo].[Facility]  WITH CHECK ADD  CONSTRAINT [FK_Facility_Location] FOREIGN KEY([Location_Id])
REFERENCES [dbo].[Location] ([Location_Id]);

ALTER TABLE [dbo].[Facility] CHECK CONSTRAINT [FK_Facility_Location];

ALTER TABLE [dbo].[Facility]  WITH CHECK ADD  CONSTRAINT [FK_Facility_Ref_Building_Use_Type] FOREIGN KEY([Ref_Building_Use_Type_Id])
REFERENCES [dbo].[Ref_Building_Use_Type] ([Ref_Building_Use_Type_Id]);

ALTER TABLE [dbo].[Facility] CHECK CONSTRAINT [FK_Facility_Ref_Building_Use_Type];

ALTER TABLE [dbo].[Facility]  WITH CHECK ADD  CONSTRAINT [FK_Facility_Ref_Space_Use_Type] FOREIGN KEY([Ref_Space_Use_Type_Id])
REFERENCES [dbo].[Ref_Space_Use_Type] ([Ref_Space_Use_Type_Id]);

ALTER TABLE [dbo].[Facility] CHECK CONSTRAINT [FK_Facility_Ref_Space_Use_Type];

ALTER TABLE [dbo].[Financial_Account]  WITH CHECK ADD  CONSTRAINT [FK_Financial_Account_Ref_Financial_Account_Category] FOREIGN KEY([Ref_Financial_Account_Category_Id])
REFERENCES [dbo].[Ref_Financial_Account_Category] ([Ref_Financial_Account_Category_Id]);

ALTER TABLE [dbo].[Financial_Account] CHECK CONSTRAINT [FK_Financial_Account_Ref_Financial_Account_Category];

ALTER TABLE [dbo].[Financial_Account]  WITH CHECK ADD  CONSTRAINT [FK_Financial_Account_Ref_Financial_Account_Fund_Classification] FOREIGN KEY([Ref_Financial_Account_Fund_Classification_Id])
REFERENCES [dbo].[Ref_Financial_Account_Fund_Classification] ([Ref_Financial_Account_Fund_Classification_Id]);

ALTER TABLE [dbo].[Financial_Account] CHECK CONSTRAINT [FK_Financial_Account_Ref_Financial_Account_Fund_Classification];

ALTER TABLE [dbo].[Financial_Account]  WITH CHECK ADD  CONSTRAINT [FK_Financial_Account_Ref_Financial_Account_Program_Code] FOREIGN KEY([Ref_Financial_Account_Program_Code_Id])
REFERENCES [dbo].[Ref_Financial_Account_Program_Code] ([Ref_Financial_Account_Program_Code_Id]);

ALTER TABLE [dbo].[Financial_Account] CHECK CONSTRAINT [FK_Financial_Account_Ref_Financial_Account_Program_Code];

ALTER TABLE [dbo].[Financial_Account]  WITH CHECK ADD  CONSTRAINT [FK_Financial_Account_Ref_Financial_Account_Revenue_Code] FOREIGN KEY([Ref_Financial_Account_Revenue_Code_Id])
REFERENCES [dbo].[Ref_Financial_Account_Revenue_Code] ([Ref_Financial_Account_Revenue_Code_Id]);

ALTER TABLE [dbo].[Financial_Account] CHECK CONSTRAINT [FK_Financial_Account_Ref_Financial_Account_Revenue_Code];

ALTER TABLE [dbo].[Financial_Account]  WITH CHECK ADD  CONSTRAINT [FK_Financial_Account_Ref_Financial_Balance_Sheet_Account_Code] FOREIGN KEY([Ref_Financial_Account_Balance_Sheet_Code_Id])
REFERENCES [dbo].[Ref_Financial_Account_Balance_Sheet_Code] ([Ref_Financial_Balance_Sheet_Account_Code_Id]);

ALTER TABLE [dbo].[Financial_Account] CHECK CONSTRAINT [FK_Financial_Account_Ref_Financial_Balance_Sheet_Account_Code];

ALTER TABLE [dbo].[Financial_Account]  WITH CHECK ADD  CONSTRAINT [FK_Financial_Account_Ref_Financial_Expenditure_Function_Code] FOREIGN KEY([Ref_Financial_Expenditure_Function_Code_Id])
REFERENCES [dbo].[Ref_Financial_Expenditure_Function_Code] ([Ref_Financial_Expenditure_Function_Code_Id]);

ALTER TABLE [dbo].[Financial_Account] CHECK CONSTRAINT [FK_Financial_Account_Ref_Financial_Expenditure_Function_Code];

ALTER TABLE [dbo].[Financial_Account]  WITH CHECK ADD  CONSTRAINT [FK_Financial_Account_Ref_Financial_Expenditure_Level_Of_Instruction_Code] FOREIGN KEY([Ref_Financial_Expenditure_Level_Of_Instruction_Code_Id])
REFERENCES [dbo].[Ref_Financial_Expenditure_Level_Of_Instruction_Code] ([Ref_Financial_Expenditure_Level_Of_Instruction_Code_Id]);

ALTER TABLE [dbo].[Financial_Account] CHECK CONSTRAINT [FK_Financial_Account_Ref_Financial_Expenditure_Level_Of_Instruction_Code];

ALTER TABLE [dbo].[Financial_Account]  WITH CHECK ADD  CONSTRAINT [FK_Financial_Account_Ref_Financial_Expenditure_Object_Code] FOREIGN KEY([Ref_Financial_Expenditure_Object_Code_Id])
REFERENCES [dbo].[Ref_Financial_Expenditure_Object_Code] ([Ref_Financial_Expenditure_Object_Code_Id]);

ALTER TABLE [dbo].[Financial_Account] CHECK CONSTRAINT [FK_Financial_Account_Ref_Financial_Expenditure_Object_Code];

ALTER TABLE [dbo].[Financial_Aid_Application]  WITH CHECK ADD  CONSTRAINT [FK_Financial_Aid_Application_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Financial_Aid_Application] CHECK CONSTRAINT [FK_Financial_Aid_Application_Organization_Person_Role];

ALTER TABLE [dbo].[Financial_Aid_Application]  WITH CHECK ADD  CONSTRAINT [FK_Financial_Aid_Application_Ref_Financial_Aid_Appl_Type] FOREIGN KEY([Ref_Financial_Aid_Application_Type_Id])
REFERENCES [dbo].[Ref_Financial_Aid_Application_Type] ([Ref_Financial_Aid_Application_Type_Id]);

ALTER TABLE [dbo].[Financial_Aid_Application] CHECK CONSTRAINT [FK_Financial_Aid_Application_Ref_Financial_Aid_Appl_Type];

ALTER TABLE [dbo].[Financial_Aid_Award]  WITH CHECK ADD  CONSTRAINT [FK_Financial_Aid_Award_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Financial_Aid_Award] CHECK CONSTRAINT [FK_Financial_Aid_Award_Organization_Person_Role];

ALTER TABLE [dbo].[Financial_Aid_Award]  WITH CHECK ADD  CONSTRAINT [FK_Financial_Aid_Award_Ref_Financial_Aid_Award_Status] FOREIGN KEY([Ref_Financial_Aid_Status_Id])
REFERENCES [dbo].[Ref_Financial_Aid_Award_Status] ([Ref_Financial_Aid_Status_Id]);

ALTER TABLE [dbo].[Financial_Aid_Award] CHECK CONSTRAINT [FK_Financial_Aid_Award_Ref_Financial_Aid_Award_Status];

ALTER TABLE [dbo].[Financial_Aid_Award]  WITH CHECK ADD  CONSTRAINT [FK_Financial_Aid_Award_Ref_Financial_Aid_Award_Type] FOREIGN KEY([Ref_Financial_Aid_Award_Type_Id])
REFERENCES [dbo].[Ref_Financial_Aid_Award_Type] ([Ref_Financial_Aid_Award_Type_Id]);

ALTER TABLE [dbo].[Financial_Aid_Award] CHECK CONSTRAINT [FK_Financial_Aid_Award_Ref_Financial_Aid_Award_Type];

ALTER TABLE [dbo].[Goal]  WITH CHECK ADD  CONSTRAINT [FK_Goal_Competency_Set] FOREIGN KEY([Competency_Set_Id])
REFERENCES [dbo].[Competency_Set] ([Competency_Set_Id]);

ALTER TABLE [dbo].[Goal] CHECK CONSTRAINT [FK_Goal_Competency_Set];

ALTER TABLE [dbo].[Goal]  WITH CHECK ADD  CONSTRAINT [FK_Goal_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Goal] CHECK CONSTRAINT [FK_Goal_Organization_Person_Role];

ALTER TABLE [dbo].[Goal_Measurement]  WITH CHECK ADD  CONSTRAINT [FK_Goal_Measurement_Goal] FOREIGN KEY([Goal_Id])
REFERENCES [dbo].[Goal] ([Goal_Id]);

ALTER TABLE [dbo].[Goal_Measurement] CHECK CONSTRAINT [FK_Goal_Measurement_Goal];

ALTER TABLE [dbo].[Goal_Measurement]  WITH CHECK ADD  CONSTRAINT [FK_Goal_Measurement_Ref_Goal_Measurement_Type] FOREIGN KEY([Ref_Goal_Measurement_Type_Id])
REFERENCES [dbo].[Ref_Goal_Measurement_Type] ([Ref_Goal_Measurement_Type_Id]);

ALTER TABLE [dbo].[Goal_Measurement] CHECK CONSTRAINT [FK_Goal_Measurement_Ref_Goal_Measurement_Type];

ALTER TABLE [dbo].[Goal_Measurement_Criterion]  WITH CHECK ADD  CONSTRAINT [FK_Goal_Measurement_Criterion_Goal_Measurement] FOREIGN KEY([Goal_Measurement_Id])
REFERENCES [dbo].[Goal_Measurement] ([Goal_Measurement_Id]);

ALTER TABLE [dbo].[Goal_Measurement_Criterion] CHECK CONSTRAINT [FK_Goal_Measurement_Criterion_Goal_Measurement];

ALTER TABLE [dbo].[Goal_Performance]  WITH CHECK ADD  CONSTRAINT [FK_Goal_Performance_Goal] FOREIGN KEY([Goal_Id])
REFERENCES [dbo].[Goal] ([Goal_Id]);

ALTER TABLE [dbo].[Goal_Performance] CHECK CONSTRAINT [FK_Goal_Performance_Goal];

ALTER TABLE [dbo].[Goal_Performance]  WITH CHECK ADD  CONSTRAINT [FK_Goal_Performance_Ref_Goal_Status_Type] FOREIGN KEY([Ref_Goal_Status_Type_Id])
REFERENCES [dbo].[Ref_Goal_Status_Type] ([Ref_Goal_Status_Type_Id]);

ALTER TABLE [dbo].[Goal_Performance] CHECK CONSTRAINT [FK_Goal_Performance_Ref_Goal_Status_Type];

ALTER TABLE [dbo].[IDEA_Eligibility_Evaluation_Category]  WITH CHECK ADD  CONSTRAINT [FK_IDEA_Eligibility_Evaluation_Category_Eligibility_Evaluation] FOREIGN KEY([Eligibility_Evaluation_Id])
REFERENCES [dbo].[Eligibility_Evaluation] ([Eligibility_Evaluation_Id]);

ALTER TABLE [dbo].[IDEA_Eligibility_Evaluation_Category] CHECK CONSTRAINT [FK_IDEA_Eligibility_Evaluation_Category_Eligibility_Evaluation];

ALTER TABLE [dbo].[IDEA_Eligibility_Evaluation_Category]  WITH CHECK ADD  CONSTRAINT [FK_IDEA_Eligibility_Evaluation_Category_Ref_IDEA_Eligibility_Evaluation_Category] FOREIGN KEY([Ref_IDEA_Eligibility_Evaluation_Category_Id])
REFERENCES [dbo].[Ref_IDEA_Eligibility_Evaluation_Category] ([Ref_IDEA_Eligibility_Evaluation_Category_Id]);

ALTER TABLE [dbo].[IDEA_Eligibility_Evaluation_Category] CHECK CONSTRAINT [FK_IDEA_Eligibility_Evaluation_Category_Ref_IDEA_Eligibility_Evaluation_Category];

ALTER TABLE [dbo].[IEP_Authorization]  WITH CHECK ADD  CONSTRAINT [FK_IEP_Authorization_Authorization_Document] FOREIGN KEY([Authorization_Document_Id])
REFERENCES [dbo].[Authorization_Document] ([Authorization_Document_Id]);

ALTER TABLE [dbo].[IEP_Authorization] CHECK CONSTRAINT [FK_IEP_Authorization_Authorization_Document];

ALTER TABLE [dbo].[IEP_Authorization]  WITH CHECK ADD  CONSTRAINT [FK_IEP_Authorization_Individualized_Program] FOREIGN KEY([Individualized_Program_Id])
REFERENCES [dbo].[Individualized_Program] ([Individualized_Program_Id]);

ALTER TABLE [dbo].[IEP_Authorization] CHECK CONSTRAINT [FK_IEP_Authorization_Individualized_Program];

ALTER TABLE [dbo].[IEP_Authorization]  WITH CHECK ADD  CONSTRAINT [FK_IEP_Authorization_Ref_IEP_Authorization_Document_Type] FOREIGN KEY([Ref_IEP_Authorization_Document_Type_Id])
REFERENCES [dbo].[Ref_IEP_Authorization_Document_Type] ([Ref_IEP_Authorization_Document_Type_Id]);

ALTER TABLE [dbo].[IEP_Authorization] CHECK CONSTRAINT [FK_IEP_Authorization_Ref_IEP_Authorization_Document_Type];

ALTER TABLE [dbo].[IEP_Authorization_Rejected]  WITH CHECK ADD  CONSTRAINT [FK_IEP_Authorization_Rejected_IEP_Authorization] FOREIGN KEY([IEP_Authorization_Id])
REFERENCES [dbo].[IEP_Authorization] ([IEP_Authorization_Id]);

ALTER TABLE [dbo].[IEP_Authorization_Rejected] CHECK CONSTRAINT [FK_IEP_Authorization_Rejected_IEP_Authorization];

ALTER TABLE [dbo].[IEP_Present_Level]  WITH CHECK ADD  CONSTRAINT [FK_IEP_Present_Level_Individualized_Program] FOREIGN KEY([Individualized_Program_Id])
REFERENCES [dbo].[Individualized_Program] ([Individualized_Program_Id]);

ALTER TABLE [dbo].[IEP_Present_Level] CHECK CONSTRAINT [FK_IEP_Present_Level_Individualized_Program];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Organization_Person] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_Organization_Person];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Person] FOREIGN KEY([Incident_Reporter_Id])
REFERENCES [dbo].[Person] ([Person_Id]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_Person];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Ref_Firearm_Type] FOREIGN KEY([Ref_Firearm_Type_Id])
REFERENCES [dbo].[Ref_Firearm_Type] ([Ref_Firearm_Type_Id]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_Ref_Firearm_Type];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Ref_Incident_Injury_Type] FOREIGN KEY([Ref_Incident_Injury_Type_Id])
REFERENCES [dbo].[Ref_Incident_Injury_Type] ([Ref_Incident_Injury_Type_Id]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_Ref_Incident_Injury_Type];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Ref_Incident_Location] FOREIGN KEY([Ref_Incident_Location_Id])
REFERENCES [dbo].[Ref_Incident_Location] ([Ref_Incident_Location_Id]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_Ref_Incident_Location];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Ref_Incident_Multiple_Offense_Type] FOREIGN KEY([Ref_Incident_Multiple_Offense_Type_Id])
REFERENCES [dbo].[Ref_Incident_Multiple_Offense_Type] ([Ref_Incident_Multiple_Offense_Type_Id]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_Ref_Incident_Multiple_Offense_Type];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Ref_Incident_Perpetrator_Injury_Type] FOREIGN KEY([Ref_Incident_Perpetrator_Injury_Type_Id])
REFERENCES [dbo].[Ref_Incident_Perpetrator_Injury_Type] ([Ref_Incident_Perpetrator_Injury_Type_Id]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_Ref_Incident_Perpetrator_Injury_Type];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Ref_Incident_Reporter_Type] FOREIGN KEY([Ref_Incident_Reporter_Type_Id])
REFERENCES [dbo].[Ref_Incident_Reporter_Type] ([Ref_Incident_Reporter_Type_Id]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_Ref_Incident_Reporter_Type];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Ref_Incident_Time_Description_Code] FOREIGN KEY([Ref_Incident_Time_Description_Code_Id])
REFERENCES [dbo].[Ref_Incident_Time_Description_Code] ([Ref_Incident_Time_Description_Code_Id]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_Ref_Incident_Time_Description_Code];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Ref_Ref_Incident_Behavior] FOREIGN KEY([Ref_Incident_Behavior_Id])
REFERENCES [dbo].[Ref_Incident_Behavior] ([Ref_Incident_Behavior_Id]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_Ref_Ref_Incident_Behavior];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Ref_Ref_Incident_Behavior_Secondary] FOREIGN KEY([Ref_Incident_Behavior_Secondary_Id])
REFERENCES [dbo].[Ref_Incident_Behavior_Secondary] ([Ref_Incident_Behavior_Secondary_Id]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_Ref_Ref_Incident_Behavior_Secondary];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Ref_Weapon_Type] FOREIGN KEY([Ref_Weapon_Type_Id])
REFERENCES [dbo].[Ref_Weapon_Type] ([Ref_Weapon_Type_Id]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_Ref_Weapon_Type];

ALTER TABLE [dbo].[Incident_Person]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Person_Incident] FOREIGN KEY([Incident_Id])
REFERENCES [dbo].[Incident] ([Incident_Id]);

ALTER TABLE [dbo].[Incident_Person] CHECK CONSTRAINT [FK_Incident_Person_Incident];

ALTER TABLE [dbo].[Incident_Person]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Person_Person] FOREIGN KEY([Person_Id])
REFERENCES [dbo].[Person] ([Person_Id]);

ALTER TABLE [dbo].[Incident_Person] CHECK CONSTRAINT [FK_Incident_Person_Person];

ALTER TABLE [dbo].[Incident_Person]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Person_Ref_Incident_Person_Role_Type] FOREIGN KEY([Ref_Incident_Person_Role_Type_Id])
REFERENCES [dbo].[Ref_Incident_Person_Role_Type] ([Ref_Incident_Person_Role_Type_Id]);

ALTER TABLE [dbo].[Incident_Person] CHECK CONSTRAINT [FK_Incident_Person_Ref_Incident_Person_Role_Type];

ALTER TABLE [dbo].[Incident_Person]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Person_Ref_Incident_Person_Type] FOREIGN KEY([Ref_Incident_Person_Type_Id])
REFERENCES [dbo].[Ref_Incident_Person_Type] ([Ref_Incident_Person_Type_Id]);

ALTER TABLE [dbo].[Incident_Person] CHECK CONSTRAINT [FK_Incident_Person_Ref_Incident_Person_Type];

ALTER TABLE [dbo].[Individualized_Program]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Individualized_Program] CHECK CONSTRAINT [FK_Individualized_Program_Organization_Person_Role];

ALTER TABLE [dbo].[Individualized_Program]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Ref_Individualized_Program_Type] FOREIGN KEY([Ref_Individualized_Program_Type_Id])
REFERENCES [dbo].[Ref_Individualized_Program_Type] ([Ref_Individualized_Program_Type_Id]);

ALTER TABLE [dbo].[Individualized_Program] CHECK CONSTRAINT [FK_Individualized_Program_Ref_Individualized_Program_Type];

ALTER TABLE [dbo].[Individualized_Program]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Ref_Indiv_Program_Date_Type] FOREIGN KEY([Ref_Individualized_Program_Date_Type])
REFERENCES [dbo].[Ref_Individualized_Program_Date_Type] ([Ref_Individualized_Program_Date_Type_Id]);

ALTER TABLE [dbo].[Individualized_Program] CHECK CONSTRAINT [FK_Individualized_Program_Ref_Indiv_Program_Date_Type];

ALTER TABLE [dbo].[Individualized_Program]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Ref_Indiv_Program_Location] FOREIGN KEY([Ref_Individualized_Program_Location_Id])
REFERENCES [dbo].[Ref_Individualized_Program_Location] ([Ref_Individualized_Program_Location_Id]);

ALTER TABLE [dbo].[Individualized_Program] CHECK CONSTRAINT [FK_Individualized_Program_Ref_Indiv_Program_Location];

ALTER TABLE [dbo].[Individualized_Program]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Ref_Indiv_Program_Transition_Type] FOREIGN KEY([Ref_Individualized_Program_Transition_Type_Id])
REFERENCES [dbo].[Ref_Individualized_Program_Transition_Type] ([Ref_Individualized_Program_Transition_Type_Id]);

ALTER TABLE [dbo].[Individualized_Program] CHECK CONSTRAINT [FK_Individualized_Program_Ref_Indiv_Program_Transition_Type];

ALTER TABLE [dbo].[Individualized_Program]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Ref_Student_Support_Service_Type] FOREIGN KEY([Ref_Student_Support_Service_Type_Id])
REFERENCES [dbo].[Ref_Student_Support_Service_Type] ([Ref_Student_Support_Service_Type_Id]);

ALTER TABLE [dbo].[Individualized_Program] CHECK CONSTRAINT [FK_Individualized_Program_Ref_Student_Support_Service_Type];

ALTER TABLE [dbo].[Individualized_Program_Accommodation]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Accommodation_Individualized_Program] FOREIGN KEY([Individualized_Program_Id])
REFERENCES [dbo].[Individualized_Program] ([Individualized_Program_Id]);

ALTER TABLE [dbo].[Individualized_Program_Accommodation] CHECK CONSTRAINT [FK_Individualized_Program_Accommodation_Individualized_Program];

ALTER TABLE [dbo].[Individualized_Program_Accommodation]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Accommodation_Ref_Accommodation_Type] FOREIGN KEY([Ref_Accommodation_Type_Id])
REFERENCES [dbo].[Ref_Accommodation_Type] ([Ref_Accommodation_Type_Id]);

ALTER TABLE [dbo].[Individualized_Program_Accommodation] CHECK CONSTRAINT [FK_Individualized_Program_Accommodation_Ref_Accommodation_Type];

ALTER TABLE [dbo].[Individualized_Program_Accommodation_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Accommodation_Subject_Individualized_Program_Accommodation] FOREIGN KEY([Individualized_Program_Accommodation_Id])
REFERENCES [dbo].[Individualized_Program_Accommodation] ([Individualized_Program_Accommodation_Id]);

ALTER TABLE [dbo].[Individualized_Program_Accommodation_Subject] CHECK CONSTRAINT [FK_Individualized_Program_Accommodation_Subject_Individualized_Program_Accommodation];

ALTER TABLE [dbo].[Individualized_Program_Accommodation_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Accommodation_Subject_Ref_SCED_Course_Subject_Area] FOREIGN KEY([Ref_SCED_Course_Subject_Area_Id])
REFERENCES [dbo].[Ref_SCED_Course_Subject_Area] ([Ref_SCED_Course_Subject_Area_Id]);

ALTER TABLE [dbo].[Individualized_Program_Accommodation_Subject] CHECK CONSTRAINT [FK_Individualized_Program_Accommodation_Subject_Ref_SCED_Course_Subject_Area];

ALTER TABLE [dbo].[Individualized_Program_Amendment]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Amendment_Individualized_Program] FOREIGN KEY([Individualized_Program_Id])
REFERENCES [dbo].[Individualized_Program] ([Individualized_Program_Id]);

ALTER TABLE [dbo].[Individualized_Program_Amendment] CHECK CONSTRAINT [FK_Individualized_Program_Amendment_Individualized_Program];

ALTER TABLE [dbo].[Individualized_Program_Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Assessment_Assessment] FOREIGN KEY([Assessment_Id])
REFERENCES [dbo].[Assessment] ([Assessment_Id]);

ALTER TABLE [dbo].[Individualized_Program_Assessment] CHECK CONSTRAINT [FK_Individualized_Program_Assessment_Assessment];

ALTER TABLE [dbo].[Individualized_Program_Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Assessment_Individualized_Program] FOREIGN KEY([Individualized_Program_Id])
REFERENCES [dbo].[Individualized_Program] ([Individualized_Program_Id]);

ALTER TABLE [dbo].[Individualized_Program_Assessment] CHECK CONSTRAINT [FK_Individualized_Program_Assessment_Individualized_Program];

ALTER TABLE [dbo].[Individualized_Program_Assessment_Accommodation]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Assessment_Accommodation_Assessment_Accommodation] FOREIGN KEY([Assessment_Accommodation_Id])
REFERENCES [dbo].[Assessment_Accommodation] ([Assessment_Accommodation_Id]);

ALTER TABLE [dbo].[Individualized_Program_Assessment_Accommodation] CHECK CONSTRAINT [FK_Individualized_Program_Assessment_Accommodation_Assessment_Accommodation];

ALTER TABLE [dbo].[Individualized_Program_Assessment_Accommodation]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Assessment_Accommodation_Individualized_Program_Assessment] FOREIGN KEY([Individualized_Program_Assessment_Id])
REFERENCES [dbo].[Individualized_Program_Assessment] ([Individualized_Program_Assessment_Id]);

ALTER TABLE [dbo].[Individualized_Program_Assessment_Accommodation] CHECK CONSTRAINT [FK_Individualized_Program_Assessment_Accommodation_Individualized_Program_Assessment];

ALTER TABLE [dbo].[Individualized_Program_Eligibility]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Eligibility_Individualized_Program] FOREIGN KEY([Individualized_Program_Id])
REFERENCES [dbo].[Individualized_Program] ([Individualized_Program_Id]);

ALTER TABLE [dbo].[Individualized_Program_Eligibility] CHECK CONSTRAINT [FK_Individualized_Program_Eligibility_Individualized_Program];

ALTER TABLE [dbo].[Individualized_Program_Eligibility_Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Eligibility_Evaluation_Eligibility_Evaluation] FOREIGN KEY([Eligibility_Evaluation_Id])
REFERENCES [dbo].[Eligibility_Evaluation] ([Eligibility_Evaluation_Id]);

ALTER TABLE [dbo].[Individualized_Program_Eligibility_Evaluation] CHECK CONSTRAINT [FK_Individualized_Program_Eligibility_Evaluation_Eligibility_Evaluation];

ALTER TABLE [dbo].[Individualized_Program_Eligibility_Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Eligibility_Evaluation_Individualized_Program_Eligibility] FOREIGN KEY([Individualized_Program_Eligibility_Id])
REFERENCES [dbo].[Individualized_Program_Eligibility] ([Individualized_Program_Eligibility_Id]);

ALTER TABLE [dbo].[Individualized_Program_Eligibility_Evaluation] CHECK CONSTRAINT [FK_Individualized_Program_Eligibility_Evaluation_Individualized_Program_Eligibility];

ALTER TABLE [dbo].[Individualized_Program_Eligibility_Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Eligibility_Evaluation_Ref_IEP_Eligibility_Evaluation_Type] FOREIGN KEY([Ref_IEP_Eligibility_Evaluation_Type_Id])
REFERENCES [dbo].[Ref_IEP_Eligibility_Evaluation_Type] ([Ref_IEP_Eligibility_Evaluation_Type_Id]);

ALTER TABLE [dbo].[Individualized_Program_Eligibility_Evaluation] CHECK CONSTRAINT [FK_Individualized_Program_Eligibility_Evaluation_Ref_IEP_Eligibility_Evaluation_Type];

ALTER TABLE [dbo].[Individualized_Program_Goal]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Goal_Goal] FOREIGN KEY([Goal_Id])
REFERENCES [dbo].[Goal] ([Goal_Id]);

ALTER TABLE [dbo].[Individualized_Program_Goal] CHECK CONSTRAINT [FK_Individualized_Program_Goal_Goal];

ALTER TABLE [dbo].[Individualized_Program_Goal]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Goal_Individualized_Program] FOREIGN KEY([Individualized_Program_Id])
REFERENCES [dbo].[Individualized_Program] ([Individualized_Program_Id]);

ALTER TABLE [dbo].[Individualized_Program_Goal] CHECK CONSTRAINT [FK_Individualized_Program_Goal_Individualized_Program];

ALTER TABLE [dbo].[Individualized_Program_Goal]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Goal_Ref_IEP_Goal_Type] FOREIGN KEY([Ref_IEP_Goal_Type_Id])
REFERENCES [dbo].[Ref_IEP_Goal_Type] ([Ref_IEP_Goal_Type_Id]);

ALTER TABLE [dbo].[Individualized_Program_Goal] CHECK CONSTRAINT [FK_Individualized_Program_Goal_Ref_IEP_Goal_Type];

ALTER TABLE [dbo].[Individualized_Program_Meeting]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Meeting_Individualized_Program] FOREIGN KEY([Individualized_Program_Id])
REFERENCES [dbo].[Individualized_Program] ([Individualized_Program_Id]);

ALTER TABLE [dbo].[Individualized_Program_Meeting] CHECK CONSTRAINT [FK_Individualized_Program_Meeting_Individualized_Program];

ALTER TABLE [dbo].[Individualized_Program_Meeting_Attendee]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Meeting_Attendee_Individualized_Program_Meeting] FOREIGN KEY([Individualized_Program_Meeting_Id])
REFERENCES [dbo].[Individualized_Program_Meeting] ([Individualized_Program_Meeting_Id]);

ALTER TABLE [dbo].[Individualized_Program_Meeting_Attendee] CHECK CONSTRAINT [FK_Individualized_Program_Meeting_Attendee_Individualized_Program_Meeting];

ALTER TABLE [dbo].[Individualized_Program_Meeting_Attendee]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Meeting_Attendee_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[Individualized_Program_Meeting_Attendee] CHECK CONSTRAINT [FK_Individualized_Program_Meeting_Attendee_Organization_Person_Role];

ALTER TABLE [dbo].[Individualized_Program_Progress_Goal]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Progress_Goal_Goal_Performance] FOREIGN KEY([Goal_Performance_Id])
REFERENCES [dbo].[Goal_Performance] ([Goal_Performance_Id]);

ALTER TABLE [dbo].[Individualized_Program_Progress_Goal] CHECK CONSTRAINT [FK_Individualized_Program_Progress_Goal_Goal_Performance];

ALTER TABLE [dbo].[Individualized_Program_Progress_Goal]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Progress_Goal_Individualized_Program_Progress_Report] FOREIGN KEY([Individualized_Program_Progress_Report_Id])
REFERENCES [dbo].[Individualized_Program_Progress_Report] ([Individualized_Program_Progress_Report_Id]);

ALTER TABLE [dbo].[Individualized_Program_Progress_Goal] CHECK CONSTRAINT [FK_Individualized_Program_Progress_Goal_Individualized_Program_Progress_Report];

ALTER TABLE [dbo].[Individualized_Program_Progress_Report]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Progress_Report_Individualized_Program] FOREIGN KEY([Individualized_Program_Id])
REFERENCES [dbo].[Individualized_Program] ([Individualized_Program_Id]);

ALTER TABLE [dbo].[Individualized_Program_Progress_Report] CHECK CONSTRAINT [FK_Individualized_Program_Progress_Report_Individualized_Program];

ALTER TABLE [dbo].[Individualized_Program_Progress_Report]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Progress_Report_Individualized_Program_Progress_Report_Plan] FOREIGN KEY([Individualized_Program_Progress_Report_Plan_Id])
REFERENCES [dbo].[Individualized_Program_Progress_Report_Plan] ([Individualized_Program_Progress_Report_Plan_Id]);

ALTER TABLE [dbo].[Individualized_Program_Progress_Report] CHECK CONSTRAINT [FK_Individualized_Program_Progress_Report_Individualized_Program_Progress_Report_Plan];

ALTER TABLE [dbo].[Individualized_Program_Progress_Report]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Progress_Report_Ref_IPSP_Progress_Report_Type] FOREIGN KEY([Ref_IPSP_Progress_Report_Type_Id])
REFERENCES [dbo].[Ref_IPSP_Progress_Report_Type] ([Ref_IPSP_Progress_Report_Type_Id]);

ALTER TABLE [dbo].[Individualized_Program_Progress_Report] CHECK CONSTRAINT [FK_Individualized_Program_Progress_Report_Ref_IPSP_Progress_Report_Type];

ALTER TABLE [dbo].[Individualized_Program_Progress_Report_Plan]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Progress_Report_Plan_Individualized_Program] FOREIGN KEY([Individualized_Program_Id])
REFERENCES [dbo].[Individualized_Program] ([Individualized_Program_Id]);

ALTER TABLE [dbo].[Individualized_Program_Progress_Report_Plan] CHECK CONSTRAINT [FK_Individualized_Program_Progress_Report_Plan_Individualized_Program];

ALTER TABLE [dbo].[Individualized_Program_Progress_Report_Plan]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Progress_Report_Plan_Ref_IPSP_Progress_Report_Schedule] FOREIGN KEY([Ref_IPSP_Progress_Report_Schedule_Id])
REFERENCES [dbo].[Ref_IPSP_Progress_Report_Schedule] ([Ref_IPSP_Progress_Report_Schedule_Id]);

ALTER TABLE [dbo].[Individualized_Program_Progress_Report_Plan] CHECK CONSTRAINT [FK_Individualized_Program_Progress_Report_Plan_Ref_IPSP_Progress_Report_Schedule];

ALTER TABLE [dbo].[Individualized_Program_Progress_Report_Plan]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Progress_Report_Plan_Ref_IPSP_Progress_Report_Type] FOREIGN KEY([Ref_IPSP_Progress_Report_Type_Id])
REFERENCES [dbo].[Ref_IPSP_Progress_Report_Type] ([Ref_IPSP_Progress_Report_Type_Id]);

ALTER TABLE [dbo].[Individualized_Program_Progress_Report_Plan] CHECK CONSTRAINT [FK_Individualized_Program_Progress_Report_Plan_Ref_IPSP_Progress_Report_Type];

ALTER TABLE [dbo].[Individualized_Program_Service]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Service_Person] FOREIGN KEY([Person_Id])
REFERENCES [dbo].[Person] ([Person_Id]);

ALTER TABLE [dbo].[Individualized_Program_Service] CHECK CONSTRAINT [FK_Individualized_Program_Service_Person];

ALTER TABLE [dbo].[Individualized_Program_Service]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Service_Ref_Individualized_Program_Planned_Service_Type] FOREIGN KEY([Ref_Individualized_Program_Planned_Service_Type_Id])
REFERENCES [dbo].[Ref_Individualized_Program_Planned_Service_Type] ([Ref_Individualized_Program_Planned_Service_Type_Id]);

ALTER TABLE [dbo].[Individualized_Program_Service] CHECK CONSTRAINT [FK_Individualized_Program_Service_Ref_Individualized_Program_Planned_Service_Type];

ALTER TABLE [dbo].[Individualized_Program_Service]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Service_Ref_Method_Of_Service_Delivery] FOREIGN KEY([Ref_Method_Of_Service_Delivery_Id])
REFERENCES [dbo].[Ref_Method_Of_Service_Delivery] ([Ref_Method_Of_Service_Delivery_Id]);

ALTER TABLE [dbo].[Individualized_Program_Service] CHECK CONSTRAINT [FK_Individualized_Program_Service_Ref_Method_Of_Service_Delivery];

ALTER TABLE [dbo].[Individualized_Program_Service]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Service_Ref_Service_Frequency] FOREIGN KEY([Ref_Service_Frequency_Id])
REFERENCES [dbo].[Ref_Service_Frequency] ([Ref_Service_Frequency_Id]);

ALTER TABLE [dbo].[Individualized_Program_Service] CHECK CONSTRAINT [FK_Individualized_Program_Service_Ref_Service_Frequency];

ALTER TABLE [dbo].[Individualized_Program_Services_Received]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Services_Received_Individualized_Program] FOREIGN KEY([Individualized_Program_Id])
REFERENCES [dbo].[Individualized_Program] ([Individualized_Program_Id]);

ALTER TABLE [dbo].[Individualized_Program_Services_Received] CHECK CONSTRAINT [FK_Individualized_Program_Services_Received_Individualized_Program];

ALTER TABLE [dbo].[Individualized_Program_Services_Received]  WITH CHECK ADD  CONSTRAINT [FK_Individualized_Program_Services_Received_Services_Received] FOREIGN KEY([Services_Received_Id])
REFERENCES [dbo].[Services_Received] ([Services_Received_Id]);

ALTER TABLE [dbo].[Individualized_Program_Services_Received] CHECK CONSTRAINT [FK_Individualized_Program_Services_Received_Services_Received];

ALTER TABLE [dbo].[IPEDS_Finance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDS_Finance_Organization_Financial] FOREIGN KEY([Organization_Financial_Id])
REFERENCES [dbo].[Organization_Financial] ([Organization_Financial_Id]);

ALTER TABLE [dbo].[IPEDS_Finance] CHECK CONSTRAINT [FK_IPEDS_Finance_Organization_Financial];

ALTER TABLE [dbo].[IPEDS_Finance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSFASB_Financial_Position] FOREIGN KEY([Ref_IPEDSFASB_Financial_Position_Id])
REFERENCES [dbo].[Ref_IPEDSFASB_Financial_Position] ([Ref_IPEDSFASB_Financial_Position_Id]);

ALTER TABLE [dbo].[IPEDS_Finance] CHECK CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSFASB_Financial_Position];

ALTER TABLE [dbo].[IPEDS_Finance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSFASB_Functional_Expense] FOREIGN KEY([Ref_IPEDSFASB_Functional_Expense_Id])
REFERENCES [dbo].[Ref_IPEDSFASB_Functional_Expense] ([Ref_IPEDSFASB_Functional_Expense_Id]);

ALTER TABLE [dbo].[IPEDS_Finance] CHECK CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSFASB_Functional_Expense];

ALTER TABLE [dbo].[IPEDS_Finance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSFASB_Pell_Grant_Transactions] FOREIGN KEY([Ref_IPEDSFASB_Pell_Grant_Transactions_Id])
REFERENCES [dbo].[Ref_IPEDSFASB_Pell_Grant_Transactions] ([Ref_IPEDSFASB_Pell_Grant_Transactions_Id]);

ALTER TABLE [dbo].[IPEDS_Finance] CHECK CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSFASB_Pell_Grant_Transactions];

ALTER TABLE [dbo].[IPEDS_Finance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSFASB_Revenue] FOREIGN KEY([Ref_IPEDSFASB_Revenue_Id])
REFERENCES [dbo].[Ref_IPEDSFASB_Revenue] ([Ref_IPEDSFASB_Revenue_Id]);

ALTER TABLE [dbo].[IPEDS_Finance] CHECK CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSFASB_Revenue];

ALTER TABLE [dbo].[IPEDS_Finance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSFASB_Revenue_Restriction] FOREIGN KEY([Ref_IPEDSFASB_Revenue_Restriction_Id])
REFERENCES [dbo].[Ref_IPEDSFASB_Revenue_Restriction] ([Ref_IPEDSFASB_Revenue_Restriction_Id]);

ALTER TABLE [dbo].[IPEDS_Finance] CHECK CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSFASB_Revenue_Restriction];

ALTER TABLE [dbo].[IPEDS_Finance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSFASB_Scholarshipsand_Fellowships_Revenue] FOREIGN KEY([Ref_IPEDSFASB_Scholarshipsand_Fellowships_Revenue_Id])
REFERENCES [dbo].[Ref_IPEDSFASB_Scholarshipsand_Fellowships_Revenue] ([Ref_IPEDSFASB_Scholarshipsand_Fellowships_Revenue_Id]);

ALTER TABLE [dbo].[IPEDS_Finance] CHECK CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSFASB_Scholarshipsand_Fellowships_Revenue];

ALTER TABLE [dbo].[IPEDS_Finance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSGASB_Financial_Position] FOREIGN KEY([Ref_IPEDSGASB_Financial_Position_Id])
REFERENCES [dbo].[Ref_IPEDSGASB_Financial_Position] ([Ref_IPEDSGASB_Financial_Position_Id]);

ALTER TABLE [dbo].[IPEDS_Finance] CHECK CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSGASB_Financial_Position];

ALTER TABLE [dbo].[IPEDS_Finance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSGASB_Functional_Expense] FOREIGN KEY([Ref_IPEDSGASB_Functional_Expense_Id])
REFERENCES [dbo].[Ref_IPEDSGASB_Functional_Expense] ([Ref_IPEDSGASB_Functional_Expense_Id]);

ALTER TABLE [dbo].[IPEDS_Finance] CHECK CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSGASB_Functional_Expense];

ALTER TABLE [dbo].[IPEDS_Finance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSGASB_Revenue] FOREIGN KEY([Ref_IPEDSGASB_Revenue_Id])
REFERENCES [dbo].[Ref_IPEDSGASB_Revenue] ([Ref_IPEDSGASB_Revenue_Id]);

ALTER TABLE [dbo].[IPEDS_Finance] CHECK CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSGASB_Revenue];

ALTER TABLE [dbo].[IPEDS_Finance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSGASB_Scholarshipsand_Fellowships_Revenue] FOREIGN KEY([Ref_IPEDSGASB_Scholarshipsand_Fellowships_Revenue_Id])
REFERENCES [dbo].[Ref_IPEDSGASB_Scholarshipsand_Fellowships_Revenue] ([Ref_IPEDSGASB_Scholarshipsand_Fellowships_Revenue_Id]);

ALTER TABLE [dbo].[IPEDS_Finance] CHECK CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDSGASB_Scholarshipsand_Fellowships_Revenue];

ALTER TABLE [dbo].[IPEDS_Finance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDS_Intercollegiate_Athletics_Expenses] FOREIGN KEY([Ref_IPEDS_Intercollegiate_Athletics_Expenses_Id])
REFERENCES [dbo].[Ref_IPEDS_Intercollegiate_Athletics_Expenses] ([Ref_IPEDS_Intercollegiate_Athletics_Expenses_Id]);

ALTER TABLE [dbo].[IPEDS_Finance] CHECK CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDS_Intercollegiate_Athletics_Expenses];

ALTER TABLE [dbo].[IPEDS_Finance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDS_Natural_Expense] FOREIGN KEY([Ref_IPEDS_Natural_Expense_Id])
REFERENCES [dbo].[Ref_IPEDS_Natural_Expense] ([Ref_IPEDS_Natural_Expense_Id]);

ALTER TABLE [dbo].[IPEDS_Finance] CHECK CONSTRAINT [FK_IPEDS_Finance_Ref_IPEDS_Natural_Expense];

ALTER TABLE [dbo].[K12_Course]  WITH CHECK ADD  CONSTRAINT [FK_K12_Course_Course] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Course] ([Organization_Id]);

ALTER TABLE [dbo].[K12_Course] CHECK CONSTRAINT [FK_K12_Course_Course];

ALTER TABLE [dbo].[K12_Course]  WITH CHECK ADD  CONSTRAINT [FK_K12_Course_Ref_Additional_Credit_Type] FOREIGN KEY([Ref_Additional_Credit_Type_Id])
REFERENCES [dbo].[Ref_Additional_Credit_Type] ([Ref_Additional_Credit_Type_Id]);

ALTER TABLE [dbo].[K12_Course] CHECK CONSTRAINT [FK_K12_Course_Ref_Additional_Credit_Type];

ALTER TABLE [dbo].[K12_Course]  WITH CHECK ADD  CONSTRAINT [FK_K12_Course_Ref_Blended_Learning_Model] FOREIGN KEY([Ref_Blended_Learning_Model_Type_Id])
REFERENCES [dbo].[Ref_Blended_Learning_Model_Type] ([Ref_Blended_Learning_Model_Type_Id]);

ALTER TABLE [dbo].[K12_Course] CHECK CONSTRAINT [FK_K12_Course_Ref_Blended_Learning_Model];

ALTER TABLE [dbo].[K12_Course]  WITH CHECK ADD  CONSTRAINT [FK_K12_Course_Ref_Career_Cluster] FOREIGN KEY([Ref_Career_Cluster_Id])
REFERENCES [dbo].[Ref_Career_Cluster] ([Ref_Career_Cluster_Id]);

ALTER TABLE [dbo].[K12_Course] CHECK CONSTRAINT [FK_K12_Course_Ref_Career_Cluster];

ALTER TABLE [dbo].[K12_Course]  WITH CHECK ADD  CONSTRAINT [FK_K12_Course_Ref_Course_GPA_Applicability] FOREIGN KEY([Ref_Course_Gpa_Applicability_Id])
REFERENCES [dbo].[Ref_Course_Gpa_Applicability] ([Ref_Course_GPA_Applicability_Id]);

ALTER TABLE [dbo].[K12_Course] CHECK CONSTRAINT [FK_K12_Course_Ref_Course_GPA_Applicability];

ALTER TABLE [dbo].[K12_Course]  WITH CHECK ADD  CONSTRAINT [FK_K12_Course_Ref_Course_Interaction_Mode] FOREIGN KEY([Ref_Course_Interaction_Mode_Id])
REFERENCES [dbo].[Ref_Course_Interaction_Mode] ([Ref_Course_Interaction_Mode_Id]);

ALTER TABLE [dbo].[K12_Course] CHECK CONSTRAINT [FK_K12_Course_Ref_Course_Interaction_Mode];

ALTER TABLE [dbo].[K12_Course]  WITH CHECK ADD  CONSTRAINT [FK_K12_Course_Ref_Credit_Type_Earned] FOREIGN KEY([Ref_Credit_Type_Earned_Id])
REFERENCES [dbo].[Ref_Credit_Type_Earned] ([Ref_Credit_Type_Earned_Id]);

ALTER TABLE [dbo].[K12_Course] CHECK CONSTRAINT [FK_K12_Course_Ref_Credit_Type_Earned];

ALTER TABLE [dbo].[K12_Course]  WITH CHECK ADD  CONSTRAINT [FK_K12_Course_Ref_Curriculum_Framework_Type] FOREIGN KEY([Ref_Curriculum_Framework_Type_Id])
REFERENCES [dbo].[Ref_Curriculum_Framework_Type] ([Ref_Curriculum_Framework_Type_Id]);

ALTER TABLE [dbo].[K12_Course] CHECK CONSTRAINT [FK_K12_Course_Ref_Curriculum_Framework_Type];

ALTER TABLE [dbo].[K12_Course]  WITH CHECK ADD  CONSTRAINT [FK_K12_Course_Ref_K12_End_Of_Course_Requirement] FOREIGN KEY([Ref_K12_End_Of_Course_Requirement_Id])
REFERENCES [dbo].[Ref_K12_End_Of_Course_Requirement] ([Ref_K12_End_Of_Course_Requirement_Id]);

ALTER TABLE [dbo].[K12_Course] CHECK CONSTRAINT [FK_K12_Course_Ref_K12_End_Of_Course_Requirement];

ALTER TABLE [dbo].[K12_Course]  WITH CHECK ADD  CONSTRAINT [FK_K12_Course_Ref_SCED_Course_Level] FOREIGN KEY([Ref_SCED_Course_Level_Id])
REFERENCES [dbo].[Ref_SCED_Course_Level] ([Ref_SCED_Course_Level_Id]);

ALTER TABLE [dbo].[K12_Course] CHECK CONSTRAINT [FK_K12_Course_Ref_SCED_Course_Level];

ALTER TABLE [dbo].[K12_Course]  WITH CHECK ADD  CONSTRAINT [FK_K12_Course_Ref_SCED_Course_Subject_Area] FOREIGN KEY([Ref_SCED_Course_Subject_Area_Id])
REFERENCES [dbo].[Ref_SCED_Course_Subject_Area] ([Ref_SCED_Course_Subject_Area_Id]);

ALTER TABLE [dbo].[K12_Course] CHECK CONSTRAINT [FK_K12_Course_Ref_SCED_Course_Subject_Area];

ALTER TABLE [dbo].[K12_Course]  WITH CHECK ADD  CONSTRAINT [FK_K12_Course_Ref_Workbased_Learning_Opportunity_Type] FOREIGN KEY([Ref_Workbased_Learning_Opportunity_Type_Id])
REFERENCES [dbo].[Ref_Workbased_Learning_Opportunity_Type] ([Ref_Workbased_Learning_Opportunity_Type_Id]);

ALTER TABLE [dbo].[K12_Course] CHECK CONSTRAINT [FK_K12_Course_Ref_Workbased_Learning_Opportunity_Type];

ALTER TABLE [dbo].[K12_Lea]  WITH CHECK ADD  CONSTRAINT [FK_K12_Lea_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12_Lea] CHECK CONSTRAINT [FK_K12_Lea_Organization];

ALTER TABLE [dbo].[K12_Lea]  WITH CHECK ADD  CONSTRAINT [FK_K12_Lea_Ref_LEA_Improvement_Status] FOREIGN KEY([Ref_LEA_Improvement_Status_Id])
REFERENCES [dbo].[Ref_Lea_Improvement_Status] ([Ref_Lea_Improvement_Status_Id]);

ALTER TABLE [dbo].[K12_Lea] CHECK CONSTRAINT [FK_K12_Lea_Ref_LEA_Improvement_Status];

ALTER TABLE [dbo].[K12_Lea]  WITH CHECK ADD  CONSTRAINT [FK_K12_Lea_Ref_Lea_Type] FOREIGN KEY([Ref_Lea_Type_Id])
REFERENCES [dbo].[Ref_Lea_Type] ([Ref_Lea_Type_Id]);

ALTER TABLE [dbo].[K12_Lea] CHECK CONSTRAINT [FK_K12_Lea_Ref_Lea_Type];

ALTER TABLE [dbo].[K12_Lea]  WITH CHECK ADD  CONSTRAINT [FK_K12_Lea_Ref_Public_School_Choice_Status] FOREIGN KEY([Ref_Public_School_Choice_Status_Id])
REFERENCES [dbo].[Ref_Public_School_Choice_Status] ([Ref_Public_School_Choice_Status_Id]);

ALTER TABLE [dbo].[K12_Lea] CHECK CONSTRAINT [FK_K12_Lea_Ref_Public_School_Choice_Status];

ALTER TABLE [dbo].[K12_Lea_Federal_Funds]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Federal_Funds_K12_Lea1] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[K12_Lea] ([Organization_Id]);

ALTER TABLE [dbo].[K12_Lea_Federal_Funds] CHECK CONSTRAINT [FK_K12_LEA_Federal_Funds_K12_Lea1];

ALTER TABLE [dbo].[K12_Lea_Federal_Funds]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Federal_Funds_REAP_Alternative_Funding_Status] FOREIGN KEY([Ref_Reap_Alternative_Funding_Status_Id])
REFERENCES [dbo].[Ref_Reap_Alternative_Funding_Status] ([Ref_Reap_Alternative_Funding_Status_Id]);

ALTER TABLE [dbo].[K12_Lea_Federal_Funds] CHECK CONSTRAINT [FK_K12_LEA_Federal_Funds_REAP_Alternative_Funding_Status];

ALTER TABLE [dbo].[K12_Lea_Federal_Funds]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Federal_Funds_Ref_LEA_Funds_Transfer_Type] FOREIGN KEY([Ref_Lea_Funds_Transfer_Type_Id])
REFERENCES [dbo].[Ref_Lea_Funds_Transfer_Type] ([Ref_Lea_Funds_Transfer_Type_Id]);

ALTER TABLE [dbo].[K12_Lea_Federal_Funds] CHECK CONSTRAINT [FK_K12_LEA_Federal_Funds_Ref_LEA_Funds_Transfer_Type];

ALTER TABLE [dbo].[K12_Lea_Federal_Funds]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Federal_Funds_Ref_RLIS_Program_Use] FOREIGN KEY([Ref_Rlis_Program_Use_Id])
REFERENCES [dbo].[Ref_Rlis_Program_Use] ([Ref_Rlis_Program_Use_Id]);

ALTER TABLE [dbo].[K12_Lea_Federal_Funds] CHECK CONSTRAINT [FK_K12_LEA_Federal_Funds_Ref_RLIS_Program_Use];

ALTER TABLE [dbo].[K12_Lea_Federal_Funds]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Federal_Funds_Ref_Federal_Funding_Allocation] FOREIGN KEY([Ref_Federal_Program_Funding_Allocation_Type_Id])
REFERENCES [dbo].[Ref_Federal_Program_Funding_Allocation_Type] ([Ref_Federal_Program_Funding_Allocation_Type_Id]);

ALTER TABLE [dbo].[K12_Lea_Federal_Funds] CHECK CONSTRAINT [FK_Organization_Federal_Funds_Ref_Federal_Funding_Allocation];

ALTER TABLE [dbo].[K12_Lea_Federal_Reporting]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Federal_Reporting_K12_Lea] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[K12_Lea] ([Organization_Id]);

ALTER TABLE [dbo].[K12_Lea_Federal_Reporting] CHECK CONSTRAINT [FK_K12_LEA_Federal_Reporting_K12_Lea];

ALTER TABLE [dbo].[K12_Lea_Federal_Reporting]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Federal_Reporting_Ref_Barrier_To_Educating_Homeless] FOREIGN KEY([Ref_Barrier_To_Educating_Homeless_Id])
REFERENCES [dbo].[Ref_Barrier_To_Educating_Homeless] ([Ref_Barrier_To_Educating_Homeless_Id]);

ALTER TABLE [dbo].[K12_Lea_Federal_Reporting] CHECK CONSTRAINT [FK_K12_LEA_Federal_Reporting_Ref_Barrier_To_Educating_Homeless];

ALTER TABLE [dbo].[K12_Lea_Federal_Reporting]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Federal_Reporting_Ref_Integrated_Technology_Status] FOREIGN KEY([Ref_Integrated_Technology_Status_Id])
REFERENCES [dbo].[Ref_Integrated_Technology_Status] ([Ref_Integrated_Technology_Status_Id]);

ALTER TABLE [dbo].[K12_Lea_Federal_Reporting] CHECK CONSTRAINT [FK_K12_LEA_Federal_Reporting_Ref_Integrated_Technology_Status];

ALTER TABLE [dbo].[K12_Lea_Pre_K_Eligibility]  WITH CHECK ADD  CONSTRAINT [FK_K12_Lea_Pre_K_Eligibility_K12_Lea] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[K12_Lea] ([Organization_Id]);

ALTER TABLE [dbo].[K12_Lea_Pre_K_Eligibility] CHECK CONSTRAINT [FK_K12_Lea_Pre_K_Eligibility_K12_Lea];

ALTER TABLE [dbo].[K12_Lea_Pre_K_Eligibility]  WITH CHECK ADD  CONSTRAINT [FK_K12_Lea_Pre_K_Eligibility_Ref_Pre_Kindergarten_Eligibility] FOREIGN KEY([Ref_Pre_Kindergarten_Eligibility_Id])
REFERENCES [dbo].[Ref_Pre_Kindergarten_Eligibility] ([Ref_Pre_Kindergarten_Eligibility_Id]);

ALTER TABLE [dbo].[K12_Lea_Pre_K_Eligibility] CHECK CONSTRAINT [FK_K12_Lea_Pre_K_Eligibility_Ref_Pre_Kindergarten_Eligibility];

ALTER TABLE [dbo].[K12_Lea_Pre_K_Eligible_Ages_IDEA]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Pre_K_Eligible_Ages_IDEA_K12_Lea] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[K12_Lea] ([Organization_Id]);

ALTER TABLE [dbo].[K12_Lea_Pre_K_Eligible_Ages_IDEA] CHECK CONSTRAINT [FK_K12_LEA_Pre_K_Eligible_Ages_IDEA_K12_Lea];

ALTER TABLE [dbo].[K12_Lea_Pre_K_Eligible_Ages_IDEA]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Pre_K_Eligible_Ages_IDEA_Ref_Pre_K_Eligible_Ages_Non_IDEA] FOREIGN KEY([Ref_Pre_K_Eligible_Ages_Non_IDEA_Id])
REFERENCES [dbo].[Ref_Pre_K_Eligible_Ages_Non_IDEA] ([Ref_Pre_K_Eligible_Ages_Non_IDEA_Id]);

ALTER TABLE [dbo].[K12_Lea_Pre_K_Eligible_Ages_IDEA] CHECK CONSTRAINT [FK_K12_LEA_Pre_K_Eligible_Ages_IDEA_Ref_Pre_K_Eligible_Ages_Non_IDEA];

ALTER TABLE [dbo].[K12_Lea_Safe_Drug_Free]  WITH CHECK ADD  CONSTRAINT [FK_K12_Lea_Safe_Drug_Free_K12_Lea] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[K12_Lea] ([Organization_Id]);

ALTER TABLE [dbo].[K12_Lea_Safe_Drug_Free] CHECK CONSTRAINT [FK_K12_Lea_Safe_Drug_Free_K12_Lea];

ALTER TABLE [dbo].[K12_Lea_Title_III_Professional_Development]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Title_III_Professional_Dev_K12_Lea] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[K12_Lea] ([Organization_Id]);

ALTER TABLE [dbo].[K12_Lea_Title_III_Professional_Development] CHECK CONSTRAINT [FK_K12_LEA_Title_III_Professional_Dev_K12_Lea];

ALTER TABLE [dbo].[K12_Lea_Title_III_Professional_Development]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Title_III_Professional_Dev_Title_III_Professional_Dev_Type] FOREIGN KEY([Ref_Title_III_Professional_Development_Type_Id])
REFERENCES [dbo].[Ref_Title_III_Professional_Development_Type] ([Ref_Title_III_Professional_Development_Type_Id]);

ALTER TABLE [dbo].[K12_Lea_Title_III_Professional_Development] CHECK CONSTRAINT [FK_K12_LEA_Title_III_Professional_Dev_Title_III_Professional_Dev_Type];

ALTER TABLE [dbo].[K12_Lea_Title_I_Support_Service]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Title_I_Support_Service_K12_Lea] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[K12_Lea] ([Organization_Id]);

ALTER TABLE [dbo].[K12_Lea_Title_I_Support_Service] CHECK CONSTRAINT [FK_K12_LEA_Title_I_Support_Service_K12_Lea];

ALTER TABLE [dbo].[K12_Lea_Title_I_Support_Service]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Title_I_Support_Service_Ref_K12_LEA_Title_I_Support_Service] FOREIGN KEY([Ref_K12_Lea_Title_I_Support_Service_Id])
REFERENCES [dbo].[Ref_K12_Lea_Title_I_Support_Service] ([Ref_K12_LEA_Title_I_Support_Service_Id]);

ALTER TABLE [dbo].[K12_Lea_Title_I_Support_Service] CHECK CONSTRAINT [FK_K12_LEA_Title_I_Support_Service_Ref_K12_LEA_Title_I_Support_Service];

ALTER TABLE [dbo].[K12_Organization_Student_Responsibility]  WITH CHECK ADD  CONSTRAINT [FK_K12_Org_Student_Responsibility_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[K12_Organization_Student_Responsibility] CHECK CONSTRAINT [FK_K12_Org_Student_Responsibility_Organization_Person_Role];

ALTER TABLE [dbo].[K12_Organization_Student_Responsibility]  WITH CHECK ADD  CONSTRAINT [FK_K12_Org_Student_Responsibility_Ref_K12_Responsibility_Type] FOREIGN KEY([Ref_K12_Responsibility_Type_Id])
REFERENCES [dbo].[Ref_K12_Responsibility_Type] ([Ref_K12_Responsibility_Type_Id]);

ALTER TABLE [dbo].[K12_Organization_Student_Responsibility] CHECK CONSTRAINT [FK_K12_Org_Student_Responsibility_Ref_K12_Responsibility_Type];

ALTER TABLE [dbo].[K12_Program_Or_Service]  WITH CHECK ADD  CONSTRAINT [FK_K12_Lea_Program_Or_Service_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id]);

ALTER TABLE [dbo].[K12_Program_Or_Service] CHECK CONSTRAINT [FK_K12_Lea_Program_Or_Service_Organization];

ALTER TABLE [dbo].[K12_Program_Or_Service]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Program_Or_Service_Ref_MEP_Project_Type] FOREIGN KEY([Ref_Mep_Project_Type_Id])
REFERENCES [dbo].[Ref_Mep_Project_Type] ([Ref_Mep_Project_Type_Id]);

ALTER TABLE [dbo].[K12_Program_Or_Service] CHECK CONSTRAINT [FK_K12_LEA_Program_Or_Service_Ref_MEP_Project_Type];

ALTER TABLE [dbo].[K12_Program_Or_Service]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Program_Or_Service_Ref_MEP_Session_Type] FOREIGN KEY([Ref_Mep_Session_Type_Id])
REFERENCES [dbo].[Ref_Mep_Session_Type] ([Ref_Mep_Session_Type_Id]);

ALTER TABLE [dbo].[K12_Program_Or_Service] CHECK CONSTRAINT [FK_K12_LEA_Program_Or_Service_Ref_MEP_Session_Type];

ALTER TABLE [dbo].[K12_Program_Or_Service]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Program_Or_Service_Ref_Program_Day_Length] FOREIGN KEY([Ref_Pre_Kindergarten_Daily_Length_Id])
REFERENCES [dbo].[Ref_Program_Day_Length] ([Ref_Program_Day_Length_Id]);

ALTER TABLE [dbo].[K12_Program_Or_Service] CHECK CONSTRAINT [FK_K12_LEA_Program_Or_Service_Ref_Program_Day_Length];

ALTER TABLE [dbo].[K12_Program_Or_Service]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Program_Or_Service_Ref_Program_Day_Length1] FOREIGN KEY([Ref_Kindergarten_Daily_Length_Id])
REFERENCES [dbo].[Ref_Program_Day_Length] ([Ref_Program_Day_Length_Id]);

ALTER TABLE [dbo].[K12_Program_Or_Service] CHECK CONSTRAINT [FK_K12_LEA_Program_Or_Service_Ref_Program_Day_Length1];

ALTER TABLE [dbo].[K12_Program_Or_Service]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Program_Or_Service_Ref_Program_Gifted_Eligibility] FOREIGN KEY([Ref_Program_Gifted_Eligibility_Id])
REFERENCES [dbo].[Ref_Program_Gifted_Eligibility] ([Ref_Program_Gifted_Eligibility_Id]);

ALTER TABLE [dbo].[K12_Program_Or_Service] CHECK CONSTRAINT [FK_K12_LEA_Program_Or_Service_Ref_Program_Gifted_Eligibility];

ALTER TABLE [dbo].[K12_Program_Or_Service]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Program_Or_Service_Ref_Title_I_Instruct_Services] FOREIGN KEY([Ref_Title_I_Instructional_Services_Id])
REFERENCES [dbo].[Ref_Title_I_Instructional_Services] ([Ref_Title_I_Instructional_Services_Id]);

ALTER TABLE [dbo].[K12_Program_Or_Service] CHECK CONSTRAINT [FK_K12_LEA_Program_Or_Service_Ref_Title_I_Instruct_Services];

ALTER TABLE [dbo].[K12_Program_Or_Service]  WITH CHECK ADD  CONSTRAINT [FK_K12_LEA_Program_Or_Service_Ref_Title_I_Program_Type] FOREIGN KEY([Ref_Title_I_Program_Type_Id])
REFERENCES [dbo].[Ref_Title_I_Program_Type] ([Ref_Title_I_Program_Type_Id]);

ALTER TABLE [dbo].[K12_Program_Or_Service] CHECK CONSTRAINT [FK_K12_LEA_Program_Or_Service_Ref_Title_I_Program_Type];

ALTER TABLE [dbo].[K12_School]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12_School] CHECK CONSTRAINT [FK_K12_School_Organization];

ALTER TABLE [dbo].[K12_School]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Ref_Admin_Funding_Control] FOREIGN KEY([Ref_Administrative_Funding_Control_Id])
REFERENCES [dbo].[Ref_Administrative_Funding_Control] ([Ref_Administrative_Funding_Control_Id]);

ALTER TABLE [dbo].[K12_School] CHECK CONSTRAINT [FK_K12_School_Ref_Admin_Funding_Control];

ALTER TABLE [dbo].[K12_School]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Ref_Charter_School_Approval_Agency_Type_Id] FOREIGN KEY([Ref_Charter_School_Approval_Agency_Type_Id])
REFERENCES [dbo].[Ref_Charter_School_Approval_Agency_Type] ([Ref_Charter_School_Approval_Agency_Type_Id]);

ALTER TABLE [dbo].[K12_School] CHECK CONSTRAINT [FK_K12_School_Ref_Charter_School_Approval_Agency_Type_Id];

ALTER TABLE [dbo].[K12_School]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Ref_Charter_School_Management_Organization_Type] FOREIGN KEY([Ref_Charter_School_Management_Organization_Type_Id])
REFERENCES [dbo].[Ref_Charter_School_Management_Organization_Type] ([Ref_Charter_School_Management_Organization_Type_Id]);

ALTER TABLE [dbo].[K12_School] CHECK CONSTRAINT [FK_K12_School_Ref_Charter_School_Management_Organization_Type];

ALTER TABLE [dbo].[K12_School]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Ref_Charter_School_Type] FOREIGN KEY([Ref_Charter_School_Type_Id])
REFERENCES [dbo].[Ref_Charter_School_Type] ([Ref_Charter_School_Type_Id]);

ALTER TABLE [dbo].[K12_School] CHECK CONSTRAINT [FK_K12_School_Ref_Charter_School_Type];

ALTER TABLE [dbo].[K12_School]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Ref_Increased_Learning_Time_Type] FOREIGN KEY([Ref_Increased_Learning_Time_Type_Id])
REFERENCES [dbo].[Ref_Increased_Learning_Time_Type] ([Ref_Increased_Learning_Time_Type_Id]);

ALTER TABLE [dbo].[K12_School] CHECK CONSTRAINT [FK_K12_School_Ref_Increased_Learning_Time_Type];

ALTER TABLE [dbo].[K12_School]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Ref_School_Level] FOREIGN KEY([Ref_School_Level_Id])
REFERENCES [dbo].[Ref_School_Level] ([Ref_School_Level_Id]);

ALTER TABLE [dbo].[K12_School] CHECK CONSTRAINT [FK_K12_School_Ref_School_Level];

ALTER TABLE [dbo].[K12_School]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Ref_School_Type] FOREIGN KEY([Ref_School_Type_Id])
REFERENCES [dbo].[Ref_School_Type] ([Ref_School_Type_Id]);

ALTER TABLE [dbo].[K12_School] CHECK CONSTRAINT [FK_K12_School_Ref_School_Type];

ALTER TABLE [dbo].[K12_School]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Ref_State_Poverty_Designation] FOREIGN KEY([Ref_State_Poverty_Designation_Id])
REFERENCES [dbo].[Ref_State_Poverty_Designation] ([Ref_State_Poverty_Designation_Id]);

ALTER TABLE [dbo].[K12_School] CHECK CONSTRAINT [FK_K12_School_Ref_State_Poverty_Designation];

ALTER TABLE [dbo].[K12_School_Corrective_Action]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Corrective_Action_K12_School] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[K12_School] ([Organization_Id]);

ALTER TABLE [dbo].[K12_School_Corrective_Action] CHECK CONSTRAINT [FK_K12_School_Corrective_Action_K12_School];

ALTER TABLE [dbo].[K12_School_Corrective_Action]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Corrective_Action_Ref_Corrective_Action_Type] FOREIGN KEY([Ref_Corrective_Action_Type_Id])
REFERENCES [dbo].[Ref_Corrective_Action_Type] ([Ref_Corrective_Action_Id]);

ALTER TABLE [dbo].[K12_School_Corrective_Action] CHECK CONSTRAINT [FK_K12_School_Corrective_Action_Ref_Corrective_Action_Type];

ALTER TABLE [dbo].[K12_School_Grade_Offered]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Grade_Offered_K12_School] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[K12_School] ([Organization_Id]);

ALTER TABLE [dbo].[K12_School_Grade_Offered] CHECK CONSTRAINT [FK_K12_School_Grade_Offered_K12_School];

ALTER TABLE [dbo].[K12_School_Grade_Offered]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Grade_Offered_Ref_Grade_Level] FOREIGN KEY([Ref_Grade_Level_Id])
REFERENCES [dbo].[Ref_Grade_Level] ([Ref_Grade_Level_Id]);

ALTER TABLE [dbo].[K12_School_Grade_Offered] CHECK CONSTRAINT [FK_K12_School_Grade_Offered_Ref_Grade_Level];

ALTER TABLE [dbo].[K12_School_Improvement]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Improvement_K12_School] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[K12_School] ([Organization_Id]);

ALTER TABLE [dbo].[K12_School_Improvement] CHECK CONSTRAINT [FK_K12_School_Improvement_K12_School];

ALTER TABLE [dbo].[K12_School_Improvement]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Improvement_Ref_School_Improvement_Funds] FOREIGN KEY([Ref_School_Improvement_Funds_Id])
REFERENCES [dbo].[Ref_School_Improvement_Funds] ([Ref_School_Improvement_Funds_Id]);

ALTER TABLE [dbo].[K12_School_Improvement] CHECK CONSTRAINT [FK_K12_School_Improvement_Ref_School_Improvement_Funds];

ALTER TABLE [dbo].[K12_School_Improvement]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Improvement_Ref_School_Improvement_Status] FOREIGN KEY([Ref_School_Improvement_Status_Id])
REFERENCES [dbo].[Ref_School_Improvement_Status] ([Ref_School_Improvement_Status_Id]);

ALTER TABLE [dbo].[K12_School_Improvement] CHECK CONSTRAINT [FK_K12_School_Improvement_Ref_School_Improvement_Status];

ALTER TABLE [dbo].[K12_School_Improvement]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Improvement_Ref_SIG_Intervention_Type] FOREIGN KEY([Ref_Sig_Intervention_Type_Id])
REFERENCES [dbo].[Ref_Sig_Intervention_Type] ([Ref_Sig_Intervention_Type_Id]);

ALTER TABLE [dbo].[K12_School_Improvement] CHECK CONSTRAINT [FK_K12_School_Improvement_Ref_SIG_Intervention_Type];

ALTER TABLE [dbo].[K12_School_Status]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Status_K12_School] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[K12_School] ([Organization_Id]);

ALTER TABLE [dbo].[K12_School_Status] CHECK CONSTRAINT [FK_K12_School_Status_K12_School];

ALTER TABLE [dbo].[K12_School_Status]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Status_Ref_Alternative_School_Focus] FOREIGN KEY([Ref_Alternative_School_Focus_Id])
REFERENCES [dbo].[Ref_Alternative_School_Focus] ([Ref_Alternative_School_Focus_Id]);

ALTER TABLE [dbo].[K12_School_Status] CHECK CONSTRAINT [FK_K12_School_Status_Ref_Alternative_School_Focus];

ALTER TABLE [dbo].[K12_School_Status]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Status_Ref_Internet_Access] FOREIGN KEY([Ref_Internet_Access_Id])
REFERENCES [dbo].[Ref_Internet_Access] ([Ref_Internet_Access_Id]);

ALTER TABLE [dbo].[K12_School_Status] CHECK CONSTRAINT [FK_K12_School_Status_Ref_Internet_Access];

ALTER TABLE [dbo].[K12_School_Status]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Status_Ref_Magnet_Special_Program] FOREIGN KEY([Ref_Magnet_Special_Program_Id])
REFERENCES [dbo].[Ref_Magnet_Special_Program] ([Ref_Magnet_Special_Program_Id]);

ALTER TABLE [dbo].[K12_School_Status] CHECK CONSTRAINT [FK_K12_School_Status_Ref_Magnet_Special_Program];

ALTER TABLE [dbo].[K12_School_Status]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Status_Ref_Restructuring_Action] FOREIGN KEY([Ref_Restructuring_Action_Id])
REFERENCES [dbo].[Ref_Restructuring_Action] ([Ref_Restructuring_Action_Id]);

ALTER TABLE [dbo].[K12_School_Status] CHECK CONSTRAINT [FK_K12_School_Status_Ref_Restructuring_Action];

ALTER TABLE [dbo].[K12_School_Status]  WITH CHECK ADD  CONSTRAINT [FK_K12_School_Status_Ref_Title_1_School_Status] FOREIGN KEY([Ref_Title_I_School_Status_Id])
REFERENCES [dbo].[Ref_Title_I_School_Status] ([Ref_Title_1_School_Status_Id]);

ALTER TABLE [dbo].[K12_School_Status] CHECK CONSTRAINT [FK_K12_School_Status_Ref_Title_1_School_Status];

ALTER TABLE [dbo].[K12_Sea]  WITH CHECK ADD  CONSTRAINT [FK_K12_Sea_Organization] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[Organization] ([Organization_Id])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12_Sea] CHECK CONSTRAINT [FK_K12_Sea_Organization];

ALTER TABLE [dbo].[K12_Sea]  WITH CHECK ADD  CONSTRAINT [FK_K12_SEA_Ref_State_ANSI_Code] FOREIGN KEY([Ref_State_ANSI_Code])
REFERENCES [dbo].[Ref_State_ANSI_Code] ([Code]);

ALTER TABLE [dbo].[K12_Sea] CHECK CONSTRAINT [FK_K12_SEA_Ref_State_ANSI_Code];

ALTER TABLE [dbo].[K12_Sea_Alternate_Fund_Use]  WITH CHECK ADD  CONSTRAINT [FK_K12_SEA_Alternate_Fund_Use_K12_SEA_Federal_Funds] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[K12_Sea_Federal_Funds] ([Organization_Id]);

ALTER TABLE [dbo].[K12_Sea_Alternate_Fund_Use] CHECK CONSTRAINT [FK_K12_SEA_Alternate_Fund_Use_K12_SEA_Federal_Funds];

ALTER TABLE [dbo].[K12_Sea_Alternate_Fund_Use]  WITH CHECK ADD  CONSTRAINT [FK_K12_SEA_Alternate_Fund_Use_Ref_Alternate_Fund_Uses] FOREIGN KEY([Ref_Alternate_Fund_Uses_Id])
REFERENCES [dbo].[Ref_Alternate_Fund_Uses] ([Ref_Alternate_Fund_Uses_Id]);

ALTER TABLE [dbo].[K12_Sea_Alternate_Fund_Use] CHECK CONSTRAINT [FK_K12_SEA_Alternate_Fund_Use_Ref_Alternate_Fund_Uses];

ALTER TABLE [dbo].[K12_Sea_Federal_Fund_Allocation]  WITH CHECK ADD  CONSTRAINT [FK_K12_SEA_Federal_Fund_Allocation_K12_SEA] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[K12_Sea] ([Organization_Id]);

ALTER TABLE [dbo].[K12_Sea_Federal_Fund_Allocation] CHECK CONSTRAINT [FK_K12_SEA_Federal_Fund_Allocation_K12_SEA];

ALTER TABLE [dbo].[K12_Sea_Federal_Fund_Allocation]  WITH CHECK ADD  CONSTRAINT [FK_K12_SEA_Federal_Fund_Allocation_Ref_Federal_Funding_Allocation] FOREIGN KEY([Ref_Federal_Program_Funding_Allocation_Type_Id])
REFERENCES [dbo].[Ref_Federal_Program_Funding_Allocation_Type] ([Ref_Federal_Program_Funding_Allocation_Type_Id]);

ALTER TABLE [dbo].[K12_Sea_Federal_Fund_Allocation] CHECK CONSTRAINT [FK_K12_SEA_Federal_Fund_Allocation_Ref_Federal_Funding_Allocation];

ALTER TABLE [dbo].[K12_Sea_Federal_Funds]  WITH CHECK ADD  CONSTRAINT [FK_K12_SEA_Federal_Funds_K12_SEA] FOREIGN KEY([Organization_Id])
REFERENCES [dbo].[K12_Sea] ([Organization_Id]);

ALTER TABLE [dbo].[K12_Sea_Federal_Funds] CHECK CONSTRAINT [FK_K12_SEA_Federal_Funds_K12_SEA];

ALTER TABLE [dbo].[K12_Staff_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Staff_Assignment_Organization_Person] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12_Staff_Assignment] CHECK CONSTRAINT [FK_K12_Staff_Assignment_Organization_Person];

ALTER TABLE [dbo].[K12_Staff_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Staff_Assignment_Ref_Classroom_Position_Type] FOREIGN KEY([Ref_Classroom_Position_Type_Id])
REFERENCES [dbo].[Ref_Classroom_Position_Type] ([Ref_Classroom_Position_Type_Id]);

ALTER TABLE [dbo].[K12_Staff_Assignment] CHECK CONSTRAINT [FK_K12_Staff_Assignment_Ref_Classroom_Position_Type];

ALTER TABLE [dbo].[K12_Staff_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Staff_Assignment_Ref_Education_Staff_Classification] FOREIGN KEY([Ref_K12_Staff_Classification_Id])
REFERENCES [dbo].[Ref_K12_Staff_Classification] ([Ref_Education_Staff_Classification_Id]);

ALTER TABLE [dbo].[K12_Staff_Assignment] CHECK CONSTRAINT [FK_K12_Staff_Assignment_Ref_Education_Staff_Classification];

ALTER TABLE [dbo].[K12_Staff_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Staff_Assignment_Ref_Mep_Staff_Category] FOREIGN KEY([Ref_Mep_Staff_Category_Id])
REFERENCES [dbo].[Ref_Mep_Staff_Category] ([Ref_Mep_Staff_Category_Id]);

ALTER TABLE [dbo].[K12_Staff_Assignment] CHECK CONSTRAINT [FK_K12_Staff_Assignment_Ref_Mep_Staff_Category];

ALTER TABLE [dbo].[K12_Staff_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Staff_Assignment_Ref_Professional_Education_Job_Classification] FOREIGN KEY([Ref_Professional_Education_Job_Classification_Id])
REFERENCES [dbo].[Ref_Professional_Education_Job_Classification] ([Ref_Professional_Education_Job_Classification_Id]);

ALTER TABLE [dbo].[K12_Staff_Assignment] CHECK CONSTRAINT [FK_K12_Staff_Assignment_Ref_Professional_Education_Job_Classification];

ALTER TABLE [dbo].[K12_Staff_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Staff_Assignment_Ref_Special_Education_Age_Group_Taught] FOREIGN KEY([Ref_Special_Education_Age_Group_Taught_Id])
REFERENCES [dbo].[Ref_Special_Education_Age_Group_Taught] ([Ref_Special_Education_Age_Group_Taught_Id]);

ALTER TABLE [dbo].[K12_Staff_Assignment] CHECK CONSTRAINT [FK_K12_Staff_Assignment_Ref_Special_Education_Age_Group_Taught];

ALTER TABLE [dbo].[K12_Staff_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Staff_Assignment_Ref_Special_Education_Staff_Category] FOREIGN KEY([Ref_Special_Education_Staff_Category_Id])
REFERENCES [dbo].[Ref_Special_Education_Staff_Category] ([Ref_Special_Education_Staff_Category_Id]);

ALTER TABLE [dbo].[K12_Staff_Assignment] CHECK CONSTRAINT [FK_K12_Staff_Assignment_Ref_Special_Education_Staff_Category];

ALTER TABLE [dbo].[K12_Staff_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Staff_Assignment_Ref_Teaching_Assignment_Role] FOREIGN KEY([Ref_Teaching_Assignment_Role_Id])
REFERENCES [dbo].[Ref_Teaching_Assignment_Role] ([Ref_Teaching_Assignment_Role_Id]);

ALTER TABLE [dbo].[K12_Staff_Assignment] CHECK CONSTRAINT [FK_K12_Staff_Assignment_Ref_Teaching_Assignment_Role];

ALTER TABLE [dbo].[K12_Staff_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Staff_Assignment_Ref_Title_I_Program_Staff_Category] FOREIGN KEY([Ref_Title_I_Program_Staff_Category_Id])
REFERENCES [dbo].[Ref_Title_I_Program_Staff_Category] ([Ref_Title_I_Program_Staff_Category_Id]);

ALTER TABLE [dbo].[K12_Staff_Assignment] CHECK CONSTRAINT [FK_K12_Staff_Assignment_Ref_Title_I_Program_Staff_Category];

ALTER TABLE [dbo].[K12_Staff_Employment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Staff_Employment_Ref_Edu_Staff_Classification] FOREIGN KEY([Ref_K12_Staff_Classification_Id])
REFERENCES [dbo].[Ref_K12_Staff_Classification] ([Ref_Education_Staff_Classification_Id]);

ALTER TABLE [dbo].[K12_Staff_Employment] CHECK CONSTRAINT [FK_K12_Staff_Employment_Ref_Edu_Staff_Classification];

ALTER TABLE [dbo].[K12_Staff_Employment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Staff_Employment_Ref_Employment_Status] FOREIGN KEY([Ref_Employment_Status_Id])
REFERENCES [dbo].[Ref_Employment_Status] ([Ref_Employment_Status_Id]);

ALTER TABLE [dbo].[K12_Staff_Employment] CHECK CONSTRAINT [FK_K12_Staff_Employment_Ref_Employment_Status];

ALTER TABLE [dbo].[K12_Staff_Employment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Staff_Employment_Staff_Employment] FOREIGN KEY([Staff_Employment_Id])
REFERENCES [dbo].[Staff_Employment] ([Staff_Employment_Id]);

ALTER TABLE [dbo].[K12_Staff_Employment] CHECK CONSTRAINT [FK_K12_Staff_Employment_Staff_Employment];

ALTER TABLE [dbo].[K12_Student_Academic_Honor]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Academic_Honor_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[K12_Student_Academic_Honor] CHECK CONSTRAINT [FK_K12_Student_Academic_Honor_Organization_Person_Role];

ALTER TABLE [dbo].[K12_Student_Academic_Honor]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Academic_Honor_Ref_Academic_Honor_Type] FOREIGN KEY([Ref_Academic_Honor_Type_Id])
REFERENCES [dbo].[Ref_Academic_Honor_Type] ([Ref_Academic_Honor_Type_Id]);

ALTER TABLE [dbo].[K12_Student_Academic_Honor] CHECK CONSTRAINT [FK_K12_Student_Academic_Honor_Ref_Academic_Honor_Type];

ALTER TABLE [dbo].[K12_Student_Academic_Record]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Academic_Record_Organization_Person] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12_Student_Academic_Record] CHECK CONSTRAINT [FK_K12_Student_Academic_Record_Organization_Person];

ALTER TABLE [dbo].[K12_Student_Academic_Record]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Academic_Record_Ref_Gpa_Weighted_Indicator] FOREIGN KEY([Ref_Gpa_Weighted_Indicator_Id])
REFERENCES [dbo].[Ref_Gpa_Weighted_Indicator] ([Ref_Gpa_Weighted_Indicator_Id]);

ALTER TABLE [dbo].[K12_Student_Academic_Record] CHECK CONSTRAINT [FK_K12_Student_Academic_Record_Ref_Gpa_Weighted_Indicator];

ALTER TABLE [dbo].[K12_Student_Academic_Record]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Academic_Record_Ref_High_School_Diploma_Type] FOREIGN KEY([Ref_High_School_Diploma_Type_Id])
REFERENCES [dbo].[Ref_High_School_Diploma_Type] ([Ref_High_School_Diploma_Type_Id]);

ALTER TABLE [dbo].[K12_Student_Academic_Record] CHECK CONSTRAINT [FK_K12_Student_Academic_Record_Ref_High_School_Diploma_Type];

ALTER TABLE [dbo].[K12_Student_Academic_Record]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Academic_Record_Ref_HS_Diploma_Distinction_Type] FOREIGN KEY([Ref_High_School_Diploma_Distinction_Type_Id])
REFERENCES [dbo].[Ref_High_School_Diploma_Distinction_Type] ([Ref_High_School_Diploma_Distinction_Type_Id]);

ALTER TABLE [dbo].[K12_Student_Academic_Record] CHECK CONSTRAINT [FK_K12_Student_Academic_Record_Ref_HS_Diploma_Distinction_Type];

ALTER TABLE [dbo].[K12_Student_Academic_Record]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Academic_Record_Ref_Pre_And_Post_Test_Indicator] FOREIGN KEY([Ref_Pre_And_Post_Test_Indicator_Id])
REFERENCES [dbo].[Ref_Pre_And_Post_Test_Indicator] ([Ref_Pre_And_Post_Test_Indicator_Id]);

ALTER TABLE [dbo].[K12_Student_Academic_Record] CHECK CONSTRAINT [FK_K12_Student_Academic_Record_Ref_Pre_And_Post_Test_Indicator];

ALTER TABLE [dbo].[K12_Student_Academic_Record]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Academic_Record_Ref_Professional_Technical_Credential] FOREIGN KEY([Ref_Professional_Technical_Credential_Type_Id])
REFERENCES [dbo].[Ref_Professional_Technical_Credential_Type] ([Ref_Professional_Technical_Credential_Type_Id]);

ALTER TABLE [dbo].[K12_Student_Academic_Record] CHECK CONSTRAINT [FK_K12_Student_Academic_Record_Ref_Professional_Technical_Credential];

ALTER TABLE [dbo].[K12_Student_Academic_Record]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Academic_Record_Ref_Progress_Level] FOREIGN KEY([Ref_Progress_Level_Id])
REFERENCES [dbo].[Ref_Progress_Level] ([Ref_Progress_Level_Id]);

ALTER TABLE [dbo].[K12_Student_Academic_Record] CHECK CONSTRAINT [FK_K12_Student_Academic_Record_Ref_Progress_Level];

ALTER TABLE [dbo].[K12_Student_Academic_Record]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Academic_Record_Ref_PS_Enrollment_Action] FOREIGN KEY([Ref_Ps_Enrollment_Action_Id])
REFERENCES [dbo].[Ref_Ps_Enrollment_Action] ([Ref_Ps_Enrollment_Action_Id]);

ALTER TABLE [dbo].[K12_Student_Academic_Record] CHECK CONSTRAINT [FK_K12_Student_Academic_Record_Ref_PS_Enrollment_Action];

ALTER TABLE [dbo].[K12_Student_Academic_Record]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Academic_Record_Ref_Technology_Literacy_Status] FOREIGN KEY([Ref_Technology_Literacy_Status_Id])
REFERENCES [dbo].[Ref_Technology_Literacy_Status] ([Ref_Technology_Literacy_Status_Id]);

ALTER TABLE [dbo].[K12_Student_Academic_Record] CHECK CONSTRAINT [FK_K12_Student_Academic_Record_Ref_Technology_Literacy_Status];

ALTER TABLE [dbo].[K12_Student_Activity]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Activity_Org_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[K12_Student_Activity] CHECK CONSTRAINT [FK_K12_Student_Activity_Org_Person_Role];

ALTER TABLE [dbo].[K12_Student_Activity]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Activity_Ref_Activity_Time_Measurement_Type] FOREIGN KEY([Ref_Activity_Time_Measurement_Type_Id])
REFERENCES [dbo].[Ref_Activity_Time_Measurement_Type] ([Ref_Activity_Time_Measurement_Type_Id]);

ALTER TABLE [dbo].[K12_Student_Activity] CHECK CONSTRAINT [FK_K12_Student_Activity_Ref_Activity_Time_Measurement_Type];

ALTER TABLE [dbo].[K12_Student_Cohort]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Cohort_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[K12_Student_Cohort] CHECK CONSTRAINT [FK_K12_Student_Cohort_Organization_Person_Role];

ALTER TABLE [dbo].[K12_Student_Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Course_Section _Ref_Course_Gpa_Applicability] FOREIGN KEY([Ref_Course_Gpa_Applicability_Id])
REFERENCES [dbo].[Ref_Course_Gpa_Applicability] ([Ref_Course_GPA_Applicability_Id]);

ALTER TABLE [dbo].[K12_Student_Course_Section] CHECK CONSTRAINT [FK_K12_Student_Course_Section _Ref_Course_Gpa_Applicability];

ALTER TABLE [dbo].[K12_Student_Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Course_Section_Organization_Person] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12_Student_Course_Section] CHECK CONSTRAINT [FK_K12_Student_Course_Section_Organization_Person];

ALTER TABLE [dbo].[K12_Student_Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Course_Section_Ref_Additional_Credit_Type] FOREIGN KEY([Ref_Additional_Credit_Type_Id])
REFERENCES [dbo].[Ref_Additional_Credit_Type] ([Ref_Additional_Credit_Type_Id]);

ALTER TABLE [dbo].[K12_Student_Course_Section] CHECK CONSTRAINT [FK_K12_Student_Course_Section_Ref_Additional_Credit_Type];

ALTER TABLE [dbo].[K12_Student_Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Course_Section_Ref_Course_Repeat_Code] FOREIGN KEY([Ref_Course_Repeat_Code_Id])
REFERENCES [dbo].[Ref_Course_Repeat_Code] ([Ref_Course_Repeat_Code_Id]);

ALTER TABLE [dbo].[K12_Student_Course_Section] CHECK CONSTRAINT [FK_K12_Student_Course_Section_Ref_Course_Repeat_Code];

ALTER TABLE [dbo].[K12_Student_Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Course_Section_Ref_Course_Section_Enrollment_Status_Type] FOREIGN KEY([Ref_Course_Section_Enrollment_Status_Type_Id])
REFERENCES [dbo].[Ref_Course_Section_Enrollment_Status_Type] ([Ref_Course_Section_Enrollment_Status_Type_Id]);

ALTER TABLE [dbo].[K12_Student_Course_Section] CHECK CONSTRAINT [FK_K12_Student_Course_Section_Ref_Course_Section_Enrollment_Status_Type];

ALTER TABLE [dbo].[K12_Student_Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Course_Section_Ref_Course_Section_Entry_Type] FOREIGN KEY([Ref_Course_Section_Entry_Type_Id])
REFERENCES [dbo].[Ref_Course_Section_Entry_Type] ([Ref_Course_Section_Entry_Type_Id]);

ALTER TABLE [dbo].[K12_Student_Course_Section] CHECK CONSTRAINT [FK_K12_Student_Course_Section_Ref_Course_Section_Entry_Type];

ALTER TABLE [dbo].[K12_Student_Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Course_Section_Ref_Course_Section_Exit_Type] FOREIGN KEY([Ref_Course_Section_Exit_Type_Id])
REFERENCES [dbo].[Ref_Course_Section_Exit_Type] ([Ref_Course_Section_Exit_Type_Id]);

ALTER TABLE [dbo].[K12_Student_Course_Section] CHECK CONSTRAINT [FK_K12_Student_Course_Section_Ref_Course_Section_Exit_Type];

ALTER TABLE [dbo].[K12_Student_Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Course_Section_Ref_Credit_Type_Earned] FOREIGN KEY([Ref_Credit_Type_Earned_Id])
REFERENCES [dbo].[Ref_Credit_Type_Earned] ([Ref_Credit_Type_Earned_Id]);

ALTER TABLE [dbo].[K12_Student_Course_Section] CHECK CONSTRAINT [FK_K12_Student_Course_Section_Ref_Credit_Type_Earned];

ALTER TABLE [dbo].[K12_Student_Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Course_Section_Ref_Exit_Or_Withdrawal_Status] FOREIGN KEY([Ref_Exit_Or_Withdrawal_Status_Id])
REFERENCES [dbo].[Ref_Exit_Or_Withdrawal_Status] ([Ref_Exit_Or_Withdrawal_Status_Id]);

ALTER TABLE [dbo].[K12_Student_Course_Section] CHECK CONSTRAINT [FK_K12_Student_Course_Section_Ref_Exit_Or_Withdrawal_Status];

ALTER TABLE [dbo].[K12_Student_Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Course_Section_Ref_Grade_Level] FOREIGN KEY([Ref_Grade_Level_When_Course_Taken_Id])
REFERENCES [dbo].[Ref_Grade_Level] ([Ref_Grade_Level_Id]);

ALTER TABLE [dbo].[K12_Student_Course_Section] CHECK CONSTRAINT [FK_K12_Student_Course_Section_Ref_Grade_Level];

ALTER TABLE [dbo].[K12_Student_Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Course_Section_Ref_Pre_And_Post_Test_Indicator] FOREIGN KEY([Ref_Pre_And_Post_Test_Indicator_Id])
REFERENCES [dbo].[Ref_Pre_And_Post_Test_Indicator] ([Ref_Pre_And_Post_Test_Indicator_Id]);

ALTER TABLE [dbo].[K12_Student_Course_Section] CHECK CONSTRAINT [FK_K12_Student_Course_Section_Ref_Pre_And_Post_Test_Indicator];

ALTER TABLE [dbo].[K12_Student_Course_Section]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Course_Section_Ref_Progress_Level] FOREIGN KEY([Ref_Progress_Level_Id])
REFERENCES [dbo].[Ref_Progress_Level] ([Ref_Progress_Level_Id]);

ALTER TABLE [dbo].[K12_Student_Course_Section] CHECK CONSTRAINT [FK_K12_Student_Course_Section_Ref_Progress_Level];

ALTER TABLE [dbo].[K12_Student_Course_Section_Mark]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Course_Section_Mark_K12_Student_Course_Section] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[K12_Student_Course_Section] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[K12_Student_Course_Section_Mark] CHECK CONSTRAINT [FK_K12_Student_Course_Section_Mark_K12_Student_Course_Section];

ALTER TABLE [dbo].[K12_Student_Discipline]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Discipline_K12_Incident] FOREIGN KEY([Incident_Id])
REFERENCES [dbo].[Incident] ([Incident_Id]);

ALTER TABLE [dbo].[K12_Student_Discipline] CHECK CONSTRAINT [FK_K12_Student_Discipline_K12_Incident];

ALTER TABLE [dbo].[K12_Student_Discipline]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Discipline_Organization_Person] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12_Student_Discipline] CHECK CONSTRAINT [FK_K12_Student_Discipline_Organization_Person];

ALTER TABLE [dbo].[K12_Student_Discipline]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Discipline_Ref_Disciplinary_Action_Taken] FOREIGN KEY([Ref_Disciplinary_Action_Taken_Id])
REFERENCES [dbo].[Ref_Disciplinary_Action_Taken] ([Ref_Disciplinary_Action_Taken_Id]);

ALTER TABLE [dbo].[K12_Student_Discipline] CHECK CONSTRAINT [FK_K12_Student_Discipline_Ref_Disciplinary_Action_Taken];

ALTER TABLE [dbo].[K12_Student_Discipline]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Discipline_Ref_Discipline_Length_Difference] FOREIGN KEY([Ref_Discipline_Length_Difference_Reason_Id])
REFERENCES [dbo].[Ref_Discipline_Length_Difference_Reason] ([Ref_Discipline_Length_Difference_Reason_Id]);

ALTER TABLE [dbo].[K12_Student_Discipline] CHECK CONSTRAINT [FK_K12_Student_Discipline_Ref_Discipline_Length_Difference];

ALTER TABLE [dbo].[K12_Student_Discipline]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Discipline_Ref_Discipline_Method_Firearms] FOREIGN KEY([Ref_Discipline_Method_Firearms_Id])
REFERENCES [dbo].[Ref_Discipline_Method_Firearms] ([Ref_Discipline_Method_Firearms_Id]);

ALTER TABLE [dbo].[K12_Student_Discipline] CHECK CONSTRAINT [FK_K12_Student_Discipline_Ref_Discipline_Method_Firearms];

ALTER TABLE [dbo].[K12_Student_Discipline]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Discipline_Ref_Discipline_Method_Of_Cwd] FOREIGN KEY([Ref_Discipline_Method_Of_Cwd_Id])
REFERENCES [dbo].[Ref_Discipline_Method_Of_Cwd] ([Ref_Discipline_Method_Of_Cwd_Id]);

ALTER TABLE [dbo].[K12_Student_Discipline] CHECK CONSTRAINT [FK_K12_Student_Discipline_Ref_Discipline_Method_Of_Cwd];

ALTER TABLE [dbo].[K12_Student_Discipline]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Discipline_Ref_Discipline_Reason1] FOREIGN KEY([Ref_Discipline_Reason_Id])
REFERENCES [dbo].[Ref_Discipline_Reason] ([Ref_Discipline_Reason_Id]);

ALTER TABLE [dbo].[K12_Student_Discipline] CHECK CONSTRAINT [FK_K12_Student_Discipline_Ref_Discipline_Reason1];

ALTER TABLE [dbo].[K12_Student_Discipline]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Discipline_Ref_IDEA_Discipline_Method_Firearm] FOREIGN KEY([Ref_IDEA_Discipline_Method_Firearm_Id])
REFERENCES [dbo].[Ref_IDEA_Discipline_Method_Firearm] ([Ref_IDEA_Discipline_Method_Firearm_Id]);

ALTER TABLE [dbo].[K12_Student_Discipline] CHECK CONSTRAINT [FK_K12_Student_Discipline_Ref_IDEA_Discipline_Method_Firearm];

ALTER TABLE [dbo].[K12_Student_Discipline]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Discipline_Ref_IDEA_Interim_Removal_Id] FOREIGN KEY([Ref_Idea_Interim_Removal_Id])
REFERENCES [dbo].[Ref_IDEA_Interim_Removal] ([Ref_IDEA_Interim_Removal_Id]);

ALTER TABLE [dbo].[K12_Student_Discipline] CHECK CONSTRAINT [FK_K12_Student_Discipline_Ref_IDEA_Interim_Removal_Id];

ALTER TABLE [dbo].[K12_Student_Discipline]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Discipline_Ref_IDES_Interim_Removal_Reason] FOREIGN KEY([Ref_Idea_Interim_Removal_Reason_Id])
REFERENCES [dbo].[Ref_IDEA_Interim_Removal_Reason] ([Ref_IDEA_Interim_Removal_Reason_Id]);

ALTER TABLE [dbo].[K12_Student_Discipline] CHECK CONSTRAINT [FK_K12_Student_Discipline_Ref_IDES_Interim_Removal_Reason];

ALTER TABLE [dbo].[K12_Student_Employment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Employment_Organization_Person_Role] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id]);

ALTER TABLE [dbo].[K12_Student_Employment] CHECK CONSTRAINT [FK_K12_Student_Employment_Organization_Person_Role];

ALTER TABLE [dbo].[K12_Student_Employment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Employment_Ref_Employed_After_Exit] FOREIGN KEY([Ref_Employed_After_Exit_Id])
REFERENCES [dbo].[Ref_Employed_After_Exit] ([Ref_Employed_After_Exit_Id]);

ALTER TABLE [dbo].[K12_Student_Employment] CHECK CONSTRAINT [FK_K12_Student_Employment_Ref_Employed_After_Exit];

ALTER TABLE [dbo].[K12_Student_Employment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Student_Employment_Ref_Employed_While_Enrolled] FOREIGN KEY([Ref_Employed_While_Enrolled_Id])
REFERENCES [dbo].[Ref_Employed_While_Enrolled] ([Ref_Employed_While_Enrolled_Id]);

ALTER TABLE [dbo].[K12_Student_Employment] CHECK CONSTRAINT [FK_K12_Student_Employment_Ref_Employed_While_Enrolled];

ALTER TABLE [dbo].[K12_Student_Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_K12_Enrollment_Member_Organization_Person] FOREIGN KEY([Organization_Person_Role_Id])
REFERENCES [dbo].[Organization_Person_Role] ([Organization_Person_Role_Id])
ON UPDATE CASCADE
ON DELETE CASCADE;

