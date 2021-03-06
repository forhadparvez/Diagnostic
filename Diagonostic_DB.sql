USE [Diagnostic_DB]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 1/22/2017 11:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NULL,
	[PayAmount] [decimal](18, 2) NULL,
	[AddBy] [int] NULL,
	[AddDate] [date] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [date] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestRequestDtls]    Script Date: 1/22/2017 11:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestRequestDtls](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MstID] [int] NULL,
	[TestID] [int] NULL,
	[Fee] [decimal](18, 2) NULL,
 CONSTRAINT [PK_TestRequestDtls] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestRequestMst]    Script Date: 1/22/2017 11:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestRequestMst](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [nvarchar](10) NULL,
	[PatientName] [nvarchar](100) NULL,
	[DOB] [date] NULL,
	[Mobile] [nvarchar](15) NULL,
	[AddBy] [int] NULL,
	[AddDate] [date] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [date] NULL,
 CONSTRAINT [PK_TestRequestMst] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestSetup]    Script Date: 1/22/2017 11:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestSetup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TestName] [nvarchar](50) NULL,
	[Fee] [decimal](18, 2) NULL,
	[TestTypeID] [int] NULL,
	[AddBy] [int] NULL,
	[AddDate] [date] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [date] NULL,
 CONSTRAINT [PK_TestType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestTypeSetup]    Script Date: 1/22/2017 11:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestTypeSetup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NULL,
	[AddBy] [int] NULL,
	[AddDate] [date] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [date] NULL,
 CONSTRAINT [PK_TestTypeSetup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([ID], [PatientID], [PayAmount], [AddBy], [AddDate], [UpdateBy], [UpdateDate]) VALUES (1, 1, CAST(500.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment] ([ID], [PatientID], [PayAmount], [AddBy], [AddDate], [UpdateBy], [UpdateDate]) VALUES (2, 1, CAST(300.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Payment] OFF
SET IDENTITY_INSERT [dbo].[TestRequestDtls] ON 

INSERT [dbo].[TestRequestDtls] ([ID], [MstID], [TestID], [Fee]) VALUES (1, 1, 2, CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[TestRequestDtls] ([ID], [MstID], [TestID], [Fee]) VALUES (2, 1, 3, CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[TestRequestDtls] ([ID], [MstID], [TestID], [Fee]) VALUES (3, 2, 3, CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[TestRequestDtls] ([ID], [MstID], [TestID], [Fee]) VALUES (4, 2, 4, CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[TestRequestDtls] ([ID], [MstID], [TestID], [Fee]) VALUES (5, 2, 2, CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[TestRequestDtls] ([ID], [MstID], [TestID], [Fee]) VALUES (6, 3, 3, CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[TestRequestDtls] ([ID], [MstID], [TestID], [Fee]) VALUES (7, 3, 2, CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[TestRequestDtls] ([ID], [MstID], [TestID], [Fee]) VALUES (8, 4, 3, CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[TestRequestDtls] ([ID], [MstID], [TestID], [Fee]) VALUES (9, 5, 3, CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[TestRequestDtls] ([ID], [MstID], [TestID], [Fee]) VALUES (10, 5, 4, CAST(400.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[TestRequestDtls] OFF
SET IDENTITY_INSERT [dbo].[TestRequestMst] ON 

INSERT [dbo].[TestRequestMst] ([ID], [PatientID], [PatientName], [DOB], [Mobile], [AddBy], [AddDate], [UpdateBy], [UpdateDate]) VALUES (1, N'P-001', N'Rakibul hasan', CAST(N'2017-01-03' AS Date), N'01671657952', NULL, NULL, NULL, NULL)
INSERT [dbo].[TestRequestMst] ([ID], [PatientID], [PatientName], [DOB], [Mobile], [AddBy], [AddDate], [UpdateBy], [UpdateDate]) VALUES (2, N'P-002', N'Md.Sojol Shekh', CAST(N'2017-01-25' AS Date), N'01874832', NULL, NULL, NULL, NULL)
INSERT [dbo].[TestRequestMst] ([ID], [PatientID], [PatientName], [DOB], [Mobile], [AddBy], [AddDate], [UpdateBy], [UpdateDate]) VALUES (3, N'P-003', N'Sonowar Hossain', CAST(N'2017-01-17' AS Date), N'01671657952', NULL, NULL, NULL, NULL)
INSERT [dbo].[TestRequestMst] ([ID], [PatientID], [PatientName], [DOB], [Mobile], [AddBy], [AddDate], [UpdateBy], [UpdateDate]) VALUES (4, N'P-004', N'Abu Saleh', CAST(N'2017-01-02' AS Date), N'01671657952', NULL, NULL, NULL, NULL)
INSERT [dbo].[TestRequestMst] ([ID], [PatientID], [PatientName], [DOB], [Mobile], [AddBy], [AddDate], [UpdateBy], [UpdateDate]) VALUES (5, N'P-005', N'Monowar Hossain', CAST(N'2017-01-04' AS Date), N'01671657952', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TestRequestMst] OFF
SET IDENTITY_INSERT [dbo].[TestSetup] ON 

INSERT [dbo].[TestSetup] ([ID], [TestName], [Fee], [TestTypeID], [AddBy], [AddDate], [UpdateBy], [UpdateDate]) VALUES (2, N'CVS', CAST(500.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestSetup] ([ID], [TestName], [Fee], [TestTypeID], [AddBy], [AddDate], [UpdateBy], [UpdateDate]) VALUES (3, N'HVs', CAST(400.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestSetup] ([ID], [TestName], [Fee], [TestTypeID], [AddBy], [AddDate], [UpdateBy], [UpdateDate]) VALUES (4, N'SSV', CAST(400.00 AS Decimal(18, 2)), 3, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TestSetup] OFF
SET IDENTITY_INSERT [dbo].[TestTypeSetup] ON 

INSERT [dbo].[TestTypeSetup] ([ID], [TypeName], [AddBy], [AddDate], [UpdateBy], [UpdateDate]) VALUES (1, N'Blood', NULL, NULL, NULL, NULL)
INSERT [dbo].[TestTypeSetup] ([ID], [TypeName], [AddBy], [AddDate], [UpdateBy], [UpdateDate]) VALUES (2, N'HDS', NULL, NULL, NULL, NULL)
INSERT [dbo].[TestTypeSetup] ([ID], [TypeName], [AddBy], [AddDate], [UpdateBy], [UpdateDate]) VALUES (3, N'Name', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TestTypeSetup] OFF
