USE [OMS]
GO
/****** Object:  Table [dbo].[Available]    Script Date: 10/31/2024 2:14:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Available](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datetime] [datetime] NOT NULL,
	[doctor_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 10/31/2024 2:14:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[age] [int] NOT NULL,
	[year_of_experience] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor_Service]    Script Date: 10/31/2024 2:14:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor_Service](
	[doctor_id] [int] NOT NULL,
	[service_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[doctor_id] ASC,
	[service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Examination]    Script Date: 10/31/2024 2:14:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Examination](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[register_date] [datetime] NOT NULL,
	[service_id] [int] NOT NULL,
	[patient_name] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[phone] [nvarchar](10) NOT NULL,
	[age] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[assessments] [nvarchar](max) NULL,
	[instructions] [nvarchar](max) NULL,
	[symptoms] [nvarchar](max) NOT NULL,
	[reasons] [nvarchar](max) NOT NULL,
	[doctor_id] [int] NOT NULL,
	[diagnose] [nvarchar](max) NULL,
	[results] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalService]    Script Date: 10/31/2024 2:14:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalService](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Available] ON 

INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (1, CAST(N'2024-11-01T09:00:00.000' AS DateTime), 1)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (2, CAST(N'2024-11-01T13:00:00.000' AS DateTime), 1)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (3, CAST(N'2024-11-02T10:00:00.000' AS DateTime), 2)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (4, CAST(N'2024-11-02T14:00:00.000' AS DateTime), 2)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (5, CAST(N'2024-11-03T11:00:00.000' AS DateTime), 3)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (6, CAST(N'2024-11-03T15:00:00.000' AS DateTime), 3)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (7, CAST(N'2024-11-04T09:00:00.000' AS DateTime), 4)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (8, CAST(N'2024-11-04T13:00:00.000' AS DateTime), 4)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (9, CAST(N'2024-11-05T10:00:00.000' AS DateTime), 5)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (10, CAST(N'2024-11-05T14:00:00.000' AS DateTime), 5)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (11, CAST(N'2024-10-30T09:00:00.000' AS DateTime), 1)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (12, CAST(N'2024-10-30T13:00:00.000' AS DateTime), 2)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (13, CAST(N'2024-10-30T15:00:00.000' AS DateTime), 3)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (14, CAST(N'2024-10-31T09:00:00.000' AS DateTime), 4)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (15, CAST(N'2024-10-31T13:00:00.000' AS DateTime), 5)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (16, CAST(N'2024-10-31T15:00:00.000' AS DateTime), 6)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (17, CAST(N'2024-11-01T09:00:00.000' AS DateTime), 1)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (18, CAST(N'2024-11-01T13:00:00.000' AS DateTime), 2)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (19, CAST(N'2024-11-01T15:00:00.000' AS DateTime), 3)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (20, CAST(N'2024-11-02T09:00:00.000' AS DateTime), 4)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (21, CAST(N'2024-11-02T13:00:00.000' AS DateTime), 5)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (22, CAST(N'2024-11-02T15:00:00.000' AS DateTime), 6)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (23, CAST(N'2024-11-03T09:00:00.000' AS DateTime), 7)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (24, CAST(N'2024-11-03T13:00:00.000' AS DateTime), 8)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (25, CAST(N'2024-11-03T15:00:00.000' AS DateTime), 9)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (26, CAST(N'2024-11-04T09:00:00.000' AS DateTime), 10)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (27, CAST(N'2024-11-04T13:00:00.000' AS DateTime), 1)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (28, CAST(N'2024-11-04T15:00:00.000' AS DateTime), 2)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (29, CAST(N'2024-11-05T09:00:00.000' AS DateTime), 3)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (30, CAST(N'2024-11-05T13:00:00.000' AS DateTime), 4)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (31, CAST(N'2024-11-05T15:00:00.000' AS DateTime), 5)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (32, CAST(N'2024-11-06T09:00:00.000' AS DateTime), 6)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (33, CAST(N'2024-11-06T13:00:00.000' AS DateTime), 7)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (34, CAST(N'2024-11-06T15:00:00.000' AS DateTime), 8)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (35, CAST(N'2024-11-07T09:00:00.000' AS DateTime), 9)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (36, CAST(N'2024-11-07T13:00:00.000' AS DateTime), 10)
INSERT [dbo].[Available] ([id], [datetime], [doctor_id]) VALUES (37, CAST(N'2024-11-07T15:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Available] OFF
GO
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([id], [name], [age], [year_of_experience]) VALUES (1, N'Dr. John Doe', 45, 20)
INSERT [dbo].[Doctor] ([id], [name], [age], [year_of_experience]) VALUES (2, N'Dr. Jane Smith', 39, 15)
INSERT [dbo].[Doctor] ([id], [name], [age], [year_of_experience]) VALUES (3, N'Dr. Michael Brown', 50, 25)
INSERT [dbo].[Doctor] ([id], [name], [age], [year_of_experience]) VALUES (4, N'Dr. Sarah Johnson', 34, 10)
INSERT [dbo].[Doctor] ([id], [name], [age], [year_of_experience]) VALUES (5, N'Dr. David White', 42, 18)
INSERT [dbo].[Doctor] ([id], [name], [age], [year_of_experience]) VALUES (6, N'Dr. Lisa Black', 36, 12)
INSERT [dbo].[Doctor] ([id], [name], [age], [year_of_experience]) VALUES (7, N'Dr. Chris Green', 41, 16)
INSERT [dbo].[Doctor] ([id], [name], [age], [year_of_experience]) VALUES (8, N'Dr. Emily Taylor', 47, 22)
INSERT [dbo].[Doctor] ([id], [name], [age], [year_of_experience]) VALUES (9, N'Dr. Paul Harris', 44, 19)
INSERT [dbo].[Doctor] ([id], [name], [age], [year_of_experience]) VALUES (10, N'Dr. Nancy Wilson', 38, 14)
SET IDENTITY_INSERT [dbo].[Doctor] OFF
GO
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (1, 1)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (1, 5)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (2, 2)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (2, 6)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (3, 3)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (3, 7)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (4, 4)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (4, 8)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (5, 5)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (5, 9)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (6, 6)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (6, 10)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (7, 1)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (7, 7)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (8, 2)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (8, 8)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (9, 3)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (9, 9)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (10, 4)
INSERT [dbo].[Doctor_Service] ([doctor_id], [service_id]) VALUES (10, 10)
GO
SET IDENTITY_INSERT [dbo].[MedicalService] ON 

INSERT [dbo].[MedicalService] ([id], [name]) VALUES (1, N'Examination')
INSERT [dbo].[MedicalService] ([id], [name]) VALUES (2, N'Consultation')
INSERT [dbo].[MedicalService] ([id], [name]) VALUES (3, N'Health Check-up')
INSERT [dbo].[MedicalService] ([id], [name]) VALUES (4, N'General Consultation')
INSERT [dbo].[MedicalService] ([id], [name]) VALUES (5, N'Dermatology')
INSERT [dbo].[MedicalService] ([id], [name]) VALUES (6, N'Pediatrics')
INSERT [dbo].[MedicalService] ([id], [name]) VALUES (7, N'Orthopedics')
INSERT [dbo].[MedicalService] ([id], [name]) VALUES (8, N'Cardiology')
INSERT [dbo].[MedicalService] ([id], [name]) VALUES (9, N'Neurology')
INSERT [dbo].[MedicalService] ([id], [name]) VALUES (10, N'Oncology')
INSERT [dbo].[MedicalService] ([id], [name]) VALUES (11, N'Gastroenterology')
INSERT [dbo].[MedicalService] ([id], [name]) VALUES (12, N'Urology')
INSERT [dbo].[MedicalService] ([id], [name]) VALUES (13, N'Ophthalmology')
SET IDENTITY_INSERT [dbo].[MedicalService] OFF
GO
ALTER TABLE [dbo].[Available]  WITH CHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Doctor] ([id])
GO
ALTER TABLE [dbo].[Doctor_Service]  WITH CHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Doctor] ([id])
GO
ALTER TABLE [dbo].[Doctor_Service]  WITH CHECK ADD FOREIGN KEY([service_id])
REFERENCES [dbo].[MedicalService] ([id])
GO
ALTER TABLE [dbo].[Examination]  WITH CHECK ADD FOREIGN KEY([service_id])
REFERENCES [dbo].[MedicalService] ([id])
GO
ALTER TABLE [dbo].[Examination]  WITH CHECK ADD  CONSTRAINT [fk_examination_doctor] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Doctor] ([id])
GO
ALTER TABLE [dbo].[Examination] CHECK CONSTRAINT [fk_examination_doctor]
GO
