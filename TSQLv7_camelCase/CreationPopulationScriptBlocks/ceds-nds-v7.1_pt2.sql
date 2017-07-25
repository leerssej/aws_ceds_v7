/****** Object:  Table [dbo].[RefERAdministrativeDataSource] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefERAdministrativeDataSource](
	[RefERAdministrativeDataSourceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefERAdministrativeDataSource] PRIMARY KEY CLUSTERED 
(
	[RefERAdministrativeDataSourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefERSRuralUrbanContinuumCode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefERSRuralUrbanContinuumCode](
	[RefERSRuralUrbanContinuumCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefERSRuralUrbanContinuumCode] PRIMARY KEY CLUSTERED 
(
	[RefERSRuralUrbanContinuumCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefExitOrWithdrawalStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefExitOrWithdrawalStatus](
	[RefExitOrWithdrawalStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefExitOrWithdrawelStatus] PRIMARY KEY CLUSTERED 
(
	[RefExitOrWithdrawalStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefExitOrWithdrawalType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefExitOrWithdrawalType](
	[RefExitOrWithdrawalTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefExitOrWithdrawalType] PRIMARY KEY CLUSTERED 
(
	[RefExitOrWithdrawalTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFamilyIncomeSource] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFamilyIncomeSource](
	[RefFamilyIncomeSourceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefFamilyIncomeSource] PRIMARY KEY CLUSTERED 
(
	[RefFamilyIncomeSourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFederalProgramFundingAllocationType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFederalProgramFundingAllocationType](
	[RefFederalProgramFundingAllocationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFederalProgramFundingAllocationType] PRIMARY KEY CLUSTERED 
(
	[RefFederalProgramFundingAllocationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFinancialAccountBalanceSheetCode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFinancialAccountBalanceSheetCode](
	[RefFinancialBalanceSheetAccountCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialBalanceSheetAccountCode] PRIMARY KEY CLUSTERED 
(
	[RefFinancialBalanceSheetAccountCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFinancialAccountCategory] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFinancialAccountCategory](
	[RefFinancialAccountCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialAccountCategory] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAccountCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFinancialAccountFundClassification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFinancialAccountFundClassification](
	[RefFinancialAccountFundClassificationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialAccountFundClassification] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAccountFundClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFinancialAccountProgramCode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFinancialAccountProgramCode](
	[RefFinancialAccountProgramCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialAccountProgramCode] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAccountProgramCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFinancialAccountRevenueCode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFinancialAccountRevenueCode](
	[RefFinancialAccountRevenueCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialRevenueAccountCode] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAccountRevenueCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFinancialAidApplicationType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFinancialAidApplicationType](
	[RefFinancialAidApplicationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialAidApplType] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAidApplicationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFinancialAidAwardStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFinancialAidAwardStatus](
	[RefFinancialAidStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_FinancialAidAwardStatus] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAidStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFinancialAidAwardType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFinancialAidAwardType](
	[RefFinancialAidAwardTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialAidAwardType] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAidAwardTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFinancialAidVeteransBenefitStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFinancialAidVeteransBenefitStatus](
	[RefFinancialAidVeteransBenefitStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialAidVeteransBenefitStatus] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAidVeteransBenefitStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFinancialAidVeteransBenefitType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFinancialAidVeteransBenefitType](
	[RefFinancialAidVeteransBenefitTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialAidVeteransBenefitType] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAidVeteransBenefitTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFinancialExpenditureFunctionCode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFinancialExpenditureFunctionCode](
	[RefFinancialExpenditureFunctionCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialExpenditureFunctionCode] PRIMARY KEY CLUSTERED 
(
	[RefFinancialExpenditureFunctionCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFinancialExpenditureLevelOfInstructionCode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFinancialExpenditureLevelOfInstructionCode](
	[RefFinancialExpenditureLevelOfInstructionCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialExpenditureLevelOfInstructionCode] PRIMARY KEY CLUSTERED 
(
	[RefFinancialExpenditureLevelOfInstructionCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFinancialExpenditureObjectCode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFinancialExpenditureObjectCode](
	[RefFinancialExpenditureObjectCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialExpenditureObjectCode] PRIMARY KEY CLUSTERED 
(
	[RefFinancialExpenditureObjectCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFirearmType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFirearmType](
	[RefFirearmTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_FirearmType] PRIMARY KEY CLUSTERED 
(
	[RefFirearmTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFoodServiceEligibility] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFoodServiceEligibility](
	[RefFoodServiceEligibilityId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdiction] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFoodServiceEligibility] PRIMARY KEY CLUSTERED 
(
	[RefFoodServiceEligibilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFoodServiceParticipation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFoodServiceParticipation](
	[RefFoodServiceParticipationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFoodServiceParticipation] PRIMARY KEY CLUSTERED 
(
	[RefFoodServiceParticipationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFrequencyOfService] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFrequencyOfService](
	[RefFrequencyOfServiceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFrequencyOfService] PRIMARY KEY CLUSTERED 
(
	[RefFrequencyOfServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFrequencyUnit] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFrequencyUnit](
	[RefFrequencyUnitId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefFrequencyUnit] PRIMARY KEY CLUSTERED 
(
	[RefFrequencyUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefFullTimeStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefFullTimeStatus](
	[RefFullTimeStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFullTimeStatus] PRIMARY KEY CLUSTERED 
(
	[RefFullTimeStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefGoalMeasurementType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefGoalMeasurementType](
	[RefGoalMeasurementTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefGoalMeasurementType] PRIMARY KEY CLUSTERED 
(
	[RefGoalMeasurementTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefGoalsForAttendingAdultEducation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefGoalsForAttendingAdultEducation](
	[RefGoalsForAttendingAdultEducationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefGoalsForAttendingAdultEducation] PRIMARY KEY CLUSTERED 
(
	[RefGoalsForAttendingAdultEducationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefGoalStatusType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefGoalStatusType](
	[RefGoalStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefGoalStatusType] PRIMARY KEY CLUSTERED 
(
	[RefGoalStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefGpaWeightedIndicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefGpaWeightedIndicator](
	[RefGpaWeightedIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefGpaWeightedIndicator] PRIMARY KEY CLUSTERED 
(
	[RefGpaWeightedIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefGradeLevel] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefGradeLevel](
	[RefGradeLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[RefGradeLevelTypeId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefGrade] PRIMARY KEY CLUSTERED 
(
	[RefGradeLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefGradeLevelType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefGradeLevelType](
	[RefGradeLevelTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefGradeLevelType] PRIMARY KEY CLUSTERED 
(
	[RefGradeLevelTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefGradePointAverageDomain] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefGradePointAverageDomain](
	[RefGradePointAverageDomainId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefGradePointAverageDomain] PRIMARY KEY CLUSTERED 
(
	[RefGradePointAverageDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefGraduateAssistantIpedsCategory] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefGraduateAssistantIpedsCategory](
	[RefGraduateAssistantIpedsCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefGraduateAssistIpedsCategory] PRIMARY KEY CLUSTERED 
(
	[RefGraduateAssistantIpedsCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefGraduateOrDoctoralExamResultsStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefGraduateOrDoctoralExamResultsStatus](
	[RefGraduateOrDoctoralExamResultsStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefGraduateOrDoctoralExamResultsStatus] PRIMARY KEY CLUSTERED 
(
	[RefGraduateOrDoctoralExamResultsStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefGunFreeSchoolsActReportingStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefGunFreeSchoolsActReportingStatus](
	[RefGunFreeSchoolsActStatusReportingId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefGunFreeSchoolsActStatusReporting] PRIMARY KEY CLUSTERED 
(
	[RefGunFreeSchoolsActStatusReportingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefHealthInsuranceCoverage] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefHealthInsuranceCoverage](
	[RefHealthInsuranceCoverageId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefInsurance] PRIMARY KEY CLUSTERED 
(
	[RefHealthInsuranceCoverageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefHearingScreeningStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefHearingScreeningStatus](
	[RefHearingScreeningStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefHearingScreen] PRIMARY KEY CLUSTERED 
(
	[RefHearingScreeningStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefHigherEducationInstitutionAccreditationStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefHigherEducationInstitutionAccreditationStatus](
	[RefHigherEducationInstitutionAccreditationStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_HigherEducationInstitutionAccreditationStatus] PRIMARY KEY CLUSTERED 
(
	[RefHigherEducationInstitutionAccreditationStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefHighSchoolDiplomaDistinctionType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefHighSchoolDiplomaDistinctionType](
	[RefHighSchoolDiplomaDistinctionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefHSDiplomaDistinctionType] PRIMARY KEY CLUSTERED 
(
	[RefHighSchoolDiplomaDistinctionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefHighSchoolDiplomaType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefHighSchoolDiplomaType](
	[RefHighSchoolDiplomaTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefHighSchoolDiplomaType] PRIMARY KEY CLUSTERED 
(
	[RefHighSchoolDiplomaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefHighSchoolGraduationRateIndicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefHighSchoolGraduationRateIndicator](
	[RefHSGraduationRateIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefHSGraduationRateIndicator] PRIMARY KEY CLUSTERED 
(
	[RefHSGraduationRateIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefHomelessNighttimeResidence] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefHomelessNighttimeResidence](
	[RefHomelessNighttimeResidenceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefHomelessNighttimeResidence] PRIMARY KEY CLUSTERED 
(
	[RefHomelessNighttimeResidenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIDEADisabilityType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIDEADisabilityType](
	[RefIDEADisabilityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIDEADisabilityType] PRIMARY KEY CLUSTERED 
(
	[RefIDEADisabilityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIDEADisciplineMethodFirearm] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIDEADisciplineMethodFirearm](
	[RefIDEADisciplineMethodFirearmId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIDEADisciplineMethodFirearm] PRIMARY KEY CLUSTERED 
(
	[RefIDEADisciplineMethodFirearmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIDEAEducationalEnvironmentEC] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIDEAEducationalEnvironmentEC](
	[RefIDEAEducationalEnvironmentECId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIDEAEducationalEnvironmentEC] PRIMARY KEY CLUSTERED 
(
	[RefIDEAEducationalEnvironmentECId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIDEAEducationalEnvironmentSchoolAge] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIDEAEducationalEnvironmentSchoolAge](
	[RefIDESEducationalEnvironmentSchoolAge] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIDEAEducationalEnvironmentSchoolAge] PRIMARY KEY CLUSTERED 
(
	[RefIDESEducationalEnvironmentSchoolAge] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIDEAEligibilityEvaluationCategory] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIDEAEligibilityEvaluationCategory](
	[RefIDEAEligibilityEvaluationCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIDEAEligibilityEvaluationCategory] PRIMARY KEY CLUSTERED 
(
	[RefIDEAEligibilityEvaluationCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIDEAEnvironmentEL] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIDEAEnvironmentEL](
	[RefIDEAEnvironmentELId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIDEAEnvironmentEL] PRIMARY KEY CLUSTERED 
(
	[RefIDEAEnvironmentELId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIDEAIEPStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIDEAIEPStatus](
	[RefIDEAIEPStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIDEAIEPStatus] PRIMARY KEY CLUSTERED 
(
	[RefIDEAIEPStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIDEAInterimRemoval] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIDEAInterimRemoval](
	[RefIDEAInterimRemovalId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIDEAInterimRemovalId] PRIMARY KEY CLUSTERED 
(
	[RefIDEAInterimRemovalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIDEAInterimRemovalReason] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIDEAInterimRemovalReason](
	[RefIDEAInterimRemovalReasonId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIDEAInterimRemovalReason] PRIMARY KEY CLUSTERED 
(
	[RefIDEAInterimRemovalReasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIDEAPartCEligibilityCategory] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIDEAPartCEligibilityCategory](
	[RefIDEAPartCEligibilityCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIDEAPartCEligibilityCategory] PRIMARY KEY CLUSTERED 
(
	[RefIDEAPartCEligibilityCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIEPAuthorizationDocumentType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIEPAuthorizationDocumentType](
	[RefIEPAuthorizationDocumentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIEPAuthorizationDocumentType] PRIMARY KEY CLUSTERED 
(
	[RefIEPAuthorizationDocumentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIEPEligibilityEvaluationType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIEPEligibilityEvaluationType](
	[RefIEPEligibilityEvaluationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIEPEligibilityEvaluationType] PRIMARY KEY CLUSTERED 
(
	[RefIEPEligibilityEvaluationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIEPGoalType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIEPGoalType](
	[RefIEPGoalTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIEPGoalType] PRIMARY KEY CLUSTERED 
(
	[RefIEPGoalTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefImmunizationType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefImmunizationType](
	[RefImmunizationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefImmunizationType] PRIMARY KEY CLUSTERED 
(
	[RefImmunizationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIncidentBehavior] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIncidentBehavior](
	[RefIncidentBehaviorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_IncidentBehavior] PRIMARY KEY CLUSTERED 
(
	[RefIncidentBehaviorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIncidentBehaviorSecondary] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIncidentBehaviorSecondary](
	[RefIncidentBehaviorSecondaryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_IncidentBehaviorSecondary] PRIMARY KEY CLUSTERED 
(
	[RefIncidentBehaviorSecondaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIncidentInjuryType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIncidentInjuryType](
	[RefIncidentInjuryTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_IncidentInjuryType] PRIMARY KEY CLUSTERED 
(
	[RefIncidentInjuryTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIncidentLocation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIncidentLocation](
	[RefIncidentLocationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_InciddentLocation] PRIMARY KEY CLUSTERED 
(
	[RefIncidentLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIncidentMultipleOffenseType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIncidentMultipleOffenseType](
	[RefIncidentMultipleOffenseTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIncidentMultipleOffenseType] PRIMARY KEY CLUSTERED 
(
	[RefIncidentMultipleOffenseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIncidentPerpetratorInjuryType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIncidentPerpetratorInjuryType](
	[RefIncidentPerpetratorInjuryTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIncidentPerpetratorInjuryType] PRIMARY KEY CLUSTERED 
(
	[RefIncidentPerpetratorInjuryTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIncidentPersonRoleType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIncidentPersonRoleType](
	[RefIncidentPersonRoleTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIncidentPersonRoleType] PRIMARY KEY CLUSTERED 
(
	[RefIncidentPersonRoleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIncidentPersonType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIncidentPersonType](
	[RefIncidentPersonTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIncidentPersonType] PRIMARY KEY CLUSTERED 
(
	[RefIncidentPersonTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIncidentReporterType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIncidentReporterType](
	[RefIncidentReporterTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIncidentReporterType] PRIMARY KEY CLUSTERED 
(
	[RefIncidentReporterTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIncidentTimeDescriptionCode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIncidentTimeDescriptionCode](
	[RefIncidentTimeDescriptionCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIncidentTimeDescriptionCode] PRIMARY KEY CLUSTERED 
(
	[RefIncidentTimeDescriptionCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIncomeCalculationMethod] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIncomeCalculationMethod](
	[RefIncomeCalculationMethodId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefIncomeCalculation] PRIMARY KEY CLUSTERED 
(
	[RefIncomeCalculationMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIncreasedLearningTimeType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIncreasedLearningTimeType](
	[RefIncreasedLearningTimeTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_IncreasedLearningTimeType] PRIMARY KEY CLUSTERED 
(
	[RefIncreasedLearningTimeTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIndividualizedProgramDateType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIndividualizedProgramDateType](
	[RefIndividualizedProgramDateTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefIndividualizedProgramDateType] PRIMARY KEY CLUSTERED 
(
	[RefIndividualizedProgramDateTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIndividualizedProgramLocation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIndividualizedProgramLocation](
	[RefIndividualizedProgramLocationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefIndividualizedProgramLocation] PRIMARY KEY CLUSTERED 
(
	[RefIndividualizedProgramLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIndividualizedProgramPlannedServiceType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIndividualizedProgramPlannedServiceType](
	[RefIndividualizedProgramPlannedServiceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIndividualizedProgramPlannedServiceType] PRIMARY KEY CLUSTERED 
(
	[RefIndividualizedProgramPlannedServiceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIndividualizedProgramTransitionType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIndividualizedProgramTransitionType](
	[RefIndividualizedProgramTransitionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefIndividualizedProgramTransitionType] PRIMARY KEY CLUSTERED 
(
	[RefIndividualizedProgramTransitionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIndividualizedProgramType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIndividualizedProgramType](
	[RefIndividualizedProgramTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefIndividualizedProgramType] PRIMARY KEY CLUSTERED 
(
	[RefIndividualizedProgramTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefInstitutionTelephoneType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefInstitutionTelephoneType](
	[RefInstitutionTelephoneTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefInstitutionTelephone] PRIMARY KEY CLUSTERED 
(
	[RefInstitutionTelephoneTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefInstructionalActivityHours] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefInstructionalActivityHours](
	[RefInstructionalActivityHoursId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefInstructionalActivityHours] PRIMARY KEY CLUSTERED 
(
	[RefInstructionalActivityHoursId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefInstructionalStaffContractLength] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefInstructionalStaffContractLength](
	[RefInstructionalStaffContractLengthId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefInstructStaffContractLength] PRIMARY KEY CLUSTERED 
(
	[RefInstructionalStaffContractLengthId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefInstructionalStaffFacultyTenure] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefInstructionalStaffFacultyTenure](
	[RefInstructionalStaffFacultyTenureId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefInstructStaffFacultyTenure] PRIMARY KEY CLUSTERED 
(
	[RefInstructionalStaffFacultyTenureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefInstructionCreditType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefInstructionCreditType](
	[RefInstructionCreditTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_InstructionCreditType] PRIMARY KEY CLUSTERED 
(
	[RefInstructionCreditTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefInstructionLocationType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefInstructionLocationType](
	[RefInstructionLocationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefInstructionLocationType] PRIMARY KEY CLUSTERED 
(
	[RefInstructionLocationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIntegratedTechnologyStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIntegratedTechnologyStatus](
	[RefIntegratedTechnologyStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIntegratedTechnologyStatus] PRIMARY KEY CLUSTERED 
(
	[RefIntegratedTechnologyStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefInternetAccess] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefInternetAccess](
	[RefInternetAccessId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefInternetAccess] PRIMARY KEY CLUSTERED 
(
	[RefInternetAccessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIPEDSFASBFinancialPosition] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIPEDSFASBFinancialPosition](
	[RefIPEDSFASBFinancialPositionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIPEDSFASBFinancialPosition] PRIMARY KEY CLUSTERED 
(
	[RefIPEDSFASBFinancialPositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIPEDSFASBFunctionalExpense] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIPEDSFASBFunctionalExpense](
	[RefIPEDSFASBFunctionalExpenseId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIPEDSFASBFunctionalExpense] PRIMARY KEY CLUSTERED 
(
	[RefIPEDSFASBFunctionalExpenseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIPEDSFASBPellGrantTransactions] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIPEDSFASBPellGrantTransactions](
	[RefIPEDSFASBPellGrantTransactionsId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIPEDSFASBPellGrantTransactions] PRIMARY KEY CLUSTERED 
(
	[RefIPEDSFASBPellGrantTransactionsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIPEDSFASBRevenue] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIPEDSFASBRevenue](
	[RefIPEDSFASBRevenueId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIPEDSFASBRevenue] PRIMARY KEY CLUSTERED 
(
	[RefIPEDSFASBRevenueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIPEDSFASBRevenueRestriction] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIPEDSFASBRevenueRestriction](
	[RefIPEDSFASBRevenueRestrictionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIPEDSFASBRevenueRestriction] PRIMARY KEY CLUSTERED 
(
	[RefIPEDSFASBRevenueRestrictionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIPEDSFASBScholarshipsandFellowshipsRevenue] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIPEDSFASBScholarshipsandFellowshipsRevenue](
	[RefIPEDSFASBScholarshipsandFellowshipsRevenueId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIPEDSFASBScholarshipsandFellowshipsRevenue] PRIMARY KEY CLUSTERED 
(
	[RefIPEDSFASBScholarshipsandFellowshipsRevenueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIPEDSGASBFinancialPosition] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIPEDSGASBFinancialPosition](
	[RefIPEDSGASBFinancialPositionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIPEDSGASBFinancialPosition] PRIMARY KEY CLUSTERED 
(
	[RefIPEDSGASBFinancialPositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIPEDSGASBFunctionalExpense] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIPEDSGASBFunctionalExpense](
	[RefIPEDSGASBFunctionalExpenseId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIPEDSGASBFunctionalExpense] PRIMARY KEY CLUSTERED 
(
	[RefIPEDSGASBFunctionalExpenseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIPEDSGASBRevenue] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIPEDSGASBRevenue](
	[RefIPEDSGASBRevenueId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIPEDSGASBRevenue] PRIMARY KEY CLUSTERED 
(
	[RefIPEDSGASBRevenueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIPEDSGASBScholarshipsandFellowshipsRevenue] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIPEDSGASBScholarshipsandFellowshipsRevenue](
	[RefIPEDSGASBScholarshipsandFellowshipsRevenueId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIPEDSGASBScholarshipsandFellowshipsRevenue] PRIMARY KEY CLUSTERED 
(
	[RefIPEDSGASBScholarshipsandFellowshipsRevenueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIPEDSIntercollegiateAthleticsExpenses] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIPEDSIntercollegiateAthleticsExpenses](
	[RefIPEDSIntercollegiateAthleticsExpensesId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIPEDSIntercollegiateAthleticsExpenses] PRIMARY KEY CLUSTERED 
(
	[RefIPEDSIntercollegiateAthleticsExpensesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIPEDSNaturalExpense] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIPEDSNaturalExpense](
	[RefIPEDSNaturalExpenseId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIPEDSNaturalExpense] PRIMARY KEY CLUSTERED 
(
	[RefIPEDSNaturalExpenseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIpedsOccupationalCategory] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIpedsOccupationalCategory](
	[RefIpedsOccupationalCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIPEDSOccupationalCategory] PRIMARY KEY CLUSTERED 
(
	[RefIpedsOccupationalCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIPSPProgressReportSchedule] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIPSPProgressReportSchedule](
	[RefIPSPProgressReportScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIPSPProgressReportSchedule] PRIMARY KEY CLUSTERED 
(
	[RefIPSPProgressReportScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefIPSPProgressReportType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefIPSPProgressReportType](
	[RefIPSPProgressReportTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIPSPProgressReportType] PRIMARY KEY CLUSTERED 
(
	[RefIPSPProgressReportTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefISO6392Language] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefISO6392Language](
	[RefISO6392LanguageId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefISO6392Language] PRIMARY KEY CLUSTERED 
(
	[RefISO6392LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefISO6393Language] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefISO6393Language](
	[RefISO6393LanguageId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefISO6393Language] PRIMARY KEY CLUSTERED 
(
	[RefISO6393LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefISO6395LanguageFamily] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefISO6395LanguageFamily](
	[RefISO6395LanguageFamilyId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefISO6395LanguageFamily] PRIMARY KEY CLUSTERED 
(
	[RefISO6395LanguageFamilyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefItemResponseTheoryDifficultyCategory] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefItemResponseTheoryDifficultyCategory](
	[RefItemResponseTheoryDifficultyCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefItemResponsseTheoryDifficultyCategory] PRIMARY KEY CLUSTERED 
(
	[RefItemResponseTheoryDifficultyCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefItemResponseTheoryKappaAlgorithm] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefItemResponseTheoryKappaAlgorithm](
	[RefItemResponseTheoryKappaAlgorithmId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefItemResponseTheoryKappaAlgorithm] PRIMARY KEY CLUSTERED 
(
	[RefItemResponseTheoryKappaAlgorithmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefK12EndOfCourseRequirement] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefK12EndOfCourseRequirement](
	[RefK12EndOfCourseRequirementId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefK12EndOfCourseRequirement] PRIMARY KEY CLUSTERED 
(
	[RefK12EndOfCourseRequirementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefK12LeaTitleISupportService] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefK12LeaTitleISupportService](
	[RefK12LEATitleISupportServiceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefK12LEATitleISupportService] PRIMARY KEY CLUSTERED 
(
	[RefK12LEATitleISupportServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefK12ResponsibilityType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefK12ResponsibilityType](
	[RefK12ResponsibilityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefK12ResponsibilityType] PRIMARY KEY CLUSTERED 
(
	[RefK12ResponsibilityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefK12StaffClassification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefK12StaffClassification](
	[RefEducationStaffClassificationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEducationStaffClassification] PRIMARY KEY CLUSTERED 
(
	[RefEducationStaffClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLanguage] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLanguage](
	[RefLanguageId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](max) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[RefLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLanguageUseType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLanguageUseType](
	[RefLanguageUseTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_LanguageUseType] PRIMARY KEY CLUSTERED 
(
	[RefLanguageUseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLeaFundsTransferType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLeaFundsTransferType](
	[RefLeaFundsTransferTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLEAFundsTransferType] PRIMARY KEY CLUSTERED 
(
	[RefLeaFundsTransferTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLeaImprovementStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLeaImprovementStatus](
	[RefLeaImprovementStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLeaImprovementStatus] PRIMARY KEY CLUSTERED 
(
	[RefLeaImprovementStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearnerActionType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearnerActionType](
	[RefLearnerActionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefLearnerActionType] PRIMARY KEY CLUSTERED 
(
	[RefLearnerActionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearnerActivityAddToGradeBookFlag] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearnerActivityAddToGradeBookFlag](
	[RefLearnerActivityAddToGradeBookFlagId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefLearnerActivityAddToGradeBookFlag] PRIMARY KEY CLUSTERED 
(
	[RefLearnerActivityAddToGradeBookFlagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearnerActivityMaximumTimeAllowedUnits] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearnerActivityMaximumTimeAllowedUnits](
	[RefLearnerActivityMaximumTimeAllowedUnitsId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearnerActivityMaximumTimeAllowedUnits] PRIMARY KEY CLUSTERED 
(
	[RefLearnerActivityMaximumTimeAllowedUnitsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearnerActivityType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearnerActivityType](
	[RefLearnerActivityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearnerActivityType] PRIMARY KEY CLUSTERED 
(
	[RefLearnerActivityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceAccessAPIType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceAccessAPIType](
	[RefLearningResourceAccessAPITypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceAccessAPIType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceAccessAPITypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceAccessHazardType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceAccessHazardType](
	[RefLearningResourceAccessHazardTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceAccessHazardType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceAccessHazardTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceAccessModeType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceAccessModeType](
	[RefLearningResourceAccessModeTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceAccessModeType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceAccessModeTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceAccessRightsUrl] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceAccessRightsUrl](
	[RefLearningResourceAccessRightsUrlId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceAccessRightsUrl] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceAccessRightsUrlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceAuthorType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceAuthorType](
	[RefLearningResourceAuthorTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceAuthorType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceAuthorTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceBookFormatType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceBookFormatType](
	[RefLearningResourceBookFormatTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceBookFormatType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceBookFormatTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceCompetencyAlignmentType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceCompetencyAlignmentType](
	[RefLearningResourceCompetencyAlignmentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceCompetencyAlignmentType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceCompetencyAlignmentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceControlFlexibilityType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceControlFlexibilityType](
	[RefLearningResourceControlFlexibilityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceControlFlexibilityType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceControlFlexibilityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceDigitalMediaSubType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceDigitalMediaSubType](
	[RefLearningResourceDigitalMediaSubTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceDigitalMediaSubType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceDigitalMediaSubTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceDigitalMediaType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceDigitalMediaType](
	[RefLearningResourceDigitalMediaTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceDigitalMediaType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceDigitalMediaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceEducationalUse] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceEducationalUse](
	[RefLearningResourceEducationalUseId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceEducationalUse] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceEducationalUseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceIntendedEndUserRole] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceIntendedEndUserRole](
	[RefLearningResourceIntendedEndUserRoleId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceIntendedUse] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceIntendedEndUserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceInteractionMode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceInteractionMode](
	[RefLearningResourceInteractionModeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceInteractionMode] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceInteractionModeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceInteractivityType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceInteractivityType](
	[RefLearningResourceInteractivityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceInteractivityType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceInteractivityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceMediaFeatureType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceMediaFeatureType](
	[RefLearningResourceMediaFeatureTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceMediaFeatureType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceMediaFeatureTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourcePhysicalMediaType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourcePhysicalMediaType](
	[RefLearningResourcePhysicalMediaTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourcePhysicalMediaType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourcePhysicalMediaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLearningResourceType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLearningResourceType](
	[RefLearningResourceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLeaType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLeaType](
	[RefLeaTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLeaType] PRIMARY KEY CLUSTERED 
(
	[RefLeaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLeaveEventType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLeaveEventType](
	[RefLeaveEventTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLeaveEventType] PRIMARY KEY CLUSTERED 
(
	[RefLeaveEventTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLevelOfInstitution] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLevelOfInstitution](
	[RefLevelOfInstitutionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLevelOfInstitution] PRIMARY KEY CLUSTERED 
(
	[RefLevelOfInstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLicenseExempt] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLicenseExempt](
	[RefLicenseExemptId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLicenseExempt] PRIMARY KEY CLUSTERED 
(
	[RefLicenseExemptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefLiteracyAssessment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefLiteracyAssessment](
	[RefLiteracyAssessmentId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLiteracyAssessment] PRIMARY KEY CLUSTERED 
(
	[RefLiteracyAssessmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefMagnetSpecialProgram] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefMagnetSpecialProgram](
	[RefMagnetSpecialProgramId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefMagnetStatus] PRIMARY KEY CLUSTERED 
(
	[RefMagnetSpecialProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefMedicalAlertIndicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefMedicalAlertIndicator](
	[RefMedicalAlertIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefMedAlert] PRIMARY KEY CLUSTERED 
(
	[RefMedicalAlertIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefMepEnrollmentType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefMepEnrollmentType](
	[RefMepEnrollmentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMepEnrollmentType] PRIMARY KEY CLUSTERED 
(
	[RefMepEnrollmentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefMepProjectBased] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefMepProjectBased](
	[RefMepProjectBasedId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMepProjectBased] PRIMARY KEY CLUSTERED 
(
	[RefMepProjectBasedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefMepProjectType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefMepProjectType](
	[RefMepProjectTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMepProjectType] PRIMARY KEY CLUSTERED 
(
	[RefMepProjectTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefMepServiceType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefMepServiceType](
	[RefMepServiceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMEPServiceType] PRIMARY KEY CLUSTERED 
(
	[RefMepServiceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefMepSessionType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefMepSessionType](
	[RefMepSessionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMepSessionType] PRIMARY KEY CLUSTERED 
(
	[RefMepSessionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefMepStaffCategory] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefMepStaffCategory](
	[RefMepStaffCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_MepStaffCategory] PRIMARY KEY CLUSTERED 
(
	[RefMepStaffCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefMethodOfServiceDelivery] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefMethodOfServiceDelivery](
	[RefMethodOfServiceDeliveryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMethodOfServiceDelivery] PRIMARY KEY CLUSTERED 
(
	[RefMethodOfServiceDeliveryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefMilitaryActiveStudentIndicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefMilitaryActiveStudentIndicator](
	[RefMilitaryActiveStudentIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMilitaryActiveStudentIndicator] PRIMARY KEY CLUSTERED 
(
	[RefMilitaryActiveStudentIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefMilitaryBranch] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefMilitaryBranch](
	[RefMilitaryBranchId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefMilitaryBranch] PRIMARY KEY CLUSTERED 
(
	[RefMilitaryBranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefMilitaryConnectedStudentIndicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefMilitaryConnectedStudentIndicator](
	[RefMilitaryConnectedStudentIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMilitaryConnectedStudentIndicator] PRIMARY KEY CLUSTERED 
(
	[RefMilitaryConnectedStudentIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefMilitaryVeteranStudentIndicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefMilitaryVeteranStudentIndicator](
	[RefMilitaryVeteranStudentIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMilitaryVeteranStudentIndicator] PRIMARY KEY CLUSTERED 
(
	[RefMilitaryVeteranStudentIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefMultipleIntelligenceType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefMultipleIntelligenceType](
	[RefMultipleIntelligenceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMultipleIntelligenceType] PRIMARY KEY CLUSTERED 
(
	[RefMultipleIntelligenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefNaepAspectsOfReading] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefNaepAspectsOfReading](
	[RefNaepAspectsOfReadingId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefNaepAspecsOfReading] PRIMARY KEY CLUSTERED 
(
	[RefNaepAspectsOfReadingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefNaepMathComplexityLevel] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefNaepMathComplexityLevel](
	[RefNaepMathComplexityLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefNaepMathComplexity] PRIMARY KEY CLUSTERED 
(
	[RefNaepMathComplexityLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefNCESCollegeCourseMapCode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefNCESCollegeCourseMapCode](
	[RefNCESCollegeCourseMapCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefNCESCollegeCourseMapCode] PRIMARY KEY CLUSTERED 
(
	[RefNCESCollegeCourseMapCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefNeedDeterminationMethod] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefNeedDeterminationMethod](
	[RefNeedDeterminationMethodId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefNeedDeterminationMethod] PRIMARY KEY CLUSTERED 
(
	[RefNeedDeterminationMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefNeglectedProgramType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefNeglectedProgramType](
	[RefNeglectedProgramTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefNeglectedProgramType] PRIMARY KEY CLUSTERED 
(
	[RefNeglectedProgramTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefNonPromotionReason] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefNonPromotionReason](
	[RefNonPromotionReasonId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefNonPromotionReason] PRIMARY KEY CLUSTERED 
(
	[RefNonPromotionReasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefNonTraditionalGenderStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefNonTraditionalGenderStatus](
	[RefNonTraditionalGenderStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefNonTraditionalGenderStatus] PRIMARY KEY CLUSTERED 
(
	[RefNonTraditionalGenderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefONETSOCOccupationType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefONETSOCOccupationType](
	[RefONETSOCOccupationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefONETSOCOccupationType] PRIMARY KEY CLUSTERED 
(
	[RefONETSOCOccupationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefOperationalStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefOperationalStatus](
	[RefOperationalStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[RefOperationalStatusTypeId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefOperationalStatus] PRIMARY KEY CLUSTERED 
(
	[RefOperationalStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefOperationalStatusType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefOperationalStatusType](
	[RefOperationalStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOperationalStatusType] PRIMARY KEY CLUSTERED 
(
	[RefOperationalStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefOrganizationElementType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefOrganizationElementType](
	[RefOrganizationElementTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOrganizationElementType] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationElementTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefOrganizationIdentificationSystem] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefOrganizationIdentificationSystem](
	[RefOrganizationIdentificationSystemId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[RefOrganizationIdentifierTypeId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_OrganizationIdentificationSystem] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationIdentificationSystemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefOrganizationIdentifierType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefOrganizationIdentifierType](
	[RefOrganizationIdentifierTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOrganizationIdentifierType] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationIdentifierTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefOrganizationIndicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefOrganizationIndicator](
	[RefOrganizationIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[RefOrganizationTypeId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOrganizationIndicator] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefOrganizationLocationType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefOrganizationLocationType](
	[RefOrganizationLocationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOrganizationLocation] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationLocationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefOrganizationMonitoringNotifications] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefOrganizationMonitoringNotifications](
	[RefOrganizationMonitoringNotificationsId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOrganizationMonitoringNotifications] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationMonitoringNotificationsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefOrganizationRelationship] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefOrganizationRelationship](
	[RefOrganizationRelationshipId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOrganizationRelationship] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationRelationshipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefOrganizationType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefOrganizationType](
	[RefOrganizationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[RefOrganizationElementTypeId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefOrganization] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefOtherNameType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefOtherNameType](
	[RefOtherNameTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOtherNameType] PRIMARY KEY CLUSTERED 
(
	[RefOtherNameTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefOutcomeTimePoint] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefOutcomeTimePoint](
	[RefOutcomeTimePointId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOutcomeTimePoint] PRIMARY KEY CLUSTERED 
(
	[RefOutcomeTimePointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefParaprofessionalQualification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefParaprofessionalQualification](
	[RefParaprofessionalQualificationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefParapaprofessionalQualification] PRIMARY KEY CLUSTERED 
(
	[RefParaprofessionalQualificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefParticipationStatusAyp] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefParticipationStatusAyp](
	[RefParticipationStatusAypId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefParticipationStatusAYP] PRIMARY KEY CLUSTERED 
(
	[RefParticipationStatusAypId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefParticipationType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefParticipationType](
	[RefParticipationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefParticipationType] PRIMARY KEY CLUSTERED 
(
	[RefParticipationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPDActivityApprovedPurpose] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPDActivityApprovedPurpose](
	[RefPDActivityApprovedForId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPDActivityApprovedFor] PRIMARY KEY CLUSTERED 
(
	[RefPDActivityApprovedForId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPDActivityCreditType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPDActivityCreditType](
	[RefPDActivityCreditTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPDActivityCreditType] PRIMARY KEY CLUSTERED 
(
	[RefPDActivityCreditTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPDActivityEducationLevelsAddressed] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPDActivityEducationLevelsAddressed](
	[RefPDActivityEducationLevelsAddressedId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPDActivityEducationLevelsAddressed] PRIMARY KEY CLUSTERED 
(
	[RefPDActivityEducationLevelsAddressedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPDActivityLevel] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPDActivityLevel](
	[RefPDActivityLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPDActivityLevel] PRIMARY KEY CLUSTERED 
(
	[RefPDActivityLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPDActivityTargetAudience] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPDActivityTargetAudience](
	[RefPDActivityTargetAudienceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPDActivityTargetAudience] PRIMARY KEY CLUSTERED 
(
	[RefPDActivityTargetAudienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPDActivityType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPDActivityType](
	[RefPDActivityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPDActivityType] PRIMARY KEY CLUSTERED 
(
	[RefPDActivityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPDAudienceType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPDAudienceType](
	[RefPDAudienceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPDAudienceType] PRIMARY KEY CLUSTERED 
(
	[RefPDAudienceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPDDeliveryMethod] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPDDeliveryMethod](
	[RefPDDeliveryMethodId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPDDeliveryMethod] PRIMARY KEY CLUSTERED 
(
	[RefPDDeliveryMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPDInstructionalDeliveryMode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPDInstructionalDeliveryMode](
	[RefPDInstructionalDeliveryModeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPDInstructionalDeliveryMode] PRIMARY KEY CLUSTERED 
(
	[RefPDInstructionalDeliveryModeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPDSessionStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPDSessionStatus](
	[RefPDSessionStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPDSessionStatus] PRIMARY KEY CLUSTERED 
(
	[RefPDSessionStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPersonalInformationVerification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPersonalInformationVerification](
	[RefPersonalInformationVerificationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPersonalInforrmationVerificationType] PRIMARY KEY CLUSTERED 
(
	[RefPersonalInformationVerificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPersonIdentificationSystem] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPersonIdentificationSystem](
	[RefPersonIdentificationSystemId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[RefPersonIdentifierTypeId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefIdentifier] PRIMARY KEY CLUSTERED 
(
	[RefPersonIdentificationSystemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPersonIdentifierType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPersonIdentifierType](
	[RefPersonIdentifierTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPersonIdentifierType] PRIMARY KEY CLUSTERED 
(
	[RefPersonIdentifierTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPersonLocationType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPersonLocationType](
	[RefPersonLocationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[RoleId] [int] NULL,
	[RefAddressTypeId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPersonLocation] PRIMARY KEY CLUSTERED 
(
	[RefPersonLocationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPersonRelationship] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPersonRelationship](
	[RefPersonRelationshipId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefRelationship] PRIMARY KEY CLUSTERED 
(
	[RefPersonRelationshipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPersonStatusType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPersonStatusType](
	[RefPersonStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPersonStatusType] PRIMARY KEY CLUSTERED 
(
	[RefPersonStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPersonTelephoneNumberType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPersonTelephoneNumberType](
	[RefPersonTelephoneNumberTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPersonTelephoneType] PRIMARY KEY CLUSTERED 
(
	[RefPersonTelephoneNumberTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPESCAwardLevelType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPESCAwardLevelType](
	[RefPESCAwardLevelTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefPESCAwardLevelType] PRIMARY KEY CLUSTERED 
(
	[RefPESCAwardLevelTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPopulationServed] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPopulationServed](
	[RefPopulationServedId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPopulationServed] PRIMARY KEY CLUSTERED 
(
	[RefPopulationServedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPreAndPostTestIndicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPreAndPostTestIndicator](
	[RefPreAndPostTestIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPreAndPostTestIndicator] PRIMARY KEY CLUSTERED 
(
	[RefPreAndPostTestIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPredominantCalendarSystem] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPredominantCalendarSystem](
	[RefPredominantCalendarSystemId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPredominantCalendarSystem] PRIMARY KEY CLUSTERED 
(
	[RefPredominantCalendarSystemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPreKEligibleAgesNonIDEA] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPreKEligibleAgesNonIDEA](
	[RefPreKEligibleAgesNonIDEAId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPreKEligibleAgesNonIDEA] PRIMARY KEY CLUSTERED 
(
	[RefPreKEligibleAgesNonIDEAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPrekindergartenEligibility] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPrekindergartenEligibility](
	[RefPrekindergartenEligibilityId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefPrekindergartenEligibility] PRIMARY KEY CLUSTERED 
(
	[RefPrekindergartenEligibilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPresentAttendanceCategory] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPresentAttendanceCategory](
	[RefPresentAttendanceCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPresentAttendanceCategory] PRIMARY KEY CLUSTERED 
(
	[RefPresentAttendanceCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefProfessionalDevelopmentFinancialSupport] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefProfessionalDevelopmentFinancialSupport](
	[RefProfessionalDevelopmentFinancialSupportId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefProfessionalDevelopmentFinancialSupport] PRIMARY KEY CLUSTERED 
(
	[RefProfessionalDevelopmentFinancialSupportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefProfessionalEducationJobClassification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefProfessionalEducationJobClassification](
	[RefProfessionalEducationJobClassificationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefProfessionalEducationJobClassification] PRIMARY KEY CLUSTERED 
(
	[RefProfessionalEducationJobClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefProfessionalTechnicalCredentialType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefProfessionalTechnicalCredentialType](
	[RefProfessionalTechnicalCredentialTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefProfTechCredentialType] PRIMARY KEY CLUSTERED 
(
	[RefProfessionalTechnicalCredentialTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefProficiencyStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefProficiencyStatus](
	[RefProficiencyStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefProficiencyStatus] PRIMARY KEY CLUSTERED 
(
	[RefProficiencyStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefProficiencyTargetAyp] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefProficiencyTargetAyp](
	[RefProficiencyTargetAypId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefProficiencyTargetAYP] PRIMARY KEY CLUSTERED 
(
	[RefProficiencyTargetAypId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefProfitStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefProfitStatus](
	[RefProfitStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefProfitStatus] PRIMARY KEY CLUSTERED 
(
	[RefProfitStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefProgramDayLength] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefProgramDayLength](
	[RefProgramDayLengthId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefKindergartenDayLength] PRIMARY KEY CLUSTERED 
(
	[RefProgramDayLengthId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefProgramExitReason] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefProgramExitReason](
	[RefProgramExitReasonId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_ProgramExitReason] PRIMARY KEY CLUSTERED 
(
	[RefProgramExitReasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefProgramGiftedEligibility] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefProgramGiftedEligibility](
	[RefProgramGiftedEligibilityId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefProgramGiftedEligibility] PRIMARY KEY CLUSTERED 
(
	[RefProgramGiftedEligibilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefProgramLengthHoursType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefProgramLengthHoursType](
	[RefProgramLengthHoursTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefProgramLength] PRIMARY KEY CLUSTERED 
(
	[RefProgramLengthHoursTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefProgramSponsorType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefProgramSponsorType](
	[RefProgramSponsorTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdiction] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefProgramSponsorType] PRIMARY KEY CLUSTERED 
(
	[RefProgramSponsorTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefProgramType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefProgramType](
	[RefProgramTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefProgramType] PRIMARY KEY CLUSTERED 
(
	[RefProgramTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefProgressLevel] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefProgressLevel](
	[RefProgressLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_ProgressLevel] PRIMARY KEY CLUSTERED 
(
	[RefProgressLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPromotionReason] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPromotionReason](
	[RefPromotionReasonId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPromotionReason] PRIMARY KEY CLUSTERED 
(
	[RefPromotionReasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefProofOfResidencyType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefProofOfResidencyType](
	[RefProofOfResidencyTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefProofOfResidencyType] PRIMARY KEY CLUSTERED 
(
	[RefProofOfResidencyTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPsEnrollmentAction] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPsEnrollmentAction](
	[RefPsEnrollmentActionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdiction] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPSEnrollmentAction] PRIMARY KEY CLUSTERED 
(
	[RefPsEnrollmentActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPsEnrollmentAwardType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPsEnrollmentAwardType](
	[RefPsEnrollmentAwardTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPsEnrollmentAwardType] PRIMARY KEY CLUSTERED 
(
	[RefPsEnrollmentAwardTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPsEnrollmentStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPsEnrollmentStatus](
	[RefPsEnrollmentStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPsEnrollmentStatus_1] PRIMARY KEY CLUSTERED 
(
	[RefPsEnrollmentStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPsEnrollmentType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPsEnrollmentType](
	[RefPsEnrollmentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPsEnrollmentType] PRIMARY KEY CLUSTERED 
(
	[RefPsEnrollmentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPSExitOrWithdrawalType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPSExitOrWithdrawalType](
	[RefPSExitOrWithdrawalTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPSExitOrWithdrawalType] PRIMARY KEY CLUSTERED 
(
	[RefPSExitOrWithdrawalTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPsLepType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPsLepType](
	[RefPsLepTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPsLepType] PRIMARY KEY CLUSTERED 
(
	[RefPsLepTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPSProgramLevel] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPSProgramLevel](
	[RefPSProgramLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPSProgramLevel] PRIMARY KEY CLUSTERED 
(
	[RefPSProgramLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPsStudentLevel] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPsStudentLevel](
	[RefPsStudentLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPsStudentLevel] PRIMARY KEY CLUSTERED 
(
	[RefPsStudentLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPublicSchoolChoiceStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPublicSchoolChoiceStatus](
	[RefPublicSchoolChoiceStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPublicSchoolChoiceStatus] PRIMARY KEY CLUSTERED 
(
	[RefPublicSchoolChoiceStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPublicSchoolResidence] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPublicSchoolResidence](
	[RefPublicSchoolResidenceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPublicSchoolResidence] PRIMARY KEY CLUSTERED 
(
	[RefPublicSchoolResidenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefPurposeOfMonitoringVisit] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefPurposeOfMonitoringVisit](
	[RefPurposeOfMonitoringVisitId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefPurposeOfMonitoringVisit] PRIMARY KEY CLUSTERED 
(
	[RefPurposeOfMonitoringVisitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefQrisParticipation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefQrisParticipation](
	[RefQrisParticipationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefQRISParticipation] PRIMARY KEY CLUSTERED 
(
	[RefQrisParticipationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefRace] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefRace](
	[RefRaceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefRace] PRIMARY KEY CLUSTERED 
(
	[RefRaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefReapAlternativeFundingStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefReapAlternativeFundingStatus](
	[RefReapAlternativeFundingStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefREAPAlternativeFundingStatus] PRIMARY KEY CLUSTERED 
(
	[RefReapAlternativeFundingStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefReasonDelayTransitionConf] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefReasonDelayTransitionConf](
	[RefReasonDelayTransitionConfId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefReasonDelayTransitionConf] PRIMARY KEY CLUSTERED 
(
	[RefReasonDelayTransitionConfId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefReconstitutedStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefReconstitutedStatus](
	[RefReconstitutedStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefReconstitutedStatus] PRIMARY KEY CLUSTERED 
(
	[RefReconstitutedStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefReferralOutcome] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefReferralOutcome](
	[RefReferralOutcomeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefReferralOutcome] PRIMARY KEY CLUSTERED 
(
	[RefReferralOutcomeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefReimbursementType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefReimbursementType](
	[RefReimbursementTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefReimbursementType] PRIMARY KEY CLUSTERED 
(
	[RefReimbursementTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefRestructuringAction] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefRestructuringAction](
	[RefRestructuringActionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefRestructuringAction] PRIMARY KEY CLUSTERED 
(
	[RefRestructuringActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefRlisProgramUse] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefRlisProgramUse](
	[RefRlisProgramUseId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefRLISProgramUse] PRIMARY KEY CLUSTERED 
(
	[RefRlisProgramUseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefRoleStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefRoleStatus](
	[RefRoleStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
	[RefRoleStatusTypeId] [int] NULL,
 CONSTRAINT [PK_RefRoleStatus] PRIMARY KEY CLUSTERED 
(
	[RefRoleStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefRoleStatusType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefRoleStatusType](
	[RefRoleStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefRoleStatusType] PRIMARY KEY CLUSTERED 
(
	[RefRoleStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSCEDCourseLevel] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSCEDCourseLevel](
	[RefSCEDCourseLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefSCEDCourseLevel] PRIMARY KEY CLUSTERED 
(
	[RefSCEDCourseLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSCEDCourseSubjectArea] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSCEDCourseSubjectArea](
	[RefSCEDCourseSubjectAreaId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefSCEDCourseSubjectArea] PRIMARY KEY CLUSTERED 
(
	[RefSCEDCourseSubjectAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefScheduledWellChildScreening] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefScheduledWellChildScreening](
	[RefScheduledWellChildScreeningId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefScheduledWellChildScreening] PRIMARY KEY CLUSTERED 
(
	[RefScheduledWellChildScreeningId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSchoolFoodServiceProgram] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSchoolFoodServiceProgram](
	[RefSchoolFoodServiceProgramId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdiction] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefSchoolFoodServiceProgram] PRIMARY KEY CLUSTERED 
(
	[RefSchoolFoodServiceProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSchoolImprovementFunds] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSchoolImprovementFunds](
	[RefSchoolImprovementFundsId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefSchoolImprovementFunds] PRIMARY KEY CLUSTERED 
(
	[RefSchoolImprovementFundsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSchoolImprovementStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSchoolImprovementStatus](
	[RefSchoolImprovementStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefSchoolImprovementStatus] PRIMARY KEY CLUSTERED 
(
	[RefSchoolImprovementStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSchoolLevel] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSchoolLevel](
	[RefSchoolLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefSchoolLevel] PRIMARY KEY CLUSTERED 
(
	[RefSchoolLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSchoolType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSchoolType](
	[RefSchoolTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefSchoolType] PRIMARY KEY CLUSTERED 
(
	[RefSchoolTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefScoreMetricType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefScoreMetricType](
	[RefScoreMetricTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefScoreMetricType] PRIMARY KEY CLUSTERED 
(
	[RefScoreMetricTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefServiceFrequency] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefServiceFrequency](
	[RefServiceFrequencyId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefServiceFrequency] PRIMARY KEY CLUSTERED 
(
	[RefServiceFrequencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefServiceOption] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefServiceOption](
	[RefServiceOptionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefServiceOption] PRIMARY KEY CLUSTERED 
(
	[RefServiceOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefServices] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefServices](
	[RefServicesId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefServices] PRIMARY KEY CLUSTERED 
(
	[RefServicesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSessionType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSessionType](
	[RefSessionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefSessionType] PRIMARY KEY CLUSTERED 
(
	[RefSessionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSex] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSex](
	[RefSexId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefSex] PRIMARY KEY CLUSTERED 
(
	[RefSexId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSigInterventionType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSigInterventionType](
	[RefSigInterventionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefSigInterventionType] PRIMARY KEY CLUSTERED 
(
	[RefSigInterventionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSingleSexClassStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSingleSexClassStatus](
	[RefSingleSexClassStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefSingleSexClassStatus] PRIMARY KEY CLUSTERED 
(
	[RefSingleSexClassStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSpaceUseType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSpaceUseType](
	[RefSpaceUseTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_SpaceUseType] PRIMARY KEY CLUSTERED 
(
	[RefSpaceUseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSpecialEducationAgeGroupTaught] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSpecialEducationAgeGroupTaught](
	[RefSpecialEducationAgeGroupTaughtId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_SpecialEducationAgeGroupTaught] PRIMARY KEY CLUSTERED 
(
	[RefSpecialEducationAgeGroupTaughtId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSpecialEducationExitReason] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSpecialEducationExitReason](
	[RefSpecialEducationExitReasonId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefSpecialEducationExitReason] PRIMARY KEY CLUSTERED 
(
	[RefSpecialEducationExitReasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSpecialEducationStaffCategory] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSpecialEducationStaffCategory](
	[RefSpecialEducationStaffCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_SpecialEducationStaffCategory] PRIMARY KEY CLUSTERED 
(
	[RefSpecialEducationStaffCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefStaffPerformanceLevel] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefStaffPerformanceLevel](
	[RefStaffPerformanceLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefStaffPerformanceLevel] PRIMARY KEY CLUSTERED 
(
	[RefStaffPerformanceLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefStandardizedAdmissionTest] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefStandardizedAdmissionTest](
	[RefStandardizedAdmissionTestId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefStandardizedAdmissionTest] PRIMARY KEY CLUSTERED 
(
	[RefStandardizedAdmissionTestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefState] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefState](
	[RefStateId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefState] PRIMARY KEY CLUSTERED 
(
	[RefStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefStateANSICode] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

SET ANSI_PADDING ON;

CREATE TABLE [dbo].[RefStateANSICode](
	[Code] [char](2) NOT NULL,
	[StateName] [nvarchar](100) NULL,
 CONSTRAINT [PK_RefStateANSICode] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

SET ANSI_PADDING OFF;

/****** Object:  Table [dbo].[RefStatePovertyDesignation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefStatePovertyDesignation](
	[RefStatePovertyDesignationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_StatePovertyDesignation] PRIMARY KEY CLUSTERED 
(
	[RefStatePovertyDesignationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefStudentSupportServiceType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefStudentSupportServiceType](
	[RefStudentSupportServiceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefStudentSupportServiceType] PRIMARY KEY CLUSTERED 
(
	[RefStudentSupportServiceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefSupervisedClinicalExperience] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefSupervisedClinicalExperience](
	[RefSupervisedClinicalExperienceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefSupervisedClinicalExperience] PRIMARY KEY CLUSTERED 
(
	[RefSupervisedClinicalExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTeacherEducationCredentialExam] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTeacherEducationCredentialExam](
	[RefTeacherEducationCredentialExamId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTeacherEducationCredentialExam] PRIMARY KEY CLUSTERED 
(
	[RefTeacherEducationCredentialExamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTeacherEducationExamScoreType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTeacherEducationExamScoreType](
	[RefTeacherEducationExamScoreTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTeacherEducationExamScoreType] PRIMARY KEY CLUSTERED 
(
	[RefTeacherEducationExamScoreTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTeacherEducationTestCompany] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTeacherEducationTestCompany](
	[RefTeacherEducationTestCompanyId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTeacherEducationTestCompany] PRIMARY KEY CLUSTERED 
(
	[RefTeacherEducationTestCompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTeacherPrepCompleterStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTeacherPrepCompleterStatus](
	[RefTeacherPrepCompleterStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTeacherPrepCompleterStatus] PRIMARY KEY CLUSTERED 
(
	[RefTeacherPrepCompleterStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTeacherPrepEnrollmentStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTeacherPrepEnrollmentStatus](
	[RefTeacherPrepEnrollmentStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTeacherPrepEnrollStatus] PRIMARY KEY CLUSTERED 
(
	[RefTeacherPrepEnrollmentStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTeachingAssignmentRole] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTeachingAssignmentRole](
	[RefTeachingAssignmentRoleId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_TeachingAssignmentRole] PRIMARY KEY CLUSTERED 
(
	[RefTeachingAssignmentRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTeachingCredentialBasis] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTeachingCredentialBasis](
	[RefTeachingCredentialBasisId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTeachingCredentialBasis] PRIMARY KEY CLUSTERED 
(
	[RefTeachingCredentialBasisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTeachingCredentialType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTeachingCredentialType](
	[RefTeachingCredentialTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTeachingCredentialType] PRIMARY KEY CLUSTERED 
(
	[RefTeachingCredentialTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTechnicalAssistanceDeliveryType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTechnicalAssistanceDeliveryType](
	[RefTechnicalAssistanceDeliveryTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTechnicalAssistanceDeliveryType] PRIMARY KEY CLUSTERED 
(
	[RefTechnicalAssistanceDeliveryTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTechnicalAssistanceType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTechnicalAssistanceType](
	[RefTechnicalAssistanceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTechnicalAssistanceType] PRIMARY KEY CLUSTERED 
(
	[RefTechnicalAssistanceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTechnologyLiteracyStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTechnologyLiteracyStatus](
	[RefTechnologyLiteracyStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTechnologyLiteracyStatus] PRIMARY KEY CLUSTERED 
(
	[RefTechnologyLiteracyStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTelephoneNumberType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTelephoneNumberType](
	[RefTelephoneNumberTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTelephoneNumberType] PRIMARY KEY CLUSTERED 
(
	[RefTelephoneNumberTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTenureSystem] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTenureSystem](
	[RefTenureSystemId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTenureSystem] PRIMARY KEY CLUSTERED 
(
	[RefTenureSystemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTextComplexitySystem] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTextComplexitySystem](
	[RefTextComplexitySystemId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefTextComplexitySystem] PRIMARY KEY CLUSTERED 
(
	[RefTextComplexitySystemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTimeForCompletionUnits] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTimeForCompletionUnits](
	[RefTimeForCompletionUnitsId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTimeForCompletionUnits] PRIMARY KEY CLUSTERED 
(
	[RefTimeForCompletionUnitsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTitleIIIAccountability] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTitleIIIAccountability](
	[RefTitleIIIAccountabilityId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTitleIIIAccountability] PRIMARY KEY CLUSTERED 
(
	[RefTitleIIIAccountabilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTitleIIILanguageInstructionProgramType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTitleIIILanguageInstructionProgramType](
	[RefTitleIIILanguageInstructionProgramTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTitleIIILanguageInstruction] PRIMARY KEY CLUSTERED 
(
	[RefTitleIIILanguageInstructionProgramTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTitleIIIProfessionalDevelopmentType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTitleIIIProfessionalDevelopmentType](
	[RefTitleIIIProfessionalDevelopmentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTitleIIIProfessionalDevType] PRIMARY KEY CLUSTERED 
(
	[RefTitleIIIProfessionalDevelopmentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTitleIIndicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTitleIIndicator](
	[RefTitleIIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTitleIIndicator] PRIMARY KEY CLUSTERED 
(
	[RefTitleIIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTitleIInstructionalServices] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTitleIInstructionalServices](
	[RefTitleIInstructionalServicesId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTitleIInstructionalServices] PRIMARY KEY CLUSTERED 
(
	[RefTitleIInstructionalServicesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTitleIProgramStaffCategory] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTitleIProgramStaffCategory](
	[RefTitleIProgramStaffCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_TitleIProgramStaffCategory] PRIMARY KEY CLUSTERED 
(
	[RefTitleIProgramStaffCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTitleIProgramType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTitleIProgramType](
	[RefTitleIProgramTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTitleIProgramType] PRIMARY KEY CLUSTERED 
(
	[RefTitleIProgramTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTitleISchoolStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTitleISchoolStatus](
	[RefTitle1SchoolStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](400) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefTitle1Status] PRIMARY KEY CLUSTERED 
(
	[RefTitle1SchoolStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTransferOutIndicator] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTransferOutIndicator](
	[RefTransferOutIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTransferOutIndicator] PRIMARY KEY CLUSTERED 
(
	[RefTransferOutIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTransferReady] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTransferReady](
	[RefTransferReadyId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTransferReady] PRIMARY KEY CLUSTERED 
(
	[RefTransferReadyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTribalAffiliation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTribalAffiliation](
	[RefTribalAffiliationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefTribalAffiliation] PRIMARY KEY CLUSTERED 
(
	[RefTribalAffiliationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTrimesterWhenPrenatalCareBegan] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTrimesterWhenPrenatalCareBegan](
	[RefTrimesterWhenPrenatalCareBeganId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTrimesterWhenPrenatalCareBegan] PRIMARY KEY CLUSTERED 
(
	[RefTrimesterWhenPrenatalCareBeganId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTuitionResidencyType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTuitionResidencyType](
	[RefTuitionResidencyTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTuitionResidencyType] PRIMARY KEY CLUSTERED 
(
	[RefTuitionResidencyTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefTuitionUnit] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefTuitionUnit](
	[RefTuitionUnitId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefTuitionUnit] PRIMARY KEY CLUSTERED 
(
	[RefTuitionUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefUSCitizenshipStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefUSCitizenshipStatus](
	[RefUSCitizenshipStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKUSCitizenStatus] PRIMARY KEY CLUSTERED 
(
	[RefUSCitizenshipStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefVisaType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefVisaType](
	[RefVisaTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefVisaType] PRIMARY KEY CLUSTERED 
(
	[RefVisaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefVisionScreeningStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefVisionScreeningStatus](
	[RefVisionScreeningStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefVisionScreen] PRIMARY KEY CLUSTERED 
(
	[RefVisionScreeningStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefWageCollectionMethod] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefWageCollectionMethod](
	[RefWageCollectionMethodId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefWageCollectionMethod] PRIMARY KEY CLUSTERED 
(
	[RefWageCollectionMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefWageVerification] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefWageVerification](
	[RefWageVerificationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefWageVerification] PRIMARY KEY CLUSTERED 
(
	[RefWageVerificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefWeaponType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefWeaponType](
	[RefWeaponTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefWeaponType] PRIMARY KEY CLUSTERED 
(
	[RefWeaponTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefWfProgramParticipation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefWfProgramParticipation](
	[RefWfProgramParticipationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefWfProgramParticipation] PRIMARY KEY CLUSTERED 
(
	[RefWfProgramParticipationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RefWorkbasedLearningOpportunityType] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RefWorkbasedLearningOpportunityType](
	[RefWorkbasedLearningOpportunityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefWorkbasedLearningOpportunityType] PRIMARY KEY CLUSTERED 
(
	[RefWorkbasedLearningOpportunityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RequiredImmunization] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RequiredImmunization](
	[RequiredImmunizationId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefImmunizationTypeId] [int] NOT NULL,
 CONSTRAINT [PK_RequiredImmunization] PRIMARY KEY CLUSTERED 
(
	[RequiredImmunizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_RequiredImmunization] UNIQUE NONCLUSTERED 
(
	[OrganizationId] ASC,
	[RefImmunizationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Role] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[RefJurisdictionId] [int] NULL,
 CONSTRAINT [PK_RefRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RoleAttendance] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RoleAttendance](
	[RoleAttendanceId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[NumberOfDaysInAttendance] [decimal](9, 2) NULL,
	[NumberOfDaysAbsent] [decimal](9, 2) NULL,
	[AttendanceRate] [decimal](5, 4) NULL,
 CONSTRAINT [PK_RoleAttendance] PRIMARY KEY CLUSTERED 
(
	[RoleAttendanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RoleAttendanceEvent] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RoleAttendanceEvent](
	[RoleAttendanceEventId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[RefAttendanceEventTypeId] [int] NULL,
	[RefAttendanceStatusId] [int] NULL,
	[RefAbsentAttendanceCategoryId] [int] NULL,
	[RefPresentAttendanceCategoryId] [int] NULL,
	[RefLeaveEventTypeId] [int] NULL,
 CONSTRAINT [PK_RoleAttendanceEvent] PRIMARY KEY CLUSTERED 
(
	[RoleAttendanceEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[RoleStatus] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RoleStatus](
	[RoleStatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusStartDate] [date] NOT NULL,
	[StatusEndDate] [datetime] NULL,
	[RefRoleStatusId] [int] NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
 CONSTRAINT [PK_RoleStatus] PRIMARY KEY CLUSTERED 
(
	[RoleStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[Rubric] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Rubric](
	[RubricId] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[Title] [nvarchar](30) NULL,
	[UrlReference] [nvarchar](512) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Rubric] PRIMARY KEY CLUSTERED 
(
	[RubricId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[RubricCriterion] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RubricCriterion](
	[RubricCriterionId] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](30) NULL,
	[Title] [nvarchar](60) NULL,
	[Description] [nvarchar](max) NULL,
	[Weight] [decimal](18, 0) NULL,
	[Position] [int] NULL,
	[RubricId] [int] NOT NULL,
 CONSTRAINT [PK_RubricCriterion] PRIMARY KEY CLUSTERED 
(
	[RubricCriterionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[RubricCriterionLevel] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[RubricCriterionLevel](
	[RubricCriterionLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Quality] [nvarchar](max) NULL,
	[Score] [decimal](18, 0) NULL,
	[Feedback] [nvarchar](max) NULL,
	[Position] [int] NULL,
	[RubricCriterionId] [int] NOT NULL,
 CONSTRAINT [PK_RubricCriterionLevel] PRIMARY KEY CLUSTERED 
(
	[RubricCriterionLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[ServiceFrequency] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[ServiceFrequency](
	[ServiceFrequencyId] [int] IDENTITY(1,1) NOT NULL,
	[ServicePlanId] [int] NOT NULL,
	[DurationInMinutes] [int] NULL,
	[FrequencyLength] [int] NULL,
	[InstancesPerCycle] [int] NULL,
	[RefFrequencyUnitId] [int] NULL,
 CONSTRAINT [PK_ServiceFrequency] PRIMARY KEY CLUSTERED 
(
	[ServiceFrequencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[ServicePlan] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[ServicePlan](
	[ServicePlanId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[DeclinedServicesDate] [date] NULL,
	[ExtendsOutsideSchoolYear] [bit] NULL,
	[InclusiveSettingIndicator] [bit] NULL,
	[ReasonForDeclinedServices] [nvarchar](max) NULL,
	[SettingDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_ServicePlan] PRIMARY KEY CLUSTERED 
(
	[ServicePlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

/****** Object:  Table [dbo].[ServiceProvided] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[ServiceProvided](
	[ServiceProvidedId] [int] IDENTITY(1,1) NOT NULL,
	[ServicesReceivedId] [int] NOT NULL,
	[RefServicesId] [int] NULL,
	[RefStudentSupportServiceTypeId] [int] NULL,
 CONSTRAINT [PK_ServiceProvided] PRIMARY KEY CLUSTERED 
(
	[ServiceProvidedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[ServiceProvider] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[ServiceProvider](
	[ServiceProviderId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[ServiceProvidedId] [int] NOT NULL,
	[ServiceStaffId] [int] NOT NULL,
 CONSTRAINT [PK_ServiceProvider] PRIMARY KEY CLUSTERED 
(
	[ServiceProviderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[ServicesReceived] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[ServicesReceived](
	[ServicesReceivedId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[FullTimeEquivalency] [decimal](3, 2) NULL,
	[ServicePlanId] [int] NOT NULL,
 CONSTRAINT [PK_ServicesReceived] PRIMARY KEY CLUSTERED 
(
	[ServicesReceivedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[ServiceStaff] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[ServiceStaff](
	[ServiceStaffId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefSpecialEducationStaffCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_ServiceStaff] PRIMARY KEY CLUSTERED 
(
	[ServiceStaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_OrganizationPersonRole_RefSpecialEducationStaffCategory] UNIQUE NONCLUSTERED 
(
	[OrganizationPersonRoleId] ASC,
	[RefSpecialEducationStaffCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[StaffCredential] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[StaffCredential](
	[PersonCredentialId] [int] IDENTITY(1,1) NOT NULL,
	[RefTeachingCredentialTypeId] [int] NULL,
	[RefTeachingCredentialBasisId] [int] NULL,
	[RefChildDevAssociateTypeId] [int] NULL,
	[RefParaprofessionalQualificationId] [int] NULL,
	[TechnologySkillsStandardsMet] [bit] NULL,
	[DiplomaOrCredentialAwardDate] [nvarchar](7) NULL,
	[RefProgramSponsorTypeId] [int] NULL,
	[CTEInstructorIndustryCertification] [bit] NULL,
	[CardiopulmonaryResuscitationCertification] [date] NULL,
	[FirstAidCertification] [date] NULL,
 CONSTRAINT [PK_StaffCredential] PRIMARY KEY CLUSTERED 
(
	[PersonCredentialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[StaffEmployment] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[StaffEmployment](
	[StaffEmploymentId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[HireDate] [date] NULL,
	[PositionTitle] [nvarchar](45) NULL,
	[RefEmploymentSeparationTypeId] [int] NULL,
	[RefEmploymentSeparationReasonId] [int] NULL,
	[UnionMembershipName] [nvarchar](200) NULL,
	[WeeksEmployedPerYear] [int] NULL,
 CONSTRAINT [PK_StaffEmployment] PRIMARY KEY CLUSTERED 
(
	[StaffEmploymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[StaffEvaluation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[StaffEvaluation](
	[StaffEvaluationId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[System] [nvarchar](60) NULL,
	[Scale] [nvarchar](80) NULL,
	[ScoreOrRating] [nvarchar](60) NULL,
	[Outcome] [nvarchar](80) NULL,
	[RefStaffPerformanceLevelId] [int] NULL,
 CONSTRAINT [PK_StaffEvaluation] PRIMARY KEY CLUSTERED 
(
	[StaffEvaluationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[StaffExperience] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[StaffExperience](
	[PersonId] [int] NOT NULL,
	[YearsOfPriorTeachingExperience] [decimal](9, 2) NULL,
	[YearsOfPriorAETeachingExperience] [decimal](9, 2) NULL,
 CONSTRAINT [PK_StaffExperience] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[StaffProfessionalDevelopmentActivity] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[StaffProfessionalDevelopmentActivity](
	[StaffProfessionalDevelopmentActivityId] [int] IDENTITY(1,1) NOT NULL,
	[ProfessionalDevelopmentRequirementId] [int] NOT NULL,
	[ActivityTitle] [nvarchar](60) NULL,
	[ActivityIdentifier] [nvarchar](40) NULL,
	[ActivityStartDate] [date] NULL,
	[ActivityCompletionDate] [date] NULL,
	[ScholarshipStatus] [bit] NULL,
	[RefProfessionalDevelopmentFinancialSupportId] [int] NULL,
	[NumberOfCreditsEarned] [decimal](10, 2) NULL,
	[RefCourseCreditUnitId] [int] NULL,
	[ProfessionalDevelopmentActivityId] [int] NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[ProfessionalDevelopmentSessionId] [int] NOT NULL,
 CONSTRAINT [PK_StaffProfessionalDevelopmentActivity] PRIMARY KEY CLUSTERED 
(
	[StaffProfessionalDevelopmentActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[StaffTechnicalAssistance] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[StaffTechnicalAssistance](
	[StaffTechnicalAssistanceId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefTechnicalAssistanceTypeId] [int] NULL,
	[RefTechnicalAssistanceDeliveryTypeId] [int] NULL,
	[TechnicalAssistanceApprovedInd] [bit] NULL,
 CONSTRAINT [PK_StaffTechnicalAssistance] PRIMARY KEY CLUSTERED 
(
	[StaffTechnicalAssistanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[TeacherEducationCredentialExam] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[TeacherEducationCredentialExam](
	[TeacherEducationCredentialExamId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NULL,
	[RefTeacherEducationCredentialExamId] [int] NULL,
	[RefTeacherEducationExamScoreTypeId] [int] NULL,
	[RefTeacherEducationTestCompanyId] [int] NULL,
 CONSTRAINT [PK_TeacherEduCredentialExam] PRIMARY KEY CLUSTERED 
(
	[TeacherEducationCredentialExamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[TeacherStudentDataLinkExclusion] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[TeacherStudentDataLinkExclusion](
	[TeacherStudentDataLinkExclusionId] [int] IDENTITY(1,1) NOT NULL,
	[StudentOrganizationPersonRoleId] [int] NOT NULL,
	[TeacherOrganizationPersonRoleId] [int] NOT NULL,
 CONSTRAINT [PK_TeacherStudentDataLinkExclusion] PRIMARY KEY CLUSTERED 
(
	[TeacherStudentDataLinkExclusionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[WorkforceEmploymentQuarterlyData] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[WorkforceEmploymentQuarterlyData](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefEmployedWhileEnrolledId] [int] NULL,
	[RefEmployedAfterExitId] [int] NULL,
	[EmployedInMultipleJobsCount] [decimal](2, 0) NULL,
	[MilitaryEnlistmentAfterExit] [bit] NULL,
 CONSTRAINT [PK_WorkforceEmploymentQuarterlyData] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  Table [dbo].[WorkforceProgramParticipation] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[WorkforceProgramParticipation](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefWfProgramParticipationId] [int] NULL,
	[RefProfessionalTechnicalCredentialTypeId] [int] NULL,
	[DiplomaOrCredentialAwardDate] [nchar](7) NULL,
 CONSTRAINT [PK_WorkforceProgramParticipation] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;

/****** Object:  View [dbo].[vCEDSElementDetails] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;



CREATE VIEW [dbo].[vCEDSElementDetails]
AS 
SELECT 
	  c.TABLE_NAME TableName
	, c.COLUMN_NAME ColumnName
	, data_type as DataType
	, character_maximum_length as [MaxLength]
	, c.ORDINAL_POSITION ColumnPostion
	, CAST(ISNULL(de.value,me.value) AS varchar(MAX)) [Description]
	, CAST(el.value AS varchar(MAX)) [CedsElement]
	, CAST(ur.value AS varchar(MAX)) [Url]
	, CAST(gi.value as VARCHAR(MAX)) [GlobalId]
FROM INFORMATION_SCHEMA.COLUMNS c 
INNER JOIN INFORMATION_SCHEMA.TABLES t ON t.TABLE_NAME = c.TABLE_NAME 
OUTER APPLY fn_listextendedproperty ('MS_Description', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) me
OUTER APPLY fn_listextendedproperty ('CEDS_Def_Desc', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) de
OUTER APPLY fn_listextendedproperty ('CEDS_Element', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) el
OUTER APPLY fn_listextendedproperty ('CEDS_URL', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) ur
OUTER APPLY fn_listextendedproperty ('CEDS_GlobalId', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) gi
WHERE t.table_type = 'BASE TABLE'
	AND me.Value IS NOT NULL
UNION
SELECT 
	  t.TABLE_NAME TableName
	, NULL ColumnName
	, NULL as DataType
	, NULL as [MaxLength]
	, NULL ColumnPostion
	, CAST(ISNULL(de.value,me.value) AS varchar(MAX)) [Description]
	, CAST(el.value AS varchar(MAX)) [CedsElement]
	, CAST(ur.value AS varchar(MAX)) [Url]
	, CAST(gi.value as VARCHAR(MAX)) [GlobalId]
FROM INFORMATION_SCHEMA.TABLES t 
OUTER APPLY fn_listextendedproperty ('MS_Description', 'schema', 'dbo', N'table', t.TABLE_NAME, NULL, DEFAULT) me
OUTER APPLY fn_listextendedproperty ('CEDS_Def_Desc', 'schema', 'dbo', N'table', t.TABLE_NAME, NULL, DEFAULT) de
OUTER APPLY fn_listextendedproperty ('CEDS_Element', 'schema', 'dbo', N'table', t.TABLE_NAME, NULL, DEFAULT) el
OUTER APPLY fn_listextendedproperty ('CEDS_URL', 'schema', 'dbo', N'table', t.TABLE_NAME, NULL, DEFAULT) ur
OUTER APPLY fn_listextendedproperty ('CEDS_GlobalId', 'schema', 'dbo', N'table', t.TABLE_NAME, NULL, DEFAULT) gi
WHERE t.table_type = 'BASE TABLE'
	AND me.Value IS NOT NULL
;

/****** Object:  View [dbo].[vCEDSMapping] ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;



CREATE VIEW [dbo].[vCEDSMapping]
AS 
SELECT 
	  c.TABLE_NAME TableName
	, c.COLUMN_NAME ColumnName
	, LTRIM(ms.Item) [GlobalId]
	, LTRIM(es.Item) [ElementName]
	, LTRIM(us.Item) [URL]
FROM INFORMATION_SCHEMA.COLUMNS c 
INNER JOIN INFORMATION_SCHEMA.TABLES t ON t.TABLE_NAME = c.TABLE_NAME 
OUTER APPLY fn_listextendedproperty ('CEDS_GlobalId', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) m
OUTER APPLY fn_listextendedproperty ('CEDS_Element', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) e
OUTER APPLY fn_listextendedproperty ('CEDS_URL', 'schema', 'dbo', N'table', c.TABLE_NAME, N'column', c.COLUMN_NAME) u
CROSS APPLY dbo.fnSplit(CAST(m.Value AS VARCHAR(MAX)), ',') ms
CROSS APPLY dbo.fnSplit(CAST(e.Value AS VARCHAR(MAX)), ',') es
CROSS APPLY dbo.fnSplit(CAST(u.Value AS VARCHAR(MAX)), ',') us
WHERE ms.RowNumber = es.RowNumber
	AND ms.RowNumber = us.RowNumber
UNION
SELECT 
	  T.TABLE_NAME
	, NULL 
	, LTRIM(ms.Item) [GlobalId]
	, LTRIM(es.Item) [ElementName]
	, LTRIM(us.Item) [URL]
FROM INFORMATION_SCHEMA.COLUMNS c 
INNER JOIN INFORMATION_SCHEMA.TABLES t ON t.TABLE_NAME = c.TABLE_NAME 
OUTER APPLY fn_listextendedproperty ('CEDS_GlobalId', 'schema', 'dbo', N'table', c.TABLE_NAME, NULL, DEFAULT) m
OUTER APPLY fn_listextendedproperty ('CEDS_Element', 'schema', 'dbo', N'table', c.TABLE_NAME, NULL, DEFAULT) e
OUTER APPLY fn_listextendedproperty ('CEDS_URL', 'schema', 'dbo', N'table', c.TABLE_NAME, NULL, DEFAULT) u
CROSS APPLY dbo.fnSplit(CAST(m.Value AS VARCHAR(MAX)), ',') ms
CROSS APPLY dbo.fnSplit(CAST(e.Value AS VARCHAR(MAX)), ',') es
CROSS APPLY dbo.fnSplit(CAST(u.Value AS VARCHAR(MAX)), ',') us
WHERE ms.RowNumber = es.RowNumber
	AND ms.RowNumber = us.RowNumber
;

ALTER TABLE [dbo].[PersonTelephone] ADD  CONSTRAINT [DF__PersonPho__Prima__50E5F592]  DEFAULT ((0)) FOR [PrimaryTelephoneNumberIndicator];

ALTER TABLE [dbo].[Activity]  WITH CHECK ADD  CONSTRAINT [FK_Activity_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[Activity] CHECK CONSTRAINT [FK_Activity_Organization];

ALTER TABLE [dbo].[ActivityRecognition]  WITH CHECK ADD  CONSTRAINT [FK_ActivityRecognition_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[ActivityRecognition] CHECK CONSTRAINT [FK_ActivityRecognition_OrganizationPersonRole];

ALTER TABLE [dbo].[ActivityRecognition]  WITH CHECK ADD  CONSTRAINT [FK_ActivityRecognition_RefActivityRecognitionType] FOREIGN KEY([RefActivityRecognitionTypeId])
REFERENCES [dbo].[RefActivityRecognitionType] ([RefActivityRecognitionTypeId]);

ALTER TABLE [dbo].[ActivityRecognition] CHECK CONSTRAINT [FK_ActivityRecognition_RefActivityRecognitionType];

ALTER TABLE [dbo].[AeCourse]  WITH CHECK ADD  CONSTRAINT [FK_AeCourse_RefCareerCluster] FOREIGN KEY([RefCareerClusterId])
REFERENCES [dbo].[RefCareerCluster] ([RefCareerClusterId]);

ALTER TABLE [dbo].[AeCourse] CHECK CONSTRAINT [FK_AeCourse_RefCareerCluster];

ALTER TABLE [dbo].[AeProvider]  WITH CHECK ADD  CONSTRAINT [FK_AeProvider_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[AeProvider] CHECK CONSTRAINT [FK_AeProvider_Organization];

ALTER TABLE [dbo].[AeProvider]  WITH CHECK ADD  CONSTRAINT [FK_AeProvider_RefLevelOfInstitution] FOREIGN KEY([RefLevelOfInstitutionId])
REFERENCES [dbo].[RefLevelOfInstitution] ([RefLevelOfInstitutionId]);

ALTER TABLE [dbo].[AeProvider] CHECK CONSTRAINT [FK_AeProvider_RefLevelOfInstitution];

ALTER TABLE [dbo].[AeStaff]  WITH CHECK ADD  CONSTRAINT [FK_AeStaff_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[AeStaff] CHECK CONSTRAINT [FK_AeStaff_OrganizationPersonRole];

ALTER TABLE [dbo].[AeStaff]  WITH CHECK ADD  CONSTRAINT [FK_AeStaff_RefAeCertificationType] FOREIGN KEY([RefAeCertificationTypeId])
REFERENCES [dbo].[RefAeCertificationType] ([RefAeCertificationTypeId]);

ALTER TABLE [dbo].[AeStaff] CHECK CONSTRAINT [FK_AeStaff_RefAeCertificationType];

ALTER TABLE [dbo].[AeStaff]  WITH CHECK ADD  CONSTRAINT [FK_AeStaff_RefAeStaffClassification] FOREIGN KEY([RefAeStaffClassificationId])
REFERENCES [dbo].[RefAeStaffClassification] ([RefAeStaffClassificationId]);

ALTER TABLE [dbo].[AeStaff] CHECK CONSTRAINT [FK_AeStaff_RefAeStaffClassification];

ALTER TABLE [dbo].[AeStaff]  WITH CHECK ADD  CONSTRAINT [FK_AeStaff_RefAeStaffEmploymentStatus] FOREIGN KEY([RefAeStaffEmploymentStatusId])
REFERENCES [dbo].[RefAeStaffEmploymentStatus] ([RefAeStaffEmploymentStatusId]);

ALTER TABLE [dbo].[AeStaff] CHECK CONSTRAINT [FK_AeStaff_RefAeStaffEmploymentStatus];

ALTER TABLE [dbo].[AeStudentAcademicRecord]  WITH CHECK ADD  CONSTRAINT [FK_AeStudentAcademicRecord_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[AeStudentAcademicRecord] CHECK CONSTRAINT [FK_AeStudentAcademicRecord_OrganizationPersonRole];

ALTER TABLE [dbo].[AeStudentAcademicRecord]  WITH CHECK ADD  CONSTRAINT [FK_AeStudentAcademicRecord_RefHighSchoolDiplomaType] FOREIGN KEY([RefHighSchoolDiplomaTypeId])
REFERENCES [dbo].[RefHighSchoolDiplomaType] ([RefHighSchoolDiplomaTypeId]);

ALTER TABLE [dbo].[AeStudentAcademicRecord] CHECK CONSTRAINT [FK_AeStudentAcademicRecord_RefHighSchoolDiplomaType];

ALTER TABLE [dbo].[AeStudentAcademicRecord]  WITH CHECK ADD  CONSTRAINT [FK_AeStudentAcademicRecord_RefProfTechnicalCredentialType] FOREIGN KEY([RefProfessionalTechnicalCredentialTypeId])
REFERENCES [dbo].[RefProfessionalTechnicalCredentialType] ([RefProfessionalTechnicalCredentialTypeId]);

ALTER TABLE [dbo].[AeStudentAcademicRecord] CHECK CONSTRAINT [FK_AeStudentAcademicRecord_RefProfTechnicalCredentialType];

ALTER TABLE [dbo].[AeStudentEmployment]  WITH CHECK ADD  CONSTRAINT [FK_AeStudentEmployment_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[AeStudentEmployment] CHECK CONSTRAINT [FK_AeStudentEmployment_OrganizationPersonRole];

ALTER TABLE [dbo].[AeStudentEmployment]  WITH CHECK ADD  CONSTRAINT [FK_AeStudentEmployment_RefEmployedAfterExit] FOREIGN KEY([RefEmployedAfterExitId])
REFERENCES [dbo].[RefEmployedAfterExit] ([RefEmployedAfterExitId]);

ALTER TABLE [dbo].[AeStudentEmployment] CHECK CONSTRAINT [FK_AeStudentEmployment_RefEmployedAfterExit];

ALTER TABLE [dbo].[AeStudentEmployment]  WITH CHECK ADD  CONSTRAINT [FK_AeStudentEmployment_RefEmployedWhileEnrolled] FOREIGN KEY([RefEmployedWhileEnrolledId])
REFERENCES [dbo].[RefEmployedWhileEnrolled] ([RefEmployedWhileEnrolledId]);

ALTER TABLE [dbo].[AeStudentEmployment] CHECK CONSTRAINT [FK_AeStudentEmployment_RefEmployedWhileEnrolled];

ALTER TABLE [dbo].[ApipInteraction]  WITH CHECK ADD  CONSTRAINT [FK_ApipInteraction_AssessmentItemApip] FOREIGN KEY([AssessmentItemId])
REFERENCES [dbo].[AssessmentItemApip] ([AssessmentItemId]);

ALTER TABLE [dbo].[ApipInteraction] CHECK CONSTRAINT [FK_ApipInteraction_AssessmentItemApip];

ALTER TABLE [dbo].[ApipInteraction]  WITH CHECK ADD  CONSTRAINT [FK_ApipInteraction_RefAPIPInteractionType] FOREIGN KEY([RefApipInteractionTypeId])
REFERENCES [dbo].[RefApipInteractionType] ([RefAPIPInteractionTypeId]);

ALTER TABLE [dbo].[ApipInteraction] CHECK CONSTRAINT [FK_ApipInteraction_RefAPIPInteractionType];

ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_RefAssessmentPurpose] FOREIGN KEY([RefAssessmentPurposeId])
REFERENCES [dbo].[RefAssessmentPurpose] ([RefAssessmentPurposeId]);

ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_RefAssessmentPurpose];

ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_RefAssessmentType] FOREIGN KEY([RefAssessmentTypeId])
REFERENCES [dbo].[RefAssessmentType] ([RefAssessmentTypeId]);

ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_RefAssessmentType];

ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_RefAssessmentTypeChildrenWithDisabilities] FOREIGN KEY([RefAssessmentTypeChildrenWithDisabilitiesId])
REFERENCES [dbo].[RefAssessmentTypeChildrenWithDisabilities] ([RefAssessmentTypeChildrenWithDisabilitiesId]);

ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_RefAssessmentTypeChildrenWithDisabilities];

ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_RefRefAcademicSubject] FOREIGN KEY([RefAcademicSubjectId])
REFERENCES [dbo].[RefAcademicSubject] ([RefAcademicSubjectId]);

ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_RefRefAcademicSubject];

ALTER TABLE [dbo].[Assessment_AssessmentAdministration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_AssessmentAdministration_Assessment] FOREIGN KEY([AssessmentId])
REFERENCES [dbo].[Assessment] ([AssessmentId]);

ALTER TABLE [dbo].[Assessment_AssessmentAdministration] CHECK CONSTRAINT [FK_Assessment_AssessmentAdministration_Assessment];

ALTER TABLE [dbo].[Assessment_AssessmentAdministration]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_AssessmentAdministration_AssessmentAdministration] FOREIGN KEY([AssessmentAdministrationId])
REFERENCES [dbo].[AssessmentAdministration] ([AssessmentAdministrationId]);

ALTER TABLE [dbo].[Assessment_AssessmentAdministration] CHECK CONSTRAINT [FK_Assessment_AssessmentAdministration_AssessmentAdministration];

ALTER TABLE [dbo].[AssessmentAccommodation]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentAccommodation_RefAccommodationType] FOREIGN KEY([RefAccommodationTypeId])
REFERENCES [dbo].[RefAccommodationType] ([RefAccommodationTypeId]);

ALTER TABLE [dbo].[AssessmentAccommodation] CHECK CONSTRAINT [FK_AssessmentAccommodation_RefAccommodationType];

ALTER TABLE [dbo].[AssessmentAccommodation]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentAccommodation_RefAssessmentAccommodationCategory] FOREIGN KEY([RefAssessmentAccommodationCategoryId])
REFERENCES [dbo].[RefAssessmentAccommodationCategory] ([RefAssessmentAccommodationCategoryId]);

ALTER TABLE [dbo].[AssessmentAccommodation] CHECK CONSTRAINT [FK_AssessmentAccommodation_RefAssessmentAccommodationCategory];

ALTER TABLE [dbo].[AssessmentAdministration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentAdministration_RefAssessmentReportingMethod] FOREIGN KEY([RefAssessmentReportingMethodId])
REFERENCES [dbo].[RefAssessmentReportingMethod] ([RefAssessmentReportingMethodId]);

ALTER TABLE [dbo].[AssessmentAdministration] CHECK CONSTRAINT [FK_AssessmentAdministration_RefAssessmentReportingMethod];

ALTER TABLE [dbo].[AssessmentAdministration_Organization]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentAdministration_Organization_AssessmentAdmin] FOREIGN KEY([AssessmentAdministrationId])
REFERENCES [dbo].[AssessmentAdministration] ([AssessmentAdministrationId]);

ALTER TABLE [dbo].[AssessmentAdministration_Organization] CHECK CONSTRAINT [FK_AssessmentAdministration_Organization_AssessmentAdmin];

ALTER TABLE [dbo].[AssessmentAdministration_Organization]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentAdministration_Organization_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[AssessmentAdministration_Organization] CHECK CONSTRAINT [FK_AssessmentAdministration_Organization_Organization];

ALTER TABLE [dbo].[AssessmentAsset]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentAsset_LearningResource] FOREIGN KEY([LearningResourceId])
REFERENCES [dbo].[LearningResource] ([LearningResourceId]);

ALTER TABLE [dbo].[AssessmentAsset] CHECK CONSTRAINT [FK_AssessmentAsset_LearningResource];

ALTER TABLE [dbo].[AssessmentAsset]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentAsset_RefAssessAssetIDType] FOREIGN KEY([RefAssessmentAssestIdentifierType])
REFERENCES [dbo].[RefAssessmentAssetIdentifierType] ([RefAssessmentAssetIdentifierTypeId]);

ALTER TABLE [dbo].[AssessmentAsset] CHECK CONSTRAINT [FK_AssessmentAsset_RefAssessAssetIDType];

ALTER TABLE [dbo].[AssessmentAsset]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentAsset_RefAssessmentAssetType] FOREIGN KEY([RefAssessmentAssetTypeId])
REFERENCES [dbo].[RefAssessmentAssetType] ([RefAssessmentAssetTypeId]);

ALTER TABLE [dbo].[AssessmentAsset] CHECK CONSTRAINT [FK_AssessmentAsset_RefAssessmentAssetType];

ALTER TABLE [dbo].[AssessmentAsset]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentAsset_RefLanguage] FOREIGN KEY([RefAssessmentLanguageId])
REFERENCES [dbo].[RefLanguage] ([RefLanguageId]);

ALTER TABLE [dbo].[AssessmentAsset] CHECK CONSTRAINT [FK_AssessmentAsset_RefLanguage];

ALTER TABLE [dbo].[AssessmentELDevelopmentalDomain]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_AssessmentELDevelopmentalDomain_Assessment] FOREIGN KEY([AssessmentId])
REFERENCES [dbo].[Assessment] ([AssessmentId]);

ALTER TABLE [dbo].[AssessmentELDevelopmentalDomain] CHECK CONSTRAINT [FK_Assessment_AssessmentELDevelopmentalDomain_Assessment];

ALTER TABLE [dbo].[AssessmentELDevelopmentalDomain]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_AssessmentELDevelopmentalDomain_RefAssessmentELDevelopmentalDomain] FOREIGN KEY([RefAssessmentELDevelopmentalDomainId])
REFERENCES [dbo].[RefAssessmentELDevelopmentalDomain] ([RefAssessmentELDevelopmentalDomainId]);

ALTER TABLE [dbo].[AssessmentELDevelopmentalDomain] CHECK CONSTRAINT [FK_Assessment_AssessmentELDevelopmentalDomain_RefAssessmentELDevelopmentalDomain];

ALTER TABLE [dbo].[AssessmentForm]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentForm_Assessment] FOREIGN KEY([AssessmentId])
REFERENCES [dbo].[Assessment] ([AssessmentId]);

ALTER TABLE [dbo].[AssessmentForm] CHECK CONSTRAINT [FK_AssessmentForm_Assessment];

ALTER TABLE [dbo].[AssessmentForm]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentForm_LearningResource] FOREIGN KEY([LearningResourceId])
REFERENCES [dbo].[LearningResource] ([LearningResourceId]);

ALTER TABLE [dbo].[AssessmentForm] CHECK CONSTRAINT [FK_AssessmentForm_LearningResource];

ALTER TABLE [dbo].[AssessmentForm]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentForm_RefLanguage] FOREIGN KEY([RefAssessmentLanguageId])
REFERENCES [dbo].[RefLanguage] ([RefLanguageId]);

ALTER TABLE [dbo].[AssessmentForm] CHECK CONSTRAINT [FK_AssessmentForm_RefLanguage];

ALTER TABLE [dbo].[AssessmentForm_AssessmentAsset]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentForm_AssessmentAsset_AssessmentAsset] FOREIGN KEY([AssessmentAssetId])
REFERENCES [dbo].[AssessmentAsset] ([AssessmentAssetId]);

ALTER TABLE [dbo].[AssessmentForm_AssessmentAsset] CHECK CONSTRAINT [FK_AssessmentForm_AssessmentAsset_AssessmentAsset];

ALTER TABLE [dbo].[AssessmentForm_AssessmentAsset]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentForm_AssessmentAsset_AssessmentForm] FOREIGN KEY([AssessmentFormId])
REFERENCES [dbo].[AssessmentForm] ([AssessmentFormId]);

ALTER TABLE [dbo].[AssessmentForm_AssessmentAsset] CHECK CONSTRAINT [FK_AssessmentForm_AssessmentAsset_AssessmentForm];

ALTER TABLE [dbo].[AssessmentForm_AssessmentFormSection]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentForm_AssessmentFormSection_AssessmentForm] FOREIGN KEY([AssessmentFormId])
REFERENCES [dbo].[AssessmentForm] ([AssessmentFormId]);

ALTER TABLE [dbo].[AssessmentForm_AssessmentFormSection] CHECK CONSTRAINT [FK_AssessmentForm_AssessmentFormSection_AssessmentForm];

ALTER TABLE [dbo].[AssessmentForm_AssessmentFormSection]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentForm_AssessmentFormSection_FormSection] FOREIGN KEY([AssessmentFormSectionId])
REFERENCES [dbo].[AssessmentFormSection] ([AssessmentFormSectionId]);

ALTER TABLE [dbo].[AssessmentForm_AssessmentFormSection] CHECK CONSTRAINT [FK_AssessmentForm_AssessmentFormSection_FormSection];

ALTER TABLE [dbo].[AssessmentFormSection]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentFormSection_LearningResource] FOREIGN KEY([LearningResourceId])
REFERENCES [dbo].[LearningResource] ([LearningResourceId]);

ALTER TABLE [dbo].[AssessmentFormSection] CHECK CONSTRAINT [FK_AssessmentFormSection_LearningResource];

ALTER TABLE [dbo].[AssessmentFormSection]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentFormSection_RefAssessmentFormSectionIDType] FOREIGN KEY([RefAssessmentFormSectionIdentificationSystemId])
REFERENCES [dbo].[RefAssessmentFormSectionIdentificationSystem] ([RefAssessmentFormSectionIdentificationSystemId]);

ALTER TABLE [dbo].[AssessmentFormSection] CHECK CONSTRAINT [FK_AssessmentFormSection_RefAssessmentFormSectionIDType];

ALTER TABLE [dbo].[AssessmentFormSection]  WITH CHECK ADD  CONSTRAINT [FK_FormSection_FormSection] FOREIGN KEY([ChildOf_FormSectionId])
REFERENCES [dbo].[AssessmentFormSection] ([AssessmentFormSectionId]);

ALTER TABLE [dbo].[AssessmentFormSection] CHECK CONSTRAINT [FK_FormSection_FormSection];

ALTER TABLE [dbo].[AssessmentFormSection_AssessmentAsset]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentFormSection_AssessmentAsset_AssessmentAsset] FOREIGN KEY([AssessmentAssetId])
REFERENCES [dbo].[AssessmentAsset] ([AssessmentAssetId]);

ALTER TABLE [dbo].[AssessmentFormSection_AssessmentAsset] CHECK CONSTRAINT [FK_AssessmentFormSection_AssessmentAsset_AssessmentAsset];

ALTER TABLE [dbo].[AssessmentFormSection_AssessmentAsset]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentFormSection_AssessmentAsset_AssessmentFormSection] FOREIGN KEY([AssessmentFormSectionId])
REFERENCES [dbo].[AssessmentFormSection] ([AssessmentFormSectionId]);

ALTER TABLE [dbo].[AssessmentFormSection_AssessmentAsset] CHECK CONSTRAINT [FK_AssessmentFormSection_AssessmentAsset_AssessmentFormSection];

ALTER TABLE [dbo].[AssessmentFormSection_AssessmentItem]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentFormSection_AssessmentItem_AssessmentItem] FOREIGN KEY([AssessmentItemId])
REFERENCES [dbo].[AssessmentItem] ([AssessmentItemId]);

ALTER TABLE [dbo].[AssessmentFormSection_AssessmentItem] CHECK CONSTRAINT [FK_AssessmentFormSection_AssessmentItem_AssessmentItem];

ALTER TABLE [dbo].[AssessmentFormSection_AssessmentItem]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentFormSection_AssessmentItem_FormSection] FOREIGN KEY([AssessmentFormSectionId])
REFERENCES [dbo].[AssessmentFormSection] ([AssessmentFormSectionId]);

ALTER TABLE [dbo].[AssessmentFormSection_AssessmentItem] CHECK CONSTRAINT [FK_AssessmentFormSection_AssessmentItem_FormSection];

ALTER TABLE [dbo].[AssessmentItem]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItem_LearningResource] FOREIGN KEY([LearningResourceId])
REFERENCES [dbo].[LearningResource] ([LearningResourceId]);

ALTER TABLE [dbo].[AssessmentItem] CHECK CONSTRAINT [FK_AssessmentItem_LearningResource];

ALTER TABLE [dbo].[AssessmentItem]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItem_RefAssessmentItemType] FOREIGN KEY([RefAssessmentItemTypeId])
REFERENCES [dbo].[RefAssessmentItemType] ([RefAssessmentItemTypeId]);

ALTER TABLE [dbo].[AssessmentItem] CHECK CONSTRAINT [FK_AssessmentItem_RefAssessmentItemType];

ALTER TABLE [dbo].[AssessmentItem]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItem_RefNAEPAspectsOfReading] FOREIGN KEY([RefNaepAspectsOfReadingId])
REFERENCES [dbo].[RefNaepAspectsOfReading] ([RefNaepAspectsOfReadingId]);

ALTER TABLE [dbo].[AssessmentItem] CHECK CONSTRAINT [FK_AssessmentItem_RefNAEPAspectsOfReading];

ALTER TABLE [dbo].[AssessmentItem]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItem_RefNAEPMathComplexityLevel] FOREIGN KEY([RefNaepMathComplexityLevelId])
REFERENCES [dbo].[RefNaepMathComplexityLevel] ([RefNaepMathComplexityLevelId]);

ALTER TABLE [dbo].[AssessmentItem] CHECK CONSTRAINT [FK_AssessmentItem_RefNAEPMathComplexityLevel];

ALTER TABLE [dbo].[AssessmentItem]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItem_RefTextComplexitySystem] FOREIGN KEY([RefTextComplexitySystemId])
REFERENCES [dbo].[RefTextComplexitySystem] ([RefTextComplexitySystemId]);

ALTER TABLE [dbo].[AssessmentItem] CHECK CONSTRAINT [FK_AssessmentItem_RefTextComplexitySystem];

ALTER TABLE [dbo].[AssessmentItem]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItem_Rubric] FOREIGN KEY([RubricId])
REFERENCES [dbo].[Rubric] ([RubricId]);

ALTER TABLE [dbo].[AssessmentItem] CHECK CONSTRAINT [FK_AssessmentItem_Rubric];

ALTER TABLE [dbo].[AssessmentItemApip]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItemBody_AssessmentItem1] FOREIGN KEY([AssessmentItemId])
REFERENCES [dbo].[AssessmentItem] ([AssessmentItemId]);

ALTER TABLE [dbo].[AssessmentItemApip] CHECK CONSTRAINT [FK_AssessmentItemBody_AssessmentItem1];

ALTER TABLE [dbo].[AssessmentItemApipDescription]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItemApipDescription_AssessmentItemApip] FOREIGN KEY([AssessmentItemId])
REFERENCES [dbo].[AssessmentItemApip] ([AssessmentItemId]);

ALTER TABLE [dbo].[AssessmentItemApipDescription] CHECK CONSTRAINT [FK_AssessmentItemApipDescription_AssessmentItemApip];

ALTER TABLE [dbo].[AssessmentItemApipDescription]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItemApipDescription_RefLanguage] FOREIGN KEY([RefKeywordTranslationLanguageId])
REFERENCES [dbo].[RefLanguage] ([RefLanguageId]);

ALTER TABLE [dbo].[AssessmentItemApipDescription] CHECK CONSTRAINT [FK_AssessmentItemApipDescription_RefLanguage];

ALTER TABLE [dbo].[AssessmentItemCharacteristic]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItemCharacteristic_RefAssessItemCharType] FOREIGN KEY([RefAssessmentItemCharacteristicTypeId])
REFERENCES [dbo].[RefAssessmentItemCharacteristicType] ([RefAssessmentItemCharacteristicTypeId]);

ALTER TABLE [dbo].[AssessmentItemCharacteristic] CHECK CONSTRAINT [FK_AssessmentItemCharacteristic_RefAssessItemCharType];

ALTER TABLE [dbo].[AssessmentItemCharacteristic]  WITH CHECK ADD  CONSTRAINT [FK_ItemCharacteristic_Item] FOREIGN KEY([AssessmentItemId])
REFERENCES [dbo].[AssessmentItem] ([AssessmentItemId]);

ALTER TABLE [dbo].[AssessmentItemCharacteristic] CHECK CONSTRAINT [FK_ItemCharacteristic_Item];

ALTER TABLE [dbo].[AssessmentItemPossibleResponse]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItemPossibleResponse_AssessmentItem] FOREIGN KEY([AssessmentItemId])
REFERENCES [dbo].[AssessmentItem] ([AssessmentItemId]);

ALTER TABLE [dbo].[AssessmentItemPossibleResponse] CHECK CONSTRAINT [FK_AssessmentItemPossibleResponse_AssessmentItem];

ALTER TABLE [dbo].[AssessmentItemResponse]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItemResponse_AssessmentItem] FOREIGN KEY([AssessmentItemId])
REFERENCES [dbo].[AssessmentItem] ([AssessmentItemId]);

ALTER TABLE [dbo].[AssessmentItemResponse] CHECK CONSTRAINT [FK_AssessmentItemResponse_AssessmentItem];

ALTER TABLE [dbo].[AssessmentItemResponse]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItemResponse_AssessmentParticipantSession] FOREIGN KEY([AssessmentParticipantSessionId])
REFERENCES [dbo].[AssessmentParticipantSession] ([AssessmentParticipantSessionId]);

ALTER TABLE [dbo].[AssessmentItemResponse] CHECK CONSTRAINT [FK_AssessmentItemResponse_AssessmentParticipantSession];

ALTER TABLE [dbo].[AssessmentItemResponse]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItemResponse_RefAssessItemResponseStatus] FOREIGN KEY([RefAssessItemResponseStatusId])
REFERENCES [dbo].[RefAssessmentItemResponseStatus] ([RefAssessmentItemResponseStatusId]);

ALTER TABLE [dbo].[AssessmentItemResponse] CHECK CONSTRAINT [FK_AssessmentItemResponse_RefAssessItemResponseStatus];

ALTER TABLE [dbo].[AssessmentItemResponse]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItemResponse_RefAssessmentItemResponseScoreStatus] FOREIGN KEY([RefAssessmentItemResponseScoreStatusId])
REFERENCES [dbo].[RefAssessmentItemResponseScoreStatus] ([RefAssessmentItemResponseScoreStatusId]);

ALTER TABLE [dbo].[AssessmentItemResponse] CHECK CONSTRAINT [FK_AssessmentItemResponse_RefAssessmentItemResponseScoreStatus];

ALTER TABLE [dbo].[AssessmentItemResponse]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItemResponse_RefProficiencyStatus] FOREIGN KEY([RefProficiencyStatusId])
REFERENCES [dbo].[RefProficiencyStatus] ([RefProficiencyStatusId]);

ALTER TABLE [dbo].[AssessmentItemResponse] CHECK CONSTRAINT [FK_AssessmentItemResponse_RefProficiencyStatus];

ALTER TABLE [dbo].[AssessmentItemResponseTheory]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItemResponseTheory_AssessmentItem] FOREIGN KEY([AssessmentItemId])
REFERENCES [dbo].[AssessmentItem] ([AssessmentItemId]);

ALTER TABLE [dbo].[AssessmentItemResponseTheory] CHECK CONSTRAINT [FK_AssessmentItemResponseTheory_AssessmentItem];

ALTER TABLE [dbo].[AssessmentItemResponseTheory]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItemResponseTheory_RefIRTDifficultyCategory] FOREIGN KEY([RefItemResponseTheoryDifficultyCategoryId])
REFERENCES [dbo].[RefItemResponseTheoryDifficultyCategory] ([RefItemResponseTheoryDifficultyCategoryId]);

ALTER TABLE [dbo].[AssessmentItemResponseTheory] CHECK CONSTRAINT [FK_AssessmentItemResponseTheory_RefIRTDifficultyCategory];

ALTER TABLE [dbo].[AssessmentItemResponseTheory]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItemResponseTheory_RefIRTKappaAlgorithm] FOREIGN KEY([RefItemResponseTheoryKappaAlgorithmId])
REFERENCES [dbo].[RefItemResponseTheoryKappaAlgorithm] ([RefItemResponseTheoryKappaAlgorithmId]);

ALTER TABLE [dbo].[AssessmentItemResponseTheory] CHECK CONSTRAINT [FK_AssessmentItemResponseTheory_RefIRTKappaAlgorithm];

ALTER TABLE [dbo].[AssessmentItemRubricCriterionResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessItemRubricCriterionResult_AssessItemResponse] FOREIGN KEY([AssessmentItemResponseId])
REFERENCES [dbo].[AssessmentItemResponse] ([AssessmentItemResponseId]);

ALTER TABLE [dbo].[AssessmentItemRubricCriterionResult] CHECK CONSTRAINT [FK_AssessItemRubricCriterionResult_AssessItemResponse];

ALTER TABLE [dbo].[AssessmentItemRubricCriterionResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessItemRubricCriterionResult_RubricCriterionLevel] FOREIGN KEY([RubricCriterionLevelId])
REFERENCES [dbo].[RubricCriterionLevel] ([RubricCriterionLevelId]);

ALTER TABLE [dbo].[AssessmentItemRubricCriterionResult] CHECK CONSTRAINT [FK_AssessItemRubricCriterionResult_RubricCriterionLevel];

ALTER TABLE [dbo].[AssessmentLanguage]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentLanguage_Assessment] FOREIGN KEY([AssessmentId])
REFERENCES [dbo].[Assessment] ([AssessmentId]);

ALTER TABLE [dbo].[AssessmentLanguage] CHECK CONSTRAINT [FK_AssessmentLanguage_Assessment];

ALTER TABLE [dbo].[AssessmentLanguage]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentLanguage_RefLanguage] FOREIGN KEY([RefLanguageId])
REFERENCES [dbo].[RefLanguage] ([RefLanguageId]);

ALTER TABLE [dbo].[AssessmentLanguage] CHECK CONSTRAINT [FK_AssessmentLanguage_RefLanguage];

ALTER TABLE [dbo].[AssessmentLevelsForWhichDesigned]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_LevelsForWhichDesigned_Assessment] FOREIGN KEY([AssessmentId])
REFERENCES [dbo].[Assessment] ([AssessmentId]);

ALTER TABLE [dbo].[AssessmentLevelsForWhichDesigned] CHECK CONSTRAINT [FK_Assessment_LevelsForWhichDesigned_Assessment];

ALTER TABLE [dbo].[AssessmentLevelsForWhichDesigned]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_LevelsForWhichDesigned_RefGrade] FOREIGN KEY([RefGradeLevelId])
REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]);

ALTER TABLE [dbo].[AssessmentLevelsForWhichDesigned] CHECK CONSTRAINT [FK_Assessment_LevelsForWhichDesigned_RefGrade];

ALTER TABLE [dbo].[AssessmentNeedApipContent]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentNeedApipContent_RefAssessmentNeedSigningType] FOREIGN KEY([RefAssessmentNeedSigningTypeId])
REFERENCES [dbo].[RefAssessmentNeedSigningType] ([RefAssessmentNeedSigningTypeId]);

ALTER TABLE [dbo].[AssessmentNeedApipContent] CHECK CONSTRAINT [FK_AssessmentNeedApipContent_RefAssessmentNeedSigningType];

ALTER TABLE [dbo].[AssessmentNeedApipContent]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentNeedApipContent_RefLanguage] FOREIGN KEY([ItemTranslationDisplayLanguageTypeId])
REFERENCES [dbo].[RefLanguage] ([RefLanguageId]);

ALTER TABLE [dbo].[AssessmentNeedApipContent] CHECK CONSTRAINT [FK_AssessmentNeedApipContent_RefLanguage];

ALTER TABLE [dbo].[AssessmentNeedApipContent]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentNeedApipContent_RefLanguage1] FOREIGN KEY([KeywordTranslationLanguageTypeId])
REFERENCES [dbo].[RefLanguage] ([RefLanguageId]);

ALTER TABLE [dbo].[AssessmentNeedApipContent] CHECK CONSTRAINT [FK_AssessmentNeedApipContent_RefLanguage1];

ALTER TABLE [dbo].[AssessmentNeedApipContent]  WITH CHECK ADD  CONSTRAINT [FK_AssessNeedApipContent_AssessmentPersonalNeedsProfileContent] FOREIGN KEY([AssessmentPersonalNeedsProfileContentId])
REFERENCES [dbo].[AssessmentPersonalNeedsProfileContent] ([AssessmentPersonalNeedsProfileContentId]);

ALTER TABLE [dbo].[AssessmentNeedApipContent] CHECK CONSTRAINT [FK_AssessNeedApipContent_AssessmentPersonalNeedsProfileContent];

ALTER TABLE [dbo].[AssessmentNeedApipContent]  WITH CHECK ADD  CONSTRAINT [FK_AssessNeedApipContent_RefAssessmentNeedAlternativeRepresent] FOREIGN KEY([RefAssessmentNeedAlternativeRepresentationTypeId])
REFERENCES [dbo].[RefAssessmentNeedAlternativeRepresentationType] ([RefAssessmentNeedAlternativeRepresentationTypeId]);

ALTER TABLE [dbo].[AssessmentNeedApipContent] CHECK CONSTRAINT [FK_AssessNeedApipContent_RefAssessmentNeedAlternativeRepresent];

ALTER TABLE [dbo].[AssessmentNeedApipContent]  WITH CHECK ADD  CONSTRAINT [FK_AssessNeedApipContent_RefAssessmentNeedSpokenSourcePref] FOREIGN KEY([RefAssessmentNeedSpokenSourcePreferenceTypeId])
REFERENCES [dbo].[RefAssessmentNeedSpokenSourcePreferenceType] ([RefAssessmentNeedSpokenSourcePreferenceTypeId]);

ALTER TABLE [dbo].[AssessmentNeedApipContent] CHECK CONSTRAINT [FK_AssessNeedApipContent_RefAssessmentNeedSpokenSourcePref];

ALTER TABLE [dbo].[AssessmentNeedApipContent]  WITH CHECK ADD  CONSTRAINT [FK_AssessNeedApipContent_RefAssessmentNeedUserSpokenPreference] FOREIGN KEY([RefAssessmentNeedUserSpokenPreferenceTypeId])
REFERENCES [dbo].[RefAssessmentNeedUserSpokenPreferenceType] ([RefAssessmentNeedUserSpokenPreferenceTypeId]);

ALTER TABLE [dbo].[AssessmentNeedApipContent] CHECK CONSTRAINT [FK_AssessNeedApipContent_RefAssessmentNeedUserSpokenPreference];

ALTER TABLE [dbo].[AssessmentNeedApipControl]  WITH CHECK ADD  CONSTRAINT [FK_AssessNeedApipControl_AssessmentPersonalNeedsProfileControl] FOREIGN KEY([AssessmentPersonalNeedsProfileControlId])
REFERENCES [dbo].[AssessmentPersonalNeedsProfileControl] ([AssessmentPersonalNeedsProfileControlId]);

ALTER TABLE [dbo].[AssessmentNeedApipControl] CHECK CONSTRAINT [FK_AssessNeedApipControl_AssessmentPersonalNeedsProfileControl];

ALTER TABLE [dbo].[AssessmentNeedApipControl]  WITH CHECK ADD  CONSTRAINT [FK_AssessNeedApipControl_RefAssessmentNeedIncreasedWhitespacing] FOREIGN KEY([RefAssessmentNeedIncreasedWhitespacingTypeId])
REFERENCES [dbo].[RefAssessmentNeedIncreasedWhitespacingType] ([RefAssessmentNeedIncreasedWhitespacingTypeId]);

ALTER TABLE [dbo].[AssessmentNeedApipControl] CHECK CONSTRAINT [FK_AssessNeedApipControl_RefAssessmentNeedIncreasedWhitespacing];

ALTER TABLE [dbo].[AssessmentNeedApipDisplay]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentNeedApipDisplay_RefAssessmentNeedMaskingType] FOREIGN KEY([RefAssessmentNeedMaskingTypeId])
REFERENCES [dbo].[RefAssessmentNeedMaskingType] ([RefAssessmentNeedMaskingTypeId]);

ALTER TABLE [dbo].[AssessmentNeedApipDisplay] CHECK CONSTRAINT [FK_AssessmentNeedApipDisplay_RefAssessmentNeedMaskingType];

ALTER TABLE [dbo].[AssessmentNeedApipDisplay]  WITH CHECK ADD  CONSTRAINT [FK_AssessNeedApipDisplay_AssessmentPersonalNeedsProfileDisplay] FOREIGN KEY([AssessmentPersonalNeedsProfileDisplayId])
REFERENCES [dbo].[AssessmentPersonalNeedsProfileDisplay] ([AssessmentPersonalNeedsProfileDisplayId]);

ALTER TABLE [dbo].[AssessmentNeedApipDisplay] CHECK CONSTRAINT [FK_AssessNeedApipDisplay_AssessmentPersonalNeedsProfileDisplay];

ALTER TABLE [dbo].[AssessmentNeedBraille]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentNeedBraille_AssessmentNeedBrailleGradeTypeId] FOREIGN KEY([RefAssessmentNeedBrailleGradeTypeId])
REFERENCES [dbo].[RefAssessmentNeedBrailleGradeType] ([RefAssessmentNeedBrailleGradeTypeId]);

ALTER TABLE [dbo].[AssessmentNeedBraille] CHECK CONSTRAINT [FK_AssessmentNeedBraille_AssessmentNeedBrailleGradeTypeId];

ALTER TABLE [dbo].[AssessmentNeedBraille]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentNeedBraille_AssessmentPersonalNeedsProfileDisplay] FOREIGN KEY([AssessmentPersonalNeedsProfileDisplayId])
REFERENCES [dbo].[AssessmentPersonalNeedsProfileDisplay] ([AssessmentPersonalNeedsProfileDisplayId]);

ALTER TABLE [dbo].[AssessmentNeedBraille] CHECK CONSTRAINT [FK_AssessmentNeedBraille_AssessmentPersonalNeedsProfileDisplay];

ALTER TABLE [dbo].[AssessmentNeedBraille]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentNeedBraille_RefAssessmentNeedBrailleMarkType] FOREIGN KEY([RefAssessmentNeedBrailleMarkTypeId])
REFERENCES [dbo].[RefAssessmentNeedBrailleMarkType] ([RefAssessmentNeedBrailleMarkTypeId]);

ALTER TABLE [dbo].[AssessmentNeedBraille] CHECK CONSTRAINT [FK_AssessmentNeedBraille_RefAssessmentNeedBrailleMarkType];

ALTER TABLE [dbo].[AssessmentNeedBraille]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentNeedBraille_RefAssessmentNeedBrailleStatusCellType] FOREIGN KEY([RefAssessmentNeedBrailleStatusCellTypeId])
REFERENCES [dbo].[RefAssessmentNeedBrailleStatusCellType] ([RefAssessmentNeedBrailleStatusCellTypeId]);

ALTER TABLE [dbo].[AssessmentNeedBraille] CHECK CONSTRAINT [FK_AssessmentNeedBraille_RefAssessmentNeedBrailleStatusCellType];

ALTER TABLE [dbo].[AssessmentNeedBraille]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentNeedBraille_RefAssessmentNeedNumberOfBrailleDots] FOREIGN KEY([RefAssessmentNeedNumberOfBrailleDotsId])
REFERENCES [dbo].[RefAssessmentNeedNumberOfBrailleDots] ([RefAssessmentNeedNumberOfBrailleDotsId]);

ALTER TABLE [dbo].[AssessmentNeedBraille] CHECK CONSTRAINT [FK_AssessmentNeedBraille_RefAssessmentNeedNumberOfBrailleDots];

ALTER TABLE [dbo].[AssessmentNeedBraille]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentNeedBraille_RefAssessmentNeedUsageType] FOREIGN KEY([RefAssessmentNeedUsageTypeId])
REFERENCES [dbo].[RefAssessmentNeedUsageType] ([RefAssessmentNeedUsageTypeId]);

ALTER TABLE [dbo].[AssessmentNeedBraille] CHECK CONSTRAINT [FK_AssessmentNeedBraille_RefAssessmentNeedUsageType];

ALTER TABLE [dbo].[AssessmentNeedScreenEnhancement]  WITH CHECK ADD  CONSTRAINT [FK_AssessNeedScreenEnhancement_APNProfileScreenEnhancement] FOREIGN KEY([AssessmentPersonalNeedsProfileScreenEnhancementId])
REFERENCES [dbo].[AssessmentPersonalNeedsProfileScreenEnhancement] ([AssessmentPersonalNeedsProfileScreenEnhancementId]);

ALTER TABLE [dbo].[AssessmentNeedScreenEnhancement] CHECK CONSTRAINT [FK_AssessNeedScreenEnhancement_APNProfileScreenEnhancement];

ALTER TABLE [dbo].[AssessmentNeedScreenEnhancement]  WITH CHECK ADD  CONSTRAINT [FK_AssessNeedScreenEnhancement_AssessPersonalNeedProfileDisplay] FOREIGN KEY([AssessmentPersonalNeedsProfileDisplayId])
REFERENCES [dbo].[AssessmentPersonalNeedsProfileDisplay] ([AssessmentPersonalNeedsProfileDisplayId]);

ALTER TABLE [dbo].[AssessmentNeedScreenEnhancement] CHECK CONSTRAINT [FK_AssessNeedScreenEnhancement_AssessPersonalNeedProfileDisplay];

ALTER TABLE [dbo].[AssessmentParticipantSession]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentParticipantSession_AssessmentFormSection] FOREIGN KEY([AssessmentFormSectionId])
REFERENCES [dbo].[AssessmentFormSection] ([AssessmentFormSectionId]);

ALTER TABLE [dbo].[AssessmentParticipantSession] CHECK CONSTRAINT [FK_AssessmentParticipantSession_AssessmentFormSection];

ALTER TABLE [dbo].[AssessmentParticipantSession]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentParticipantSession_AssessmentRegistration] FOREIGN KEY([AssessmentRegistrationId])
REFERENCES [dbo].[AssessmentRegistration] ([AssessmentRegistrationId]);

ALTER TABLE [dbo].[AssessmentParticipantSession] CHECK CONSTRAINT [FK_AssessmentParticipantSession_AssessmentRegistration];

ALTER TABLE [dbo].[AssessmentParticipantSession]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentParticipantSession_AssessmentSession] FOREIGN KEY([AssessmentSessionId])
REFERENCES [dbo].[AssessmentSession] ([AssessmentSessionId]);

ALTER TABLE [dbo].[AssessmentParticipantSession] CHECK CONSTRAINT [FK_AssessmentParticipantSession_AssessmentSession];

ALTER TABLE [dbo].[AssessmentParticipantSession]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentParticipantSession_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId]);

ALTER TABLE [dbo].[AssessmentParticipantSession] CHECK CONSTRAINT [FK_AssessmentParticipantSession_Location];

ALTER TABLE [dbo].[AssessmentParticipantSession]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentParticipantSession_RefLanguage] FOREIGN KEY([RefLanguageId])
REFERENCES [dbo].[RefLanguage] ([RefLanguageId]);

ALTER TABLE [dbo].[AssessmentParticipantSession] CHECK CONSTRAINT [FK_AssessmentParticipantSession_RefLanguage];

ALTER TABLE [dbo].[AssessmentParticipantSession]  WITH CHECK ADD  CONSTRAINT [FK_AssessParticipantSession_RefAssessmentParticipantSessionPlat] FOREIGN KEY([RefAssessmentPlatformTypeId])
REFERENCES [dbo].[RefAssessmentPlatformType] ([RefAssessmentPlatformTypeId]);

ALTER TABLE [dbo].[AssessmentParticipantSession] CHECK CONSTRAINT [FK_AssessParticipantSession_RefAssessmentParticipantSessionPlat];

ALTER TABLE [dbo].[AssessmentParticipantSession]  WITH CHECK ADD  CONSTRAINT [FK_AssessParticipantSession_RefAssessmentSessionSpecialCircumst] FOREIGN KEY([RefAssessmentSessionSpecialCircumstanceTypeId])
REFERENCES [dbo].[RefAssessmentSessionSpecialCircumstanceType] ([RefAssessmentSessionSpecialCircumstanceTypeId]);

ALTER TABLE [dbo].[AssessmentParticipantSession] CHECK CONSTRAINT [FK_AssessParticipantSession_RefAssessmentSessionSpecialCircumst];

ALTER TABLE [dbo].[AssessmentParticipantSession_Accommodation]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentParticipantSession_Accommodation_AssessmentAccommodation] FOREIGN KEY([AssessmentAccommodationId])
REFERENCES [dbo].[AssessmentAccommodation] ([AssessmentAccommodationId]);

ALTER TABLE [dbo].[AssessmentParticipantSession_Accommodation] CHECK CONSTRAINT [FK_AssessmentParticipantSession_Accommodation_AssessmentAccommodation];

ALTER TABLE [dbo].[AssessmentParticipantSession_Accommodation]  WITH CHECK ADD  CONSTRAINT [FK_AssessParticSession_Accomodation_AssessParticipantSession] FOREIGN KEY([AssessmentParticipantSessionId])
REFERENCES [dbo].[AssessmentParticipantSession] ([AssessmentParticipantSessionId]);

ALTER TABLE [dbo].[AssessmentParticipantSession_Accommodation] CHECK CONSTRAINT [FK_AssessParticSession_Accomodation_AssessParticipantSession];

ALTER TABLE [dbo].[AssessmentPerformanceLevel]  WITH CHECK ADD  CONSTRAINT [FK_PerformanceLevel_AssessmentSubTest] FOREIGN KEY([AssessmentSubtestId])
REFERENCES [dbo].[AssessmentSubtest] ([AssessmentSubtestId]);

ALTER TABLE [dbo].[AssessmentPerformanceLevel] CHECK CONSTRAINT [FK_PerformanceLevel_AssessmentSubTest];

ALTER TABLE [dbo].[AssessmentPersonalNeedLanguageLearner]  WITH CHECK ADD  CONSTRAINT [FK_ANPContentLanguageLearner_AssessmentNeedsProfileContent] FOREIGN KEY([AssessmentNeedsProfileContentId])
REFERENCES [dbo].[AssessmentPersonalNeedsProfileContent] ([AssessmentPersonalNeedsProfileContentId]);

ALTER TABLE [dbo].[AssessmentPersonalNeedLanguageLearner] CHECK CONSTRAINT [FK_ANPContentLanguageLearner_AssessmentNeedsProfileContent];

ALTER TABLE [dbo].[AssessmentPersonalNeedLanguageLearner]  WITH CHECK ADD  CONSTRAINT [FK_ANPContentLanguageLearner_RefAssessNeedsProfileContentLang] FOREIGN KEY([RefAssessmentNeedsProfileContentLanguageLearnerTypeId])
REFERENCES [dbo].[RefAssessmentNeedLanguageLearnerType] ([RefAssessmentNeedLanguageLearnerTypeId]);

ALTER TABLE [dbo].[AssessmentPersonalNeedLanguageLearner] CHECK CONSTRAINT [FK_ANPContentLanguageLearner_RefAssessNeedsProfileContentLang];

ALTER TABLE [dbo].[AssessmentPersonalNeedScreenReader]  WITH CHECK ADD  CONSTRAINT [FK_APNScreenReader_AssessmentPersonalNeedsProfileDisplay] FOREIGN KEY([AssessmentPersonalNeedsProfileDisplayId])
REFERENCES [dbo].[AssessmentPersonalNeedsProfileDisplay] ([AssessmentPersonalNeedsProfileDisplayId]);

ALTER TABLE [dbo].[AssessmentPersonalNeedScreenReader] CHECK CONSTRAINT [FK_APNScreenReader_AssessmentPersonalNeedsProfileDisplay];

ALTER TABLE [dbo].[AssessmentPersonalNeedScreenReader]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentPersonalNeedScreenReader_RefAssessmentNeedLinkIndicationType] FOREIGN KEY([RefAssessmentNeedLinkIndicationTypeId])
REFERENCES [dbo].[RefAssessmentNeedLinkIndicationType] ([RefAssessmentNeedLinkIndicationTypeId]);

ALTER TABLE [dbo].[AssessmentPersonalNeedScreenReader] CHECK CONSTRAINT [FK_AssessmentPersonalNeedScreenReader_RefAssessmentNeedLinkIndicationType];

ALTER TABLE [dbo].[AssessmentPersonalNeedScreenReader]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentPersonalNeedScreenReader_RefAssessmentNeedUsage] FOREIGN KEY([RefAssessmentNeedUsageTypeId])
REFERENCES [dbo].[RefAssessmentNeedUsageType] ([RefAssessmentNeedUsageTypeId]);

ALTER TABLE [dbo].[AssessmentPersonalNeedScreenReader] CHECK CONSTRAINT [FK_AssessmentPersonalNeedScreenReader_RefAssessmentNeedUsage];

ALTER TABLE [dbo].[AssessmentPersonalNeedsProfileContent]  WITH CHECK ADD  CONSTRAINT [FK_ApnProfileContent_RefAssessmentNeedSupportTool] FOREIGN KEY([RefAssessmentNeedSupportToolId])
REFERENCES [dbo].[RefAssessmentNeedSupportTool] ([RefAssessmentNeedSupportToolId]);

ALTER TABLE [dbo].[AssessmentPersonalNeedsProfileContent] CHECK CONSTRAINT [FK_ApnProfileContent_RefAssessmentNeedSupportTool];

ALTER TABLE [dbo].[AssessmentPersonalNeedsProfileContent]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentNeedsProfileContent_AssessmentNeedsProfile] FOREIGN KEY([AssessmentPersonalNeedsProfileId])
REFERENCES [dbo].[AssessmentPersonalNeedsProfile] ([AssessmentPersonalNeedsProfileId]);

ALTER TABLE [dbo].[AssessmentPersonalNeedsProfileContent] CHECK CONSTRAINT [FK_AssessmentNeedsProfileContent_AssessmentNeedsProfile];

ALTER TABLE [dbo].[AssessmentPersonalNeedsProfileContent]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentPersonalNeedsProfileContent_RefAssessmentNeedHazrd] FOREIGN KEY([RefAssessmentNeedHazardTypeId])
REFERENCES [dbo].[RefAssessmentNeedHazardType] ([RefAssessmentNeedHazardTypeId]);

ALTER TABLE [dbo].[AssessmentPersonalNeedsProfileContent] CHECK CONSTRAINT [FK_AssessmentPersonalNeedsProfileContent_RefAssessmentNeedHazrd];

ALTER TABLE [dbo].[AssessmentPersonalNeedsProfileContent]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentPersonalNeedsProfileContent_RefLanguage] FOREIGN KEY([RefKeywordTranslationsLanguageId])
REFERENCES [dbo].[RefLanguage] ([RefLanguageId]);

ALTER TABLE [dbo].[AssessmentPersonalNeedsProfileContent] CHECK CONSTRAINT [FK_AssessmentPersonalNeedsProfileContent_RefLanguage];

ALTER TABLE [dbo].[AssessmentPersonalNeedsProfileControl]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentNeedsProfileControl_AssessmentNeedsProfile] FOREIGN KEY([AssessmentPersonalNeedsProfileId])
REFERENCES [dbo].[AssessmentPersonalNeedsProfile] ([AssessmentPersonalNeedsProfileId]);

ALTER TABLE [dbo].[AssessmentPersonalNeedsProfileControl] CHECK CONSTRAINT [FK_AssessmentNeedsProfileControl_AssessmentNeedsProfile];

ALTER TABLE [dbo].[AssessmentPersonalNeedsProfileDisplay]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentNeedsProfileDisplay_AssessmentNeedsProfile] FOREIGN KEY([AssessmentPersonalNeedsProfileId])
REFERENCES [dbo].[AssessmentPersonalNeedsProfile] ([AssessmentPersonalNeedsProfileId]);

ALTER TABLE [dbo].[AssessmentPersonalNeedsProfileDisplay] CHECK CONSTRAINT [FK_AssessmentNeedsProfileDisplay_AssessmentNeedsProfile];

ALTER TABLE [dbo].[AssessmentPersonalNeedsProfileScreenEnhancement]  WITH CHECK ADD  CONSTRAINT [FK_AnpScreenEnhancement_AssessmentNeedsProfile] FOREIGN KEY([AssessmentPersonalNeedsProfileId])
REFERENCES [dbo].[AssessmentPersonalNeedsProfile] ([AssessmentPersonalNeedsProfileId]);

ALTER TABLE [dbo].[AssessmentPersonalNeedsProfileScreenEnhancement] CHECK CONSTRAINT [FK_AnpScreenEnhancement_AssessmentNeedsProfile];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegirstration_RefAssessmentForm] FOREIGN KEY([AssessmentFormId])
REFERENCES [dbo].[AssessmentForm] ([AssessmentFormId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegirstration_RefAssessmentForm];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_AssessmentAdministration] FOREIGN KEY([AssessmentAdministrationId])
REFERENCES [dbo].[AssessmentAdministration] ([AssessmentAdministrationId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_AssessmentAdministration];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_CourseSection] FOREIGN KEY([CourseSectionOrganizationId])
REFERENCES [dbo].[CourseSection] ([OrganizationId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_CourseSection];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_Organization];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_Person] FOREIGN KEY([AssignedByPersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_Person];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_Person2] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_Person2];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_RefAssessmentParticipationIndicator] FOREIGN KEY([RefAssessmentParticipationIndicatorId])
REFERENCES [dbo].[RefAssessmentParticipationIndicator] ([RefAssessmentParticipationIndicatorId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_RefAssessmentParticipationIndicator];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_RefAssessmentPurpose] FOREIGN KEY([RefAssessmentPurposeId])
REFERENCES [dbo].[RefAssessmentPurpose] ([RefAssessmentPurposeId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_RefAssessmentPurpose];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_RefAssessmentReasonNotCompleting] FOREIGN KEY([RefAssessmentReasonNotCompletingId])
REFERENCES [dbo].[RefAssessmentReasonNotCompleting] ([RefAssessmentReasonNotCompletingId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_RefAssessmentReasonNotCompleting];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_RefAssessmentReasonNotTested] FOREIGN KEY([RefAssessmentReasonNotTestedId])
REFERENCES [dbo].[RefAssessmentReasonNotTested] ([RefAssessmentReasonNotTestedId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_RefAssessmentReasonNotTested];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_RefAssessmentRegistrationCompletionStatus] FOREIGN KEY([RefAssessmentRegistrationCompletionStatusId])
REFERENCES [dbo].[RefAssessmentRegistrationCompletionStatus] ([RefAssessmentRegistrationCompletionStatusId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_RefAssessmentRegistrationCompletionStatus];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel] FOREIGN KEY([RefGradeLevelWhenAssessedId])
REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel1] FOREIGN KEY([RefGradeLevelToBeAssessedId])
REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel1];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_RefOrganization1] FOREIGN KEY([SchoolOrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_RefOrganization1];

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_RefOrganization2] FOREIGN KEY([LeaOrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_RefOrganization2];

ALTER TABLE [dbo].[AssessmentRegistration_Accommodation]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_Accommodation_AssessmentAccommodation] FOREIGN KEY([AssessmentAccommodationId])
REFERENCES [dbo].[AssessmentAccommodation] ([AssessmentAccommodationId]);

ALTER TABLE [dbo].[AssessmentRegistration_Accommodation] CHECK CONSTRAINT [FK_AssessmentRegistration_Accommodation_AssessmentAccommodation];

ALTER TABLE [dbo].[AssessmentRegistration_Accommodation]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_Registration] FOREIGN KEY([AssessmentRegistrationId])
REFERENCES [dbo].[AssessmentRegistration] ([AssessmentRegistrationId]);

ALTER TABLE [dbo].[AssessmentRegistration_Accommodation] CHECK CONSTRAINT [FK_AssessmentRegistration_Registration];

ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_AssessmentRegistration] FOREIGN KEY([AssessmentRegistrationId])
REFERENCES [dbo].[AssessmentRegistration] ([AssessmentRegistrationId]);

ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_AssessmentRegistration];

ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_AssessmentSubTest] FOREIGN KEY([AssessmentSubtestId])
REFERENCES [dbo].[AssessmentSubtest] ([AssessmentSubtestId]);

ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_AssessmentSubTest];

ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_RefAssessmentPretestOutcome] FOREIGN KEY([RefAssessmentPretestOutcomeId])
REFERENCES [dbo].[RefAssessmentPretestOutcome] ([RefAssessmentPretestOutcomeId]);

ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_RefAssessmentPretestOutcome];

ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_RefAssessmentResultDataType] FOREIGN KEY([RefAssessmentResultDataTypeId])
REFERENCES [dbo].[RefAssessmentResultDataType] ([RefAssessmentResultDataTypeId]);

ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_RefAssessmentResultDataType];

ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_RefAssessmentResultScoreType] FOREIGN KEY([RefAssessmentResultScoreTypeId])
REFERENCES [dbo].[RefAssessmentResultScoreType] ([RefAssessmentResultScoreTypeId]);

ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_RefAssessmentResultScoreType];

ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_RefELOutcomeMeasurement] FOREIGN KEY([RefELOutcomeMeasurementLevelId])
REFERENCES [dbo].[RefELOutcomeMeasurementLevel] ([RefELOutcomeMeasurementLevelId]);

ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_RefELOutcomeMeasurement];

ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_RefOutcomeTimePoint] FOREIGN KEY([RefOutcomeTimePointId])
REFERENCES [dbo].[RefOutcomeTimePoint] ([RefOutcomeTimePointId]);

ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_RefOutcomeTimePoint];

ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_RefScoreMetricType] FOREIGN KEY([RefScoreMetricTypeId])
REFERENCES [dbo].[RefScoreMetricType] ([RefScoreMetricTypeId]);

ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_RefScoreMetricType];

ALTER TABLE [dbo].[AssessmentResult_PerformanceLevel]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_PerformanceLevel_AssessmentPerformanceLevel] FOREIGN KEY([AssessmentPerformanceLevelId])
REFERENCES [dbo].[AssessmentPerformanceLevel] ([AssessmentPerformanceLevelId]);

ALTER TABLE [dbo].[AssessmentResult_PerformanceLevel] CHECK CONSTRAINT [FK_AssessmentResult_PerformanceLevel_AssessmentPerformanceLevel];

ALTER TABLE [dbo].[AssessmentResult_PerformanceLevel]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResult_PerformanceLevel_AssessmentResult] FOREIGN KEY([AssessmentResultId])
REFERENCES [dbo].[AssessmentResult] ([AssessmentResultId]);

ALTER TABLE [dbo].[AssessmentResult_PerformanceLevel] CHECK CONSTRAINT [FK_AssessmentResult_PerformanceLevel_AssessmentResult];

ALTER TABLE [dbo].[AssessmentResultRubricCriterionResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResultRubricCriterionResult_AssessmentResult] FOREIGN KEY([AssessmentResultId])
REFERENCES [dbo].[AssessmentResult] ([AssessmentResultId]);

ALTER TABLE [dbo].[AssessmentResultRubricCriterionResult] CHECK CONSTRAINT [FK_AssessmentResultRubricCriterionResult_AssessmentResult];

ALTER TABLE [dbo].[AssessmentResultRubricCriterionResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResultRubricCriterionResult_RubricCriterionLevel] FOREIGN KEY([RubricCriterionLevelId])
REFERENCES [dbo].[RubricCriterionLevel] ([RubricCriterionLevelId]);

ALTER TABLE [dbo].[AssessmentResultRubricCriterionResult] CHECK CONSTRAINT [FK_AssessmentResultRubricCriterionResult_RubricCriterionLevel];

ALTER TABLE [dbo].[AssessmentSession]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSession_AssessmentAdministration] FOREIGN KEY([AssessmentAdministrationId])
REFERENCES [dbo].[AssessmentAdministration] ([AssessmentAdministrationId]);

ALTER TABLE [dbo].[AssessmentSession] CHECK CONSTRAINT [FK_AssessmentSession_AssessmentAdministration];

ALTER TABLE [dbo].[AssessmentSession]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSession_Organization] FOREIGN KEY([Lea_OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[AssessmentSession] CHECK CONSTRAINT [FK_AssessmentSession_Organization];

ALTER TABLE [dbo].[AssessmentSession]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSession_Organization1] FOREIGN KEY([School_OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[AssessmentSession] CHECK CONSTRAINT [FK_AssessmentSession_Organization1];

ALTER TABLE [dbo].[AssessmentSession]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSession_Organization2] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[AssessmentSession] CHECK CONSTRAINT [FK_AssessmentSession_Organization2];

ALTER TABLE [dbo].[AssessmentSession]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSession_RefAssessmentSessionSpecialCircumstance] FOREIGN KEY([RefAssessmentSessionSpecialCircumstanceTypeId])
REFERENCES [dbo].[RefAssessmentSessionSpecialCircumstanceType] ([RefAssessmentSessionSpecialCircumstanceTypeId]);

ALTER TABLE [dbo].[AssessmentSession] CHECK CONSTRAINT [FK_AssessmentSession_RefAssessmentSessionSpecialCircumstance];

ALTER TABLE [dbo].[AssessmentSession]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSession_RefAssessmentSessionType] FOREIGN KEY([RefAssessmentSessionTypeId])
REFERENCES [dbo].[RefAssessmentSessionType] ([RefAssessmentSessionTypeId]);

ALTER TABLE [dbo].[AssessmentSession] CHECK CONSTRAINT [FK_AssessmentSession_RefAssessmentSessionType];

ALTER TABLE [dbo].[AssessmentSessionStaffRole]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSessionStaffRole_AssessmentParticipantSession] FOREIGN KEY([AssessmentParticipantSessionId])
REFERENCES [dbo].[AssessmentParticipantSession] ([AssessmentParticipantSessionId]);

ALTER TABLE [dbo].[AssessmentSessionStaffRole] CHECK CONSTRAINT [FK_AssessmentSessionStaffRole_AssessmentParticipantSession];

ALTER TABLE [dbo].[AssessmentSessionStaffRole]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSessionStaffRole_AssessmentSession] FOREIGN KEY([AssessmentSessionId])
REFERENCES [dbo].[AssessmentSession] ([AssessmentSessionId]);

ALTER TABLE [dbo].[AssessmentSessionStaffRole] CHECK CONSTRAINT [FK_AssessmentSessionStaffRole_AssessmentSession];

ALTER TABLE [dbo].[AssessmentSessionStaffRole]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSessionStaffRole_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[AssessmentSessionStaffRole] CHECK CONSTRAINT [FK_AssessmentSessionStaffRole_Person];

ALTER TABLE [dbo].[AssessmentSessionStaffRole]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSessionStaffRole_RefAssessmentSessionStaffRoleType] FOREIGN KEY([RefAssessmentSessionStaffRoleTypeId])
REFERENCES [dbo].[RefAssessmentSessionStaffRoleType] ([RefAssessmentSessionStaffRoleTypeId]);

ALTER TABLE [dbo].[AssessmentSessionStaffRole] CHECK CONSTRAINT [FK_AssessmentSessionStaffRole_RefAssessmentSessionStaffRoleType];

ALTER TABLE [dbo].[AssessmentSubtest]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubTest_AssessmentForm] FOREIGN KEY([AssessmentFormId])
REFERENCES [dbo].[AssessmentForm] ([AssessmentFormId]);

ALTER TABLE [dbo].[AssessmentSubtest] CHECK CONSTRAINT [FK_AssessmentSubTest_AssessmentForm];

ALTER TABLE [dbo].[AssessmentSubtest]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtest_AssessmentSubTest] FOREIGN KEY([ChildOf_AssessmentSubtestId])
REFERENCES [dbo].[AssessmentSubtest] ([AssessmentSubtestId]);

ALTER TABLE [dbo].[AssessmentSubtest] CHECK CONSTRAINT [FK_AssessmentSubtest_AssessmentSubTest];

ALTER TABLE [dbo].[AssessmentSubtest]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtest_RefAssessmentPurpose] FOREIGN KEY([RefAssessmentPurposeId])
REFERENCES [dbo].[RefAssessmentPurpose] ([RefAssessmentPurposeId]);

ALTER TABLE [dbo].[AssessmentSubtest] CHECK CONSTRAINT [FK_AssessmentSubtest_RefAssessmentPurpose];

ALTER TABLE [dbo].[AssessmentSubtest]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtest_RefAssessSubtestIdentifierType] FOREIGN KEY([RefAssessmentSubtestIdentifierTypeId])
REFERENCES [dbo].[RefAssessmentSubtestIdentifierType] ([RefAssessmentSubtestIdentifierTypeId]);

ALTER TABLE [dbo].[AssessmentSubtest] CHECK CONSTRAINT [FK_AssessmentSubtest_RefAssessSubtestIdentifierType];

ALTER TABLE [dbo].[AssessmentSubtest]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtest_RefContentStandardType] FOREIGN KEY([RefContentStandardTypeId])
REFERENCES [dbo].[RefContentStandardType] ([RefContentStandardTypeId]);

ALTER TABLE [dbo].[AssessmentSubtest] CHECK CONSTRAINT [FK_AssessmentSubtest_RefContentStandardType];

ALTER TABLE [dbo].[AssessmentSubtest]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtest_RefScoreMetricType] FOREIGN KEY([RefScoreMetricTypeId])
REFERENCES [dbo].[RefScoreMetricType] ([RefScoreMetricTypeId]);

ALTER TABLE [dbo].[AssessmentSubtest] CHECK CONSTRAINT [FK_AssessmentSubtest_RefScoreMetricType];

ALTER TABLE [dbo].[AssessmentSubtest]  WITH CHECK ADD  CONSTRAINT [FK_FormSubTest_RefAcademicSubject] FOREIGN KEY([RefAcademicSubjectId])
REFERENCES [dbo].[RefAcademicSubject] ([RefAcademicSubjectId]);

ALTER TABLE [dbo].[AssessmentSubtest] CHECK CONSTRAINT [FK_FormSubTest_RefAcademicSubject];

ALTER TABLE [dbo].[AssessmentSubtest_AssessmentItem]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtestAI_AssessmentItem] FOREIGN KEY([AssessmentItemId])
REFERENCES [dbo].[AssessmentItem] ([AssessmentItemId]);

ALTER TABLE [dbo].[AssessmentSubtest_AssessmentItem] CHECK CONSTRAINT [FK_AssessmentSubtestAI_AssessmentItem];

ALTER TABLE [dbo].[AssessmentSubtest_AssessmentItem]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtestItems_AssessmentSubTest] FOREIGN KEY([AssessmentSubtestId])
REFERENCES [dbo].[AssessmentSubtest] ([AssessmentSubtestId]);

ALTER TABLE [dbo].[AssessmentSubtest_AssessmentItem] CHECK CONSTRAINT [FK_AssessmentSubtestItems_AssessmentSubTest];

ALTER TABLE [dbo].[AssessmentSubtest_CompetencyFrameworkItem]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtest_CompetencyFrameworkItem_AssessmentSubtest] FOREIGN KEY([AssessmentSubtestId])
REFERENCES [dbo].[AssessmentSubtest] ([AssessmentSubtestId]);

ALTER TABLE [dbo].[AssessmentSubtest_CompetencyFrameworkItem] CHECK CONSTRAINT [FK_AssessmentSubtest_CompetencyFrameworkItem_AssessmentSubtest];

ALTER TABLE [dbo].[AssessmentSubtest_CompetencyFrameworkItem]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtest_CompetencyFrameworkItem_CompetencyFrameworkItem] FOREIGN KEY([CompetencyFrameworkItemId])
REFERENCES [dbo].[CompetencyFrameworkItem] ([CompetencyFrameworkItemId]);

ALTER TABLE [dbo].[AssessmentSubtest_CompetencyFrameworkItem] CHECK CONSTRAINT [FK_AssessmentSubtest_CompetencyFrameworkItem_CompetencyFrameworkItem];

ALTER TABLE [dbo].[AssessmentSubtestELDevelopmentalDomain]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtest_AssessmentELDevelopmentalDomain_AssessmentSubtest] FOREIGN KEY([AssessmentSubtestId])
REFERENCES [dbo].[AssessmentSubtest] ([AssessmentSubtestId]);

ALTER TABLE [dbo].[AssessmentSubtestELDevelopmentalDomain] CHECK CONSTRAINT [FK_AssessmentSubtest_AssessmentELDevelopmentalDomain_AssessmentSubtest];

ALTER TABLE [dbo].[AssessmentSubtestELDevelopmentalDomain]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtest_AssessmentELDevelopmentalDomain_RefAssessmentELDevelopmentalDomain] FOREIGN KEY([RefAssessmentELDevelopmentalDomainId])
REFERENCES [dbo].[RefAssessmentELDevelopmentalDomain] ([RefAssessmentELDevelopmentalDomainId]);

ALTER TABLE [dbo].[AssessmentSubtestELDevelopmentalDomain] CHECK CONSTRAINT [FK_AssessmentSubtest_AssessmentELDevelopmentalDomain_RefAssessmentELDevelopmentalDomain];

ALTER TABLE [dbo].[AssessmentSubtestLevelsForWhichDesigned]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtestLevelsForWhichDesigned_AssessmentSubtest] FOREIGN KEY([AssessmentSubTestId])
REFERENCES [dbo].[AssessmentSubtest] ([AssessmentSubtestId]);

ALTER TABLE [dbo].[AssessmentSubtestLevelsForWhichDesigned] CHECK CONSTRAINT [FK_AssessmentSubtestLevelsForWhichDesigned_AssessmentSubtest];

ALTER TABLE [dbo].[AssessmentSubtestLevelsForWhichDesigned]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtestLevelsForWhichDesigned_RefGrade] FOREIGN KEY([RefGradeId])
REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]);

ALTER TABLE [dbo].[AssessmentSubtestLevelsForWhichDesigned] CHECK CONSTRAINT [FK_AssessmentSubtestLevelsForWhichDesigned_RefGrade];

ALTER TABLE [dbo].[Authentication]  WITH CHECK ADD  CONSTRAINT [FK_Authentication_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[Authentication] CHECK CONSTRAINT [FK_Authentication_OrganizationPersonRole];

ALTER TABLE [dbo].[Authorization]  WITH CHECK ADD  CONSTRAINT [FK_Authorization_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Application] ([ApplicationId]);

ALTER TABLE [dbo].[Authorization] CHECK CONSTRAINT [FK_Authorization_Application];

ALTER TABLE [dbo].[Authorization]  WITH CHECK ADD  CONSTRAINT [FK_Authorization_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[Authorization] CHECK CONSTRAINT [FK_Authorization_OrganizationPersonRole];

ALTER TABLE [dbo].[AuthorizationDocument]  WITH CHECK ADD  CONSTRAINT [FK_AuthorizationDocument_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[AuthorizationDocument] CHECK CONSTRAINT [FK_AuthorizationDocument_OrganizationPersonRole];

ALTER TABLE [dbo].[AuthorizationDocument]  WITH CHECK ADD  CONSTRAINT [FK_AuthorizationDocument_RefAuthorizerType] FOREIGN KEY([RefAuthorizerTypeId])
REFERENCES [dbo].[RefAuthorizerType] ([RefAuthorizerTypeId]);

ALTER TABLE [dbo].[AuthorizationDocument] CHECK CONSTRAINT [FK_AuthorizationDocument_RefAuthorizerType];

ALTER TABLE [dbo].[Classroom]  WITH CHECK ADD  CONSTRAINT [FK_Classroom_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId]);

ALTER TABLE [dbo].[Classroom] CHECK CONSTRAINT [FK_Classroom_Location];

ALTER TABLE [dbo].[CompetencyFramework]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyFramework_RefCompetencyFrameworkPublicationStatus] FOREIGN KEY([RefCompetencyFrameworkPublicationStatusId])
REFERENCES [dbo].[RefCompetencyFrameworkPublicationStatus] ([RefCompetencyFrameworkPublicationStatusId]);

ALTER TABLE [dbo].[CompetencyFramework] CHECK CONSTRAINT [FK_CompetencyFramework_RefCompetencyFrameworkPublicationStatus];

ALTER TABLE [dbo].[CompetencyFramework]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyFramework_RefLanguage] FOREIGN KEY([RefLanguageId])
REFERENCES [dbo].[RefLanguage] ([RefLanguageId]);

ALTER TABLE [dbo].[CompetencyFramework] CHECK CONSTRAINT [FK_CompetencyFramework_RefLanguage];

ALTER TABLE [dbo].[CompetencyFrameworkItem]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyFrameworkItem_CompetencyFramework] FOREIGN KEY([CompetencyFrameworkId])
REFERENCES [dbo].[CompetencyFramework] ([CompetencyFrameworkId]);

ALTER TABLE [dbo].[CompetencyFrameworkItem] CHECK CONSTRAINT [FK_CompetencyFrameworkItem_CompetencyFramework];

ALTER TABLE [dbo].[CompetencyFrameworkItem]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyFrameworkItem_CompetencyFrameworkItem] FOREIGN KEY([ChildOf_CompetencyFrameworkItem])
REFERENCES [dbo].[CompetencyFrameworkItem] ([CompetencyFrameworkItemId]);

ALTER TABLE [dbo].[CompetencyFrameworkItem] CHECK CONSTRAINT [FK_CompetencyFrameworkItem_CompetencyFrameworkItem];

ALTER TABLE [dbo].[CompetencyFrameworkItem]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyFrameworkItem_RefBloomsTaxonomyDomain] FOREIGN KEY([RefBloomsTaxonomyDomainId])
REFERENCES [dbo].[RefBloomsTaxonomyDomain] ([RefBloomsTaxonomyDomainId]);

ALTER TABLE [dbo].[CompetencyFrameworkItem] CHECK CONSTRAINT [FK_CompetencyFrameworkItem_RefBloomsTaxonomyDomain];

ALTER TABLE [dbo].[CompetencyFrameworkItem]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyFrameworkItem_RefCompetencyFrameworkItemNodeAccessibilityProfile] FOREIGN KEY([RefCompetencyFrameworkItemNodeAccessibilityProfileId])
REFERENCES [dbo].[RefCompetencyFrameworkItemNodeAccessibilityProfile] ([RefCompetencyFrameworkItemNodeAccessibilityProfileId]);

ALTER TABLE [dbo].[CompetencyFrameworkItem] CHECK CONSTRAINT [FK_CompetencyFrameworkItem_RefCompetencyFrameworkItemNodeAccessibilityProfile];

ALTER TABLE [dbo].[CompetencyFrameworkItem]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyFrameworkItem_RefCompetencyFrameworkItemTestabilityType] FOREIGN KEY([RefCompetencyFrameworkItemTestabilityTypeId])
REFERENCES [dbo].[RefCompetencyFrameworkItemTestabilityType] ([RefCompetencyFrameworkItemTestabilityTypeId]);

ALTER TABLE [dbo].[CompetencyFrameworkItem] CHECK CONSTRAINT [FK_CompetencyFrameworkItem_RefCompetencyFrameworkItemTestabilityType];

ALTER TABLE [dbo].[CompetencyFrameworkItem]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyFrameworkItem_RefLanguage] FOREIGN KEY([RefLanguageId])
REFERENCES [dbo].[RefLanguage] ([RefLanguageId]);

ALTER TABLE [dbo].[CompetencyFrameworkItem] CHECK CONSTRAINT [FK_CompetencyFrameworkItem_RefLanguage];

ALTER TABLE [dbo].[CompetencyFrameworkItem]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyFrameworkItem_RefMultipleIntelligenceType] FOREIGN KEY([RefMultipleIntelligenceTypeId])
REFERENCES [dbo].[RefMultipleIntelligenceType] ([RefMultipleIntelligenceTypeId]);

ALTER TABLE [dbo].[CompetencyFrameworkItem] CHECK CONSTRAINT [FK_CompetencyFrameworkItem_RefMultipleIntelligenceType];

ALTER TABLE [dbo].[CompetencyFrameworkItemAssociation]  WITH CHECK ADD  CONSTRAINT [FK_CFItemAssociation_RefCompetencyFrameworkItemAssociation] FOREIGN KEY([RefCompetencyFrameworkItemAssociationTypeId])
REFERENCES [dbo].[RefCompetencyFrameworkItemAssociationType] ([RefCompetencyFrameworkItemAssociationTypeId]);

ALTER TABLE [dbo].[CompetencyFrameworkItemAssociation] CHECK CONSTRAINT [FK_CFItemAssociation_RefCompetencyFrameworkItemAssociation];

ALTER TABLE [dbo].[CompetencyFrameworkItemAssociation]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyFrameworkItemAssociation_CompetencyFrameworkItem] FOREIGN KEY([CompetencyFrameworkItemId])
REFERENCES [dbo].[CompetencyFrameworkItem] ([CompetencyFrameworkItemId]);

ALTER TABLE [dbo].[CompetencyFrameworkItemAssociation] CHECK CONSTRAINT [FK_CompetencyFrameworkItemAssociation_CompetencyFrameworkItem];

ALTER TABLE [dbo].[CompetencyFrameworkItemAssociation]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyFrameworkItemAssociation_RefAssociatedEntityType] FOREIGN KEY([RefEntityTypeId])
REFERENCES [dbo].[RefEntityType] ([RefEntityTypeId]);

ALTER TABLE [dbo].[CompetencyFrameworkItemAssociation] CHECK CONSTRAINT [FK_CompetencyFrameworkItemAssociation_RefAssociatedEntityType];

ALTER TABLE [dbo].[CompetencyFrameworkItemEducationLevel]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyFrameworkItemEducationLevel_CompetencyFrameworkItem] FOREIGN KEY([CompetencyFrameworkItemId])
REFERENCES [dbo].[CompetencyFrameworkItem] ([CompetencyFrameworkItemId]);

ALTER TABLE [dbo].[CompetencyFrameworkItemEducationLevel] CHECK CONSTRAINT [FK_CompetencyFrameworkItemEducationLevel_CompetencyFrameworkItem];

ALTER TABLE [dbo].[CompetencyFrameworkItemEducationLevel]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyFrameworkItemEducationLevel_RefEducationLevel] FOREIGN KEY([RefEducationLevelId])
REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId]);

ALTER TABLE [dbo].[CompetencyFrameworkItemEducationLevel] CHECK CONSTRAINT [FK_CompetencyFrameworkItemEducationLevel_RefEducationLevel];

ALTER TABLE [dbo].[CompetencyItem_CompetencySet]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyItem_CompetencySet_CompetencyFrameworkItem] FOREIGN KEY([CompetencyFrameworkItemId])
REFERENCES [dbo].[CompetencyFrameworkItem] ([CompetencyFrameworkItemId]);

ALTER TABLE [dbo].[CompetencyItem_CompetencySet] CHECK CONSTRAINT [FK_CompetencyItem_CompetencySet_CompetencyFrameworkItem];

ALTER TABLE [dbo].[CompetencyItem_CompetencySet]  WITH CHECK ADD  CONSTRAINT [FK_CompetencyItem_CompetencySet_CompetencySet] FOREIGN KEY([CompetencySetId])
REFERENCES [dbo].[CompetencySet] ([CompetencySetId]);

ALTER TABLE [dbo].[CompetencyItem_CompetencySet] CHECK CONSTRAINT [FK_CompetencyItem_CompetencySet_CompetencySet];

ALTER TABLE [dbo].[CompetencySet]  WITH CHECK ADD  CONSTRAINT [FK_CompetencySet_LearningStandardItemSet] FOREIGN KEY([ChildOf_CompetencySet])
REFERENCES [dbo].[CompetencySet] ([CompetencySetId]);

ALTER TABLE [dbo].[CompetencySet] CHECK CONSTRAINT [FK_CompetencySet_LearningStandardItemSet];

ALTER TABLE [dbo].[CompetencySet]  WITH CHECK ADD  CONSTRAINT [FK_CompetencySet_RefCompetencySetCompletionCriteria] FOREIGN KEY([RefCompletionCriteriaId])
REFERENCES [dbo].[RefCompetencySetCompletionCriteria] ([RefCompetencySetCompletionCriteriaId]);

ALTER TABLE [dbo].[CompetencySet] CHECK CONSTRAINT [FK_CompetencySet_RefCompetencySetCompletionCriteria];

ALTER TABLE [dbo].[CoreKnowledgeArea]  WITH CHECK ADD  CONSTRAINT [FK_CoreKnowledgeArea_ProfessionalDevelopmentActivity] FOREIGN KEY([ProfessionalDevelopmentActivityId])
REFERENCES [dbo].[StaffProfessionalDevelopmentActivity] ([StaffProfessionalDevelopmentActivityId]);

ALTER TABLE [dbo].[CoreKnowledgeArea] CHECK CONSTRAINT [FK_CoreKnowledgeArea_ProfessionalDevelopmentActivity];

ALTER TABLE [dbo].[CoreKnowledgeArea]  WITH CHECK ADD  CONSTRAINT [FK_CoreKnowledgeArea_RefCoreKnowledgeArea] FOREIGN KEY([RefCoreKnowledgeAreaId])
REFERENCES [dbo].[RefCoreKnowledgeArea] ([RefCoreKnowledgeAreaId]);

ALTER TABLE [dbo].[CoreKnowledgeArea] CHECK CONSTRAINT [FK_CoreKnowledgeArea_RefCoreKnowledgeArea];

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Organization];

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_RefCourseApplicableEducationLevel] FOREIGN KEY([RefCourseApplicableEducationLevelId])
REFERENCES [dbo].[RefCourseApplicableEducationLevel] ([RefCourseApplicableEducationLevelId]);

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_RefCourseApplicableEducationLevel];

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_RefCourseCreditUnit] FOREIGN KEY([RefCourseCreditUnitId])
REFERENCES [dbo].[RefCourseCreditUnit] ([RefCourseCreditUnitId]);

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_RefCourseCreditUnit];

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_RefCourseLevelCharacteristic] FOREIGN KEY([RefCourseLevelCharacteristicsId])
REFERENCES [dbo].[RefCourseLevelCharacteristic] ([RefCourseLevelCharacteristicId]);

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_RefCourseLevelCharacteristic];

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_RefLanguage] FOREIGN KEY([RefInstructionLanguage])
REFERENCES [dbo].[RefLanguage] ([RefLanguageId]);

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_RefLanguage];

ALTER TABLE [dbo].[CourseSection]  WITH CHECK ADD  CONSTRAINT [FK_CourseSection_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([OrganizationId]);

ALTER TABLE [dbo].[CourseSection] CHECK CONSTRAINT [FK_CourseSection_Course];

ALTER TABLE [dbo].[CourseSection]  WITH CHECK ADD  CONSTRAINT [FK_CourseSection_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[CourseSection] CHECK CONSTRAINT [FK_CourseSection_Organization];

ALTER TABLE [dbo].[CourseSection]  WITH CHECK ADD  CONSTRAINT [FK_CourseSection_OrganizationCalendarSession] FOREIGN KEY([OrganizationCalendarSessionId])
REFERENCES [dbo].[OrganizationCalendarSession] ([OrganizationCalendarSessionId]);

ALTER TABLE [dbo].[CourseSection] CHECK CONSTRAINT [FK_CourseSection_OrganizationCalendarSession];

ALTER TABLE [dbo].[CourseSection]  WITH CHECK ADD  CONSTRAINT [FK_CourseSection_RefAdvancedPlacementCourseCodeId] FOREIGN KEY([RefAdvancedPlacementCourseCodeId])
REFERENCES [dbo].[RefAdvancedPlacementCourseCode] ([RefAdvancedPlacementCourseCodeId]);

ALTER TABLE [dbo].[CourseSection] CHECK CONSTRAINT [FK_CourseSection_RefAdvancedPlacementCourseCodeId];

ALTER TABLE [dbo].[CourseSection]  WITH CHECK ADD  CONSTRAINT [FK_CourseSection_RefCourseSectionDeliveryMode] FOREIGN KEY([RefCourseSectionDeliveryModeId])
REFERENCES [dbo].[RefCourseSectionDeliveryMode] ([RefCourseSectionDeliveryModeId]);

ALTER TABLE [dbo].[CourseSection] CHECK CONSTRAINT [FK_CourseSection_RefCourseSectionDeliveryMode];

ALTER TABLE [dbo].[CourseSection]  WITH CHECK ADD  CONSTRAINT [FK_CourseSection_RefCourseSectionSingleSexClassStatus] FOREIGN KEY([RefSingleSexClassStatusId])
REFERENCES [dbo].[RefSingleSexClassStatus] ([RefSingleSexClassStatusId]);

ALTER TABLE [dbo].[CourseSection] CHECK CONSTRAINT [FK_CourseSection_RefCourseSectionSingleSexClassStatus];

ALTER TABLE [dbo].[CourseSection]  WITH CHECK ADD  CONSTRAINT [FK_CourseSection_RefCreditTypeEarned] FOREIGN KEY([RefCreditTypeEarnedId])
REFERENCES [dbo].[RefCreditTypeEarned] ([RefCreditTypeEarnedId]);

ALTER TABLE [dbo].[CourseSection] CHECK CONSTRAINT [FK_CourseSection_RefCreditTypeEarned];

ALTER TABLE [dbo].[CourseSection]  WITH CHECK ADD  CONSTRAINT [FK_CourseSection_RefLanguage] FOREIGN KEY([RefInstructionLanguageId])
REFERENCES [dbo].[RefLanguage] ([RefLanguageId]);

ALTER TABLE [dbo].[CourseSection] CHECK CONSTRAINT [FK_CourseSection_RefLanguage];

ALTER TABLE [dbo].[CourseSectionAssessmentReporting]  WITH CHECK ADD  CONSTRAINT [FK_CourseSectionAssessmentReporting_CourseSection] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[CourseSection] ([OrganizationId]);

ALTER TABLE [dbo].[CourseSectionAssessmentReporting] CHECK CONSTRAINT [FK_CourseSectionAssessmentReporting_CourseSection];

ALTER TABLE [dbo].[CourseSectionAssessmentReporting]  WITH CHECK ADD  CONSTRAINT [FK_CourseSectionAssessmentReporting_RefCSAssessmentReportMethod] FOREIGN KEY([RefCourseSectionAssessmentReportingMethodId])
REFERENCES [dbo].[RefCourseSectionAssessmentReportingMethod] ([RefCourseSectionAssessmentReportingMethodId]);

ALTER TABLE [dbo].[CourseSectionAssessmentReporting] CHECK CONSTRAINT [FK_CourseSectionAssessmentReporting_RefCSAssessmentReportMethod];

ALTER TABLE [dbo].[CourseSectionLocation]  WITH CHECK ADD  CONSTRAINT [FK_CourseSectionLocation_Classroom] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Classroom] ([LocationId]);

ALTER TABLE [dbo].[CourseSectionLocation] CHECK CONSTRAINT [FK_CourseSectionLocation_Classroom];

ALTER TABLE [dbo].[CourseSectionLocation]  WITH CHECK ADD  CONSTRAINT [FK_CourseSectionLocation_CourseSection] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[CourseSection] ([OrganizationId]);

ALTER TABLE [dbo].[CourseSectionLocation] CHECK CONSTRAINT [FK_CourseSectionLocation_CourseSection];

ALTER TABLE [dbo].[CourseSectionLocation]  WITH CHECK ADD  CONSTRAINT [FK_CourseSectionLocation_RefInstructionLocationType] FOREIGN KEY([RefInstructionLocationTypeId])
REFERENCES [dbo].[RefInstructionLocationType] ([RefInstructionLocationTypeId]);

ALTER TABLE [dbo].[CourseSectionLocation] CHECK CONSTRAINT [FK_CourseSectionLocation_RefInstructionLocationType];

ALTER TABLE [dbo].[CourseSectionSchedule]  WITH CHECK ADD  CONSTRAINT [FK_CourseSectionSchedule_CourseSection] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[CourseSection] ([OrganizationId]);

ALTER TABLE [dbo].[CourseSectionSchedule] CHECK CONSTRAINT [FK_CourseSectionSchedule_CourseSection];

ALTER TABLE [dbo].[Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_RefCareerCluster] FOREIGN KEY([RefCareerClusterId])
REFERENCES [dbo].[RefCareerCluster] ([RefCareerClusterId]);

ALTER TABLE [dbo].[Credential] CHECK CONSTRAINT [FK_Credential_RefCareerCluster];

ALTER TABLE [dbo].[Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_RefCipCode] FOREIGN KEY([RefCipCodeId])
REFERENCES [dbo].[RefCipCode] ([RefCipCodeId]);

ALTER TABLE [dbo].[Credential] CHECK CONSTRAINT [FK_Credential_RefCipCode];

ALTER TABLE [dbo].[Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_RefCredentialIntendedPurposeType] FOREIGN KEY([RefCredentialIntendedPurposeTypeId])
REFERENCES [dbo].[RefCredentialIntendedPurposeType] ([RefCredentialIntendedPurposeTypeId]);

ALTER TABLE [dbo].[Credential] CHECK CONSTRAINT [FK_Credential_RefCredentialIntendedPurposeType];

ALTER TABLE [dbo].[Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_RefCredentialStatusType] FOREIGN KEY([RefCredentialStatusTypeId])
REFERENCES [dbo].[RefCredentialStatusType] ([RefCredentialStatusTypeId]);

ALTER TABLE [dbo].[Credential] CHECK CONSTRAINT [FK_Credential_RefCredentialStatusType];

ALTER TABLE [dbo].[Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_RefCredentialVerificationType] FOREIGN KEY([RefCredentialVerificationTypeId])
REFERENCES [dbo].[RefCredentialVerificationType] ([RefCredentialVerificationTypeId]);

ALTER TABLE [dbo].[Credential] CHECK CONSTRAINT [FK_Credential_RefCredentialVerificationType];

ALTER TABLE [dbo].[Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_RefONETSOCOccupationType] FOREIGN KEY([RefONETSOCOccupationTypeId])
REFERENCES [dbo].[RefONETSOCOccupationType] ([RefONETSOCOccupationTypeId]);

ALTER TABLE [dbo].[Credential] CHECK CONSTRAINT [FK_Credential_RefONETSOCOccupationType];

ALTER TABLE [dbo].[CredentialAward]  WITH CHECK ADD  CONSTRAINT [FK_CredentialAward_Credential] FOREIGN KEY([CredentialId])
REFERENCES [dbo].[Credential] ([CredentialId]);

ALTER TABLE [dbo].[CredentialAward] CHECK CONSTRAINT [FK_CredentialAward_Credential];

ALTER TABLE [dbo].[CredentialAward]  WITH CHECK ADD  CONSTRAINT [FK_CredentialAward_CredentialIssuer] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[CredentialIssuer] ([OrganizationId]);

ALTER TABLE [dbo].[CredentialAward] CHECK CONSTRAINT [FK_CredentialAward_CredentialIssuer];

ALTER TABLE [dbo].[CredentialAward]  WITH CHECK ADD  CONSTRAINT [FK_CredentialAward_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[CredentialAward] CHECK CONSTRAINT [FK_CredentialAward_Person];

ALTER TABLE [dbo].[CredentialAwardCredit]  WITH CHECK ADD  CONSTRAINT [FK_CredentialAwardCredit_CredentialAward] FOREIGN KEY([CredentialAwardId])
REFERENCES [dbo].[CredentialAward] ([CredentialAwardId]);

ALTER TABLE [dbo].[CredentialAwardCredit] CHECK CONSTRAINT [FK_CredentialAwardCredit_CredentialAward];

ALTER TABLE [dbo].[CredentialAwardCredit]  WITH CHECK ADD  CONSTRAINT [FK_CredentialAwardCredit_CredentialCriteriaCourse] FOREIGN KEY([CredentialCriteriaCourseId])
REFERENCES [dbo].[CredentialCriteriaCourse] ([CredentialCriteriaCourseId]);

ALTER TABLE [dbo].[CredentialAwardCredit] CHECK CONSTRAINT [FK_CredentialAwardCredit_CredentialCriteriaCourse];

ALTER TABLE [dbo].[CredentialAwardCredit]  WITH CHECK ADD  CONSTRAINT [FK_CredentialAwardCredit_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[CredentialAwardCredit] CHECK CONSTRAINT [FK_CredentialAwardCredit_OrganizationPersonRole];

ALTER TABLE [dbo].[CredentialAwardEvidence]  WITH CHECK ADD  CONSTRAINT [FK_CredentialAwardEvidence_AssessmentResult] FOREIGN KEY([AssessmentResultId])
REFERENCES [dbo].[AssessmentResult] ([AssessmentResultId]);

ALTER TABLE [dbo].[CredentialAwardEvidence] CHECK CONSTRAINT [FK_CredentialAwardEvidence_AssessmentResult];

ALTER TABLE [dbo].[CredentialAwardEvidence]  WITH CHECK ADD  CONSTRAINT [FK_CredentialAwardEvidence_CredentialAward] FOREIGN KEY([CredentialAwardId])
REFERENCES [dbo].[CredentialAward] ([CredentialAwardId]);

ALTER TABLE [dbo].[CredentialAwardEvidence] CHECK CONSTRAINT [FK_CredentialAwardEvidence_CredentialAward];

ALTER TABLE [dbo].[CredentialCategory]  WITH CHECK ADD  CONSTRAINT [FK_CredentialCategory_Credential] FOREIGN KEY([CredentialId])
REFERENCES [dbo].[Credential] ([CredentialId]);

ALTER TABLE [dbo].[CredentialCategory] CHECK CONSTRAINT [FK_CredentialCategory_Credential];

ALTER TABLE [dbo].[CredentialCreator]  WITH CHECK ADD  CONSTRAINT [FK_CredentialCreator_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[CredentialCreator] CHECK CONSTRAINT [FK_CredentialCreator_Organization];

ALTER TABLE [dbo].[CredentialCreator]  WITH CHECK ADD  CONSTRAINT [FK_CredentialCreator_RefCTDLOrganizationType] FOREIGN KEY([RefCTDLOrganizationTypeId])
REFERENCES [dbo].[RefCTDLOrganizationType] ([RefCTDLOrganizationTypeId]);

ALTER TABLE [dbo].[CredentialCreator] CHECK CONSTRAINT [FK_CredentialCreator_RefCTDLOrganizationType];

ALTER TABLE [dbo].[CredentialCreatorCredential]  WITH CHECK ADD  CONSTRAINT [FK_CredentialCreatorCredential_Credential] FOREIGN KEY([CredentialId])
REFERENCES [dbo].[Credential] ([CredentialId]);

ALTER TABLE [dbo].[CredentialCreatorCredential] CHECK CONSTRAINT [FK_CredentialCreatorCredential_Credential];

ALTER TABLE [dbo].[CredentialCreatorCredential]  WITH CHECK ADD  CONSTRAINT [FK_CredentialCreatorCredential_CredentialCreator] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[CredentialCreator] ([OrganizationId]);

ALTER TABLE [dbo].[CredentialCreatorCredential] CHECK CONSTRAINT [FK_CredentialCreatorCredential_CredentialCreator];

ALTER TABLE [dbo].[CredentialCriteria]  WITH CHECK ADD  CONSTRAINT [FK_CredentialCriteria_CompetencySet] FOREIGN KEY([CompetencySetId])
REFERENCES [dbo].[CompetencySet] ([CompetencySetId]);

ALTER TABLE [dbo].[CredentialCriteria] CHECK CONSTRAINT [FK_CredentialCriteria_CompetencySet];

ALTER TABLE [dbo].[CredentialCriteria]  WITH CHECK ADD  CONSTRAINT [FK_CredentialCriteria_Credential] FOREIGN KEY([CredentialId])
REFERENCES [dbo].[Credential] ([CredentialId]);

ALTER TABLE [dbo].[CredentialCriteria] CHECK CONSTRAINT [FK_CredentialCriteria_Credential];

ALTER TABLE [dbo].[CredentialCriteria]  WITH CHECK ADD  CONSTRAINT [FK_CredentialCriteria_RefCredentialAssessmentMethodType] FOREIGN KEY([RefCredentialAssessmentMethodTypeId])
REFERENCES [dbo].[RefCredentialAssessmentMethodType] ([RefCredentialAssessmentMethodTypeId]);

ALTER TABLE [dbo].[CredentialCriteria] CHECK CONSTRAINT [FK_CredentialCriteria_RefCredentialAssessmentMethodType];

ALTER TABLE [dbo].[CredentialCriteriaCourse]  WITH CHECK ADD  CONSTRAINT [FK_CredentialCriteriaCourse_Course] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Course] ([OrganizationId]);

ALTER TABLE [dbo].[CredentialCriteriaCourse] CHECK CONSTRAINT [FK_CredentialCriteriaCourse_Course];

ALTER TABLE [dbo].[CredentialCriteriaCourse]  WITH CHECK ADD  CONSTRAINT [FK_CredentialCriteriaCourse_CredentialCriteria] FOREIGN KEY([CredentialCriteriaId])
REFERENCES [dbo].[CredentialCriteria] ([CredentialCriteriaId]);

ALTER TABLE [dbo].[CredentialCriteriaCourse] CHECK CONSTRAINT [FK_CredentialCriteriaCourse_CredentialCriteria];

ALTER TABLE [dbo].[CredentialIdentifier]  WITH CHECK ADD  CONSTRAINT [FK_CredentialIdentifier_Credential] FOREIGN KEY([CredentialId])
REFERENCES [dbo].[Credential] ([CredentialId]);

ALTER TABLE [dbo].[CredentialIdentifier] CHECK CONSTRAINT [FK_CredentialIdentifier_Credential];

ALTER TABLE [dbo].[CredentialIdentifier]  WITH CHECK ADD  CONSTRAINT [FK_CredentialIdentifier_RefCredentialIdentifierSystem] FOREIGN KEY([RefCredentialIdentifierSystemId])
REFERENCES [dbo].[RefCredentialIdentifierSystem] ([RefCredentialIdentifierSystemId]);

ALTER TABLE [dbo].[CredentialIdentifier] CHECK CONSTRAINT [FK_CredentialIdentifier_RefCredentialIdentifierSystem];

ALTER TABLE [dbo].[CredentialIssuer]  WITH CHECK ADD  CONSTRAINT [FK_CredentialIssuer_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[CredentialIssuer] CHECK CONSTRAINT [FK_CredentialIssuer_Organization];

ALTER TABLE [dbo].[CredentialIssuer]  WITH CHECK ADD  CONSTRAINT [FK_CredentialIssuer_RefCTDLOrganizationType] FOREIGN KEY([RefCTDLOrganizationTypeId])
REFERENCES [dbo].[RefCTDLOrganizationType] ([RefCTDLOrganizationTypeId]);

ALTER TABLE [dbo].[CredentialIssuer] CHECK CONSTRAINT [FK_CredentialIssuer_RefCTDLOrganizationType];

ALTER TABLE [dbo].[CredentialIssuerCredential]  WITH CHECK ADD  CONSTRAINT [FK_CredentialIssuerCredential_Credential] FOREIGN KEY([CredentialId])
REFERENCES [dbo].[Credential] ([CredentialId]);

ALTER TABLE [dbo].[CredentialIssuerCredential] CHECK CONSTRAINT [FK_CredentialIssuerCredential_Credential];

ALTER TABLE [dbo].[CredentialIssuerCredential]  WITH CHECK ADD  CONSTRAINT [FK_CredentialIssuerCredential_CredentialIssuer] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[CredentialIssuer] ([OrganizationId]);

ALTER TABLE [dbo].[CredentialIssuerCredential] CHECK CONSTRAINT [FK_CredentialIssuerCredential_CredentialIssuer];

ALTER TABLE [dbo].[CteCourse]  WITH CHECK ADD  CONSTRAINT [FK_CteCourse_Course] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Course] ([OrganizationId]);

ALTER TABLE [dbo].[CteCourse] CHECK CONSTRAINT [FK_CteCourse_Course];

ALTER TABLE [dbo].[CteCourse]  WITH CHECK ADD  CONSTRAINT [FK_CteCourse_RefAdditionalCreditType] FOREIGN KEY([RefAdditionalCreditTypeId])
REFERENCES [dbo].[RefAdditionalCreditType] ([RefAdditionalCreditTypeId]);

ALTER TABLE [dbo].[CteCourse] CHECK CONSTRAINT [FK_CteCourse_RefAdditionalCreditType];

ALTER TABLE [dbo].[CteCourse]  WITH CHECK ADD  CONSTRAINT [FK_CteCourse_RefCareerCluster] FOREIGN KEY([RefCareerClusterId])
REFERENCES [dbo].[RefCareerCluster] ([RefCareerClusterId]);

ALTER TABLE [dbo].[CteCourse] CHECK CONSTRAINT [FK_CteCourse_RefCareerCluster];

ALTER TABLE [dbo].[CteCourse]  WITH CHECK ADD  CONSTRAINT [FK_CteCourse_RefCourseGpaApplicability] FOREIGN KEY([RefCourseGpaApplicabilityId])
REFERENCES [dbo].[RefCourseGpaApplicability] ([RefCourseGPAApplicabilityId]);

ALTER TABLE [dbo].[CteCourse] CHECK CONSTRAINT [FK_CteCourse_RefCourseGpaApplicability];

ALTER TABLE [dbo].[CteCourse]  WITH CHECK ADD  CONSTRAINT [FK_CteCourse_RefCreditTypeEarned] FOREIGN KEY([RefCreditTypeEarnedId])
REFERENCES [dbo].[RefCreditTypeEarned] ([RefCreditTypeEarnedId]);

ALTER TABLE [dbo].[CteCourse] CHECK CONSTRAINT [FK_CteCourse_RefCreditTypeEarned];

ALTER TABLE [dbo].[CteCourse]  WITH CHECK ADD  CONSTRAINT [FK_CteCourse_RefCurriculumFrameworkType] FOREIGN KEY([RefCurriculumFrameworkTypeId])
REFERENCES [dbo].[RefCurriculumFrameworkType] ([RefCurriculumFrameworkTypeId]);

ALTER TABLE [dbo].[CteCourse] CHECK CONSTRAINT [FK_CteCourse_RefCurriculumFrameworkType];

ALTER TABLE [dbo].[CteCourse]  WITH CHECK ADD  CONSTRAINT [FK_CteCourse_RefSCEDCourseLevel] FOREIGN KEY([RefSCEDCourseLevelId])
REFERENCES [dbo].[RefSCEDCourseLevel] ([RefSCEDCourseLevelId]);

ALTER TABLE [dbo].[CteCourse] CHECK CONSTRAINT [FK_CteCourse_RefSCEDCourseLevel];

ALTER TABLE [dbo].[CteCourse]  WITH CHECK ADD  CONSTRAINT [FK_CteCourse_RefSCEDCourseSubjectArea] FOREIGN KEY([RefSCEDCourseSubjectAreaId])
REFERENCES [dbo].[RefSCEDCourseSubjectArea] ([RefSCEDCourseSubjectAreaId]);

ALTER TABLE [dbo].[CteCourse] CHECK CONSTRAINT [FK_CteCourse_RefSCEDCourseSubjectArea];

ALTER TABLE [dbo].[CteStudentAcademicRecord]  WITH CHECK ADD  CONSTRAINT [FK_CteStudentAcademicRecord_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[CteStudentAcademicRecord] CHECK CONSTRAINT [FK_CteStudentAcademicRecord_OrganizationPersonRole];

ALTER TABLE [dbo].[CteStudentAcademicRecord]  WITH CHECK ADD  CONSTRAINT [FK_CteStudentAcademicRecord_RefProfessionalTechnicalCredential] FOREIGN KEY([RefProfessionalTechnicalCredentialTypeId])
REFERENCES [dbo].[RefProfessionalTechnicalCredentialType] ([RefProfessionalTechnicalCredentialTypeId]);

ALTER TABLE [dbo].[CteStudentAcademicRecord] CHECK CONSTRAINT [FK_CteStudentAcademicRecord_RefProfessionalTechnicalCredential];

ALTER TABLE [dbo].[EarlyChildhoodCredential]  WITH CHECK ADD  CONSTRAINT [FK_EarlyChildhoodCredential_PersonCredential] FOREIGN KEY([PersonCredentialId])
REFERENCES [dbo].[PersonCredential] ([PersonCredentialId]);

ALTER TABLE [dbo].[EarlyChildhoodCredential] CHECK CONSTRAINT [FK_EarlyChildhoodCredential_PersonCredential];

ALTER TABLE [dbo].[EarlyChildhoodCredential]  WITH CHECK ADD  CONSTRAINT [FK_EarlyChildhoodCredential_RefEarlyChildhoodCredential] FOREIGN KEY([RefEarlyChildhoodCredentialId])
REFERENCES [dbo].[RefEarlyChildhoodCredential] ([RefEarlyChildhoodCredentialId]);

ALTER TABLE [dbo].[EarlyChildhoodCredential] CHECK CONSTRAINT [FK_EarlyChildhoodCredential_RefEarlyChildhoodCredential];

ALTER TABLE [dbo].[EarlyChildhoodProgramTypeOffered]  WITH CHECK ADD  CONSTRAINT [FK_EarlyChildhoodProgramTypeOffered_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[EarlyChildhoodProgramTypeOffered] CHECK CONSTRAINT [FK_EarlyChildhoodProgramTypeOffered_Organization];

ALTER TABLE [dbo].[EarlyChildhoodProgramTypeOffered]  WITH CHECK ADD  CONSTRAINT [FK_EarlyChildhoodProgramTypeOffered_RefCommunityBasedType] FOREIGN KEY([RefCommunityBasedTypeId])
REFERENCES [dbo].[RefCommunityBasedType] ([RefCommunityBasedTypeId]);

ALTER TABLE [dbo].[EarlyChildhoodProgramTypeOffered] CHECK CONSTRAINT [FK_EarlyChildhoodProgramTypeOffered_RefCommunityBasedType];

ALTER TABLE [dbo].[EarlyChildhoodProgramTypeOffered]  WITH CHECK ADD  CONSTRAINT [FK_ECProgramTypeOffered_RefEarlyChildhoodProgramType] FOREIGN KEY([RefEarlyChildhoodProgramEnrollmentTypeId])
REFERENCES [dbo].[RefEarlyChildhoodProgramEnrollmentType] ([RefEarlyChildhoodProgramTypeId]);

ALTER TABLE [dbo].[EarlyChildhoodProgramTypeOffered] CHECK CONSTRAINT [FK_ECProgramTypeOffered_RefEarlyChildhoodProgramType];

ALTER TABLE [dbo].[ELChildDemographic]  WITH CHECK ADD  CONSTRAINT [FK_ELChildDemographic_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[ELChildDemographic] CHECK CONSTRAINT [FK_ELChildDemographic_Person];

ALTER TABLE [dbo].[ELChildDevelopmentalAssessment]  WITH CHECK ADD  CONSTRAINT [FK_ELChildDevelopmentalAssessment_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[ELChildDevelopmentalAssessment] CHECK CONSTRAINT [FK_ELChildDevelopmentalAssessment_Person];

ALTER TABLE [dbo].[ELChildDevelopmentalAssessment]  WITH CHECK ADD  CONSTRAINT [FK_ELChildDevelopmentalAssessment_RefChildDevelopmentalScreeningStatus] FOREIGN KEY([RefChildDevelopmentalScreeningStatusId])
REFERENCES [dbo].[RefChildDevelopmentalScreeningStatus] ([RefChildDevelopmentalScreeningStatusId]);

ALTER TABLE [dbo].[ELChildDevelopmentalAssessment] CHECK CONSTRAINT [FK_ELChildDevelopmentalAssessment_RefChildDevelopmentalScreeningStatus];

ALTER TABLE [dbo].[ELChildDevelopmentalAssessment]  WITH CHECK ADD  CONSTRAINT [FK_ELChildDevelopmentalAssessment_RefDevelopmentalEvaluationFinding] FOREIGN KEY([RefDevelopmentalEvaluationFindingId])
REFERENCES [dbo].[RefDevelopmentalEvaluationFinding] ([RefDevelopmentalEvaluationFindingId]);

ALTER TABLE [dbo].[ELChildDevelopmentalAssessment] CHECK CONSTRAINT [FK_ELChildDevelopmentalAssessment_RefDevelopmentalEvaluationFinding];

ALTER TABLE [dbo].[ELChildHealth]  WITH CHECK ADD  CONSTRAINT [FK_ELChildHealth_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[ELChildHealth] CHECK CONSTRAINT [FK_ELChildHealth_Person];

ALTER TABLE [dbo].[ELChildHealth]  WITH CHECK ADD  CONSTRAINT [FK_ELChildHealth_RefScheduledWellChildScreening] FOREIGN KEY([RefScheduledWellChildScreeningId])
REFERENCES [dbo].[RefScheduledWellChildScreening] ([RefScheduledWellChildScreeningId]);

ALTER TABLE [dbo].[ELChildHealth] CHECK CONSTRAINT [FK_ELChildHealth_RefScheduledWellChildScreening];

ALTER TABLE [dbo].[ELChildIndividualizedProgram]  WITH CHECK ADD  CONSTRAINT [FK_ELChildIndividualizedProgram_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]);

ALTER TABLE [dbo].[ELChildIndividualizedProgram] CHECK CONSTRAINT [FK_ELChildIndividualizedProgram_IndividualizedProgram];

ALTER TABLE [dbo].[ELChildIndividualizedProgram]  WITH CHECK ADD  CONSTRAINT [FK_ELChildIndividualizedProgram_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[ELChildIndividualizedProgram] CHECK CONSTRAINT [FK_ELChildIndividualizedProgram_Person];

ALTER TABLE [dbo].[ELChildIndividualizedProgram]  WITH CHECK ADD  CONSTRAINT [FK_ELChildIndividualizedProgram_RefIDEAIEPStatus] FOREIGN KEY([RefIDEAIEPStatusId])
REFERENCES [dbo].[RefIDEAIEPStatus] ([RefIDEAIEPStatusId]);

ALTER TABLE [dbo].[ELChildIndividualizedProgram] CHECK CONSTRAINT [FK_ELChildIndividualizedProgram_RefIDEAIEPStatus];

ALTER TABLE [dbo].[ELChildIndividualizedProgram]  WITH CHECK ADD  CONSTRAINT [FK_ELChildIndividualizedProgram_RefIDEAPartCEligibilityCategory] FOREIGN KEY([RefIDEAPartCEligibilityCategoryId])
REFERENCES [dbo].[RefIDEAPartCEligibilityCategory] ([RefIDEAPartCEligibilityCategoryId]);

ALTER TABLE [dbo].[ELChildIndividualizedProgram] CHECK CONSTRAINT [FK_ELChildIndividualizedProgram_RefIDEAPartCEligibilityCategory];

ALTER TABLE [dbo].[ELChildOutcomeSummary]  WITH CHECK ADD  CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingA] FOREIGN KEY([COSRatingAId])
REFERENCES [dbo].[RefChildOutcomesSummaryRating] ([RefChildOutcomesSummaryRatingId]);

ALTER TABLE [dbo].[ELChildOutcomeSummary] CHECK CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingA];

ALTER TABLE [dbo].[ELChildOutcomeSummary]  WITH CHECK ADD  CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingB] FOREIGN KEY([COSRatingBId])
REFERENCES [dbo].[RefChildOutcomesSummaryRating] ([RefChildOutcomesSummaryRatingId]);

ALTER TABLE [dbo].[ELChildOutcomeSummary] CHECK CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingB];

ALTER TABLE [dbo].[ELChildOutcomeSummary]  WITH CHECK ADD  CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingC] FOREIGN KEY([COSRatingCId])
REFERENCES [dbo].[RefChildOutcomesSummaryRating] ([RefChildOutcomesSummaryRatingId]);

ALTER TABLE [dbo].[ELChildOutcomeSummary] CHECK CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingC];

ALTER TABLE [dbo].[ELChildOutcomeSummary]  WITH CHECK ADD  CONSTRAINT [FK_ELChildOutcomeSummary_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[ELChildOutcomeSummary] CHECK CONSTRAINT [FK_ELChildOutcomeSummary_Person];

ALTER TABLE [dbo].[ELChildProgramEligibility]  WITH CHECK ADD  CONSTRAINT [FK_ELChildProgramEligibility_OrgPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[ELChildProgramEligibility] CHECK CONSTRAINT [FK_ELChildProgramEligibility_OrgPersonRole];

ALTER TABLE [dbo].[ELChildService]  WITH CHECK ADD  CONSTRAINT [FK_ELChildService_OrgPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[ELChildService] CHECK CONSTRAINT [FK_ELChildService_OrgPersonRole];

ALTER TABLE [dbo].[ELChildService]  WITH CHECK ADD  CONSTRAINT [FK_ELChildService_RefEarlyChildhoodServicesOffered] FOREIGN KEY([RefEarlyChildhoodServicesOfferedId])
REFERENCES [dbo].[RefEarlyChildhoodServices] ([RefEarlyChildhoodServicesId]);

ALTER TABLE [dbo].[ELChildService] CHECK CONSTRAINT [FK_ELChildService_RefEarlyChildhoodServicesOffered];

ALTER TABLE [dbo].[ELChildService]  WITH CHECK ADD  CONSTRAINT [FK_ELChildService_RefEarlyChildhoodServicesReceived] FOREIGN KEY([RefEarlyChildhoodServicesReceivedId])
REFERENCES [dbo].[RefEarlyChildhoodServices] ([RefEarlyChildhoodServicesId]);

ALTER TABLE [dbo].[ELChildService] CHECK CONSTRAINT [FK_ELChildService_RefEarlyChildhoodServicesReceived];

ALTER TABLE [dbo].[ELChildService]  WITH CHECK ADD  CONSTRAINT [FK_ELChildService_RefELServiceType] FOREIGN KEY([RefELServiceTypeId])
REFERENCES [dbo].[RefELServiceType] ([RefELServiceTypeId]);

ALTER TABLE [dbo].[ELChildService] CHECK CONSTRAINT [FK_ELChildService_RefELServiceType];

ALTER TABLE [dbo].[ELChildServicesApplication]  WITH CHECK ADD  CONSTRAINT [FK_ELChildServicesApplication_OrgPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[ELChildServicesApplication] CHECK CONSTRAINT [FK_ELChildServicesApplication_OrgPersonRole];

ALTER TABLE [dbo].[ELChildTransitionPlan]  WITH CHECK ADD  CONSTRAINT [FK_ELChildIDEA_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]);

ALTER TABLE [dbo].[ELChildTransitionPlan] CHECK CONSTRAINT [FK_ELChildIDEA_IndividualizedProgram];

ALTER TABLE [dbo].[ELChildTransitionPlan]  WITH CHECK ADD  CONSTRAINT [FK_ELChildIDEA_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[ELChildTransitionPlan] CHECK CONSTRAINT [FK_ELChildIDEA_Person];

ALTER TABLE [dbo].[ELChildTransitionPlan]  WITH CHECK ADD  CONSTRAINT [FK_ELChildIDEA_RefReasonDelayTransitionConf] FOREIGN KEY([RefReasonDelayTransitionConfId])
REFERENCES [dbo].[RefReasonDelayTransitionConf] ([RefReasonDelayTransitionConfId]);

ALTER TABLE [dbo].[ELChildTransitionPlan] CHECK CONSTRAINT [FK_ELChildIDEA_RefReasonDelayTransitionConf];

ALTER TABLE [dbo].[ELClassSection]  WITH CHECK ADD  CONSTRAINT [FK_ELClassSection_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[ELClassSection] CHECK CONSTRAINT [FK_ELClassSection_Organization];

ALTER TABLE [dbo].[ELClassSection]  WITH CHECK ADD  CONSTRAINT [FK_ELClassSection_RefEnvironmentSetting] FOREIGN KEY([RefEnvironmentSettingId])
REFERENCES [dbo].[RefEnvironmentSetting] ([RefEnvironmentSettingId]);

ALTER TABLE [dbo].[ELClassSection] CHECK CONSTRAINT [FK_ELClassSection_RefEnvironmentSetting];

ALTER TABLE [dbo].[ELClassSection]  WITH CHECK ADD  CONSTRAINT [FK_ELClassSection_RefServiceOption] FOREIGN KEY([RefServiceOptionId])
REFERENCES [dbo].[RefServiceOption] ([RefServiceOptionId]);

ALTER TABLE [dbo].[ELClassSection] CHECK CONSTRAINT [FK_ELClassSection_RefServiceOption];

ALTER TABLE [dbo].[ELClassSectionService]  WITH CHECK ADD  CONSTRAINT [FK_ELClassSectionService_ELClassSection] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[ELClassSection] ([OrganizationId]);

ALTER TABLE [dbo].[ELClassSectionService] CHECK CONSTRAINT [FK_ELClassSectionService_ELClassSection];

ALTER TABLE [dbo].[ELClassSectionService]  WITH CHECK ADD  CONSTRAINT [FK_ELClassSectionService_RefELGroupSizeStandardMet] FOREIGN KEY([RefELGroupSizeStandardMetId])
REFERENCES [dbo].[RefELGroupSizeStandardMet] ([RefELGroupSizeStandardMetId]);

ALTER TABLE [dbo].[ELClassSectionService] CHECK CONSTRAINT [FK_ELClassSectionService_RefELGroupSizeStandardMet];

ALTER TABLE [dbo].[ELClassSectionService]  WITH CHECK ADD  CONSTRAINT [FK_ELClassSectionService_RefFrequencyOfServiceId] FOREIGN KEY([RefFrequencyOfServiceId])
REFERENCES [dbo].[RefFrequencyOfService] ([RefFrequencyOfServiceId]);

ALTER TABLE [dbo].[ELClassSectionService] CHECK CONSTRAINT [FK_ELClassSectionService_RefFrequencyOfServiceId];

ALTER TABLE [dbo].[ELEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_EcProgramEnrollment_OrganizationPerson] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[ELEnrollment] CHECK CONSTRAINT [FK_EcProgramEnrollment_OrganizationPerson];

ALTER TABLE [dbo].[ELEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_ElEnrollment_ELClassSection] FOREIGN KEY([ELClassSectionId])
REFERENCES [dbo].[ELClassSection] ([OrganizationId]);

ALTER TABLE [dbo].[ELEnrollment] CHECK CONSTRAINT [FK_ElEnrollment_ELClassSection];

ALTER TABLE [dbo].[ELEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_ELEnrollment_RefELFederalFundingType] FOREIGN KEY([RefELFederalFundingTypeId])
REFERENCES [dbo].[RefELFederalFundingType] ([RefELFederalFundingTypeId]);

ALTER TABLE [dbo].[ELEnrollment] CHECK CONSTRAINT [FK_ELEnrollment_RefELFederalFundingType];

ALTER TABLE [dbo].[ELEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_ElEnrollment_RefFoodServiceParticipation] FOREIGN KEY([RefFoodServiceParticipationId])
REFERENCES [dbo].[RefFoodServiceParticipation] ([RefFoodServiceParticipationId]);

ALTER TABLE [dbo].[ELEnrollment] CHECK CONSTRAINT [FK_ElEnrollment_RefFoodServiceParticipation];

ALTER TABLE [dbo].[ELEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_ElEnrollment_RefIDEAEnvironmentEL] FOREIGN KEY([RefIDEAEnvironmentELId])
REFERENCES [dbo].[RefIDEAEnvironmentEL] ([RefIDEAEnvironmentELId]);

ALTER TABLE [dbo].[ELEnrollment] CHECK CONSTRAINT [FK_ElEnrollment_RefIDEAEnvironmentEL];

ALTER TABLE [dbo].[ELEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_ELEnrollment_RefServiceOption] FOREIGN KEY([RefServiceOptionId])
REFERENCES [dbo].[RefServiceOption] ([RefServiceOptionId]);

ALTER TABLE [dbo].[ELEnrollment] CHECK CONSTRAINT [FK_ELEnrollment_RefServiceOption];

ALTER TABLE [dbo].[ELEnrollmentOtherFunding]  WITH CHECK ADD  CONSTRAINT [FK_ELEnrollmentOtherFunding_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[ELEnrollmentOtherFunding] CHECK CONSTRAINT [FK_ELEnrollmentOtherFunding_Person];

ALTER TABLE [dbo].[ELFacilityLicensing]  WITH CHECK ADD  CONSTRAINT [FK_ELFacilityLicensing_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[ELFacilityLicensing] CHECK CONSTRAINT [FK_ELFacilityLicensing_Organization];

ALTER TABLE [dbo].[ELFacilityLicensing]  WITH CHECK ADD  CONSTRAINT [FK_ELFacilityLicensing_RefELFacilityLicensingStatus] FOREIGN KEY([RefELFacilityLicensingStatusId])
REFERENCES [dbo].[RefELFacilityLicensingStatus] ([RefELFacilityLicensingStatusId]);

ALTER TABLE [dbo].[ELFacilityLicensing] CHECK CONSTRAINT [FK_ELFacilityLicensing_RefELFacilityLicensingStatus];

ALTER TABLE [dbo].[ELFacilityLicensing]  WITH CHECK ADD  CONSTRAINT [FK_ELFacilityLicensing_RefLicenseExempt] FOREIGN KEY([RefLicenseExemptId])
REFERENCES [dbo].[RefLicenseExempt] ([RefLicenseExemptId]);

ALTER TABLE [dbo].[ELFacilityLicensing] CHECK CONSTRAINT [FK_ELFacilityLicensing_RefLicenseExempt];

ALTER TABLE [dbo].[ELOrganization]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganization_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[ELOrganization] CHECK CONSTRAINT [FK_ELOrganization_Organization];

ALTER TABLE [dbo].[ELOrganization]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganization_RefProfitStatus] FOREIGN KEY([RefProfitStatusId])
REFERENCES [dbo].[RefProfitStatus] ([RefProfitStatusId]);

ALTER TABLE [dbo].[ELOrganization] CHECK CONSTRAINT [FK_ELOrganization_RefProfitStatus];

ALTER TABLE [dbo].[ELOrganizationAvailability]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationAvailability_Organization1] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[ELOrganizationAvailability] CHECK CONSTRAINT [FK_ELOrganizationAvailability_Organization1];

ALTER TABLE [dbo].[ELOrganizationAvailability]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationAvailability_RefEnvironmentSetting] FOREIGN KEY([RefEnvironmentSettingId])
REFERENCES [dbo].[RefEnvironmentSetting] ([RefEnvironmentSettingId]);

ALTER TABLE [dbo].[ELOrganizationAvailability] CHECK CONSTRAINT [FK_ELOrganizationAvailability_RefEnvironmentSetting];

ALTER TABLE [dbo].[ELOrganizationAvailability]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationAvailability_RefPopulationServed] FOREIGN KEY([RefPopulationServedId])
REFERENCES [dbo].[RefPopulationServed] ([RefPopulationServedId]);

ALTER TABLE [dbo].[ELOrganizationAvailability] CHECK CONSTRAINT [FK_ELOrganizationAvailability_RefPopulationServed];

ALTER TABLE [dbo].[ELOrganizationAvailability]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationAvailability_RefServiceOption] FOREIGN KEY([RefServiceOptionId])
REFERENCES [dbo].[RefServiceOption] ([RefServiceOptionId]);

ALTER TABLE [dbo].[ELOrganizationAvailability] CHECK CONSTRAINT [FK_ELOrganizationAvailability_RefServiceOption];

ALTER TABLE [dbo].[ELOrganizationFunds]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationFunds_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[ELOrganizationFunds] CHECK CONSTRAINT [FK_ELOrganizationFunds_Organization];

ALTER TABLE [dbo].[ELOrganizationFunds]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationFunds_RefBillableBasisType] FOREIGN KEY([RefBillableBasisTypeId])
REFERENCES [dbo].[RefBillableBasisType] ([RefBillableBasisTypeId]);

ALTER TABLE [dbo].[ELOrganizationFunds] CHECK CONSTRAINT [FK_ELOrganizationFunds_RefBillableBasisType];

ALTER TABLE [dbo].[ELOrganizationFunds]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationFunds_RefELFederalFundingType] FOREIGN KEY([RefELFederalFundingTypeId])
REFERENCES [dbo].[RefELFederalFundingType] ([RefELFederalFundingTypeId]);

ALTER TABLE [dbo].[ELOrganizationFunds] CHECK CONSTRAINT [FK_ELOrganizationFunds_RefELFederalFundingType];

ALTER TABLE [dbo].[ELOrganizationFunds]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationFunds_RefELLocalRevenueSource] FOREIGN KEY([RefELLocalRevenueSourceId])
REFERENCES [dbo].[RefELLocalRevenueSource] ([RefELLocalRevenueSourceId]);

ALTER TABLE [dbo].[ELOrganizationFunds] CHECK CONSTRAINT [FK_ELOrganizationFunds_RefELLocalRevenueSource];

ALTER TABLE [dbo].[ELOrganizationFunds]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationFunds_RefELOtherFederalFundingSources] FOREIGN KEY([RefELOtherFederalFundingSourcesId])
REFERENCES [dbo].[RefELOtherFederalFundingSources] ([RefELOtherFederalFundingSourcesId]);

ALTER TABLE [dbo].[ELOrganizationFunds] CHECK CONSTRAINT [FK_ELOrganizationFunds_RefELOtherFederalFundingSources];

ALTER TABLE [dbo].[ELOrganizationFunds]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationFunds_RefELStateRevenueSource] FOREIGN KEY([RefELStateRevenueSourceId])
REFERENCES [dbo].[RefELStateRevenueSource] ([RefELStateRevenueSourceId]);

ALTER TABLE [dbo].[ELOrganizationFunds] CHECK CONSTRAINT [FK_ELOrganizationFunds_RefELStateRevenueSource];

ALTER TABLE [dbo].[ELOrganizationFunds]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationFunds_RefReimbursementType] FOREIGN KEY([RefReimbursementTypeId])
REFERENCES [dbo].[RefReimbursementType] ([RefReimbursementTypeId]);

ALTER TABLE [dbo].[ELOrganizationFunds] CHECK CONSTRAINT [FK_ELOrganizationFunds_RefReimbursementType];

ALTER TABLE [dbo].[ELOrganizationMonitoring]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationMonitoring_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[ELOrganizationMonitoring] CHECK CONSTRAINT [FK_ELOrganizationMonitoring_Organization];

ALTER TABLE [dbo].[ELOrganizationMonitoring]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationMonitoring_RefOrganizationMonitoringNotifications] FOREIGN KEY([RefOrganizationMonitoringNotificationsId])
REFERENCES [dbo].[RefOrganizationMonitoringNotifications] ([RefOrganizationMonitoringNotificationsId]);

ALTER TABLE [dbo].[ELOrganizationMonitoring] CHECK CONSTRAINT [FK_ELOrganizationMonitoring_RefOrganizationMonitoringNotifications];

ALTER TABLE [dbo].[ELOrganizationMonitoring]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationMonitoring_RefPurposeOfMonitoringVisit] FOREIGN KEY([RefPurposeOfMonitoringVisitId])
REFERENCES [dbo].[RefPurposeOfMonitoringVisit] ([RefPurposeOfMonitoringVisitId]);

ALTER TABLE [dbo].[ELOrganizationMonitoring] CHECK CONSTRAINT [FK_ELOrganizationMonitoring_RefPurposeOfMonitoringVisit];

ALTER TABLE [dbo].[ELProgramLicensing]  WITH CHECK ADD  CONSTRAINT [FK_ELProgramLicensing_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[ELProgramLicensing] CHECK CONSTRAINT [FK_ELProgramLicensing_Organization];

ALTER TABLE [dbo].[ELProgramLicensing]  WITH CHECK ADD  CONSTRAINT [FK_ELProgramLicensing_RefELProgramLicenseStatus] FOREIGN KEY([RefELProgramLicenseStatusId])
REFERENCES [dbo].[RefELProgramLicenseStatus] ([RefELProgramLicenseStatusId]);

ALTER TABLE [dbo].[ELProgramLicensing] CHECK CONSTRAINT [FK_ELProgramLicensing_RefELProgramLicenseStatus];

ALTER TABLE [dbo].[ELProgramLicensing]  WITH CHECK ADD  CONSTRAINT [FK_ELProgramLicensing_RefLicenseExempt] FOREIGN KEY([RefLicenseExemptId])
REFERENCES [dbo].[RefLicenseExempt] ([RefLicenseExemptId]);

ALTER TABLE [dbo].[ELProgramLicensing] CHECK CONSTRAINT [FK_ELProgramLicensing_RefLicenseExempt];

ALTER TABLE [dbo].[ELQualityInitiative]  WITH CHECK ADD  CONSTRAINT [FK_ELQualityInitiative_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[ELQualityInitiative] CHECK CONSTRAINT [FK_ELQualityInitiative_Organization];

ALTER TABLE [dbo].[ELQualityRatingImprovement]  WITH CHECK ADD  CONSTRAINT [FK_ELQualityRatingImprovement_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[ELQualityRatingImprovement] CHECK CONSTRAINT [FK_ELQualityRatingImprovement_Organization];

ALTER TABLE [dbo].[ELQualityRatingImprovement]  WITH CHECK ADD  CONSTRAINT [FK_ELQualityRatingImprovement_RefQRISParticipation] FOREIGN KEY([RefQrisParticipationId])
REFERENCES [dbo].[RefQrisParticipation] ([RefQrisParticipationId]);

ALTER TABLE [dbo].[ELQualityRatingImprovement] CHECK CONSTRAINT [FK_ELQualityRatingImprovement_RefQRISParticipation];

ALTER TABLE [dbo].[ELServicePartner]  WITH CHECK ADD  CONSTRAINT [FK_ELServicePartner_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[ELServicePartner] CHECK CONSTRAINT [FK_ELServicePartner_Organization];

ALTER TABLE [dbo].[ELStaff]  WITH CHECK ADD  CONSTRAINT [FK_ELStaff_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[ELStaff] CHECK CONSTRAINT [FK_ELStaff_OrganizationPersonRole];

ALTER TABLE [dbo].[ELStaff]  WITH CHECK ADD  CONSTRAINT [FK_ELStaff_RefChildDevAssociateType] FOREIGN KEY([RefChildDevelopmentAssociateTypeId])
REFERENCES [dbo].[RefChildDevelopmentAssociateType] ([RefChildDevelopmentAssociateTypeId]);

ALTER TABLE [dbo].[ELStaff] CHECK CONSTRAINT [FK_ELStaff_RefChildDevAssociateType];

ALTER TABLE [dbo].[ELStaffAssignment]  WITH CHECK ADD  CONSTRAINT [FK_ELStaffAssignment_OrgPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[ELStaffAssignment] CHECK CONSTRAINT [FK_ELStaffAssignment_OrgPersonRole];

ALTER TABLE [dbo].[ELStaffEducation]  WITH CHECK ADD  CONSTRAINT [FK_ELStaff_RefELLevelOfSpecialization] FOREIGN KEY([RefELLevelOfSpecializationId])
REFERENCES [dbo].[RefELLevelOfSpecialization] ([RefELLevelOfSpecializationId]);

ALTER TABLE [dbo].[ELStaffEducation] CHECK CONSTRAINT [FK_ELStaff_RefELLevelOfSpecialization];

ALTER TABLE [dbo].[ELStaffEducation]  WITH CHECK ADD  CONSTRAINT [FK_ELStaffEducation_ELStaff] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[ELStaff] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[ELStaffEducation] CHECK CONSTRAINT [FK_ELStaffEducation_ELStaff];

ALTER TABLE [dbo].[ELStaffEducation]  WITH CHECK ADD  CONSTRAINT [FK_ELStaffEducation_RefELPDTopicArea] FOREIGN KEY([RefELProfessionalDevelopmentTopicAreaId])
REFERENCES [dbo].[RefELProfessionalDevelopmentTopicArea] ([RefELProfessionalDevelopmentTopicAreaId]);

ALTER TABLE [dbo].[ELStaffEducation] CHECK CONSTRAINT [FK_ELStaffEducation_RefELPDTopicArea];

ALTER TABLE [dbo].[ELStaffEmployment]  WITH CHECK ADD  CONSTRAINT [FK_ELStaffEmployment_RefELEducationStaffClassification] FOREIGN KEY([RefELEducationStaffClassificationId])
REFERENCES [dbo].[RefELEducationStaffClassification] ([RefELEducationStaffClassificationId]);

ALTER TABLE [dbo].[ELStaffEmployment] CHECK CONSTRAINT [FK_ELStaffEmployment_RefELEducationStaffClassification];

ALTER TABLE [dbo].[ELStaffEmployment]  WITH CHECK ADD  CONSTRAINT [FK_ELStaffEmployment_RefELEmploymentSeparationReason] FOREIGN KEY([RefELEmploymentSeparationReasonId])
REFERENCES [dbo].[RefELEmploymentSeparationReason] ([RefELEmploymentSeparationReasonId]);

ALTER TABLE [dbo].[ELStaffEmployment] CHECK CONSTRAINT [FK_ELStaffEmployment_RefELEmploymentSeparationReason];

ALTER TABLE [dbo].[ELStaffEmployment]  WITH CHECK ADD  CONSTRAINT [FK_ELStaffEmployment_RefELServiceProfessionalStaffClassification] FOREIGN KEY([RefELServiceProfessionalStaffClassificationId])
REFERENCES [dbo].[RefELServiceProfessionalStaffClassification] ([RefELServiceProfessionalStaffClassificationId]);

ALTER TABLE [dbo].[ELStaffEmployment] CHECK CONSTRAINT [FK_ELStaffEmployment_RefELServiceProfessionalStaffClassification];

ALTER TABLE [dbo].[ELStaffEmployment]  WITH CHECK ADD  CONSTRAINT [FK_ELStaffEmployment_RefEmploymentStatus] FOREIGN KEY([RefEmploymentStatusId])
REFERENCES [dbo].[RefEmploymentStatus] ([RefEmploymentStatusId]);

ALTER TABLE [dbo].[ELStaffEmployment] CHECK CONSTRAINT [FK_ELStaffEmployment_RefEmploymentStatus];

ALTER TABLE [dbo].[ELStaffEmployment]  WITH CHECK ADD  CONSTRAINT [FK_ELStaffEmployment_RefWageCollectionMethod] FOREIGN KEY([RefWageCollectionMethodId])
REFERENCES [dbo].[RefWageCollectionMethod] ([RefWageCollectionMethodId]);

ALTER TABLE [dbo].[ELStaffEmployment] CHECK CONSTRAINT [FK_ELStaffEmployment_RefWageCollectionMethod];

ALTER TABLE [dbo].[ELStaffEmployment]  WITH CHECK ADD  CONSTRAINT [FK_ELStaffEmployment_RefWageVerification] FOREIGN KEY([RefWageVerificationId])
REFERENCES [dbo].[RefWageVerification] ([RefWageVerificationId]);

ALTER TABLE [dbo].[ELStaffEmployment] CHECK CONSTRAINT [FK_ELStaffEmployment_RefWageVerification];

ALTER TABLE [dbo].[ELStaffEmployment]  WITH CHECK ADD  CONSTRAINT [FK_ELStaffEmployment_StaffEmployment] FOREIGN KEY([StaffEmploymentId])
REFERENCES [dbo].[StaffEmployment] ([StaffEmploymentId]);

ALTER TABLE [dbo].[ELStaffEmployment] CHECK CONSTRAINT [FK_ELStaffEmployment_StaffEmployment];

ALTER TABLE [dbo].[Facility]  WITH CHECK ADD  CONSTRAINT [FK_Facility_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId]);

ALTER TABLE [dbo].[Facility] CHECK CONSTRAINT [FK_Facility_Location];

ALTER TABLE [dbo].[Facility]  WITH CHECK ADD  CONSTRAINT [FK_Facility_RefBuildingUseType] FOREIGN KEY([RefBuildingUseTypeId])
REFERENCES [dbo].[RefBuildingUseType] ([RefBuildingUseTypeId]);

ALTER TABLE [dbo].[Facility] CHECK CONSTRAINT [FK_Facility_RefBuildingUseType];

ALTER TABLE [dbo].[Facility]  WITH CHECK ADD  CONSTRAINT [FK_Facility_RefSpaceUseType] FOREIGN KEY([RefSpaceUseTypeId])
REFERENCES [dbo].[RefSpaceUseType] ([RefSpaceUseTypeId]);

ALTER TABLE [dbo].[Facility] CHECK CONSTRAINT [FK_Facility_RefSpaceUseType];

ALTER TABLE [dbo].[FinancialAccount]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAccount_RefFinancialAccountCategory] FOREIGN KEY([RefFinancialAccountCategoryId])
REFERENCES [dbo].[RefFinancialAccountCategory] ([RefFinancialAccountCategoryId]);

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialAccountCategory];

ALTER TABLE [dbo].[FinancialAccount]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAccount_RefFinancialAccountFundClassification] FOREIGN KEY([RefFinancialAccountFundClassificationId])
REFERENCES [dbo].[RefFinancialAccountFundClassification] ([RefFinancialAccountFundClassificationId]);

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialAccountFundClassification];

ALTER TABLE [dbo].[FinancialAccount]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAccount_RefFinancialAccountProgramCode] FOREIGN KEY([RefFinancialAccountProgramCodeId])
REFERENCES [dbo].[RefFinancialAccountProgramCode] ([RefFinancialAccountProgramCodeId]);

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialAccountProgramCode];

ALTER TABLE [dbo].[FinancialAccount]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAccount_RefFinancialAccountRevenueCode] FOREIGN KEY([RefFinancialAccountRevenueCodeId])
REFERENCES [dbo].[RefFinancialAccountRevenueCode] ([RefFinancialAccountRevenueCodeId]);

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialAccountRevenueCode];

ALTER TABLE [dbo].[FinancialAccount]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAccount_RefFinancialBalanceSheetAccountCode] FOREIGN KEY([RefFinancialAccountBalanceSheetCodeId])
REFERENCES [dbo].[RefFinancialAccountBalanceSheetCode] ([RefFinancialBalanceSheetAccountCodeId]);

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialBalanceSheetAccountCode];

ALTER TABLE [dbo].[FinancialAccount]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureFunctionCode] FOREIGN KEY([RefFinancialExpenditureFunctionCodeId])
REFERENCES [dbo].[RefFinancialExpenditureFunctionCode] ([RefFinancialExpenditureFunctionCodeId]);

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureFunctionCode];

ALTER TABLE [dbo].[FinancialAccount]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureLevelOfInstructionCode] FOREIGN KEY([RefFinancialExpenditureLevelOfInstructionCodeId])
REFERENCES [dbo].[RefFinancialExpenditureLevelOfInstructionCode] ([RefFinancialExpenditureLevelOfInstructionCodeId]);

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureLevelOfInstructionCode];

ALTER TABLE [dbo].[FinancialAccount]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureObjectCode] FOREIGN KEY([RefFinancialExpenditureObjectCodeId])
REFERENCES [dbo].[RefFinancialExpenditureObjectCode] ([RefFinancialExpenditureObjectCodeId]);

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureObjectCode];

ALTER TABLE [dbo].[FinancialAidApplication]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAidApplication_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[FinancialAidApplication] CHECK CONSTRAINT [FK_FinancialAidApplication_OrganizationPersonRole];

ALTER TABLE [dbo].[FinancialAidApplication]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAidApplication_RefFinancialAidApplType] FOREIGN KEY([RefFinancialAidApplicationTypeId])
REFERENCES [dbo].[RefFinancialAidApplicationType] ([RefFinancialAidApplicationTypeId]);

ALTER TABLE [dbo].[FinancialAidApplication] CHECK CONSTRAINT [FK_FinancialAidApplication_RefFinancialAidApplType];

ALTER TABLE [dbo].[FinancialAidAward]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAidAward_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[FinancialAidAward] CHECK CONSTRAINT [FK_FinancialAidAward_OrganizationPersonRole];

ALTER TABLE [dbo].[FinancialAidAward]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAidAward_RefFinancialAidAwardStatus] FOREIGN KEY([RefFinancialAidStatusId])
REFERENCES [dbo].[RefFinancialAidAwardStatus] ([RefFinancialAidStatusId]);

ALTER TABLE [dbo].[FinancialAidAward] CHECK CONSTRAINT [FK_FinancialAidAward_RefFinancialAidAwardStatus];

ALTER TABLE [dbo].[FinancialAidAward]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAidAward_RefFinancialAidAwardType] FOREIGN KEY([RefFinancialAidAwardTypeId])
REFERENCES [dbo].[RefFinancialAidAwardType] ([RefFinancialAidAwardTypeId]);

ALTER TABLE [dbo].[FinancialAidAward] CHECK CONSTRAINT [FK_FinancialAidAward_RefFinancialAidAwardType];

ALTER TABLE [dbo].[Goal]  WITH CHECK ADD  CONSTRAINT [FK_Goal_CompetencySet] FOREIGN KEY([CompetencySetId])
REFERENCES [dbo].[CompetencySet] ([CompetencySetId]);

ALTER TABLE [dbo].[Goal] CHECK CONSTRAINT [FK_Goal_CompetencySet];

ALTER TABLE [dbo].[Goal]  WITH CHECK ADD  CONSTRAINT [FK_Goal_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[Goal] CHECK CONSTRAINT [FK_Goal_OrganizationPersonRole];

ALTER TABLE [dbo].[GoalMeasurement]  WITH CHECK ADD  CONSTRAINT [FK_GoalMeasurement_Goal] FOREIGN KEY([GoalId])
REFERENCES [dbo].[Goal] ([GoalId]);

ALTER TABLE [dbo].[GoalMeasurement] CHECK CONSTRAINT [FK_GoalMeasurement_Goal];

ALTER TABLE [dbo].[GoalMeasurement]  WITH CHECK ADD  CONSTRAINT [FK_GoalMeasurement_RefGoalMeasurementType] FOREIGN KEY([RefGoalMeasurementTypeId])
REFERENCES [dbo].[RefGoalMeasurementType] ([RefGoalMeasurementTypeId]);

ALTER TABLE [dbo].[GoalMeasurement] CHECK CONSTRAINT [FK_GoalMeasurement_RefGoalMeasurementType];

ALTER TABLE [dbo].[GoalMeasurementCriterion]  WITH CHECK ADD  CONSTRAINT [FK_GoalMeasurementCriterion_GoalMeasurement] FOREIGN KEY([GoalMeasurementId])
REFERENCES [dbo].[GoalMeasurement] ([GoalMeasurementId]);

ALTER TABLE [dbo].[GoalMeasurementCriterion] CHECK CONSTRAINT [FK_GoalMeasurementCriterion_GoalMeasurement];

ALTER TABLE [dbo].[GoalPerformance]  WITH CHECK ADD  CONSTRAINT [FK_GoalPerformance_Goal] FOREIGN KEY([GoalId])
REFERENCES [dbo].[Goal] ([GoalId]);

ALTER TABLE [dbo].[GoalPerformance] CHECK CONSTRAINT [FK_GoalPerformance_Goal];

ALTER TABLE [dbo].[GoalPerformance]  WITH CHECK ADD  CONSTRAINT [FK_GoalPerformance_RefGoalStatusType] FOREIGN KEY([RefGoalStatusTypeId])
REFERENCES [dbo].[RefGoalStatusType] ([RefGoalStatusTypeId]);

ALTER TABLE [dbo].[GoalPerformance] CHECK CONSTRAINT [FK_GoalPerformance_RefGoalStatusType];

ALTER TABLE [dbo].[IDEAEligibilityEvaluationCategory]  WITH CHECK ADD  CONSTRAINT [FK_IDEAEligibilityEvaluationCategory_EligibilityEvaluation] FOREIGN KEY([EligibilityEvaluationId])
REFERENCES [dbo].[EligibilityEvaluation] ([EligibilityEvaluationId]);

ALTER TABLE [dbo].[IDEAEligibilityEvaluationCategory] CHECK CONSTRAINT [FK_IDEAEligibilityEvaluationCategory_EligibilityEvaluation];

ALTER TABLE [dbo].[IDEAEligibilityEvaluationCategory]  WITH CHECK ADD  CONSTRAINT [FK_IDEAEligibilityEvaluationCategory_RefIDEAEligibilityEvaluationCategory] FOREIGN KEY([RefIDEAEligibilityEvaluationCategoryId])
REFERENCES [dbo].[RefIDEAEligibilityEvaluationCategory] ([RefIDEAEligibilityEvaluationCategoryId]);

ALTER TABLE [dbo].[IDEAEligibilityEvaluationCategory] CHECK CONSTRAINT [FK_IDEAEligibilityEvaluationCategory_RefIDEAEligibilityEvaluationCategory];

ALTER TABLE [dbo].[IEPAuthorization]  WITH CHECK ADD  CONSTRAINT [FK_IEPAuthorization_AuthorizationDocument] FOREIGN KEY([AuthorizationDocumentId])
REFERENCES [dbo].[AuthorizationDocument] ([AuthorizationDocumentId]);

ALTER TABLE [dbo].[IEPAuthorization] CHECK CONSTRAINT [FK_IEPAuthorization_AuthorizationDocument];

ALTER TABLE [dbo].[IEPAuthorization]  WITH CHECK ADD  CONSTRAINT [FK_IEPAuthorization_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]);

ALTER TABLE [dbo].[IEPAuthorization] CHECK CONSTRAINT [FK_IEPAuthorization_IndividualizedProgram];

ALTER TABLE [dbo].[IEPAuthorization]  WITH CHECK ADD  CONSTRAINT [FK_IEPAuthorization_RefIEPAuthorizationDocumentType] FOREIGN KEY([RefIEPAuthorizationDocumentTypeId])
REFERENCES [dbo].[RefIEPAuthorizationDocumentType] ([RefIEPAuthorizationDocumentTypeId]);

ALTER TABLE [dbo].[IEPAuthorization] CHECK CONSTRAINT [FK_IEPAuthorization_RefIEPAuthorizationDocumentType];

ALTER TABLE [dbo].[IEPAuthorizationRejected]  WITH CHECK ADD  CONSTRAINT [FK_IEPAuthorizationRejected_IEPAuthorization] FOREIGN KEY([IEPAuthorizationId])
REFERENCES [dbo].[IEPAuthorization] ([IEPAuthorizationId]);

ALTER TABLE [dbo].[IEPAuthorizationRejected] CHECK CONSTRAINT [FK_IEPAuthorizationRejected_IEPAuthorization];

ALTER TABLE [dbo].[IEPPresentLevel]  WITH CHECK ADD  CONSTRAINT [FK_IEPPresentLevel_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]);

ALTER TABLE [dbo].[IEPPresentLevel] CHECK CONSTRAINT [FK_IEPPresentLevel_IndividualizedProgram];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_OrganizationPerson] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_OrganizationPerson];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_Person] FOREIGN KEY([IncidentReporterId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_Person];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_RefFirearmType] FOREIGN KEY([RefFirearmTypeId])
REFERENCES [dbo].[RefFirearmType] ([RefFirearmTypeId]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_RefFirearmType];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_RefIncidentInjuryType] FOREIGN KEY([RefIncidentInjuryTypeId])
REFERENCES [dbo].[RefIncidentInjuryType] ([RefIncidentInjuryTypeId]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_RefIncidentInjuryType];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_RefIncidentLocation] FOREIGN KEY([RefIncidentLocationId])
REFERENCES [dbo].[RefIncidentLocation] ([RefIncidentLocationId]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_RefIncidentLocation];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_RefIncidentMultipleOffenseType] FOREIGN KEY([RefIncidentMultipleOffenseTypeId])
REFERENCES [dbo].[RefIncidentMultipleOffenseType] ([RefIncidentMultipleOffenseTypeId]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_RefIncidentMultipleOffenseType];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_RefIncidentPerpetratorInjuryType] FOREIGN KEY([RefIncidentPerpetratorInjuryTypeId])
REFERENCES [dbo].[RefIncidentPerpetratorInjuryType] ([RefIncidentPerpetratorInjuryTypeId]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_RefIncidentPerpetratorInjuryType];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_RefIncidentReporterType] FOREIGN KEY([RefIncidentReporterTypeId])
REFERENCES [dbo].[RefIncidentReporterType] ([RefIncidentReporterTypeId]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_RefIncidentReporterType];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_RefIncidentTimeDescriptionCode] FOREIGN KEY([RefIncidentTimeDescriptionCodeId])
REFERENCES [dbo].[RefIncidentTimeDescriptionCode] ([RefIncidentTimeDescriptionCodeId]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_RefIncidentTimeDescriptionCode];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_RefRefIncidentBehavior] FOREIGN KEY([RefIncidentBehaviorId])
REFERENCES [dbo].[RefIncidentBehavior] ([RefIncidentBehaviorId]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_RefRefIncidentBehavior];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_RefRefIncidentBehaviorSecondary] FOREIGN KEY([RefIncidentBehaviorSecondaryId])
REFERENCES [dbo].[RefIncidentBehaviorSecondary] ([RefIncidentBehaviorSecondaryId]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_RefRefIncidentBehaviorSecondary];

ALTER TABLE [dbo].[Incident]  WITH CHECK ADD  CONSTRAINT [FK_Incident_RefWeaponType] FOREIGN KEY([RefWeaponTypeId])
REFERENCES [dbo].[RefWeaponType] ([RefWeaponTypeId]);

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_RefWeaponType];

ALTER TABLE [dbo].[IncidentPerson]  WITH CHECK ADD  CONSTRAINT [FK_IncidentPerson_Incident] FOREIGN KEY([IncidentId])
REFERENCES [dbo].[Incident] ([IncidentId]);

ALTER TABLE [dbo].[IncidentPerson] CHECK CONSTRAINT [FK_IncidentPerson_Incident];

ALTER TABLE [dbo].[IncidentPerson]  WITH CHECK ADD  CONSTRAINT [FK_IncidentPerson_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[IncidentPerson] CHECK CONSTRAINT [FK_IncidentPerson_Person];

ALTER TABLE [dbo].[IncidentPerson]  WITH CHECK ADD  CONSTRAINT [FK_IncidentPerson_RefIncidentPersonRoleType] FOREIGN KEY([RefIncidentPersonRoleTypeId])
REFERENCES [dbo].[RefIncidentPersonRoleType] ([RefIncidentPersonRoleTypeId]);

ALTER TABLE [dbo].[IncidentPerson] CHECK CONSTRAINT [FK_IncidentPerson_RefIncidentPersonRoleType];

ALTER TABLE [dbo].[IncidentPerson]  WITH CHECK ADD  CONSTRAINT [FK_IncidentPerson_RefIncidentPersonType] FOREIGN KEY([RefIncidentPersonTypeId])
REFERENCES [dbo].[RefIncidentPersonType] ([RefIncidentPersonTypeId]);

ALTER TABLE [dbo].[IncidentPerson] CHECK CONSTRAINT [FK_IncidentPerson_RefIncidentPersonType];

ALTER TABLE [dbo].[IndividualizedProgram]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgram_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[IndividualizedProgram] CHECK CONSTRAINT [FK_IndividualizedProgram_OrganizationPersonRole];

ALTER TABLE [dbo].[IndividualizedProgram]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgram_RefIndividualizedProgramType] FOREIGN KEY([RefIndividualizedProgramTypeId])
REFERENCES [dbo].[RefIndividualizedProgramType] ([RefIndividualizedProgramTypeId]);

ALTER TABLE [dbo].[IndividualizedProgram] CHECK CONSTRAINT [FK_IndividualizedProgram_RefIndividualizedProgramType];

ALTER TABLE [dbo].[IndividualizedProgram]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgram_RefIndivProgramDateType] FOREIGN KEY([RefIndividualizedProgramDateType])
REFERENCES [dbo].[RefIndividualizedProgramDateType] ([RefIndividualizedProgramDateTypeId]);

ALTER TABLE [dbo].[IndividualizedProgram] CHECK CONSTRAINT [FK_IndividualizedProgram_RefIndivProgramDateType];

ALTER TABLE [dbo].[IndividualizedProgram]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgram_RefIndivProgramLocation] FOREIGN KEY([RefIndividualizedProgramLocationId])
REFERENCES [dbo].[RefIndividualizedProgramLocation] ([RefIndividualizedProgramLocationId]);

ALTER TABLE [dbo].[IndividualizedProgram] CHECK CONSTRAINT [FK_IndividualizedProgram_RefIndivProgramLocation];

ALTER TABLE [dbo].[IndividualizedProgram]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgram_RefIndivProgramTransitionType] FOREIGN KEY([RefIndividualizedProgramTransitionTypeId])
REFERENCES [dbo].[RefIndividualizedProgramTransitionType] ([RefIndividualizedProgramTransitionTypeId]);

ALTER TABLE [dbo].[IndividualizedProgram] CHECK CONSTRAINT [FK_IndividualizedProgram_RefIndivProgramTransitionType];

ALTER TABLE [dbo].[IndividualizedProgram]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgram_RefStudentSupportServiceType] FOREIGN KEY([RefStudentSupportServiceTypeId])
REFERENCES [dbo].[RefStudentSupportServiceType] ([RefStudentSupportServiceTypeId]);

ALTER TABLE [dbo].[IndividualizedProgram] CHECK CONSTRAINT [FK_IndividualizedProgram_RefStudentSupportServiceType];

ALTER TABLE [dbo].[IndividualizedProgramAccommodation]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramAccommodation_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]);

ALTER TABLE [dbo].[IndividualizedProgramAccommodation] CHECK CONSTRAINT [FK_IndividualizedProgramAccommodation_IndividualizedProgram];

ALTER TABLE [dbo].[IndividualizedProgramAccommodation]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramAccommodation_RefAccommodationType] FOREIGN KEY([RefAccommodationTypeId])
REFERENCES [dbo].[RefAccommodationType] ([RefAccommodationTypeId]);

ALTER TABLE [dbo].[IndividualizedProgramAccommodation] CHECK CONSTRAINT [FK_IndividualizedProgramAccommodation_RefAccommodationType];

ALTER TABLE [dbo].[IndividualizedProgramAccommodationSubject]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramAccommodationSubject_IndividualizedProgramAccommodation] FOREIGN KEY([IndividualizedProgramAccommodationId])
REFERENCES [dbo].[IndividualizedProgramAccommodation] ([IndividualizedProgramAccommodationId]);

ALTER TABLE [dbo].[IndividualizedProgramAccommodationSubject] CHECK CONSTRAINT [FK_IndividualizedProgramAccommodationSubject_IndividualizedProgramAccommodation];

ALTER TABLE [dbo].[IndividualizedProgramAccommodationSubject]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramAccommodationSubject_RefSCEDCourseSubjectArea] FOREIGN KEY([RefSCEDCourseSubjectAreaId])
REFERENCES [dbo].[RefSCEDCourseSubjectArea] ([RefSCEDCourseSubjectAreaId]);

ALTER TABLE [dbo].[IndividualizedProgramAccommodationSubject] CHECK CONSTRAINT [FK_IndividualizedProgramAccommodationSubject_RefSCEDCourseSubjectArea];

ALTER TABLE [dbo].[IndividualizedProgramAmendment]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramAmendment_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]);

ALTER TABLE [dbo].[IndividualizedProgramAmendment] CHECK CONSTRAINT [FK_IndividualizedProgramAmendment_IndividualizedProgram];

ALTER TABLE [dbo].[IndividualizedProgramAssessment]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramAssessment_Assessment] FOREIGN KEY([AssessmentId])
REFERENCES [dbo].[Assessment] ([AssessmentId]);

ALTER TABLE [dbo].[IndividualizedProgramAssessment] CHECK CONSTRAINT [FK_IndividualizedProgramAssessment_Assessment];

ALTER TABLE [dbo].[IndividualizedProgramAssessment]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramAssessment_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]);

ALTER TABLE [dbo].[IndividualizedProgramAssessment] CHECK CONSTRAINT [FK_IndividualizedProgramAssessment_IndividualizedProgram];

ALTER TABLE [dbo].[IndividualizedProgramAssessmentAccommodation]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramAssessmentAccommodation_AssessmentAccommodation] FOREIGN KEY([AssessmentAccommodationId])
REFERENCES [dbo].[AssessmentAccommodation] ([AssessmentAccommodationId]);

ALTER TABLE [dbo].[IndividualizedProgramAssessmentAccommodation] CHECK CONSTRAINT [FK_IndividualizedProgramAssessmentAccommodation_AssessmentAccommodation];

ALTER TABLE [dbo].[IndividualizedProgramAssessmentAccommodation]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramAssessmentAccommodation_IndividualizedProgramAssessment] FOREIGN KEY([IndividualizedProgramAssessmentId])
REFERENCES [dbo].[IndividualizedProgramAssessment] ([IndividualizedProgramAssessmentId]);

ALTER TABLE [dbo].[IndividualizedProgramAssessmentAccommodation] CHECK CONSTRAINT [FK_IndividualizedProgramAssessmentAccommodation_IndividualizedProgramAssessment];

ALTER TABLE [dbo].[IndividualizedProgramEligibility]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramEligibility_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]);

ALTER TABLE [dbo].[IndividualizedProgramEligibility] CHECK CONSTRAINT [FK_IndividualizedProgramEligibility_IndividualizedProgram];

ALTER TABLE [dbo].[IndividualizedProgramEligibilityEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramEligibilityEvaluation_EligibilityEvaluation] FOREIGN KEY([EligibilityEvaluationId])
REFERENCES [dbo].[EligibilityEvaluation] ([EligibilityEvaluationId]);

ALTER TABLE [dbo].[IndividualizedProgramEligibilityEvaluation] CHECK CONSTRAINT [FK_IndividualizedProgramEligibilityEvaluation_EligibilityEvaluation];

ALTER TABLE [dbo].[IndividualizedProgramEligibilityEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramEligibilityEvaluation_IndividualizedProgramEligibility] FOREIGN KEY([IndividualizedProgramEligibilityId])
REFERENCES [dbo].[IndividualizedProgramEligibility] ([IndividualizedProgramEligibilityId]);

ALTER TABLE [dbo].[IndividualizedProgramEligibilityEvaluation] CHECK CONSTRAINT [FK_IndividualizedProgramEligibilityEvaluation_IndividualizedProgramEligibility];

ALTER TABLE [dbo].[IndividualizedProgramEligibilityEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramEligibilityEvaluation_RefIEPEligibilityEvaluationType] FOREIGN KEY([RefIEPEligibilityEvaluationTypeId])
REFERENCES [dbo].[RefIEPEligibilityEvaluationType] ([RefIEPEligibilityEvaluationTypeId]);

ALTER TABLE [dbo].[IndividualizedProgramEligibilityEvaluation] CHECK CONSTRAINT [FK_IndividualizedProgramEligibilityEvaluation_RefIEPEligibilityEvaluationType];

ALTER TABLE [dbo].[IndividualizedProgramGoal]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramGoal_Goal] FOREIGN KEY([GoalId])
REFERENCES [dbo].[Goal] ([GoalId]);

ALTER TABLE [dbo].[IndividualizedProgramGoal] CHECK CONSTRAINT [FK_IndividualizedProgramGoal_Goal];

ALTER TABLE [dbo].[IndividualizedProgramGoal]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramGoal_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]);

ALTER TABLE [dbo].[IndividualizedProgramGoal] CHECK CONSTRAINT [FK_IndividualizedProgramGoal_IndividualizedProgram];

ALTER TABLE [dbo].[IndividualizedProgramGoal]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramGoal_RefIEPGoalType] FOREIGN KEY([RefIEPGoalTypeId])
REFERENCES [dbo].[RefIEPGoalType] ([RefIEPGoalTypeId]);

ALTER TABLE [dbo].[IndividualizedProgramGoal] CHECK CONSTRAINT [FK_IndividualizedProgramGoal_RefIEPGoalType];

ALTER TABLE [dbo].[IndividualizedProgramMeeting]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramMeeting_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]);

ALTER TABLE [dbo].[IndividualizedProgramMeeting] CHECK CONSTRAINT [FK_IndividualizedProgramMeeting_IndividualizedProgram];

ALTER TABLE [dbo].[IndividualizedProgramMeetingAttendee]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramMeetingAttendee_IndividualizedProgramMeeting] FOREIGN KEY([IndividualizedProgramMeetingId])
REFERENCES [dbo].[IndividualizedProgramMeeting] ([IndividualizedProgramMeetingId]);

ALTER TABLE [dbo].[IndividualizedProgramMeetingAttendee] CHECK CONSTRAINT [FK_IndividualizedProgramMeetingAttendee_IndividualizedProgramMeeting];

ALTER TABLE [dbo].[IndividualizedProgramMeetingAttendee]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramMeetingAttendee_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[IndividualizedProgramMeetingAttendee] CHECK CONSTRAINT [FK_IndividualizedProgramMeetingAttendee_OrganizationPersonRole];

ALTER TABLE [dbo].[IndividualizedProgramProgressGoal]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramProgressGoal_GoalPerformance] FOREIGN KEY([GoalPerformanceId])
REFERENCES [dbo].[GoalPerformance] ([GoalPerformanceId]);

ALTER TABLE [dbo].[IndividualizedProgramProgressGoal] CHECK CONSTRAINT [FK_IndividualizedProgramProgressGoal_GoalPerformance];

ALTER TABLE [dbo].[IndividualizedProgramProgressGoal]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramProgressGoal_IndividualizedProgramProgressReport] FOREIGN KEY([IndividualizedProgramProgressReportId])
REFERENCES [dbo].[IndividualizedProgramProgressReport] ([IndividualizedProgramProgressReportId]);

ALTER TABLE [dbo].[IndividualizedProgramProgressGoal] CHECK CONSTRAINT [FK_IndividualizedProgramProgressGoal_IndividualizedProgramProgressReport];

ALTER TABLE [dbo].[IndividualizedProgramProgressReport]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramProgressReport_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]);

ALTER TABLE [dbo].[IndividualizedProgramProgressReport] CHECK CONSTRAINT [FK_IndividualizedProgramProgressReport_IndividualizedProgram];

ALTER TABLE [dbo].[IndividualizedProgramProgressReport]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramProgressReport_IndividualizedProgramProgressReportPlan] FOREIGN KEY([IndividualizedProgramProgressReportPlanId])
REFERENCES [dbo].[IndividualizedProgramProgressReportPlan] ([IndividualizedProgramProgressReportPlanId]);

ALTER TABLE [dbo].[IndividualizedProgramProgressReport] CHECK CONSTRAINT [FK_IndividualizedProgramProgressReport_IndividualizedProgramProgressReportPlan];

ALTER TABLE [dbo].[IndividualizedProgramProgressReport]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramProgressReport_RefIPSPProgressReportType] FOREIGN KEY([RefIPSPProgressReportTypeId])
REFERENCES [dbo].[RefIPSPProgressReportType] ([RefIPSPProgressReportTypeId]);

ALTER TABLE [dbo].[IndividualizedProgramProgressReport] CHECK CONSTRAINT [FK_IndividualizedProgramProgressReport_RefIPSPProgressReportType];

ALTER TABLE [dbo].[IndividualizedProgramProgressReportPlan]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramProgressReportPlan_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]);

ALTER TABLE [dbo].[IndividualizedProgramProgressReportPlan] CHECK CONSTRAINT [FK_IndividualizedProgramProgressReportPlan_IndividualizedProgram];

ALTER TABLE [dbo].[IndividualizedProgramProgressReportPlan]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramProgressReportPlan_RefIPSPProgressReportSchedule] FOREIGN KEY([RefIPSPProgressReportScheduleId])
REFERENCES [dbo].[RefIPSPProgressReportSchedule] ([RefIPSPProgressReportScheduleId]);

ALTER TABLE [dbo].[IndividualizedProgramProgressReportPlan] CHECK CONSTRAINT [FK_IndividualizedProgramProgressReportPlan_RefIPSPProgressReportSchedule];

ALTER TABLE [dbo].[IndividualizedProgramProgressReportPlan]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramProgressReportPlan_RefIPSPProgressReportType] FOREIGN KEY([RefIPSPProgressReportTypeId])
REFERENCES [dbo].[RefIPSPProgressReportType] ([RefIPSPProgressReportTypeId]);

ALTER TABLE [dbo].[IndividualizedProgramProgressReportPlan] CHECK CONSTRAINT [FK_IndividualizedProgramProgressReportPlan_RefIPSPProgressReportType];

ALTER TABLE [dbo].[IndividualizedProgramService]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramService_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[IndividualizedProgramService] CHECK CONSTRAINT [FK_IndividualizedProgramService_Person];

ALTER TABLE [dbo].[IndividualizedProgramService]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramService_RefIndividualizedProgramPlannedServiceType] FOREIGN KEY([RefIndividualizedProgramPlannedServiceTypeId])
REFERENCES [dbo].[RefIndividualizedProgramPlannedServiceType] ([RefIndividualizedProgramPlannedServiceTypeId]);

ALTER TABLE [dbo].[IndividualizedProgramService] CHECK CONSTRAINT [FK_IndividualizedProgramService_RefIndividualizedProgramPlannedServiceType];

ALTER TABLE [dbo].[IndividualizedProgramService]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramService_RefMethodOfServiceDelivery] FOREIGN KEY([RefMethodOfServiceDeliveryId])
REFERENCES [dbo].[RefMethodOfServiceDelivery] ([RefMethodOfServiceDeliveryId]);

ALTER TABLE [dbo].[IndividualizedProgramService] CHECK CONSTRAINT [FK_IndividualizedProgramService_RefMethodOfServiceDelivery];

ALTER TABLE [dbo].[IndividualizedProgramService]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramService_RefServiceFrequency] FOREIGN KEY([RefServiceFrequencyId])
REFERENCES [dbo].[RefServiceFrequency] ([RefServiceFrequencyId]);

ALTER TABLE [dbo].[IndividualizedProgramService] CHECK CONSTRAINT [FK_IndividualizedProgramService_RefServiceFrequency];

ALTER TABLE [dbo].[IndividualizedProgramServicesReceived]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramServicesReceived_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId]);

ALTER TABLE [dbo].[IndividualizedProgramServicesReceived] CHECK CONSTRAINT [FK_IndividualizedProgramServicesReceived_IndividualizedProgram];

ALTER TABLE [dbo].[IndividualizedProgramServicesReceived]  WITH CHECK ADD  CONSTRAINT [FK_IndividualizedProgramServicesReceived_ServicesReceived] FOREIGN KEY([ServicesReceivedId])
REFERENCES [dbo].[ServicesReceived] ([ServicesReceivedId]);

ALTER TABLE [dbo].[IndividualizedProgramServicesReceived] CHECK CONSTRAINT [FK_IndividualizedProgramServicesReceived_ServicesReceived];

ALTER TABLE [dbo].[IPEDSFinance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDSFinance_OrganizationFinancial] FOREIGN KEY([OrganizationFinancialId])
REFERENCES [dbo].[OrganizationFinancial] ([OrganizationFinancialId]);

ALTER TABLE [dbo].[IPEDSFinance] CHECK CONSTRAINT [FK_IPEDSFinance_OrganizationFinancial];

ALTER TABLE [dbo].[IPEDSFinance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBFinancialPosition] FOREIGN KEY([RefIPEDSFASBFinancialPositionId])
REFERENCES [dbo].[RefIPEDSFASBFinancialPosition] ([RefIPEDSFASBFinancialPositionId]);

ALTER TABLE [dbo].[IPEDSFinance] CHECK CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBFinancialPosition];

ALTER TABLE [dbo].[IPEDSFinance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBFunctionalExpense] FOREIGN KEY([RefIPEDSFASBFunctionalExpenseId])
REFERENCES [dbo].[RefIPEDSFASBFunctionalExpense] ([RefIPEDSFASBFunctionalExpenseId]);

ALTER TABLE [dbo].[IPEDSFinance] CHECK CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBFunctionalExpense];

ALTER TABLE [dbo].[IPEDSFinance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBPellGrantTransactions] FOREIGN KEY([RefIPEDSFASBPellGrantTransactionsId])
REFERENCES [dbo].[RefIPEDSFASBPellGrantTransactions] ([RefIPEDSFASBPellGrantTransactionsId]);

ALTER TABLE [dbo].[IPEDSFinance] CHECK CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBPellGrantTransactions];

ALTER TABLE [dbo].[IPEDSFinance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBRevenue] FOREIGN KEY([RefIPEDSFASBRevenueId])
REFERENCES [dbo].[RefIPEDSFASBRevenue] ([RefIPEDSFASBRevenueId]);

ALTER TABLE [dbo].[IPEDSFinance] CHECK CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBRevenue];

ALTER TABLE [dbo].[IPEDSFinance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBRevenueRestriction] FOREIGN KEY([RefIPEDSFASBRevenueRestrictionId])
REFERENCES [dbo].[RefIPEDSFASBRevenueRestriction] ([RefIPEDSFASBRevenueRestrictionId]);

ALTER TABLE [dbo].[IPEDSFinance] CHECK CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBRevenueRestriction];

ALTER TABLE [dbo].[IPEDSFinance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBScholarshipsandFellowshipsRevenue] FOREIGN KEY([RefIPEDSFASBScholarshipsandFellowshipsRevenueId])
REFERENCES [dbo].[RefIPEDSFASBScholarshipsandFellowshipsRevenue] ([RefIPEDSFASBScholarshipsandFellowshipsRevenueId]);

ALTER TABLE [dbo].[IPEDSFinance] CHECK CONSTRAINT [FK_IPEDSFinance_RefIPEDSFASBScholarshipsandFellowshipsRevenue];

ALTER TABLE [dbo].[IPEDSFinance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDSFinance_RefIPEDSGASBFinancialPosition] FOREIGN KEY([RefIPEDSGASBFinancialPositionId])
REFERENCES [dbo].[RefIPEDSGASBFinancialPosition] ([RefIPEDSGASBFinancialPositionId]);

ALTER TABLE [dbo].[IPEDSFinance] CHECK CONSTRAINT [FK_IPEDSFinance_RefIPEDSGASBFinancialPosition];

ALTER TABLE [dbo].[IPEDSFinance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDSFinance_RefIPEDSGASBFunctionalExpense] FOREIGN KEY([RefIPEDSGASBFunctionalExpenseId])
REFERENCES [dbo].[RefIPEDSGASBFunctionalExpense] ([RefIPEDSGASBFunctionalExpenseId]);

ALTER TABLE [dbo].[IPEDSFinance] CHECK CONSTRAINT [FK_IPEDSFinance_RefIPEDSGASBFunctionalExpense];

ALTER TABLE [dbo].[IPEDSFinance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDSFinance_RefIPEDSGASBRevenue] FOREIGN KEY([RefIPEDSGASBRevenueId])
REFERENCES [dbo].[RefIPEDSGASBRevenue] ([RefIPEDSGASBRevenueId]);

ALTER TABLE [dbo].[IPEDSFinance] CHECK CONSTRAINT [FK_IPEDSFinance_RefIPEDSGASBRevenue];

ALTER TABLE [dbo].[IPEDSFinance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDSFinance_RefIPEDSGASBScholarshipsandFellowshipsRevenue] FOREIGN KEY([RefIPEDSGASBScholarshipsandFellowshipsRevenueId])
REFERENCES [dbo].[RefIPEDSGASBScholarshipsandFellowshipsRevenue] ([RefIPEDSGASBScholarshipsandFellowshipsRevenueId]);

ALTER TABLE [dbo].[IPEDSFinance] CHECK CONSTRAINT [FK_IPEDSFinance_RefIPEDSGASBScholarshipsandFellowshipsRevenue];

ALTER TABLE [dbo].[IPEDSFinance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDSFinance_RefIPEDSIntercollegiateAthleticsExpenses] FOREIGN KEY([RefIPEDSIntercollegiateAthleticsExpensesId])
REFERENCES [dbo].[RefIPEDSIntercollegiateAthleticsExpenses] ([RefIPEDSIntercollegiateAthleticsExpensesId]);

ALTER TABLE [dbo].[IPEDSFinance] CHECK CONSTRAINT [FK_IPEDSFinance_RefIPEDSIntercollegiateAthleticsExpenses];

ALTER TABLE [dbo].[IPEDSFinance]  WITH CHECK ADD  CONSTRAINT [FK_IPEDSFinance_RefIPEDSNaturalExpense] FOREIGN KEY([RefIPEDSNaturalExpenseId])
REFERENCES [dbo].[RefIPEDSNaturalExpense] ([RefIPEDSNaturalExpenseId]);

ALTER TABLE [dbo].[IPEDSFinance] CHECK CONSTRAINT [FK_IPEDSFinance_RefIPEDSNaturalExpense];

ALTER TABLE [dbo].[K12Course]  WITH CHECK ADD  CONSTRAINT [FK_K12Course_Course] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Course] ([OrganizationId]);

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_Course];

ALTER TABLE [dbo].[K12Course]  WITH CHECK ADD  CONSTRAINT [FK_K12Course_RefAdditionalCreditType] FOREIGN KEY([RefAdditionalCreditTypeId])
REFERENCES [dbo].[RefAdditionalCreditType] ([RefAdditionalCreditTypeId]);

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefAdditionalCreditType];

ALTER TABLE [dbo].[K12Course]  WITH CHECK ADD  CONSTRAINT [FK_K12Course_RefBlendedLearningModel] FOREIGN KEY([RefBlendedLearningModelTypeId])
REFERENCES [dbo].[RefBlendedLearningModelType] ([RefBlendedLearningModelTypeId]);

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefBlendedLearningModel];

ALTER TABLE [dbo].[K12Course]  WITH CHECK ADD  CONSTRAINT [FK_K12Course_RefCareerCluster] FOREIGN KEY([RefCareerClusterId])
REFERENCES [dbo].[RefCareerCluster] ([RefCareerClusterId]);

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefCareerCluster];

ALTER TABLE [dbo].[K12Course]  WITH CHECK ADD  CONSTRAINT [FK_K12Course_RefCourseGPAApplicability] FOREIGN KEY([RefCourseGpaApplicabilityId])
REFERENCES [dbo].[RefCourseGpaApplicability] ([RefCourseGPAApplicabilityId]);

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefCourseGPAApplicability];

ALTER TABLE [dbo].[K12Course]  WITH CHECK ADD  CONSTRAINT [FK_K12Course_RefCourseInteractionMode] FOREIGN KEY([RefCourseInteractionModeId])
REFERENCES [dbo].[RefCourseInteractionMode] ([RefCourseInteractionModeId]);

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefCourseInteractionMode];

ALTER TABLE [dbo].[K12Course]  WITH CHECK ADD  CONSTRAINT [FK_K12Course_RefCreditTypeEarned] FOREIGN KEY([RefCreditTypeEarnedId])
REFERENCES [dbo].[RefCreditTypeEarned] ([RefCreditTypeEarnedId]);

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefCreditTypeEarned];

ALTER TABLE [dbo].[K12Course]  WITH CHECK ADD  CONSTRAINT [FK_K12Course_RefCurriculumFrameworkType] FOREIGN KEY([RefCurriculumFrameworkTypeId])
REFERENCES [dbo].[RefCurriculumFrameworkType] ([RefCurriculumFrameworkTypeId]);

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefCurriculumFrameworkType];

ALTER TABLE [dbo].[K12Course]  WITH CHECK ADD  CONSTRAINT [FK_K12Course_RefK12EndOfCourseRequirement] FOREIGN KEY([RefK12EndOfCourseRequirementId])
REFERENCES [dbo].[RefK12EndOfCourseRequirement] ([RefK12EndOfCourseRequirementId]);

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefK12EndOfCourseRequirement];

ALTER TABLE [dbo].[K12Course]  WITH CHECK ADD  CONSTRAINT [FK_K12Course_RefSCEDCourseLevel] FOREIGN KEY([RefSCEDCourseLevelId])
REFERENCES [dbo].[RefSCEDCourseLevel] ([RefSCEDCourseLevelId]);

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefSCEDCourseLevel];

ALTER TABLE [dbo].[K12Course]  WITH CHECK ADD  CONSTRAINT [FK_K12Course_RefSCEDCourseSubjectArea] FOREIGN KEY([RefSCEDCourseSubjectAreaId])
REFERENCES [dbo].[RefSCEDCourseSubjectArea] ([RefSCEDCourseSubjectAreaId]);

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefSCEDCourseSubjectArea];

ALTER TABLE [dbo].[K12Course]  WITH CHECK ADD  CONSTRAINT [FK_K12Course_RefWorkbasedLearningOpportunityType] FOREIGN KEY([RefWorkbasedLearningOpportunityTypeId])
REFERENCES [dbo].[RefWorkbasedLearningOpportunityType] ([RefWorkbasedLearningOpportunityTypeId]);

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefWorkbasedLearningOpportunityType];

ALTER TABLE [dbo].[K12Lea]  WITH CHECK ADD  CONSTRAINT [FK_K12Lea_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12Lea] CHECK CONSTRAINT [FK_K12Lea_Organization];

ALTER TABLE [dbo].[K12Lea]  WITH CHECK ADD  CONSTRAINT [FK_K12Lea_RefLEAImprovementStatus] FOREIGN KEY([RefLEAImprovementStatusId])
REFERENCES [dbo].[RefLeaImprovementStatus] ([RefLeaImprovementStatusId]);

ALTER TABLE [dbo].[K12Lea] CHECK CONSTRAINT [FK_K12Lea_RefLEAImprovementStatus];

ALTER TABLE [dbo].[K12Lea]  WITH CHECK ADD  CONSTRAINT [FK_K12Lea_RefLeaType] FOREIGN KEY([RefLeaTypeId])
REFERENCES [dbo].[RefLeaType] ([RefLeaTypeId]);

ALTER TABLE [dbo].[K12Lea] CHECK CONSTRAINT [FK_K12Lea_RefLeaType];

ALTER TABLE [dbo].[K12Lea]  WITH CHECK ADD  CONSTRAINT [FK_K12Lea_RefPublicSchoolChoiceStatus] FOREIGN KEY([RefPublicSchoolChoiceStatusId])
REFERENCES [dbo].[RefPublicSchoolChoiceStatus] ([RefPublicSchoolChoiceStatusId]);

ALTER TABLE [dbo].[K12Lea] CHECK CONSTRAINT [FK_K12Lea_RefPublicSchoolChoiceStatus];

ALTER TABLE [dbo].[K12LeaFederalFunds]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAFederalFunds_K12Lea1] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[K12Lea] ([OrganizationId]);

ALTER TABLE [dbo].[K12LeaFederalFunds] CHECK CONSTRAINT [FK_K12LEAFederalFunds_K12Lea1];

ALTER TABLE [dbo].[K12LeaFederalFunds]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAFederalFunds_REAPAlternativeFundingStatus] FOREIGN KEY([RefReapAlternativeFundingStatusId])
REFERENCES [dbo].[RefReapAlternativeFundingStatus] ([RefReapAlternativeFundingStatusId]);

ALTER TABLE [dbo].[K12LeaFederalFunds] CHECK CONSTRAINT [FK_K12LEAFederalFunds_REAPAlternativeFundingStatus];

ALTER TABLE [dbo].[K12LeaFederalFunds]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAFederalFunds_RefLEAFundsTransferType] FOREIGN KEY([RefLeaFundsTransferTypeId])
REFERENCES [dbo].[RefLeaFundsTransferType] ([RefLeaFundsTransferTypeId]);

ALTER TABLE [dbo].[K12LeaFederalFunds] CHECK CONSTRAINT [FK_K12LEAFederalFunds_RefLEAFundsTransferType];

ALTER TABLE [dbo].[K12LeaFederalFunds]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAFederalFunds_RefRLISProgramUse] FOREIGN KEY([RefRlisProgramUseId])
REFERENCES [dbo].[RefRlisProgramUse] ([RefRlisProgramUseId]);

ALTER TABLE [dbo].[K12LeaFederalFunds] CHECK CONSTRAINT [FK_K12LEAFederalFunds_RefRLISProgramUse];

ALTER TABLE [dbo].[K12LeaFederalFunds]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFederalFunds_RefFederalFundingAllocation] FOREIGN KEY([RefFederalProgramFundingAllocationTypeId])
REFERENCES [dbo].[RefFederalProgramFundingAllocationType] ([RefFederalProgramFundingAllocationTypeId]);

ALTER TABLE [dbo].[K12LeaFederalFunds] CHECK CONSTRAINT [FK_OrganizationFederalFunds_RefFederalFundingAllocation];

ALTER TABLE [dbo].[K12LeaFederalReporting]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAFederalReporting_K12Lea] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[K12Lea] ([OrganizationId]);

ALTER TABLE [dbo].[K12LeaFederalReporting] CHECK CONSTRAINT [FK_K12LEAFederalReporting_K12Lea];

ALTER TABLE [dbo].[K12LeaFederalReporting]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAFederalReporting_RefBarrierToEducatingHomeless] FOREIGN KEY([RefBarrierToEducatingHomelessId])
REFERENCES [dbo].[RefBarrierToEducatingHomeless] ([RefBarrierToEducatingHomelessId]);

ALTER TABLE [dbo].[K12LeaFederalReporting] CHECK CONSTRAINT [FK_K12LEAFederalReporting_RefBarrierToEducatingHomeless];

ALTER TABLE [dbo].[K12LeaFederalReporting]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAFederalReporting_RefIntegratedTechnologyStatus] FOREIGN KEY([RefIntegratedTechnologyStatusId])
REFERENCES [dbo].[RefIntegratedTechnologyStatus] ([RefIntegratedTechnologyStatusId]);

ALTER TABLE [dbo].[K12LeaFederalReporting] CHECK CONSTRAINT [FK_K12LEAFederalReporting_RefIntegratedTechnologyStatus];

ALTER TABLE [dbo].[K12LeaPreKEligibility]  WITH CHECK ADD  CONSTRAINT [FK_K12LeaPreKEligibility_K12Lea] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[K12Lea] ([OrganizationId]);

ALTER TABLE [dbo].[K12LeaPreKEligibility] CHECK CONSTRAINT [FK_K12LeaPreKEligibility_K12Lea];

ALTER TABLE [dbo].[K12LeaPreKEligibility]  WITH CHECK ADD  CONSTRAINT [FK_K12LeaPreKEligibility_RefPrekindergartenEligibility] FOREIGN KEY([RefPrekindergartenEligibilityId])
REFERENCES [dbo].[RefPrekindergartenEligibility] ([RefPrekindergartenEligibilityId]);

ALTER TABLE [dbo].[K12LeaPreKEligibility] CHECK CONSTRAINT [FK_K12LeaPreKEligibility_RefPrekindergartenEligibility];

ALTER TABLE [dbo].[K12LeaPreKEligibleAgesIDEA]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAPreKEligibleAgesIDEA_K12Lea] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[K12Lea] ([OrganizationId]);

ALTER TABLE [dbo].[K12LeaPreKEligibleAgesIDEA] CHECK CONSTRAINT [FK_K12LEAPreKEligibleAgesIDEA_K12Lea];

ALTER TABLE [dbo].[K12LeaPreKEligibleAgesIDEA]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAPreKEligibleAgesIDEA_RefPreKEligibleAgesNonIDEA] FOREIGN KEY([RefPreKEligibleAgesNonIDEAId])
REFERENCES [dbo].[RefPreKEligibleAgesNonIDEA] ([RefPreKEligibleAgesNonIDEAId]);

ALTER TABLE [dbo].[K12LeaPreKEligibleAgesIDEA] CHECK CONSTRAINT [FK_K12LEAPreKEligibleAgesIDEA_RefPreKEligibleAgesNonIDEA];

ALTER TABLE [dbo].[K12LeaSafeDrugFree]  WITH CHECK ADD  CONSTRAINT [FK_K12LeaSafeDrugFree_K12Lea] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[K12Lea] ([OrganizationId]);

ALTER TABLE [dbo].[K12LeaSafeDrugFree] CHECK CONSTRAINT [FK_K12LeaSafeDrugFree_K12Lea];

ALTER TABLE [dbo].[K12LeaTitleIIIProfessionalDevelopment]  WITH CHECK ADD  CONSTRAINT [FK_K12LEATitleIIIProfessionalDev_K12Lea] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[K12Lea] ([OrganizationId]);

ALTER TABLE [dbo].[K12LeaTitleIIIProfessionalDevelopment] CHECK CONSTRAINT [FK_K12LEATitleIIIProfessionalDev_K12Lea];

ALTER TABLE [dbo].[K12LeaTitleIIIProfessionalDevelopment]  WITH CHECK ADD  CONSTRAINT [FK_K12LEATitleIIIProfessionalDev_TitleIIIProfessionalDevType] FOREIGN KEY([RefTitleIIIProfessionalDevelopmentTypeId])
REFERENCES [dbo].[RefTitleIIIProfessionalDevelopmentType] ([RefTitleIIIProfessionalDevelopmentTypeId]);

ALTER TABLE [dbo].[K12LeaTitleIIIProfessionalDevelopment] CHECK CONSTRAINT [FK_K12LEATitleIIIProfessionalDev_TitleIIIProfessionalDevType];

ALTER TABLE [dbo].[K12LeaTitleISupportService]  WITH CHECK ADD  CONSTRAINT [FK_K12LEATitleISupportService_K12Lea] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[K12Lea] ([OrganizationId]);

ALTER TABLE [dbo].[K12LeaTitleISupportService] CHECK CONSTRAINT [FK_K12LEATitleISupportService_K12Lea];

ALTER TABLE [dbo].[K12LeaTitleISupportService]  WITH CHECK ADD  CONSTRAINT [FK_K12LEATitleISupportService_RefK12LEATitleISupportService] FOREIGN KEY([RefK12LeaTitleISupportServiceId])
REFERENCES [dbo].[RefK12LeaTitleISupportService] ([RefK12LEATitleISupportServiceId]);

ALTER TABLE [dbo].[K12LeaTitleISupportService] CHECK CONSTRAINT [FK_K12LEATitleISupportService_RefK12LEATitleISupportService];

ALTER TABLE [dbo].[K12OrganizationStudentResponsibility]  WITH CHECK ADD  CONSTRAINT [FK_K12OrgStudentResponsibility_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[K12OrganizationStudentResponsibility] CHECK CONSTRAINT [FK_K12OrgStudentResponsibility_OrganizationPersonRole];

ALTER TABLE [dbo].[K12OrganizationStudentResponsibility]  WITH CHECK ADD  CONSTRAINT [FK_K12OrgStudentResponsibility_RefK12ResponsibilityType] FOREIGN KEY([RefK12ResponsibilityTypeId])
REFERENCES [dbo].[RefK12ResponsibilityType] ([RefK12ResponsibilityTypeId]);

ALTER TABLE [dbo].[K12OrganizationStudentResponsibility] CHECK CONSTRAINT [FK_K12OrgStudentResponsibility_RefK12ResponsibilityType];

ALTER TABLE [dbo].[K12ProgramOrService]  WITH CHECK ADD  CONSTRAINT [FK_K12LeaProgramOrService_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[K12ProgramOrService] CHECK CONSTRAINT [FK_K12LeaProgramOrService_Organization];

ALTER TABLE [dbo].[K12ProgramOrService]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAProgramOrService_RefMEPProjectType] FOREIGN KEY([RefMepProjectTypeId])
REFERENCES [dbo].[RefMepProjectType] ([RefMepProjectTypeId]);

ALTER TABLE [dbo].[K12ProgramOrService] CHECK CONSTRAINT [FK_K12LEAProgramOrService_RefMEPProjectType];

ALTER TABLE [dbo].[K12ProgramOrService]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAProgramOrService_RefMEPSessionType] FOREIGN KEY([RefMepSessionTypeId])
REFERENCES [dbo].[RefMepSessionType] ([RefMepSessionTypeId]);

ALTER TABLE [dbo].[K12ProgramOrService] CHECK CONSTRAINT [FK_K12LEAProgramOrService_RefMEPSessionType];

ALTER TABLE [dbo].[K12ProgramOrService]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAProgramOrService_RefProgramDayLength] FOREIGN KEY([RefPrekindergartenDailyLengthId])
REFERENCES [dbo].[RefProgramDayLength] ([RefProgramDayLengthId]);

ALTER TABLE [dbo].[K12ProgramOrService] CHECK CONSTRAINT [FK_K12LEAProgramOrService_RefProgramDayLength];

ALTER TABLE [dbo].[K12ProgramOrService]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAProgramOrService_RefProgramDayLength1] FOREIGN KEY([RefKindergartenDailyLengthId])
REFERENCES [dbo].[RefProgramDayLength] ([RefProgramDayLengthId]);

ALTER TABLE [dbo].[K12ProgramOrService] CHECK CONSTRAINT [FK_K12LEAProgramOrService_RefProgramDayLength1];

ALTER TABLE [dbo].[K12ProgramOrService]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAProgramOrService_RefProgramGiftedEligibility] FOREIGN KEY([RefProgramGiftedEligibilityId])
REFERENCES [dbo].[RefProgramGiftedEligibility] ([RefProgramGiftedEligibilityId]);

ALTER TABLE [dbo].[K12ProgramOrService] CHECK CONSTRAINT [FK_K12LEAProgramOrService_RefProgramGiftedEligibility];

ALTER TABLE [dbo].[K12ProgramOrService]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAProgramOrService_RefTitleIInstructServices] FOREIGN KEY([RefTitleIInstructionalServicesId])
REFERENCES [dbo].[RefTitleIInstructionalServices] ([RefTitleIInstructionalServicesId]);

ALTER TABLE [dbo].[K12ProgramOrService] CHECK CONSTRAINT [FK_K12LEAProgramOrService_RefTitleIInstructServices];

ALTER TABLE [dbo].[K12ProgramOrService]  WITH CHECK ADD  CONSTRAINT [FK_K12LEAProgramOrService_RefTitleIProgramType] FOREIGN KEY([RefTitleIProgramTypeId])
REFERENCES [dbo].[RefTitleIProgramType] ([RefTitleIProgramTypeId]);

ALTER TABLE [dbo].[K12ProgramOrService] CHECK CONSTRAINT [FK_K12LEAProgramOrService_RefTitleIProgramType];

ALTER TABLE [dbo].[K12School]  WITH CHECK ADD  CONSTRAINT [FK_K12School_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12School] CHECK CONSTRAINT [FK_K12School_Organization];

ALTER TABLE [dbo].[K12School]  WITH CHECK ADD  CONSTRAINT [FK_K12School_RefAdminFundingControl] FOREIGN KEY([RefAdministrativeFundingControlId])
REFERENCES [dbo].[RefAdministrativeFundingControl] ([RefAdministrativeFundingControlId]);

ALTER TABLE [dbo].[K12School] CHECK CONSTRAINT [FK_K12School_RefAdminFundingControl];

ALTER TABLE [dbo].[K12School]  WITH CHECK ADD  CONSTRAINT [FK_K12School_RefCharterSchoolApprovalAgencyTypeId] FOREIGN KEY([RefCharterSchoolApprovalAgencyTypeId])
REFERENCES [dbo].[RefCharterSchoolApprovalAgencyType] ([RefCharterSchoolApprovalAgencyTypeId]);

ALTER TABLE [dbo].[K12School] CHECK CONSTRAINT [FK_K12School_RefCharterSchoolApprovalAgencyTypeId];

ALTER TABLE [dbo].[K12School]  WITH CHECK ADD  CONSTRAINT [FK_K12School_RefCharterSchoolManagementOrganizationType] FOREIGN KEY([RefCharterSchoolManagementOrganizationTypeId])
REFERENCES [dbo].[RefCharterSchoolManagementOrganizationType] ([RefCharterSchoolManagementOrganizationTypeId]);

ALTER TABLE [dbo].[K12School] CHECK CONSTRAINT [FK_K12School_RefCharterSchoolManagementOrganizationType];

ALTER TABLE [dbo].[K12School]  WITH CHECK ADD  CONSTRAINT [FK_K12School_RefCharterSchoolType] FOREIGN KEY([RefCharterSchoolTypeId])
REFERENCES [dbo].[RefCharterSchoolType] ([RefCharterSchoolTypeId]);

ALTER TABLE [dbo].[K12School] CHECK CONSTRAINT [FK_K12School_RefCharterSchoolType];

ALTER TABLE [dbo].[K12School]  WITH CHECK ADD  CONSTRAINT [FK_K12School_RefIncreasedLearningTimeType] FOREIGN KEY([RefIncreasedLearningTimeTypeId])
REFERENCES [dbo].[RefIncreasedLearningTimeType] ([RefIncreasedLearningTimeTypeId]);

ALTER TABLE [dbo].[K12School] CHECK CONSTRAINT [FK_K12School_RefIncreasedLearningTimeType];

ALTER TABLE [dbo].[K12School]  WITH CHECK ADD  CONSTRAINT [FK_K12School_RefSchoolLevel] FOREIGN KEY([RefSchoolLevelId])
REFERENCES [dbo].[RefSchoolLevel] ([RefSchoolLevelId]);

ALTER TABLE [dbo].[K12School] CHECK CONSTRAINT [FK_K12School_RefSchoolLevel];

ALTER TABLE [dbo].[K12School]  WITH CHECK ADD  CONSTRAINT [FK_K12School_RefSchoolType] FOREIGN KEY([RefSchoolTypeId])
REFERENCES [dbo].[RefSchoolType] ([RefSchoolTypeId]);

ALTER TABLE [dbo].[K12School] CHECK CONSTRAINT [FK_K12School_RefSchoolType];

ALTER TABLE [dbo].[K12School]  WITH CHECK ADD  CONSTRAINT [FK_K12School_RefStatePovertyDesignation] FOREIGN KEY([RefStatePovertyDesignationId])
REFERENCES [dbo].[RefStatePovertyDesignation] ([RefStatePovertyDesignationId]);

ALTER TABLE [dbo].[K12School] CHECK CONSTRAINT [FK_K12School_RefStatePovertyDesignation];

ALTER TABLE [dbo].[K12SchoolCorrectiveAction]  WITH CHECK ADD  CONSTRAINT [FK_K12SchoolCorrectiveAction_K12School] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[K12School] ([OrganizationId]);

ALTER TABLE [dbo].[K12SchoolCorrectiveAction] CHECK CONSTRAINT [FK_K12SchoolCorrectiveAction_K12School];

ALTER TABLE [dbo].[K12SchoolCorrectiveAction]  WITH CHECK ADD  CONSTRAINT [FK_K12SchoolCorrectiveAction_RefCorrectiveActionType] FOREIGN KEY([RefCorrectiveActionTypeId])
REFERENCES [dbo].[RefCorrectiveActionType] ([RefCorrectiveActionId]);

ALTER TABLE [dbo].[K12SchoolCorrectiveAction] CHECK CONSTRAINT [FK_K12SchoolCorrectiveAction_RefCorrectiveActionType];

ALTER TABLE [dbo].[K12SchoolGradeOffered]  WITH CHECK ADD  CONSTRAINT [FK_K12SchoolGradeOffered_K12School] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[K12School] ([OrganizationId]);

ALTER TABLE [dbo].[K12SchoolGradeOffered] CHECK CONSTRAINT [FK_K12SchoolGradeOffered_K12School];

ALTER TABLE [dbo].[K12SchoolGradeOffered]  WITH CHECK ADD  CONSTRAINT [FK_K12SchoolGradeOffered_RefGradeLevel] FOREIGN KEY([RefGradeLevelId])
REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]);

ALTER TABLE [dbo].[K12SchoolGradeOffered] CHECK CONSTRAINT [FK_K12SchoolGradeOffered_RefGradeLevel];

ALTER TABLE [dbo].[K12SchoolImprovement]  WITH CHECK ADD  CONSTRAINT [FK_K12SchoolImprovement_K12School] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[K12School] ([OrganizationId]);

ALTER TABLE [dbo].[K12SchoolImprovement] CHECK CONSTRAINT [FK_K12SchoolImprovement_K12School];

ALTER TABLE [dbo].[K12SchoolImprovement]  WITH CHECK ADD  CONSTRAINT [FK_K12SchoolImprovement_RefSchoolImprovementFunds] FOREIGN KEY([RefSchoolImprovementFundsId])
REFERENCES [dbo].[RefSchoolImprovementFunds] ([RefSchoolImprovementFundsId]);

ALTER TABLE [dbo].[K12SchoolImprovement] CHECK CONSTRAINT [FK_K12SchoolImprovement_RefSchoolImprovementFunds];

ALTER TABLE [dbo].[K12SchoolImprovement]  WITH CHECK ADD  CONSTRAINT [FK_K12SchoolImprovement_RefSchoolImprovementStatus] FOREIGN KEY([RefSchoolImprovementStatusId])
REFERENCES [dbo].[RefSchoolImprovementStatus] ([RefSchoolImprovementStatusId]);

ALTER TABLE [dbo].[K12SchoolImprovement] CHECK CONSTRAINT [FK_K12SchoolImprovement_RefSchoolImprovementStatus];

ALTER TABLE [dbo].[K12SchoolImprovement]  WITH CHECK ADD  CONSTRAINT [FK_K12SchoolImprovement_RefSIGInterventionType] FOREIGN KEY([RefSigInterventionTypeId])
REFERENCES [dbo].[RefSigInterventionType] ([RefSigInterventionTypeId]);

ALTER TABLE [dbo].[K12SchoolImprovement] CHECK CONSTRAINT [FK_K12SchoolImprovement_RefSIGInterventionType];

ALTER TABLE [dbo].[K12SchoolStatus]  WITH CHECK ADD  CONSTRAINT [FK_K12SchoolStatus_K12School] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[K12School] ([OrganizationId]);

ALTER TABLE [dbo].[K12SchoolStatus] CHECK CONSTRAINT [FK_K12SchoolStatus_K12School];

ALTER TABLE [dbo].[K12SchoolStatus]  WITH CHECK ADD  CONSTRAINT [FK_K12SchoolStatus_RefAlternativeSchoolFocus] FOREIGN KEY([RefAlternativeSchoolFocusId])
REFERENCES [dbo].[RefAlternativeSchoolFocus] ([RefAlternativeSchoolFocusId]);

ALTER TABLE [dbo].[K12SchoolStatus] CHECK CONSTRAINT [FK_K12SchoolStatus_RefAlternativeSchoolFocus];

ALTER TABLE [dbo].[K12SchoolStatus]  WITH CHECK ADD  CONSTRAINT [FK_K12SchoolStatus_RefInternetAccess] FOREIGN KEY([RefInternetAccessId])
REFERENCES [dbo].[RefInternetAccess] ([RefInternetAccessId]);

ALTER TABLE [dbo].[K12SchoolStatus] CHECK CONSTRAINT [FK_K12SchoolStatus_RefInternetAccess];

ALTER TABLE [dbo].[K12SchoolStatus]  WITH CHECK ADD  CONSTRAINT [FK_K12SchoolStatus_RefMagnetSpecialProgram] FOREIGN KEY([RefMagnetSpecialProgramId])
REFERENCES [dbo].[RefMagnetSpecialProgram] ([RefMagnetSpecialProgramId]);

ALTER TABLE [dbo].[K12SchoolStatus] CHECK CONSTRAINT [FK_K12SchoolStatus_RefMagnetSpecialProgram];

ALTER TABLE [dbo].[K12SchoolStatus]  WITH CHECK ADD  CONSTRAINT [FK_K12SchoolStatus_RefRestructuringAction] FOREIGN KEY([RefRestructuringActionId])
REFERENCES [dbo].[RefRestructuringAction] ([RefRestructuringActionId]);

ALTER TABLE [dbo].[K12SchoolStatus] CHECK CONSTRAINT [FK_K12SchoolStatus_RefRestructuringAction];

ALTER TABLE [dbo].[K12SchoolStatus]  WITH CHECK ADD  CONSTRAINT [FK_K12SchoolStatus_RefTitle1SchoolStatus] FOREIGN KEY([RefTitleISchoolStatusId])
REFERENCES [dbo].[RefTitleISchoolStatus] ([RefTitle1SchoolStatusId]);

ALTER TABLE [dbo].[K12SchoolStatus] CHECK CONSTRAINT [FK_K12SchoolStatus_RefTitle1SchoolStatus];

ALTER TABLE [dbo].[K12Sea]  WITH CHECK ADD  CONSTRAINT [FK_K12Sea_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12Sea] CHECK CONSTRAINT [FK_K12Sea_Organization];

ALTER TABLE [dbo].[K12Sea]  WITH CHECK ADD  CONSTRAINT [FK_K12SEA_RefStateANSICode] FOREIGN KEY([RefStateANSICode])
REFERENCES [dbo].[RefStateANSICode] ([Code]);

ALTER TABLE [dbo].[K12Sea] CHECK CONSTRAINT [FK_K12SEA_RefStateANSICode];

ALTER TABLE [dbo].[K12SeaAlternateFundUse]  WITH CHECK ADD  CONSTRAINT [FK_K12SEAAlternateFundUse_K12SEAFederalFunds] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[K12SeaFederalFunds] ([OrganizationId]);

ALTER TABLE [dbo].[K12SeaAlternateFundUse] CHECK CONSTRAINT [FK_K12SEAAlternateFundUse_K12SEAFederalFunds];

ALTER TABLE [dbo].[K12SeaAlternateFundUse]  WITH CHECK ADD  CONSTRAINT [FK_K12SEAAlternateFundUse_RefAlternateFundUses] FOREIGN KEY([RefAlternateFundUsesId])
REFERENCES [dbo].[RefAlternateFundUses] ([RefAlternateFundUsesId]);

ALTER TABLE [dbo].[K12SeaAlternateFundUse] CHECK CONSTRAINT [FK_K12SEAAlternateFundUse_RefAlternateFundUses];

ALTER TABLE [dbo].[K12SeaFederalFundAllocation]  WITH CHECK ADD  CONSTRAINT [FK_K12SEAFederalFundAllocation_K12SEA] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[K12Sea] ([OrganizationId]);

ALTER TABLE [dbo].[K12SeaFederalFundAllocation] CHECK CONSTRAINT [FK_K12SEAFederalFundAllocation_K12SEA];

ALTER TABLE [dbo].[K12SeaFederalFundAllocation]  WITH CHECK ADD  CONSTRAINT [FK_K12SEAFederalFundAllocation_RefFederalFundingAllocation] FOREIGN KEY([RefFederalProgramFundingAllocationTypeId])
REFERENCES [dbo].[RefFederalProgramFundingAllocationType] ([RefFederalProgramFundingAllocationTypeId]);

ALTER TABLE [dbo].[K12SeaFederalFundAllocation] CHECK CONSTRAINT [FK_K12SEAFederalFundAllocation_RefFederalFundingAllocation];

ALTER TABLE [dbo].[K12SeaFederalFunds]  WITH CHECK ADD  CONSTRAINT [FK_K12SEAFederalFunds_K12SEA] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[K12Sea] ([OrganizationId]);

ALTER TABLE [dbo].[K12SeaFederalFunds] CHECK CONSTRAINT [FK_K12SEAFederalFunds_K12SEA];

ALTER TABLE [dbo].[K12StaffAssignment]  WITH CHECK ADD  CONSTRAINT [FK_K12StaffAssignment_OrganizationPerson] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12StaffAssignment] CHECK CONSTRAINT [FK_K12StaffAssignment_OrganizationPerson];

ALTER TABLE [dbo].[K12StaffAssignment]  WITH CHECK ADD  CONSTRAINT [FK_K12StaffAssignment_RefClassroomPositionType] FOREIGN KEY([RefClassroomPositionTypeId])
REFERENCES [dbo].[RefClassroomPositionType] ([RefClassroomPositionTypeId]);

ALTER TABLE [dbo].[K12StaffAssignment] CHECK CONSTRAINT [FK_K12StaffAssignment_RefClassroomPositionType];

ALTER TABLE [dbo].[K12StaffAssignment]  WITH CHECK ADD  CONSTRAINT [FK_K12StaffAssignment_RefEducationStaffClassification] FOREIGN KEY([RefK12StaffClassificationId])
REFERENCES [dbo].[RefK12StaffClassification] ([RefEducationStaffClassificationId]);

ALTER TABLE [dbo].[K12StaffAssignment] CHECK CONSTRAINT [FK_K12StaffAssignment_RefEducationStaffClassification];

ALTER TABLE [dbo].[K12StaffAssignment]  WITH CHECK ADD  CONSTRAINT [FK_K12StaffAssignment_RefMepStaffCategory] FOREIGN KEY([RefMepStaffCategoryId])
REFERENCES [dbo].[RefMepStaffCategory] ([RefMepStaffCategoryId]);

ALTER TABLE [dbo].[K12StaffAssignment] CHECK CONSTRAINT [FK_K12StaffAssignment_RefMepStaffCategory];

ALTER TABLE [dbo].[K12StaffAssignment]  WITH CHECK ADD  CONSTRAINT [FK_K12StaffAssignment_RefProfessionalEducationJobClassification] FOREIGN KEY([RefProfessionalEducationJobClassificationId])
REFERENCES [dbo].[RefProfessionalEducationJobClassification] ([RefProfessionalEducationJobClassificationId]);

ALTER TABLE [dbo].[K12StaffAssignment] CHECK CONSTRAINT [FK_K12StaffAssignment_RefProfessionalEducationJobClassification];

ALTER TABLE [dbo].[K12StaffAssignment]  WITH CHECK ADD  CONSTRAINT [FK_K12StaffAssignment_RefSpecialEducationAgeGroupTaught] FOREIGN KEY([RefSpecialEducationAgeGroupTaughtId])
REFERENCES [dbo].[RefSpecialEducationAgeGroupTaught] ([RefSpecialEducationAgeGroupTaughtId]);

ALTER TABLE [dbo].[K12StaffAssignment] CHECK CONSTRAINT [FK_K12StaffAssignment_RefSpecialEducationAgeGroupTaught];

ALTER TABLE [dbo].[K12StaffAssignment]  WITH CHECK ADD  CONSTRAINT [FK_K12StaffAssignment_RefSpecialEducationStaffCategory] FOREIGN KEY([RefSpecialEducationStaffCategoryId])
REFERENCES [dbo].[RefSpecialEducationStaffCategory] ([RefSpecialEducationStaffCategoryId]);

ALTER TABLE [dbo].[K12StaffAssignment] CHECK CONSTRAINT [FK_K12StaffAssignment_RefSpecialEducationStaffCategory];

ALTER TABLE [dbo].[K12StaffAssignment]  WITH CHECK ADD  CONSTRAINT [FK_K12StaffAssignment_RefTeachingAssignmentRole] FOREIGN KEY([RefTeachingAssignmentRoleId])
REFERENCES [dbo].[RefTeachingAssignmentRole] ([RefTeachingAssignmentRoleId]);

ALTER TABLE [dbo].[K12StaffAssignment] CHECK CONSTRAINT [FK_K12StaffAssignment_RefTeachingAssignmentRole];

ALTER TABLE [dbo].[K12StaffAssignment]  WITH CHECK ADD  CONSTRAINT [FK_K12StaffAssignment_RefTitleIProgramStaffCategory] FOREIGN KEY([RefTitleIProgramStaffCategoryId])
REFERENCES [dbo].[RefTitleIProgramStaffCategory] ([RefTitleIProgramStaffCategoryId]);

ALTER TABLE [dbo].[K12StaffAssignment] CHECK CONSTRAINT [FK_K12StaffAssignment_RefTitleIProgramStaffCategory];

ALTER TABLE [dbo].[K12StaffEmployment]  WITH CHECK ADD  CONSTRAINT [FK_K12StaffEmployment_RefEduStaffClassification] FOREIGN KEY([RefK12StaffClassificationId])
REFERENCES [dbo].[RefK12StaffClassification] ([RefEducationStaffClassificationId]);

ALTER TABLE [dbo].[K12StaffEmployment] CHECK CONSTRAINT [FK_K12StaffEmployment_RefEduStaffClassification];

ALTER TABLE [dbo].[K12StaffEmployment]  WITH CHECK ADD  CONSTRAINT [FK_K12StaffEmployment_RefEmploymentStatus] FOREIGN KEY([RefEmploymentStatusId])
REFERENCES [dbo].[RefEmploymentStatus] ([RefEmploymentStatusId]);

ALTER TABLE [dbo].[K12StaffEmployment] CHECK CONSTRAINT [FK_K12StaffEmployment_RefEmploymentStatus];

ALTER TABLE [dbo].[K12StaffEmployment]  WITH CHECK ADD  CONSTRAINT [FK_K12StaffEmployment_StaffEmployment] FOREIGN KEY([StaffEmploymentId])
REFERENCES [dbo].[StaffEmployment] ([StaffEmploymentId]);

ALTER TABLE [dbo].[K12StaffEmployment] CHECK CONSTRAINT [FK_K12StaffEmployment_StaffEmployment];

ALTER TABLE [dbo].[K12StudentAcademicHonor]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentAcademicHonor_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[K12StudentAcademicHonor] CHECK CONSTRAINT [FK_K12StudentAcademicHonor_OrganizationPersonRole];

ALTER TABLE [dbo].[K12StudentAcademicHonor]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentAcademicHonor_RefAcademicHonorType] FOREIGN KEY([RefAcademicHonorTypeId])
REFERENCES [dbo].[RefAcademicHonorType] ([RefAcademicHonorTypeId]);

ALTER TABLE [dbo].[K12StudentAcademicHonor] CHECK CONSTRAINT [FK_K12StudentAcademicHonor_RefAcademicHonorType];

ALTER TABLE [dbo].[K12StudentAcademicRecord]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentAcademicRecord_OrganizationPerson] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12StudentAcademicRecord] CHECK CONSTRAINT [FK_K12StudentAcademicRecord_OrganizationPerson];

ALTER TABLE [dbo].[K12StudentAcademicRecord]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentAcademicRecord_RefGpaWeightedIndicator] FOREIGN KEY([RefGpaWeightedIndicatorId])
REFERENCES [dbo].[RefGpaWeightedIndicator] ([RefGpaWeightedIndicatorId]);

ALTER TABLE [dbo].[K12StudentAcademicRecord] CHECK CONSTRAINT [FK_K12StudentAcademicRecord_RefGpaWeightedIndicator];

ALTER TABLE [dbo].[K12StudentAcademicRecord]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentAcademicRecord_RefHighSchoolDiplomaType] FOREIGN KEY([RefHighSchoolDiplomaTypeId])
REFERENCES [dbo].[RefHighSchoolDiplomaType] ([RefHighSchoolDiplomaTypeId]);

ALTER TABLE [dbo].[K12StudentAcademicRecord] CHECK CONSTRAINT [FK_K12StudentAcademicRecord_RefHighSchoolDiplomaType];

ALTER TABLE [dbo].[K12StudentAcademicRecord]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentAcademicRecord_RefHSDiplomaDistinctionType] FOREIGN KEY([RefHighSchoolDiplomaDistinctionTypeId])
REFERENCES [dbo].[RefHighSchoolDiplomaDistinctionType] ([RefHighSchoolDiplomaDistinctionTypeId]);

ALTER TABLE [dbo].[K12StudentAcademicRecord] CHECK CONSTRAINT [FK_K12StudentAcademicRecord_RefHSDiplomaDistinctionType];

ALTER TABLE [dbo].[K12StudentAcademicRecord]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentAcademicRecord_RefPreAndPostTestIndicator] FOREIGN KEY([RefPreAndPostTestIndicatorId])
REFERENCES [dbo].[RefPreAndPostTestIndicator] ([RefPreAndPostTestIndicatorId]);

ALTER TABLE [dbo].[K12StudentAcademicRecord] CHECK CONSTRAINT [FK_K12StudentAcademicRecord_RefPreAndPostTestIndicator];

ALTER TABLE [dbo].[K12StudentAcademicRecord]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentAcademicRecord_RefProfessionalTechnicalCredential] FOREIGN KEY([RefProfessionalTechnicalCredentialTypeId])
REFERENCES [dbo].[RefProfessionalTechnicalCredentialType] ([RefProfessionalTechnicalCredentialTypeId]);

ALTER TABLE [dbo].[K12StudentAcademicRecord] CHECK CONSTRAINT [FK_K12StudentAcademicRecord_RefProfessionalTechnicalCredential];

ALTER TABLE [dbo].[K12StudentAcademicRecord]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentAcademicRecord_RefProgressLevel] FOREIGN KEY([RefProgressLevelId])
REFERENCES [dbo].[RefProgressLevel] ([RefProgressLevelId]);

ALTER TABLE [dbo].[K12StudentAcademicRecord] CHECK CONSTRAINT [FK_K12StudentAcademicRecord_RefProgressLevel];

ALTER TABLE [dbo].[K12StudentAcademicRecord]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentAcademicRecord_RefPSEnrollmentAction] FOREIGN KEY([RefPsEnrollmentActionId])
REFERENCES [dbo].[RefPsEnrollmentAction] ([RefPsEnrollmentActionId]);

ALTER TABLE [dbo].[K12StudentAcademicRecord] CHECK CONSTRAINT [FK_K12StudentAcademicRecord_RefPSEnrollmentAction];

ALTER TABLE [dbo].[K12StudentAcademicRecord]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentAcademicRecord_RefTechnologyLiteracyStatus] FOREIGN KEY([RefTechnologyLiteracyStatusId])
REFERENCES [dbo].[RefTechnologyLiteracyStatus] ([RefTechnologyLiteracyStatusId]);

ALTER TABLE [dbo].[K12StudentAcademicRecord] CHECK CONSTRAINT [FK_K12StudentAcademicRecord_RefTechnologyLiteracyStatus];

ALTER TABLE [dbo].[K12StudentActivity]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentActivity_OrgPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[K12StudentActivity] CHECK CONSTRAINT [FK_K12StudentActivity_OrgPersonRole];

ALTER TABLE [dbo].[K12StudentActivity]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentActivity_RefActivityTimeMeasurementType] FOREIGN KEY([RefActivityTimeMeasurementTypeId])
REFERENCES [dbo].[RefActivityTimeMeasurementType] ([RefActivityTimeMeasurementTypeId]);

ALTER TABLE [dbo].[K12StudentActivity] CHECK CONSTRAINT [FK_K12StudentActivity_RefActivityTimeMeasurementType];

ALTER TABLE [dbo].[K12StudentCohort]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentCohort_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[K12StudentCohort] CHECK CONSTRAINT [FK_K12StudentCohort_OrganizationPersonRole];

ALTER TABLE [dbo].[K12StudentCourseSection]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentCourseSection _RefCourseGpaApplicability] FOREIGN KEY([RefCourseGpaApplicabilityId])
REFERENCES [dbo].[RefCourseGpaApplicability] ([RefCourseGPAApplicabilityId]);

ALTER TABLE [dbo].[K12StudentCourseSection] CHECK CONSTRAINT [FK_K12StudentCourseSection _RefCourseGpaApplicability];

ALTER TABLE [dbo].[K12StudentCourseSection]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentCourseSection_OrganizationPerson] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12StudentCourseSection] CHECK CONSTRAINT [FK_K12StudentCourseSection_OrganizationPerson];

ALTER TABLE [dbo].[K12StudentCourseSection]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentCourseSection_RefAdditionalCreditType] FOREIGN KEY([RefAdditionalCreditTypeId])
REFERENCES [dbo].[RefAdditionalCreditType] ([RefAdditionalCreditTypeId]);

ALTER TABLE [dbo].[K12StudentCourseSection] CHECK CONSTRAINT [FK_K12StudentCourseSection_RefAdditionalCreditType];

ALTER TABLE [dbo].[K12StudentCourseSection]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentCourseSection_RefCourseRepeatCode] FOREIGN KEY([RefCourseRepeatCodeId])
REFERENCES [dbo].[RefCourseRepeatCode] ([RefCourseRepeatCodeId]);

ALTER TABLE [dbo].[K12StudentCourseSection] CHECK CONSTRAINT [FK_K12StudentCourseSection_RefCourseRepeatCode];

ALTER TABLE [dbo].[K12StudentCourseSection]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentCourseSection_RefCourseSectionEnrollmentStatusType] FOREIGN KEY([RefCourseSectionEnrollmentStatusTypeId])
REFERENCES [dbo].[RefCourseSectionEnrollmentStatusType] ([RefCourseSectionEnrollmentStatusTypeId]);

ALTER TABLE [dbo].[K12StudentCourseSection] CHECK CONSTRAINT [FK_K12StudentCourseSection_RefCourseSectionEnrollmentStatusType];

ALTER TABLE [dbo].[K12StudentCourseSection]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentCourseSection_RefCourseSectionEntryType] FOREIGN KEY([RefCourseSectionEntryTypeId])
REFERENCES [dbo].[RefCourseSectionEntryType] ([RefCourseSectionEntryTypeId]);

ALTER TABLE [dbo].[K12StudentCourseSection] CHECK CONSTRAINT [FK_K12StudentCourseSection_RefCourseSectionEntryType];

ALTER TABLE [dbo].[K12StudentCourseSection]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentCourseSection_RefCourseSectionExitType] FOREIGN KEY([RefCourseSectionExitTypeId])
REFERENCES [dbo].[RefCourseSectionExitType] ([RefCourseSectionExitTypeId]);

ALTER TABLE [dbo].[K12StudentCourseSection] CHECK CONSTRAINT [FK_K12StudentCourseSection_RefCourseSectionExitType];

ALTER TABLE [dbo].[K12StudentCourseSection]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentCourseSection_RefCreditTypeEarned] FOREIGN KEY([RefCreditTypeEarnedId])
REFERENCES [dbo].[RefCreditTypeEarned] ([RefCreditTypeEarnedId]);

ALTER TABLE [dbo].[K12StudentCourseSection] CHECK CONSTRAINT [FK_K12StudentCourseSection_RefCreditTypeEarned];

ALTER TABLE [dbo].[K12StudentCourseSection]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentCourseSection_RefExitOrWithdrawalStatus] FOREIGN KEY([RefExitOrWithdrawalStatusId])
REFERENCES [dbo].[RefExitOrWithdrawalStatus] ([RefExitOrWithdrawalStatusId]);

ALTER TABLE [dbo].[K12StudentCourseSection] CHECK CONSTRAINT [FK_K12StudentCourseSection_RefExitOrWithdrawalStatus];

ALTER TABLE [dbo].[K12StudentCourseSection]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentCourseSection_RefGradeLevel] FOREIGN KEY([RefGradeLevelWhenCourseTakenId])
REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]);

ALTER TABLE [dbo].[K12StudentCourseSection] CHECK CONSTRAINT [FK_K12StudentCourseSection_RefGradeLevel];

ALTER TABLE [dbo].[K12StudentCourseSection]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentCourseSection_RefPreAndPostTestIndicator] FOREIGN KEY([RefPreAndPostTestIndicatorId])
REFERENCES [dbo].[RefPreAndPostTestIndicator] ([RefPreAndPostTestIndicatorId]);

ALTER TABLE [dbo].[K12StudentCourseSection] CHECK CONSTRAINT [FK_K12StudentCourseSection_RefPreAndPostTestIndicator];

ALTER TABLE [dbo].[K12StudentCourseSection]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentCourseSection_RefProgressLevel] FOREIGN KEY([RefProgressLevelId])
REFERENCES [dbo].[RefProgressLevel] ([RefProgressLevelId]);

ALTER TABLE [dbo].[K12StudentCourseSection] CHECK CONSTRAINT [FK_K12StudentCourseSection_RefProgressLevel];

ALTER TABLE [dbo].[K12StudentCourseSectionMark]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentCourseSectionMark_K12StudentCourseSection] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[K12StudentCourseSection] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[K12StudentCourseSectionMark] CHECK CONSTRAINT [FK_K12StudentCourseSectionMark_K12StudentCourseSection];

ALTER TABLE [dbo].[K12StudentDiscipline]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentDiscipline_K12Incident] FOREIGN KEY([IncidentId])
REFERENCES [dbo].[Incident] ([IncidentId]);

ALTER TABLE [dbo].[K12StudentDiscipline] CHECK CONSTRAINT [FK_K12StudentDiscipline_K12Incident];

ALTER TABLE [dbo].[K12StudentDiscipline]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentDiscipline_OrganizationPerson] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12StudentDiscipline] CHECK CONSTRAINT [FK_K12StudentDiscipline_OrganizationPerson];

ALTER TABLE [dbo].[K12StudentDiscipline]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentDiscipline_RefDisciplinaryActionTaken] FOREIGN KEY([RefDisciplinaryActionTakenId])
REFERENCES [dbo].[RefDisciplinaryActionTaken] ([RefDisciplinaryActionTakenId]);

ALTER TABLE [dbo].[K12StudentDiscipline] CHECK CONSTRAINT [FK_K12StudentDiscipline_RefDisciplinaryActionTaken];

ALTER TABLE [dbo].[K12StudentDiscipline]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentDiscipline_RefDisciplineLengthDifference] FOREIGN KEY([RefDisciplineLengthDifferenceReasonId])
REFERENCES [dbo].[RefDisciplineLengthDifferenceReason] ([RefDisciplineLengthDifferenceReasonId]);

ALTER TABLE [dbo].[K12StudentDiscipline] CHECK CONSTRAINT [FK_K12StudentDiscipline_RefDisciplineLengthDifference];

ALTER TABLE [dbo].[K12StudentDiscipline]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentDiscipline_RefDisciplineMethodFirearms] FOREIGN KEY([RefDisciplineMethodFirearmsId])
REFERENCES [dbo].[RefDisciplineMethodFirearms] ([RefDisciplineMethodFirearmsId]);

ALTER TABLE [dbo].[K12StudentDiscipline] CHECK CONSTRAINT [FK_K12StudentDiscipline_RefDisciplineMethodFirearms];

ALTER TABLE [dbo].[K12StudentDiscipline]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentDiscipline_RefDisciplineMethodOfCwd] FOREIGN KEY([RefDisciplineMethodOfCwdId])
REFERENCES [dbo].[RefDisciplineMethodOfCwd] ([RefDisciplineMethodOfCwdId]);

ALTER TABLE [dbo].[K12StudentDiscipline] CHECK CONSTRAINT [FK_K12StudentDiscipline_RefDisciplineMethodOfCwd];

ALTER TABLE [dbo].[K12StudentDiscipline]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentDiscipline_RefDisciplineReason1] FOREIGN KEY([RefDisciplineReasonId])
REFERENCES [dbo].[RefDisciplineReason] ([RefDisciplineReasonId]);

ALTER TABLE [dbo].[K12StudentDiscipline] CHECK CONSTRAINT [FK_K12StudentDiscipline_RefDisciplineReason1];

ALTER TABLE [dbo].[K12StudentDiscipline]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentDiscipline_RefIDEADisciplineMethodFirearm] FOREIGN KEY([RefIDEADisciplineMethodFirearmId])
REFERENCES [dbo].[RefIDEADisciplineMethodFirearm] ([RefIDEADisciplineMethodFirearmId]);

ALTER TABLE [dbo].[K12StudentDiscipline] CHECK CONSTRAINT [FK_K12StudentDiscipline_RefIDEADisciplineMethodFirearm];

ALTER TABLE [dbo].[K12StudentDiscipline]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentDiscipline_RefIDEAInterimRemovalId] FOREIGN KEY([RefIdeaInterimRemovalId])
REFERENCES [dbo].[RefIDEAInterimRemoval] ([RefIDEAInterimRemovalId]);

ALTER TABLE [dbo].[K12StudentDiscipline] CHECK CONSTRAINT [FK_K12StudentDiscipline_RefIDEAInterimRemovalId];

ALTER TABLE [dbo].[K12StudentDiscipline]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentDiscipline_RefIDESInterimRemovalReason] FOREIGN KEY([RefIdeaInterimRemovalReasonId])
REFERENCES [dbo].[RefIDEAInterimRemovalReason] ([RefIDEAInterimRemovalReasonId]);

ALTER TABLE [dbo].[K12StudentDiscipline] CHECK CONSTRAINT [FK_K12StudentDiscipline_RefIDESInterimRemovalReason];

ALTER TABLE [dbo].[K12StudentEmployment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentEmployment_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[K12StudentEmployment] CHECK CONSTRAINT [FK_K12StudentEmployment_OrganizationPersonRole];

ALTER TABLE [dbo].[K12StudentEmployment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentEmployment_RefEmployedAfterExit] FOREIGN KEY([RefEmployedAfterExitId])
REFERENCES [dbo].[RefEmployedAfterExit] ([RefEmployedAfterExitId]);

ALTER TABLE [dbo].[K12StudentEmployment] CHECK CONSTRAINT [FK_K12StudentEmployment_RefEmployedAfterExit];

ALTER TABLE [dbo].[K12StudentEmployment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentEmployment_RefEmployedWhileEnrolled] FOREIGN KEY([RefEmployedWhileEnrolledId])
REFERENCES [dbo].[RefEmployedWhileEnrolled] ([RefEmployedWhileEnrolledId]);

ALTER TABLE [dbo].[K12StudentEmployment] CHECK CONSTRAINT [FK_K12StudentEmployment_RefEmployedWhileEnrolled];

ALTER TABLE [dbo].[K12StudentEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_K12EnrollmentMember_OrganizationPerson] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[K12StudentEnrollment] CHECK CONSTRAINT [FK_K12EnrollmentMember_OrganizationPerson];

ALTER TABLE [dbo].[K12StudentEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_K12EnrollmentMember_RefGrade] FOREIGN KEY([RefEntryGradeLevelId])
REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]);

ALTER TABLE [dbo].[K12StudentEnrollment] CHECK CONSTRAINT [FK_K12EnrollmentMember_RefGrade];

ALTER TABLE [dbo].[K12StudentEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentEnrollment_RefDirectoryInformationBlockStatus] FOREIGN KEY([RefDirectoryInformationBlockStatusId])
REFERENCES [dbo].[RefDirectoryInformationBlockStatus] ([RefDirectoryInformationBlockStatusId]);

ALTER TABLE [dbo].[K12StudentEnrollment] CHECK CONSTRAINT [FK_K12StudentEnrollment_RefDirectoryInformationBlockStatus];

ALTER TABLE [dbo].[K12StudentEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentEnrollment_RefEndOfTermStatus] FOREIGN KEY([RefEndOfTermStatusId])
REFERENCES [dbo].[RefEndOfTermStatus] ([RefEndOfTermStatusId]);

ALTER TABLE [dbo].[K12StudentEnrollment] CHECK CONSTRAINT [FK_K12StudentEnrollment_RefEndOfTermStatus];

ALTER TABLE [dbo].[K12StudentEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentEnrollment_RefEnrollmentStatus] FOREIGN KEY([RefEnrollmentStatusId])
REFERENCES [dbo].[RefEnrollmentStatus] ([RefEnrollmentStatusId]);

ALTER TABLE [dbo].[K12StudentEnrollment] CHECK CONSTRAINT [FK_K12StudentEnrollment_RefEnrollmentStatus];

ALTER TABLE [dbo].[K12StudentEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentEnrollment_RefEntryType] FOREIGN KEY([RefEntryType])
REFERENCES [dbo].[RefEntryType] ([RefEntryTypeId]);

ALTER TABLE [dbo].[K12StudentEnrollment] CHECK CONSTRAINT [FK_K12StudentEnrollment_RefEntryType];

ALTER TABLE [dbo].[K12StudentEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentEnrollment_RefExitOrWithdrawalStatus] FOREIGN KEY([RefExitOrWithdrawalStatusId])
REFERENCES [dbo].[RefExitOrWithdrawalStatus] ([RefExitOrWithdrawalStatusId]);

ALTER TABLE [dbo].[K12StudentEnrollment] CHECK CONSTRAINT [FK_K12StudentEnrollment_RefExitOrWithdrawalStatus];

ALTER TABLE [dbo].[K12StudentEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentEnrollment_RefExitOrWithdrawalType] FOREIGN KEY([RefExitOrWithdrawalTypeId])
REFERENCES [dbo].[RefExitOrWithdrawalType] ([RefExitOrWithdrawalTypeId]);

ALTER TABLE [dbo].[K12StudentEnrollment] CHECK CONSTRAINT [FK_K12StudentEnrollment_RefExitOrWithdrawalType];

ALTER TABLE [dbo].[K12StudentEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentEnrollment_RefFoodServiceEligibility] FOREIGN KEY([RefFoodServiceEligibilityId])
REFERENCES [dbo].[RefFoodServiceEligibility] ([RefFoodServiceEligibilityId]);

ALTER TABLE [dbo].[K12StudentEnrollment] CHECK CONSTRAINT [FK_K12StudentEnrollment_RefFoodServiceEligibility];

ALTER TABLE [dbo].[K12StudentEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentEnrollment_RefGradeLevel] FOREIGN KEY([RefExitGradeLevel])
REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]);

ALTER TABLE [dbo].[K12StudentEnrollment] CHECK CONSTRAINT [FK_K12StudentEnrollment_RefGradeLevel];

ALTER TABLE [dbo].[K12StudentEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentEnrollment_RefNonPromotionReason] FOREIGN KEY([RefNonPromotionReasonId])
REFERENCES [dbo].[RefNonPromotionReason] ([RefNonPromotionReasonId]);

ALTER TABLE [dbo].[K12StudentEnrollment] CHECK CONSTRAINT [FK_K12StudentEnrollment_RefNonPromotionReason];

ALTER TABLE [dbo].[K12StudentEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentEnrollment_RefPromotionReason] FOREIGN KEY([RefPromotionReasonId])
REFERENCES [dbo].[RefPromotionReason] ([RefPromotionReasonId]);

ALTER TABLE [dbo].[K12StudentEnrollment] CHECK CONSTRAINT [FK_K12StudentEnrollment_RefPromotionReason];

ALTER TABLE [dbo].[K12StudentEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentEnrollment_RefPublicSchoolResidence] FOREIGN KEY([RefPublicSchoolResidence])
REFERENCES [dbo].[RefPublicSchoolResidence] ([RefPublicSchoolResidenceId]);

ALTER TABLE [dbo].[K12StudentEnrollment] CHECK CONSTRAINT [FK_K12StudentEnrollment_RefPublicSchoolResidence];

ALTER TABLE [dbo].[K12StudentGraduationPlan]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentGraduationPlan_K12Course] FOREIGN KEY([K12CourseId])
REFERENCES [dbo].[K12Course] ([OrganizationId]);

ALTER TABLE [dbo].[K12StudentGraduationPlan] CHECK CONSTRAINT [FK_K12StudentGraduationPlan_K12Course];

ALTER TABLE [dbo].[K12StudentGraduationPlan]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentGraduationPlan_OrganizationPerson] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[K12StudentGraduationPlan] CHECK CONSTRAINT [FK_K12StudentGraduationPlan_OrganizationPerson];

ALTER TABLE [dbo].[K12StudentGraduationPlan]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentGraduationPlan_RefGradeLevel] FOREIGN KEY([RefGradeLevelWhenCourseTakenId])
REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]);

ALTER TABLE [dbo].[K12StudentGraduationPlan] CHECK CONSTRAINT [FK_K12StudentGraduationPlan_RefGradeLevel];

ALTER TABLE [dbo].[K12StudentGraduationPlan]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentGraduationPlan_RefSCEDCourseSubjectArea] FOREIGN KEY([RefSCEDCourseSubjectAreaId])
REFERENCES [dbo].[RefSCEDCourseSubjectArea] ([RefSCEDCourseSubjectAreaId]);

ALTER TABLE [dbo].[K12StudentGraduationPlan] CHECK CONSTRAINT [FK_K12StudentGraduationPlan_RefSCEDCourseSubjectArea];

ALTER TABLE [dbo].[K12StudentLiteracyAssessment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentLiteracyAssessment_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[K12StudentLiteracyAssessment] CHECK CONSTRAINT [FK_K12StudentLiteracyAssessment_OrganizationPersonRole];

ALTER TABLE [dbo].[K12StudentLiteracyAssessment]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentLiteracyAssessment_RefLiteracyAssessment] FOREIGN KEY([RefLiteracyAssessmentId])
REFERENCES [dbo].[RefLiteracyAssessment] ([RefLiteracyAssessmentId]);

ALTER TABLE [dbo].[K12StudentLiteracyAssessment] CHECK CONSTRAINT [FK_K12StudentLiteracyAssessment_RefLiteracyAssessment];

ALTER TABLE [dbo].[K12StudentSession]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentSession_OrganizationCalendarSession] FOREIGN KEY([OrganizationCalendarSessionId])
REFERENCES [dbo].[OrganizationCalendarSession] ([OrganizationCalendarSessionId]);

ALTER TABLE [dbo].[K12StudentSession] CHECK CONSTRAINT [FK_K12StudentSession_OrganizationCalendarSession];

ALTER TABLE [dbo].[K12StudentSession]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentSession_OrganizationPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);

ALTER TABLE [dbo].[K12StudentSession] CHECK CONSTRAINT [FK_K12StudentSession_OrganizationPersonRole];

ALTER TABLE [dbo].[K12TitleIIILanguageInstruction]  WITH CHECK ADD  CONSTRAINT [FK_K12LeaTitleIIILangInstruction_RefTitleIIILangInstructionPrgm] FOREIGN KEY([RefTitleIIILanguageInstructionProgramTypeId])
REFERENCES [dbo].[RefTitleIIILanguageInstructionProgramType] ([RefTitleIIILanguageInstructionProgramTypeId]);

ALTER TABLE [dbo].[K12TitleIIILanguageInstruction] CHECK CONSTRAINT [FK_K12LeaTitleIIILangInstruction_RefTitleIIILangInstructionPrgm];

ALTER TABLE [dbo].[K12TitleIIILanguageInstruction]  WITH CHECK ADD  CONSTRAINT [FK_K12LeaTitleIIILanguageInstruction_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[K12TitleIIILanguageInstruction] CHECK CONSTRAINT [FK_K12LeaTitleIIILanguageInstruction_Organization];

ALTER TABLE [dbo].[LearnerAction]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentItemLearnerAction_AssessmentItemResponse] FOREIGN KEY([AssessmentItemResponseId])
REFERENCES [dbo].[AssessmentItemResponse] ([AssessmentItemResponseId]);

ALTER TABLE [dbo].[LearnerAction] CHECK CONSTRAINT [FK_AssessmentItemLearnerAction_AssessmentItemResponse];

ALTER TABLE [dbo].[LearnerAction]  WITH CHECK ADD  CONSTRAINT [FK_LearnerAction_RefLearnerActionType] FOREIGN KEY([RefLearnerActionTypeId])
REFERENCES [dbo].[RefLearnerActionType] ([RefLearnerActionTypeId]);

ALTER TABLE [dbo].[LearnerAction] CHECK CONSTRAINT [FK_LearnerAction_RefLearnerActionType];

ALTER TABLE [dbo].[LearnerActivity]  WITH CHECK ADD  CONSTRAINT [FK_LearnerActivity_AssessmentRegistration] FOREIGN KEY([AssessmentRegistrationId])
REFERENCES [dbo].[AssessmentRegistration] ([AssessmentRegistrationId]);

ALTER TABLE [dbo].[LearnerActivity] CHECK CONSTRAINT [FK_LearnerActivity_AssessmentRegistration];

ALTER TABLE [dbo].[LearnerActivity]  WITH CHECK ADD  CONSTRAINT [FK_LearnerActivity_CourseSection] FOREIGN KEY([CourseSectionId])
REFERENCES [dbo].[CourseSection] ([OrganizationId]);

ALTER TABLE [dbo].[LearnerActivity] CHECK CONSTRAINT [FK_LearnerActivity_CourseSection];

ALTER TABLE [dbo].[LearnerActivity]  WITH CHECK ADD  CONSTRAINT [FK_LearnerActivity_Organization] FOREIGN KEY([SchoolOrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[LearnerActivity] CHECK CONSTRAINT [FK_LearnerActivity_Organization];

ALTER TABLE [dbo].[LearnerActivity]  WITH CHECK ADD  CONSTRAINT [FK_LearnerActivity_Organization1] FOREIGN KEY([LeaOrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[LearnerActivity] CHECK CONSTRAINT [FK_LearnerActivity_Organization1];

ALTER TABLE [dbo].[LearnerActivity]  WITH CHECK ADD  CONSTRAINT [FK_LearnerActivity_OrganizationCalendarSession] FOREIGN KEY([OrganizationCalendarSessionId])
REFERENCES [dbo].[OrganizationCalendarSession] ([OrganizationCalendarSessionId]);

ALTER TABLE [dbo].[LearnerActivity] CHECK CONSTRAINT [FK_LearnerActivity_OrganizationCalendarSession];

ALTER TABLE [dbo].[LearnerActivity]  WITH CHECK ADD  CONSTRAINT [FK_LearnerActivity_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[LearnerActivity] CHECK CONSTRAINT [FK_LearnerActivity_Person];

ALTER TABLE [dbo].[LearnerActivity]  WITH CHECK ADD  CONSTRAINT [FK_LearnerActivity_Person1] FOREIGN KEY([AssignedByPersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[LearnerActivity] CHECK CONSTRAINT [FK_LearnerActivity_Person1];

ALTER TABLE [dbo].[LearnerActivity]  WITH CHECK ADD  CONSTRAINT [FK_LearnerActivity_RefLearnerActivityMaximumTimeAllowedUnits] FOREIGN KEY([RefLearnerActivityMaximumTimeAllowedUnitsId])
REFERENCES [dbo].[RefLearnerActivityMaximumTimeAllowedUnits] ([RefLearnerActivityMaximumTimeAllowedUnitsId]);

ALTER TABLE [dbo].[LearnerActivity] CHECK CONSTRAINT [FK_LearnerActivity_RefLearnerActivityMaximumTimeAllowedUnits];

ALTER TABLE [dbo].[LearnerActivity]  WITH CHECK ADD  CONSTRAINT [FK_LearnerActivity_RefLearnerActivityType] FOREIGN KEY([RefLearnerActivityTypeId])
REFERENCES [dbo].[RefLearnerActivityType] ([RefLearnerActivityTypeId]);

ALTER TABLE [dbo].[LearnerActivity] CHECK CONSTRAINT [FK_LearnerActivity_RefLearnerActivityType];

ALTER TABLE [dbo].[LearnerActivity_LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearnerAssignment_LearningResource_LearnerAssignment] FOREIGN KEY([LearnerActivityId])
REFERENCES [dbo].[LearnerActivity] ([LearnerActivityId]);

ALTER TABLE [dbo].[LearnerActivity_LearningResource] CHECK CONSTRAINT [FK_LearnerAssignment_LearningResource_LearnerAssignment];

ALTER TABLE [dbo].[LearnerActivity_LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearnerAssignment_LearningResource_LearningResource] FOREIGN KEY([LearningResourceId])
REFERENCES [dbo].[LearningResource] ([LearningResourceId]);

ALTER TABLE [dbo].[LearnerActivity_LearningResource] CHECK CONSTRAINT [FK_LearnerAssignment_LearningResource_LearningResource];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLanguage] FOREIGN KEY([RefLanguageId])
REFERENCES [dbo].[RefLanguage] ([RefLanguageId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLanguage];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLearningResourceAccessAPIType] FOREIGN KEY([RefLearningResourceAccessAPITypeId])
REFERENCES [dbo].[RefLearningResourceAccessAPIType] ([RefLearningResourceAccessAPITypeId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceAccessAPIType];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLearningResourceAccessHazardType] FOREIGN KEY([RefLearningResourceAccessHazardTypeId])
REFERENCES [dbo].[RefLearningResourceAccessHazardType] ([RefLearningResourceAccessHazardTypeId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceAccessHazardType];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLearningResourceAccessModeType] FOREIGN KEY([RefLearningResourceAccessModeTypeId])
REFERENCES [dbo].[RefLearningResourceAccessModeType] ([RefLearningResourceAccessModeTypeId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceAccessModeType];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLearningResourceAccessRightsUrl] FOREIGN KEY([RefLearningResourceAccessRightsUrlId])
REFERENCES [dbo].[RefLearningResourceAccessRightsUrl] ([RefLearningResourceAccessRightsUrlId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceAccessRightsUrl];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLearningResourceAuthorType] FOREIGN KEY([RefLearningResourceAuthorTypeId])
REFERENCES [dbo].[RefLearningResourceAuthorType] ([RefLearningResourceAuthorTypeId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceAuthorType];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLearningResourceBookFormatTypeId] FOREIGN KEY([RefLearningResourceBookFormatTypeId])
REFERENCES [dbo].[RefLearningResourceBookFormatType] ([RefLearningResourceBookFormatTypeId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceBookFormatTypeId];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLearningResourceControlFlexibilityType] FOREIGN KEY([RefLearningResourceControlFlexibilityTypeId])
REFERENCES [dbo].[RefLearningResourceControlFlexibilityType] ([RefLearningResourceControlFlexibilityTypeId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceControlFlexibilityType];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLearningResourceDigitalMediaSubType] FOREIGN KEY([RefLearningResourceDigitalMediaSubTypeId])
REFERENCES [dbo].[RefLearningResourceDigitalMediaSubType] ([RefLearningResourceDigitalMediaSubTypeId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceDigitalMediaSubType];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLearningResourceDigitalMediaType] FOREIGN KEY([RefLearningResourceDigitalMediaTypeId])
REFERENCES [dbo].[RefLearningResourceDigitalMediaType] ([RefLearningResourceDigitalMediaTypeId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceDigitalMediaType];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLearningResourceInteractionMode] FOREIGN KEY([RefLearningResourceInteractionModeId])
REFERENCES [dbo].[RefLearningResourceInteractionMode] ([RefLearningResourceInteractionModeId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceInteractionMode];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLREducationalUse] FOREIGN KEY([RefLearningResourceEducationalUseId])
REFERENCES [dbo].[RefLearningResourceEducationalUse] ([RefLearningResourceEducationalUseId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLREducationalUse];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLRIntendedEndUserRole] FOREIGN KEY([RefLearningResourceIntendedEndUserRoleId])
REFERENCES [dbo].[RefLearningResourceIntendedEndUserRole] ([RefLearningResourceIntendedEndUserRoleId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLRIntendedEndUserRole];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLRInteractivityType] FOREIGN KEY([RefLearningResourceInteractivityTypeId])
REFERENCES [dbo].[RefLearningResourceInteractivityType] ([RefLearningResourceInteractivityTypeId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLRInteractivityType];

ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_RefLRType] FOREIGN KEY([RefLearningResourceTypeId])
REFERENCES [dbo].[RefLearningResourceType] ([RefLearningResourceTypeId]);

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLRType];

ALTER TABLE [dbo].[LearningResourceAdaptation]  WITH CHECK ADD  CONSTRAINT [FK_LearningResourceAdaptation_LR] FOREIGN KEY([LearningResourceId])
REFERENCES [dbo].[LearningResource] ([LearningResourceId]);

ALTER TABLE [dbo].[LearningResourceAdaptation] CHECK CONSTRAINT [FK_LearningResourceAdaptation_LR];

ALTER TABLE [dbo].[LearningResourceEducationLevel]  WITH CHECK ADD  CONSTRAINT [FK_LearningResource_GradeLevel_LearningResource] FOREIGN KEY([LearningResourceId])
REFERENCES [dbo].[LearningResource] ([LearningResourceId]);

ALTER TABLE [dbo].[LearningResourceEducationLevel] CHECK CONSTRAINT [FK_LearningResource_GradeLevel_LearningResource];

ALTER TABLE [dbo].[LearningResourceEducationLevel]  WITH CHECK ADD  CONSTRAINT [FK_LearningResourceEducationLevel_RefEducationLevel] FOREIGN KEY([RefEducationLevelId])
REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId]);

ALTER TABLE [dbo].[LearningResourceEducationLevel] CHECK CONSTRAINT [FK_LearningResourceEducationLevel_RefEducationLevel];

ALTER TABLE [dbo].[LearningResourceMediaFeature]  WITH CHECK ADD  CONSTRAINT [FK_LearningResourceMediaFeature_LearningResource] FOREIGN KEY([LearningResourceId])
REFERENCES [dbo].[LearningResource] ([LearningResourceId]);

ALTER TABLE [dbo].[LearningResourceMediaFeature] CHECK CONSTRAINT [FK_LearningResourceMediaFeature_LearningResource];

ALTER TABLE [dbo].[LearningResourceMediaFeature]  WITH CHECK ADD  CONSTRAINT [FK_LearningResourceMediaFeature_RefLearningResourceMediaFeatureType] FOREIGN KEY([RefLearningResourceMediaFeatureTypeId])
REFERENCES [dbo].[RefLearningResourceMediaFeatureType] ([RefLearningResourceMediaFeatureTypeId]);

ALTER TABLE [dbo].[LearningResourceMediaFeature] CHECK CONSTRAINT [FK_LearningResourceMediaFeature_RefLearningResourceMediaFeatureType];

ALTER TABLE [dbo].[LearningResourcePeerRating]  WITH CHECK ADD  CONSTRAINT [FK_LearningResourcePeerRating_LearningResource] FOREIGN KEY([LearningResourceId])
REFERENCES [dbo].[LearningResource] ([LearningResourceId]);

ALTER TABLE [dbo].[LearningResourcePeerRating] CHECK CONSTRAINT [FK_LearningResourcePeerRating_LearningResource];

ALTER TABLE [dbo].[LearningResourcePeerRating]  WITH CHECK ADD  CONSTRAINT [FK_LearningResourcePeerRating_PeerRatingSystem] FOREIGN KEY([PeerRatingSystemId])
REFERENCES [dbo].[PeerRatingSystem] ([PeerRatingSystemId]);

ALTER TABLE [dbo].[LearningResourcePeerRating] CHECK CONSTRAINT [FK_LearningResourcePeerRating_PeerRatingSystem];

ALTER TABLE [dbo].[LearningResourcePeerRating]  WITH CHECK ADD  CONSTRAINT [FK_LearningResourcePeerRating_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[LearningResourcePeerRating] CHECK CONSTRAINT [FK_LearningResourcePeerRating_Person];

ALTER TABLE [dbo].[LearningResourcePhysicalMedia]  WITH CHECK ADD  CONSTRAINT [FK_LearningResourcePhysicalMedia_LearningResource] FOREIGN KEY([LearningResourceId])
REFERENCES [dbo].[LearningResource] ([LearningResourceId]);

ALTER TABLE [dbo].[LearningResourcePhysicalMedia] CHECK CONSTRAINT [FK_LearningResourcePhysicalMedia_LearningResource];

ALTER TABLE [dbo].[LearningResourcePhysicalMedia]  WITH CHECK ADD  CONSTRAINT [FK_LearningResourcePhysicalMedia_RefLearningResourcePhysicalMediaType] FOREIGN KEY([RefLearningResourcePhysicalMediaTypeId])
REFERENCES [dbo].[RefLearningResourcePhysicalMediaType] ([RefLearningResourcePhysicalMediaTypeId]);

ALTER TABLE [dbo].[LearningResourcePhysicalMedia] CHECK CONSTRAINT [FK_LearningResourcePhysicalMedia_RefLearningResourcePhysicalMediaType];

ALTER TABLE [dbo].[LocationAddress]  WITH CHECK ADD  CONSTRAINT [FK_LocationAddress_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId])
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [dbo].[LocationAddress] CHECK CONSTRAINT [FK_LocationAddress_Location];

ALTER TABLE [dbo].[LocationAddress]  WITH CHECK ADD  CONSTRAINT [FK_LocationAddress_RefCountry] FOREIGN KEY([RefCountryId])
REFERENCES [dbo].[RefCountry] ([RefCountryId]);

ALTER TABLE [dbo].[LocationAddress] CHECK CONSTRAINT [FK_LocationAddress_RefCountry];

ALTER TABLE [dbo].[LocationAddress]  WITH CHECK ADD  CONSTRAINT [FK_LocationAddress_RefCounty] FOREIGN KEY([RefCountyId])
REFERENCES [dbo].[RefCounty] ([RefCountyId]);

ALTER TABLE [dbo].[LocationAddress] CHECK CONSTRAINT [FK_LocationAddress_RefCounty];

ALTER TABLE [dbo].[LocationAddress]  WITH CHECK ADD  CONSTRAINT [FK_LocationAddress_RefERSRuralUrbanContinuumCode] FOREIGN KEY([RefERSRuralUrbanContinuumCodeId])
REFERENCES [dbo].[RefERSRuralUrbanContinuumCode] ([RefERSRuralUrbanContinuumCodeId]);

ALTER TABLE [dbo].[LocationAddress] CHECK CONSTRAINT [FK_LocationAddress_RefERSRuralUrbanContinuumCode];

ALTER TABLE [dbo].[LocationAddress]  WITH CHECK ADD  CONSTRAINT [FK_LocationAddress_RefState] FOREIGN KEY([RefStateId])
REFERENCES [dbo].[RefState] ([RefStateId]);

ALTER TABLE [dbo].[LocationAddress] CHECK CONSTRAINT [FK_LocationAddress_RefState];

ALTER TABLE [dbo].[Organization]  WITH CHECK ADD  CONSTRAINT [FK_Organization_RefOrganizationType] FOREIGN KEY([RefOrganizationTypeId])
REFERENCES [dbo].[RefOrganizationType] ([RefOrganizationTypeId]);

ALTER TABLE [dbo].[Organization] CHECK CONSTRAINT [FK_Organization_RefOrganizationType];

ALTER TABLE [dbo].[OrganizationAccreditation]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationAccreditation_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationAccreditation] CHECK CONSTRAINT [FK_OrganizationAccreditation_Organization];

ALTER TABLE [dbo].[OrganizationAccreditation]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationAccreditation_RefAccreditationAgency] FOREIGN KEY([RefAccreditationAgencyId])
REFERENCES [dbo].[RefAccreditationAgency] ([RefAccreditationAgencyId]);

ALTER TABLE [dbo].[OrganizationAccreditation] CHECK CONSTRAINT [FK_OrganizationAccreditation_RefAccreditationAgency];

ALTER TABLE [dbo].[OrganizationAccreditation]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationAccreditation_RefHigherEducationInstitutionAccreditationStatus] FOREIGN KEY([RefHigherEducationInstitutionAccreditationStatusId])
REFERENCES [dbo].[RefHigherEducationInstitutionAccreditationStatus] ([RefHigherEducationInstitutionAccreditationStatusId]);

ALTER TABLE [dbo].[OrganizationAccreditation] CHECK CONSTRAINT [FK_OrganizationAccreditation_RefHigherEducationInstitutionAccreditationStatus];

ALTER TABLE [dbo].[OrganizationCalendar]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationCalendar_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationCalendar] CHECK CONSTRAINT [FK_OrganizationCalendar_Organization];

ALTER TABLE [dbo].[OrganizationCalendarCrisis]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationCalendarCrisis_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationCalendarCrisis] CHECK CONSTRAINT [FK_OrganizationCalendarCrisis_Organization];

ALTER TABLE [dbo].[OrganizationCalendarDay]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationCalendarDay_OrganizationCalendar1] FOREIGN KEY([OrganizationCalendarId])
REFERENCES [dbo].[OrganizationCalendar] ([OrganizationCalendarId]);

ALTER TABLE [dbo].[OrganizationCalendarDay] CHECK CONSTRAINT [FK_OrganizationCalendarDay_OrganizationCalendar1];

ALTER TABLE [dbo].[OrganizationCalendarEvent]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationCalendarEvent_OrganizationCalendar] FOREIGN KEY([OrganizationCalendarId])
REFERENCES [dbo].[OrganizationCalendar] ([OrganizationCalendarId]);

ALTER TABLE [dbo].[OrganizationCalendarEvent] CHECK CONSTRAINT [FK_OrganizationCalendarEvent_OrganizationCalendar];

ALTER TABLE [dbo].[OrganizationCalendarEvent]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationCalendarEvent_RefCalendarEventType] FOREIGN KEY([RefCalendarEventType])
REFERENCES [dbo].[RefCalendarEventType] ([RefCalendarEventTypeId]);

ALTER TABLE [dbo].[OrganizationCalendarEvent] CHECK CONSTRAINT [FK_OrganizationCalendarEvent_RefCalendarEventType];

ALTER TABLE [dbo].[OrganizationCalendarSession]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationCalendarSession_OrganizationCalendar] FOREIGN KEY([OrganizationCalendarId])
REFERENCES [dbo].[OrganizationCalendar] ([OrganizationCalendarId]);

ALTER TABLE [dbo].[OrganizationCalendarSession] CHECK CONSTRAINT [FK_OrganizationCalendarSession_OrganizationCalendar];

ALTER TABLE [dbo].[OrganizationCalendarSession]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationCalendarSession_RefSessionType] FOREIGN KEY([RefSessionTypeId])
REFERENCES [dbo].[RefSessionType] ([RefSessionTypeId]);

ALTER TABLE [dbo].[OrganizationCalendarSession] CHECK CONSTRAINT [FK_OrganizationCalendarSession_RefSessionType];

ALTER TABLE [dbo].[OrganizationEmail]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Email_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationEmail] CHECK CONSTRAINT [FK_Organization_Email_Organization];

ALTER TABLE [dbo].[OrganizationEmail]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Email_RefEmailType] FOREIGN KEY([RefEmailTypeId])
REFERENCES [dbo].[RefEmailType] ([RefEmailTypeId]);

ALTER TABLE [dbo].[OrganizationEmail] CHECK CONSTRAINT [FK_Organization_Email_RefEmailType];

ALTER TABLE [dbo].[OrganizationEmployeeBenefit]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationEmployeeBenefit_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationEmployeeBenefit] CHECK CONSTRAINT [FK_OrganizationEmployeeBenefit_Organization];

ALTER TABLE [dbo].[OrganizationEmployeeBenefit]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationEmployeeBenefit_RefEmployeeBenefit] FOREIGN KEY([RefEmployeeBenefitId])
REFERENCES [dbo].[RefEmployeeBenefit] ([RefEmployeeBenefitId]);

ALTER TABLE [dbo].[OrganizationEmployeeBenefit] CHECK CONSTRAINT [FK_OrganizationEmployeeBenefit_RefEmployeeBenefit];

ALTER TABLE [dbo].[OrganizationFederalAccountability]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFedAccountability_RefAMAOAttainmentLEPStudents] FOREIGN KEY([AmaoAypProgressAttainmentLepStudents])
REFERENCES [dbo].[RefAmaoAttainmentStatus] ([RefAmaoAttainmentStatusId]);

ALTER TABLE [dbo].[OrganizationFederalAccountability] CHECK CONSTRAINT [FK_OrganizationFedAccountability_RefAMAOAttainmentLEPStudents];

ALTER TABLE [dbo].[OrganizationFederalAccountability]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFedAccountability_RefAMAOAttainmentLEPStudents1] FOREIGN KEY([AmaoProficiencyAttainmentLepStudents])
REFERENCES [dbo].[RefAmaoAttainmentStatus] ([RefAmaoAttainmentStatusId]);

ALTER TABLE [dbo].[OrganizationFederalAccountability] CHECK CONSTRAINT [FK_OrganizationFedAccountability_RefAMAOAttainmentLEPStudents1];

ALTER TABLE [dbo].[OrganizationFederalAccountability]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFedAccountability_RefAMAOAttainmentLEPStudents2] FOREIGN KEY([AmaoProgressAttainmentLepStudents])
REFERENCES [dbo].[RefAmaoAttainmentStatus] ([RefAmaoAttainmentStatusId]);

ALTER TABLE [dbo].[OrganizationFederalAccountability] CHECK CONSTRAINT [FK_OrganizationFedAccountability_RefAMAOAttainmentLEPStudents2];

ALTER TABLE [dbo].[OrganizationFederalAccountability]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFedAccountability_RefCTEGraduationRateInclusion] FOREIGN KEY([RefCteGraduationRateInclusionId])
REFERENCES [dbo].[RefCteGraduationRateInclusion] ([RefCteGraduationRateInclusionId]);

ALTER TABLE [dbo].[OrganizationFederalAccountability] CHECK CONSTRAINT [FK_OrganizationFedAccountability_RefCTEGraduationRateInclusion];

ALTER TABLE [dbo].[OrganizationFederalAccountability]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFedAccountability_RefElementaryMiddleAdditional] FOREIGN KEY([RefElementaryMiddleAdditionalId])
REFERENCES [dbo].[RefElementaryMiddleAdditional] ([RefElementaryMiddleAdditionalId]);

ALTER TABLE [dbo].[OrganizationFederalAccountability] CHECK CONSTRAINT [FK_OrganizationFedAccountability_RefElementaryMiddleAdditional];

ALTER TABLE [dbo].[OrganizationFederalAccountability]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFedAccountability_RefHSGraduationRateIndicator] FOREIGN KEY([RefHighSchoolGraduationRateIndicator])
REFERENCES [dbo].[RefHighSchoolGraduationRateIndicator] ([RefHSGraduationRateIndicatorId]);

ALTER TABLE [dbo].[OrganizationFederalAccountability] CHECK CONSTRAINT [FK_OrganizationFedAccountability_RefHSGraduationRateIndicator];

ALTER TABLE [dbo].[OrganizationFederalAccountability]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFederaAccountability_RefAypStatus] FOREIGN KEY([RefAypStatusId])
REFERENCES [dbo].[RefAypStatus] ([RefAypStatusId]);

ALTER TABLE [dbo].[OrganizationFederalAccountability] CHECK CONSTRAINT [FK_OrganizationFederaAccountability_RefAypStatus];

ALTER TABLE [dbo].[OrganizationFederalAccountability]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFederalAccountability_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationFederalAccountability] CHECK CONSTRAINT [FK_OrganizationFederalAccountability_Organization];

ALTER TABLE [dbo].[OrganizationFederalAccountability]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFederalAccountability_RefGunFreeSchoolsActStatus] FOREIGN KEY([RefGunFreeSchoolsActStatusReportingId])
REFERENCES [dbo].[RefGunFreeSchoolsActReportingStatus] ([RefGunFreeSchoolsActStatusReportingId]);

ALTER TABLE [dbo].[OrganizationFederalAccountability] CHECK CONSTRAINT [FK_OrganizationFederalAccountability_RefGunFreeSchoolsActStatus];

ALTER TABLE [dbo].[OrganizationFederalAccountability]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFederalAccountability_RefParticipationStatusAyp2] FOREIGN KEY([RefParticipationStatusMathId])
REFERENCES [dbo].[RefParticipationStatusAyp] ([RefParticipationStatusAypId]);

ALTER TABLE [dbo].[OrganizationFederalAccountability] CHECK CONSTRAINT [FK_OrganizationFederalAccountability_RefParticipationStatusAyp2];

ALTER TABLE [dbo].[OrganizationFederalAccountability]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFederalAccountability_RefParticipationStatusAyp3] FOREIGN KEY([RefParticipationStatusRlaId])
REFERENCES [dbo].[RefParticipationStatusAyp] ([RefParticipationStatusAypId]);

ALTER TABLE [dbo].[OrganizationFederalAccountability] CHECK CONSTRAINT [FK_OrganizationFederalAccountability_RefParticipationStatusAyp3];

ALTER TABLE [dbo].[OrganizationFederalAccountability]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFederalAccountability_RefProficiencyTargetAYP] FOREIGN KEY([RefProficiencyTargetStatusMathId])
REFERENCES [dbo].[RefProficiencyTargetAyp] ([RefProficiencyTargetAypId]);

ALTER TABLE [dbo].[OrganizationFederalAccountability] CHECK CONSTRAINT [FK_OrganizationFederalAccountability_RefProficiencyTargetAYP];

ALTER TABLE [dbo].[OrganizationFederalAccountability]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFederalAccountability_RefProficiencyTargetAYP1] FOREIGN KEY([RefProficiencyTargetStatusRLAId])
REFERENCES [dbo].[RefProficiencyTargetAyp] ([RefProficiencyTargetAypId]);

ALTER TABLE [dbo].[OrganizationFederalAccountability] CHECK CONSTRAINT [FK_OrganizationFederalAccountability_RefProficiencyTargetAYP1];

ALTER TABLE [dbo].[OrganizationFederalAccountability]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFederalAccountability_RefReconstitutedStatus] FOREIGN KEY([RefReconstitutedStatusId])
REFERENCES [dbo].[RefReconstitutedStatus] ([RefReconstitutedStatusId]);

ALTER TABLE [dbo].[OrganizationFederalAccountability] CHECK CONSTRAINT [FK_OrganizationFederalAccountability_RefReconstitutedStatus];

ALTER TABLE [dbo].[OrganizationFinancial]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFinancial_FinancialAccount] FOREIGN KEY([FinancialAccountId])
REFERENCES [dbo].[FinancialAccount] ([FinancialAccountId]);

ALTER TABLE [dbo].[OrganizationFinancial] CHECK CONSTRAINT [FK_OrganizationFinancial_FinancialAccount];

ALTER TABLE [dbo].[OrganizationFinancial]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFinancial_FinancialAccountProgram] FOREIGN KEY([FinancialAccountProgramId])
REFERENCES [dbo].[FinancialAccountProgram] ([FinancialAccountProgramId]);

ALTER TABLE [dbo].[OrganizationFinancial] CHECK CONSTRAINT [FK_OrganizationFinancial_FinancialAccountProgram];

ALTER TABLE [dbo].[OrganizationFinancial]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationFinancial_OrgCalendarSession] FOREIGN KEY([OrganizationCalendarSessionId])
REFERENCES [dbo].[OrganizationCalendarSession] ([OrganizationCalendarSessionId]);

ALTER TABLE [dbo].[OrganizationFinancial] CHECK CONSTRAINT [FK_OrganizationFinancial_OrgCalendarSession];

ALTER TABLE [dbo].[OrganizationIdentifier]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationIdentifier_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationIdentifier] CHECK CONSTRAINT [FK_OrganizationIdentifier_Organization];

ALTER TABLE [dbo].[OrganizationIdentifier]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationIdentifier_RefIdentifierOrganization] FOREIGN KEY([RefOrganizationIdentificationSystemId])
REFERENCES [dbo].[RefOrganizationIdentificationSystem] ([RefOrganizationIdentificationSystemId]);

ALTER TABLE [dbo].[OrganizationIdentifier] CHECK CONSTRAINT [FK_OrganizationIdentifier_RefIdentifierOrganization];

ALTER TABLE [dbo].[OrganizationIdentifier]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationIdentifier_RefOrganizationIdentifierType] FOREIGN KEY([RefOrganizationIdentifierTypeId])
REFERENCES [dbo].[RefOrganizationIdentifierType] ([RefOrganizationIdentifierTypeId]);

ALTER TABLE [dbo].[OrganizationIdentifier] CHECK CONSTRAINT [FK_OrganizationIdentifier_RefOrganizationIdentifierType];

ALTER TABLE [dbo].[OrganizationImage]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationImage_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationImage] CHECK CONSTRAINT [FK_OrganizationImage_Organization];

ALTER TABLE [dbo].[OrganizationIndicator]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationIndicator_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationIndicator] CHECK CONSTRAINT [FK_OrganizationIndicator_Organization];

ALTER TABLE [dbo].[OrganizationIndicator]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationIndicator_RefOrganizationIndicator] FOREIGN KEY([RefOrganizationIndicatorId])
REFERENCES [dbo].[RefOrganizationIndicator] ([RefOrganizationIndicatorId]);

ALTER TABLE [dbo].[OrganizationIndicator] CHECK CONSTRAINT [FK_OrganizationIndicator_RefOrganizationIndicator];

ALTER TABLE [dbo].[OrganizationLocation]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationLocation_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId]);

ALTER TABLE [dbo].[OrganizationLocation] CHECK CONSTRAINT [FK_OrganizationLocation_Location];

ALTER TABLE [dbo].[OrganizationLocation]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationLocation_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationLocation] CHECK CONSTRAINT [FK_OrganizationLocation_Organization];

ALTER TABLE [dbo].[OrganizationLocation]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationLocation_RefOrganizationLocationType] FOREIGN KEY([RefOrganizationLocationTypeId])
REFERENCES [dbo].[RefOrganizationLocationType] ([RefOrganizationLocationTypeId]);

ALTER TABLE [dbo].[OrganizationLocation] CHECK CONSTRAINT [FK_OrganizationLocation_RefOrganizationLocationType];

ALTER TABLE [dbo].[OrganizationOperationalStatus]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationOperationalStatus_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationOperationalStatus] CHECK CONSTRAINT [FK_OrganizationOperationalStatus_Organization];

ALTER TABLE [dbo].[OrganizationOperationalStatus]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationOperationalStatus_RefOperationalStatus] FOREIGN KEY([RefOperationalStatusId])
REFERENCES [dbo].[RefOperationalStatus] ([RefOperationalStatusId]);

ALTER TABLE [dbo].[OrganizationOperationalStatus] CHECK CONSTRAINT [FK_OrganizationOperationalStatus_RefOperationalStatus];

ALTER TABLE [dbo].[OrganizationPersonRole]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationPersonRole_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationPersonRole] CHECK CONSTRAINT [FK_OrganizationPersonRole_Organization];

ALTER TABLE [dbo].[OrganizationPersonRole]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationPersonRole_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[OrganizationPersonRole] CHECK CONSTRAINT [FK_OrganizationPersonRole_Person];

ALTER TABLE [dbo].[OrganizationPersonRole]  WITH CHECK ADD  CONSTRAINT [FK_OrgranizationPersonRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId]);

ALTER TABLE [dbo].[OrganizationPersonRole] CHECK CONSTRAINT [FK_OrgranizationPersonRole_Role];

ALTER TABLE [dbo].[OrganizationPolicy]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationPolicy_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationPolicy] CHECK CONSTRAINT [FK_OrganizationPolicy_Organization];

ALTER TABLE [dbo].[OrganizationProgramType]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationProgramType_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationProgramType] CHECK CONSTRAINT [FK_OrganizationProgramType_Organization];

ALTER TABLE [dbo].[OrganizationProgramType]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationProgramType_RefProgramType] FOREIGN KEY([RefProgramTypeId])
REFERENCES [dbo].[RefProgramType] ([RefProgramTypeId]);

ALTER TABLE [dbo].[OrganizationProgramType] CHECK CONSTRAINT [FK_OrganizationProgramType_RefProgramType];

ALTER TABLE [dbo].[OrganizationRelationship]  WITH CHECK ADD  CONSTRAINT [FK_OrganizatinoRelationship_Organization_Parent] FOREIGN KEY([Parent_OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationRelationship] CHECK CONSTRAINT [FK_OrganizatinoRelationship_Organization_Parent];

ALTER TABLE [dbo].[OrganizationRelationship]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationRelationship_Organization_Child] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationRelationship] CHECK CONSTRAINT [FK_OrganizationRelationship_Organization_Child];

ALTER TABLE [dbo].[OrganizationRelationship]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationRelationship_RefOrganizationRelationshipType] FOREIGN KEY([RefOrganizationRelationshipId])
REFERENCES [dbo].[RefOrganizationRelationship] ([RefOrganizationRelationshipId]);

ALTER TABLE [dbo].[OrganizationRelationship] CHECK CONSTRAINT [FK_OrganizationRelationship_RefOrganizationRelationshipType];

ALTER TABLE [dbo].[OrganizationService]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationService_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationService] CHECK CONSTRAINT [FK_OrganizationService_Organization];

ALTER TABLE [dbo].[OrganizationService]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationService_RefStudentSupportServiceType] FOREIGN KEY([RefStudentSupportServiceTypeId])
REFERENCES [dbo].[RefStudentSupportServiceType] ([RefStudentSupportServiceTypeId]);

ALTER TABLE [dbo].[OrganizationService] CHECK CONSTRAINT [FK_OrganizationService_RefStudentSupportServiceType];

ALTER TABLE [dbo].[OrganizationTechnicalAssistance]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationTechnicalAssistance_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationTechnicalAssistance] CHECK CONSTRAINT [FK_OrganizationTechnicalAssistance_Organization];

ALTER TABLE [dbo].[OrganizationTechnicalAssistance]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationTechnicalAssistance_RefTechnicalAssistanceDeliveryType] FOREIGN KEY([RefTechnicalAssistanceDeliveryTypeId])
REFERENCES [dbo].[RefTechnicalAssistanceDeliveryType] ([RefTechnicalAssistanceDeliveryTypeId]);

ALTER TABLE [dbo].[OrganizationTechnicalAssistance] CHECK CONSTRAINT [FK_OrganizationTechnicalAssistance_RefTechnicalAssistanceDeliveryType];

ALTER TABLE [dbo].[OrganizationTechnicalAssistance]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationTechnicalAssistance_RefTechnicalAssistanceType] FOREIGN KEY([RefTechnicalAssistanceTypeId])
REFERENCES [dbo].[RefTechnicalAssistanceType] ([RefTechnicalAssistanceTypeId]);

ALTER TABLE [dbo].[OrganizationTechnicalAssistance] CHECK CONSTRAINT [FK_OrganizationTechnicalAssistance_RefTechnicalAssistanceType];

ALTER TABLE [dbo].[OrganizationTelephone]  WITH CHECK ADD  CONSTRAINT [FK_LocationPhone_RefInstitutionTelephoneType] FOREIGN KEY([RefInstitutionTelephoneTypeId])
REFERENCES [dbo].[RefInstitutionTelephoneType] ([RefInstitutionTelephoneTypeId]);

ALTER TABLE [dbo].[OrganizationTelephone] CHECK CONSTRAINT [FK_LocationPhone_RefInstitutionTelephoneType];

ALTER TABLE [dbo].[OrganizationTelephone]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationTelephone_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationTelephone] CHECK CONSTRAINT [FK_OrganizationTelephone_Organization];

ALTER TABLE [dbo].[OrganizationWebsite]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationWebsite_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId]);

ALTER TABLE [dbo].[OrganizationWebsite] CHECK CONSTRAINT [FK_OrganizationWebsite_Organization];

ALTER TABLE [dbo].[PDActivityEducationLevel]  WITH CHECK ADD  CONSTRAINT [FK_PDActivityEducationLevel_PDActivity] FOREIGN KEY([ProfessionalDevelopmentActivityId])
REFERENCES [dbo].[ProfessionalDevelopmentActivity] ([ProfessionalDevelopmentActivityId]);

ALTER TABLE [dbo].[PDActivityEducationLevel] CHECK CONSTRAINT [FK_PDActivityEducationLevel_PDActivity];

ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_RefEducationLevel] FOREIGN KEY([RefHighestEducationLevelCompletedId])
REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId]);

ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_RefEducationLevel];

ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_RefPersonalInformationVerification] FOREIGN KEY([RefPersonalInformationVerificationId])
REFERENCES [dbo].[RefPersonalInformationVerification] ([RefPersonalInformationVerificationId]);

ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_RefPersonalInformationVerification];

ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_RefProofOfResidencyType] FOREIGN KEY([RefProofOfResidencyTypeId])
REFERENCES [dbo].[RefProofOfResidencyType] ([RefProofOfResidencyTypeId]);

ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_RefProofOfResidencyType];

ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_RefSex] FOREIGN KEY([RefSexId])
REFERENCES [dbo].[RefSex] ([RefSexId]);

ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_RefSex];

ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_RefState] FOREIGN KEY([RefStateOfResidenceId])
REFERENCES [dbo].[RefState] ([RefStateId]);

ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_RefState];

ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_RefTribalAffiliation] FOREIGN KEY([RefTribalAffiliationId])
REFERENCES [dbo].[RefTribalAffiliation] ([RefTribalAffiliationId]);

ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_RefTribalAffiliation];

ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_RefUSCitizenshipStatus] FOREIGN KEY([RefUSCitizenshipStatusId])
REFERENCES [dbo].[RefUSCitizenshipStatus] ([RefUSCitizenshipStatusId]);

ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_RefUSCitizenshipStatus];

ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_RefVisaType] FOREIGN KEY([RefVisaTypeId])
REFERENCES [dbo].[RefVisaType] ([RefVisaTypeId]);

ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_RefVisaType];

ALTER TABLE [dbo].[Person_AssessmentPersonalNeedsProfile]  WITH CHECK ADD  CONSTRAINT [FK_Person_AssessmentPersonalNeedsProfile_AssessmentPersonalNeedsProfile] FOREIGN KEY([AssessmentPersonalNeedsProfileId])
REFERENCES [dbo].[AssessmentPersonalNeedsProfile] ([AssessmentPersonalNeedsProfileId]);

ALTER TABLE [dbo].[Person_AssessmentPersonalNeedsProfile] CHECK CONSTRAINT [FK_Person_AssessmentPersonalNeedsProfile_AssessmentPersonalNeedsProfile];

ALTER TABLE [dbo].[Person_AssessmentPersonalNeedsProfile]  WITH CHECK ADD  CONSTRAINT [FK_Person_AssessmentPersonalNeedsProfile_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[Person_AssessmentPersonalNeedsProfile] CHECK CONSTRAINT [FK_Person_AssessmentPersonalNeedsProfile_Person];

ALTER TABLE [dbo].[PersonAddress]  WITH CHECK ADD  CONSTRAINT [FK_PersonAddress_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonAddress] CHECK CONSTRAINT [FK_PersonAddress_Person];

ALTER TABLE [dbo].[PersonAddress]  WITH CHECK ADD  CONSTRAINT [FK_PersonAddress_RefCountry] FOREIGN KEY([RefCountryId])
REFERENCES [dbo].[RefCountry] ([RefCountryId]);

ALTER TABLE [dbo].[PersonAddress] CHECK CONSTRAINT [FK_PersonAddress_RefCountry];

ALTER TABLE [dbo].[PersonAddress]  WITH CHECK ADD  CONSTRAINT [FK_PersonAddress_RefCounty] FOREIGN KEY([RefCountyId])
REFERENCES [dbo].[RefCounty] ([RefCountyId]);

ALTER TABLE [dbo].[PersonAddress] CHECK CONSTRAINT [FK_PersonAddress_RefCounty];

ALTER TABLE [dbo].[PersonAddress]  WITH CHECK ADD  CONSTRAINT [FK_PersonAddress_RefPersonalInformationVerification] FOREIGN KEY([RefPersonalInformationVerificationId])
REFERENCES [dbo].[RefPersonalInformationVerification] ([RefPersonalInformationVerificationId]);

ALTER TABLE [dbo].[PersonAddress] CHECK CONSTRAINT [FK_PersonAddress_RefPersonalInformationVerification];

ALTER TABLE [dbo].[PersonAddress]  WITH CHECK ADD  CONSTRAINT [FK_PersonAddress_RefPersonLocationType] FOREIGN KEY([RefPersonLocationTypeId])
REFERENCES [dbo].[RefPersonLocationType] ([RefPersonLocationTypeId]);

ALTER TABLE [dbo].[PersonAddress] CHECK CONSTRAINT [FK_PersonAddress_RefPersonLocationType];

ALTER TABLE [dbo].[PersonAddress]  WITH CHECK ADD  CONSTRAINT [FK_PersonAddress_RefState] FOREIGN KEY([RefStateId])
REFERENCES [dbo].[RefState] ([RefStateId]);

ALTER TABLE [dbo].[PersonAddress] CHECK CONSTRAINT [FK_PersonAddress_RefState];

ALTER TABLE [dbo].[PersonAllergy]  WITH CHECK ADD  CONSTRAINT [FK_PersonAllergy_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonAllergy] CHECK CONSTRAINT [FK_PersonAllergy_Person];

ALTER TABLE [dbo].[PersonAllergy]  WITH CHECK ADD  CONSTRAINT [FK_PersonAllergy_RefAllergySeverity] FOREIGN KEY([RefAllergySeverityId])
REFERENCES [dbo].[RefAllergySeverity] ([RefAllergySeverityId]);

ALTER TABLE [dbo].[PersonAllergy] CHECK CONSTRAINT [FK_PersonAllergy_RefAllergySeverity];

ALTER TABLE [dbo].[PersonAllergy]  WITH CHECK ADD  CONSTRAINT [FK_PersonAllergy_RefAllergyTypeId] FOREIGN KEY([RefAllergyTypeId])
REFERENCES [dbo].[RefAllergyType] ([RefAllergyTypeId]);

ALTER TABLE [dbo].[PersonAllergy] CHECK CONSTRAINT [FK_PersonAllergy_RefAllergyTypeId];

ALTER TABLE [dbo].[PersonBirthplace]  WITH CHECK ADD  CONSTRAINT [FK_PersonBirthplace_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonBirthplace] CHECK CONSTRAINT [FK_PersonBirthplace_Person];

ALTER TABLE [dbo].[PersonBirthplace]  WITH CHECK ADD  CONSTRAINT [FK_PersonBirthplace_RefCountry] FOREIGN KEY([RefCountryId])
REFERENCES [dbo].[RefCountry] ([RefCountryId]);

ALTER TABLE [dbo].[PersonBirthplace] CHECK CONSTRAINT [FK_PersonBirthplace_RefCountry];

ALTER TABLE [dbo].[PersonBirthplace]  WITH CHECK ADD  CONSTRAINT [FK_PersonBirthplace_RefState] FOREIGN KEY([RefStateId])
REFERENCES [dbo].[RefState] ([RefStateId]);

ALTER TABLE [dbo].[PersonBirthplace] CHECK CONSTRAINT [FK_PersonBirthplace_RefState];

ALTER TABLE [dbo].[PersonCareerEducationPlan]  WITH CHECK ADD  CONSTRAINT [FK_PersonCareerEducationPlan_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonCareerEducationPlan] CHECK CONSTRAINT [FK_PersonCareerEducationPlan_Person];

ALTER TABLE [dbo].[PersonCareerEducationPlan]  WITH CHECK ADD  CONSTRAINT [FK_PersonCareerEducationPlan_RefCareerEduPlanType] FOREIGN KEY([RefCareerEducationPlanTypeId])
REFERENCES [dbo].[RefCareerEducationPlanType] ([RefCareerEducationPlanTypeId]);

ALTER TABLE [dbo].[PersonCareerEducationPlan] CHECK CONSTRAINT [FK_PersonCareerEducationPlan_RefCareerEduPlanType];

ALTER TABLE [dbo].[PersonCredential]  WITH CHECK ADD  CONSTRAINT [FK_PersonCredential_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonCredential] CHECK CONSTRAINT [FK_PersonCredential_Person];

ALTER TABLE [dbo].[PersonCredential]  WITH CHECK ADD  CONSTRAINT [FK_PersonCredential_RefCredentialType] FOREIGN KEY([RefCredentialTypeId])
REFERENCES [dbo].[RefCredentialType] ([RefCredentialTypeId]);

ALTER TABLE [dbo].[PersonCredential] CHECK CONSTRAINT [FK_PersonCredential_RefCredentialType];

ALTER TABLE [dbo].[PersonCredential]  WITH CHECK ADD  CONSTRAINT [FK_PersonCredential_RefState] FOREIGN KEY([RefIssuingStateId])
REFERENCES [dbo].[RefState] ([RefStateId]);

ALTER TABLE [dbo].[PersonCredential] CHECK CONSTRAINT [FK_PersonCredential_RefState];

ALTER TABLE [dbo].[PersonDegreeOrCertificate]  WITH CHECK ADD  CONSTRAINT [FK_PersonDegreeOrCertificate_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonDegreeOrCertificate] CHECK CONSTRAINT [FK_PersonDegreeOrCertificate_Person];

ALTER TABLE [dbo].[PersonDegreeOrCertificate]  WITH CHECK ADD  CONSTRAINT [FK_PersonDegreeOrCertificate_RefDegree] FOREIGN KEY([RefDegreeOrCertificateTypeId])
REFERENCES [dbo].[RefDegreeOrCertificateType] ([RefDegreeOrCertificateTypeId]);

ALTER TABLE [dbo].[PersonDegreeOrCertificate] CHECK CONSTRAINT [FK_PersonDegreeOrCertificate_RefDegree];

ALTER TABLE [dbo].[PersonDegreeOrCertificate]  WITH CHECK ADD  CONSTRAINT [FK_PersonDegreeOrCertificate_RefEducationVerificationMethod] FOREIGN KEY([RefEducationVerificationMethodId])
REFERENCES [dbo].[RefEducationVerificationMethod] ([RefEducationVerificationMethodId]);

ALTER TABLE [dbo].[PersonDegreeOrCertificate] CHECK CONSTRAINT [FK_PersonDegreeOrCertificate_RefEducationVerificationMethod];

ALTER TABLE [dbo].[PersonDegreeOrCertificate]  WITH CHECK ADD  CONSTRAINT [FK_PersonDegreeOrCertificate_RefHigherEdInstitutionAccredStatus] FOREIGN KEY([RefHigherEducationInstitutionAccreditationStatusId])
REFERENCES [dbo].[RefHigherEducationInstitutionAccreditationStatus] ([RefHigherEducationInstitutionAccreditationStatusId]);

ALTER TABLE [dbo].[PersonDegreeOrCertificate] CHECK CONSTRAINT [FK_PersonDegreeOrCertificate_RefHigherEdInstitutionAccredStatus];

ALTER TABLE [dbo].[PersonDemographicRace]  WITH CHECK ADD  CONSTRAINT [FK_DemographicRace_RefRace] FOREIGN KEY([RefRaceId])
REFERENCES [dbo].[RefRace] ([RefRaceId]);

ALTER TABLE [dbo].[PersonDemographicRace] CHECK CONSTRAINT [FK_DemographicRace_RefRace];

ALTER TABLE [dbo].[PersonDemographicRace]  WITH CHECK ADD  CONSTRAINT [FK_PersonDemographicRace_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonDemographicRace] CHECK CONSTRAINT [FK_PersonDemographicRace_Person];

ALTER TABLE [dbo].[PersonDisability]  WITH CHECK ADD  CONSTRAINT [FK_PersonDisability_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonDisability] CHECK CONSTRAINT [FK_PersonDisability_Person];

ALTER TABLE [dbo].[PersonDisability]  WITH CHECK ADD  CONSTRAINT [FK_PersonDisability_RefAccommodationsNeededType] FOREIGN KEY([RefAccommodationsNeededTypeId])
REFERENCES [dbo].[RefAccommodationsNeededType] ([RefAccommodationsNeededTypeId]);

ALTER TABLE [dbo].[PersonDisability] CHECK CONSTRAINT [FK_PersonDisability_RefAccommodationsNeededType];

ALTER TABLE [dbo].[PersonDisability]  WITH CHECK ADD  CONSTRAINT [FK_PersonDisability_RefDisabilityConditionStatusCode] FOREIGN KEY([RefDisabilityConditionStatusCodeId])
REFERENCES [dbo].[RefDisabilityConditionStatusCode] ([RefDisabilityConditionStatusCodeId]);

ALTER TABLE [dbo].[PersonDisability] CHECK CONSTRAINT [FK_PersonDisability_RefDisabilityConditionStatusCode];

ALTER TABLE [dbo].[PersonDisability]  WITH CHECK ADD  CONSTRAINT [FK_PersonDisability_RefDisabilityConditionType] FOREIGN KEY([RefDisabilityConditionTypeId])
REFERENCES [dbo].[RefDisabilityConditionType] ([RefDisabilityConditionTypeId]);

ALTER TABLE [dbo].[PersonDisability] CHECK CONSTRAINT [FK_PersonDisability_RefDisabilityConditionType];

ALTER TABLE [dbo].[PersonDisability]  WITH CHECK ADD  CONSTRAINT [FK_PersonDisability_RefDisabilityDeterminationSourceType] FOREIGN KEY([RefDisabilityDeterminationSourceTypeId])
REFERENCES [dbo].[RefDisabilityDeterminationSourceType] ([RefDisabilityDeterminationSourceTypeId]);

ALTER TABLE [dbo].[PersonDisability] CHECK CONSTRAINT [FK_PersonDisability_RefDisabilityDeterminationSourceType];

ALTER TABLE [dbo].[PersonDisability]  WITH CHECK ADD  CONSTRAINT [FK_PersonDisability_RefDisabilityType] FOREIGN KEY([PrimaryDisabilityTypeId])
REFERENCES [dbo].[RefDisabilityType] ([RefDisabilityTypeId]);

ALTER TABLE [dbo].[PersonDisability] CHECK CONSTRAINT [FK_PersonDisability_RefDisabilityType];

ALTER TABLE [dbo].[PersonDisability]  WITH CHECK ADD  CONSTRAINT [FK_PersonDisability_RefIDEADisabilityType] FOREIGN KEY([RefIDEADisabilityTypeId])
REFERENCES [dbo].[RefIDEADisabilityType] ([RefIDEADisabilityTypeId]);

ALTER TABLE [dbo].[PersonDisability] CHECK CONSTRAINT [FK_PersonDisability_RefIDEADisabilityType];

ALTER TABLE [dbo].[PersonEmailAddress]  WITH CHECK ADD  CONSTRAINT [FK_Person_Email_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonEmailAddress] CHECK CONSTRAINT [FK_Person_Email_Person];

ALTER TABLE [dbo].[PersonEmailAddress]  WITH CHECK ADD  CONSTRAINT [FK_PersonEmailAddress_RefEmailType] FOREIGN KEY([RefEmailTypeId])
REFERENCES [dbo].[RefEmailType] ([RefEmailTypeId]);

ALTER TABLE [dbo].[PersonEmailAddress] CHECK CONSTRAINT [FK_PersonEmailAddress_RefEmailType];

ALTER TABLE [dbo].[PersonFamily]  WITH CHECK ADD  CONSTRAINT [FK_PersonFamily_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonFamily] CHECK CONSTRAINT [FK_PersonFamily_Person];

ALTER TABLE [dbo].[PersonFamily]  WITH CHECK ADD  CONSTRAINT [FK_PersonFamily_RefCommunicationMethod] FOREIGN KEY([RefCommunicationMethodId])
REFERENCES [dbo].[RefCommunicationMethod] ([RefCommunicationMethodId]);

ALTER TABLE [dbo].[PersonFamily] CHECK CONSTRAINT [FK_PersonFamily_RefCommunicationMethod];

ALTER TABLE [dbo].[PersonFamily]  WITH CHECK ADD  CONSTRAINT [FK_PersonFamily_RefEducationLevel] FOREIGN KEY([RefHighestEducationLevelCompletedId])
REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId]);

ALTER TABLE [dbo].[PersonFamily] CHECK CONSTRAINT [FK_PersonFamily_RefEducationLevel];

ALTER TABLE [dbo].[PersonFamily]  WITH CHECK ADD  CONSTRAINT [FK_PersonFamily_RefELProgramEligibility] FOREIGN KEY([RefELProgramEligibilityId])
REFERENCES [dbo].[RefELProgramEligibility] ([RefELProgramEligibilityId]);

ALTER TABLE [dbo].[PersonFamily] CHECK CONSTRAINT [FK_PersonFamily_RefELProgramEligibility];

ALTER TABLE [dbo].[PersonFamily]  WITH CHECK ADD  CONSTRAINT [FK_PersonFamily_RefFamilyIncomeSource] FOREIGN KEY([RefFamilyIncomeSourceId])
REFERENCES [dbo].[RefFamilyIncomeSource] ([RefFamilyIncomeSourceId]);

ALTER TABLE [dbo].[PersonFamily] CHECK CONSTRAINT [FK_PersonFamily_RefFamilyIncomeSource];

ALTER TABLE [dbo].[PersonFamily]  WITH CHECK ADD  CONSTRAINT [FK_PersonFamily_RefIncomeCalculation] FOREIGN KEY([RefIncomeCalculationMethodId])
REFERENCES [dbo].[RefIncomeCalculationMethod] ([RefIncomeCalculationMethodId]);

ALTER TABLE [dbo].[PersonFamily] CHECK CONSTRAINT [FK_PersonFamily_RefIncomeCalculation];

ALTER TABLE [dbo].[PersonFamily]  WITH CHECK ADD  CONSTRAINT [FK_PersonFamily_RefProofOfResidencyType] FOREIGN KEY([RefProofOfResidencyTypeId])
REFERENCES [dbo].[RefProofOfResidencyType] ([RefProofOfResidencyTypeId]);

ALTER TABLE [dbo].[PersonFamily] CHECK CONSTRAINT [FK_PersonFamily_RefProofOfResidencyType];

ALTER TABLE [dbo].[PersonHealth]  WITH CHECK ADD  CONSTRAINT [FK_PersonHealth_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonHealth] CHECK CONSTRAINT [FK_PersonHealth_Person];

ALTER TABLE [dbo].[PersonHealth]  WITH CHECK ADD  CONSTRAINT [FK_PersonHealth_RefDentalInsuraceCoverageType] FOREIGN KEY([RefDentalInsuranceCoverageTypeId])
REFERENCES [dbo].[RefDentalInsuranceCoverageType] ([RefDentalInsuranceCoverageTypeId]);

ALTER TABLE [dbo].[PersonHealth] CHECK CONSTRAINT [FK_PersonHealth_RefDentalInsuraceCoverageType];

ALTER TABLE [dbo].[PersonHealth]  WITH CHECK ADD  CONSTRAINT [FK_PersonHealth_RefDentalScreeningStatus] FOREIGN KEY([RefDentalScreeningStatusId])
REFERENCES [dbo].[RefDentalScreeningStatus] ([RefDentalScreeningStatusId]);

ALTER TABLE [dbo].[PersonHealth] CHECK CONSTRAINT [FK_PersonHealth_RefDentalScreeningStatus];

ALTER TABLE [dbo].[PersonHealth]  WITH CHECK ADD  CONSTRAINT [FK_PersonHealth_RefHealthInsuranceCoverage] FOREIGN KEY([RefHealthInsuranceCoverageId])
REFERENCES [dbo].[RefHealthInsuranceCoverage] ([RefHealthInsuranceCoverageId]);

ALTER TABLE [dbo].[PersonHealth] CHECK CONSTRAINT [FK_PersonHealth_RefHealthInsuranceCoverage];

ALTER TABLE [dbo].[PersonHealth]  WITH CHECK ADD  CONSTRAINT [FK_PersonHealth_RefHearingScreeningStatus] FOREIGN KEY([RefHearingScreeningStatusId])
REFERENCES [dbo].[RefHearingScreeningStatus] ([RefHearingScreeningStatusId]);

ALTER TABLE [dbo].[PersonHealth] CHECK CONSTRAINT [FK_PersonHealth_RefHearingScreeningStatus];

ALTER TABLE [dbo].[PersonHealth]  WITH CHECK ADD  CONSTRAINT [FK_PersonHealth_RefMedicalAlertIndicator] FOREIGN KEY([RefMedicalAlertIndicatorId])
REFERENCES [dbo].[RefMedicalAlertIndicator] ([RefMedicalAlertIndicatorId]);

ALTER TABLE [dbo].[PersonHealth] CHECK CONSTRAINT [FK_PersonHealth_RefMedicalAlertIndicator];

ALTER TABLE [dbo].[PersonHealth]  WITH CHECK ADD  CONSTRAINT [FK_PersonHealth_RefVisionScreeningStatus] FOREIGN KEY([RefVisionScreeningStatusId])
REFERENCES [dbo].[RefVisionScreeningStatus] ([RefVisionScreeningStatusId]);

ALTER TABLE [dbo].[PersonHealth] CHECK CONSTRAINT [FK_PersonHealth_RefVisionScreeningStatus];

ALTER TABLE [dbo].[PersonHealthBirth]  WITH CHECK ADD  CONSTRAINT [FK_PersonHealthBirth_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonHealthBirth] CHECK CONSTRAINT [FK_PersonHealthBirth_Person];

ALTER TABLE [dbo].[PersonHealthBirth]  WITH CHECK ADD  CONSTRAINT [FK_PersonHealthBirth_RefTrimesterWhenPrenatalCareBegan] FOREIGN KEY([RefTrimesterWhenPrenatalCareBeganId])
REFERENCES [dbo].[RefTrimesterWhenPrenatalCareBegan] ([RefTrimesterWhenPrenatalCareBeganId]);

ALTER TABLE [dbo].[PersonHealthBirth] CHECK CONSTRAINT [FK_PersonHealthBirth_RefTrimesterWhenPrenatalCareBegan];

ALTER TABLE [dbo].[PersonHomelessness]  WITH CHECK ADD  CONSTRAINT [FK_HomelessPrimaryNighttimeResidence_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonHomelessness] CHECK CONSTRAINT [FK_HomelessPrimaryNighttimeResidence_Person];

ALTER TABLE [dbo].[PersonHomelessness]  WITH CHECK ADD  CONSTRAINT [FK_HomelessPrimaryNighttimeResidence_RefHomelessNighttimeResid] FOREIGN KEY([RefHomelessNighttimeResidenceId])
REFERENCES [dbo].[RefHomelessNighttimeResidence] ([RefHomelessNighttimeResidenceId]);

ALTER TABLE [dbo].[PersonHomelessness] CHECK CONSTRAINT [FK_HomelessPrimaryNighttimeResidence_RefHomelessNighttimeResid];

ALTER TABLE [dbo].[PersonIdentifier]  WITH CHECK ADD  CONSTRAINT [FK_PersonIdentifier_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonIdentifier] CHECK CONSTRAINT [FK_PersonIdentifier_Person];

ALTER TABLE [dbo].[PersonIdentifier]  WITH CHECK ADD  CONSTRAINT [FK_PersonIdentifier_RefIdentifierPerson] FOREIGN KEY([RefPersonIdentificationSystemId])
REFERENCES [dbo].[RefPersonIdentificationSystem] ([RefPersonIdentificationSystemId]);

ALTER TABLE [dbo].[PersonIdentifier] CHECK CONSTRAINT [FK_PersonIdentifier_RefIdentifierPerson];

ALTER TABLE [dbo].[PersonIdentifier]  WITH CHECK ADD  CONSTRAINT [FK_PersonIdentifier_RefPersonInfoVerification] FOREIGN KEY([RefPersonalInformationVerificationId])
REFERENCES [dbo].[RefPersonalInformationVerification] ([RefPersonalInformationVerificationId]);

ALTER TABLE [dbo].[PersonIdentifier] CHECK CONSTRAINT [FK_PersonIdentifier_RefPersonInfoVerification];

ALTER TABLE [dbo].[PersonImmunization]  WITH CHECK ADD  CONSTRAINT [FK_PersonImmunization_Person1] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonImmunization] CHECK CONSTRAINT [FK_PersonImmunization_Person1];

ALTER TABLE [dbo].[PersonImmunization]  WITH CHECK ADD  CONSTRAINT [FK_PersonImmunization_RefImmunization] FOREIGN KEY([RefImmunizationTypeId])
REFERENCES [dbo].[RefImmunizationType] ([RefImmunizationTypeId]);

ALTER TABLE [dbo].[PersonImmunization] CHECK CONSTRAINT [FK_PersonImmunization_RefImmunization];

ALTER TABLE [dbo].[PersonLanguage]  WITH CHECK ADD  CONSTRAINT [FK_PersonLanguage_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonLanguage] CHECK CONSTRAINT [FK_PersonLanguage_Person];

ALTER TABLE [dbo].[PersonLanguage]  WITH CHECK ADD  CONSTRAINT [FK_PersonLanguage_RefLanguage] FOREIGN KEY([RefLanguageId])
REFERENCES [dbo].[RefLanguage] ([RefLanguageId]);

ALTER TABLE [dbo].[PersonLanguage] CHECK CONSTRAINT [FK_PersonLanguage_RefLanguage];

ALTER TABLE [dbo].[PersonLanguage]  WITH CHECK ADD  CONSTRAINT [FK_PersonLanguage_RefLanguageUseType] FOREIGN KEY([RefLanguageUseTypeId])
REFERENCES [dbo].[RefLanguageUseType] ([RefLanguageUseTypeId]);

ALTER TABLE [dbo].[PersonLanguage] CHECK CONSTRAINT [FK_PersonLanguage_RefLanguageUseType];

ALTER TABLE [dbo].[PersonMilitary]  WITH CHECK ADD  CONSTRAINT [FK_PersonMilitary_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId]);

ALTER TABLE [dbo].[PersonMilitary] CHECK CONSTRAINT [FK_PersonMilitary_Person];

ALTER TABLE [dbo].[PersonMilitary]  WITH CHECK ADD  CONSTRAINT [FK_PersonMilitary_RefMilitaryActiveStudentIndicator] FOREIGN KEY([RefMilitaryActiveStudentIndicatorId])
REFERENCES [dbo].[RefMilitaryActiveStudentIndicator] ([RefMilitaryActiveStudentIndicatorId]);
