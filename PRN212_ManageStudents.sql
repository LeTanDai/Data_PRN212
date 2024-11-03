CREATE DATABASE PRN212_ManageStudents
GO

USE PRN212_ManageStudents
GO


CREATE TABLE [dbo].[Admin](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [varchar](6) NULL,
	[Email] [varchar](50) NULL,
	[phone] [varchar](11) NULL,
	[BirthDay] [date] NULL,
	[PassWord] [varchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Assign](
	[IDTeacher] [varchar](20) NOT NULL,
	[IDSubject] [varchar](10) NOT NULL,
	[nameClass] [varchar](10) NOT NULL,
	[schoolYear] [varchar](9) NOT NULL,
 CONSTRAINT [PK_Assign] PRIMARY KEY CLUSTERED 
(
	[IDTeacher] ASC,
	[IDSubject] ASC,
	[nameClass] ASC,
	[schoolYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Class](
	[nameClass] [varchar](10) NOT NULL,
	[schoolYear] [varchar](9) NOT NULL,
	[IDTeacher] [varchar](20) NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[nameClass] ASC,
	[schoolYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mark](
	[Semester] [varchar](9) NOT NULL,
	[ProgressTest1] [real] NULL,
	[ProgressTest2] [real] NULL,
	[Lab1] [real] NULL,
	[Lab2] [real] NULL,
	[Assignment] [real] NULL,
	[PracticalExam] [real] NULL,
	[FinalExam] [real] NULL,
	[Total] [real] NULL,
	[IDStudent] [varchar](20) NOT NULL,
	[IDSubject] [varchar](10) NOT NULL,
	[nameClass] [varchar](10) NOT NULL,
	[schoolYear] [varchar](9) NOT NULL,
 CONSTRAINT [PK_Mark_1] PRIMARY KEY CLUSTERED 
(
	[Semester] ASC,
	[IDStudent] ASC,
	[IDSubject] ASC,
	[nameClass] ASC,
	[schoolYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Rule](
	[minAge] [int] NOT NULL,
	[maxAge] [int] NOT NULL,
	[passScore] [float] NOT NULL,
	[totalStudent] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Student](
	[IDStudent] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [varchar](6) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](11) NULL,
	[BirthDay] [date] NULL,
	[PassWord] [varchar](50) NULL,
	[isActive] [char](1) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[IDStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Student_Class](
	[IDStudent] [varchar](20) NOT NULL,
	[nameClass] [varchar](10) NOT NULL,
	[schoolYear] [varchar](9) NOT NULL,
 CONSTRAINT [PK_Student_Class] PRIMARY KEY CLUSTERED 
(
	[IDStudent] ASC,
	[nameClass] ASC,
	[schoolYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Subject](
	[IDSubject] [varchar](10) NOT NULL,
	[NameSubject] [nvarchar](70) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[IDSubject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Teacher](
	[IDTeacher] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [varchar](6) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](11) NULL,
	[BirthDay] [date] NULL,
	[PassWord] [varchar](50) NULL,
	[isActive] [char](1) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[IDTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Teacher_Subject](
	[IDTeacher] [varchar](20) NOT NULL,
	[IDSubject] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Teacher_Subject] PRIMARY KEY CLUSTERED 
(
	[IDTeacher] ASC,
	[IDSubject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Insert table Admin
INSERT INTO [dbo].[Admin]([ID] ,[Name] ,[Gender] ,[Email] ,[phone] ,[BirthDay] ,[PassWord] ) VALUES
('admin1', N'Nguyễn Văn Hoàng Phúc', 'Male', 'Phuc@gmail.com', '0926615662', '2004-09-27', 'abc@123'),
('admin2', N'Trương Quốc Cường', 'Male', 'Qcu@gmail.com', '0922222222', '2004-09-16', 'abc@123'),
('admin3', N'Lê Thế Bảo', 'Male', 'Lbao@gmail.com', '0933333333', '2004-04-14', 'abc@123'),
('admin4', N'Lê Tấn Đại', 'Male', 'Dai@gmail.com', '0944444444', '2004-09-27', 'abc@123'),
('admin5', N'Huỳnh Trần Văn Trọng', 'Male', 'Trong@gmail.com', '0955555555', '2004-09-27', 'abc@123');
GO
-- Insert table Student
INSERT INTO [dbo].[Student]([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES
('1', N'Huỳnh Trần Văn Trọng', 'Male', 'trong15gg@gmail.com', '0702795560', '2004-07-21', 'abc@123', 'Y'),
('2', N'Trần Thị B', 'Female', 'b@gmail.com', '0900000002', '2005-02-01', 'abc@123', 'Y'),
('3', N'Nguyễn Văn C', 'Male', 'c@gmail.com', '0900000003', '2005-03-01', 'abc@123', 'Y'),
('4', N'Lê Thị D', 'Female', 'd@gmail.com', '0900000004', '2005-04-01', 'abc@123', 'Y'),
('5', N'Huỳnh Văn E', 'Male', 'e@gmail.com', '0900000005', '2005-05-01', 'abc@123', 'Y');


-- Insert table mark
INSERT INTO [dbo].[Mark]([Semester], [ProgressTest1], [ProgressTest2], [Lab1], [Lab2], [Assignment], [PracticalExam], [FinalExam], [Total], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES
	('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'ENT503', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'VOV114', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'VOV124', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'VOV134', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'OTP101', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'TMI_ELE', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'MAE101', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'PRF192', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'CEA201', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'CSI104', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'SSL101c', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'NWC203c', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'MAD101', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'OSG202', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'PRO192', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'SSG104', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'WED201c', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'JPD113', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'DBI202', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'CSD201', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'LAB211', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'PRJ301', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'SWE201c', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'MAS291', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'JPD123', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'IOT102', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'PRN212', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'ITE302c', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'SWP391', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'LMS231', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '1', 'CS113', 'SE18B02', '2021-2022'),
	 
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '2', 'ENT503', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '3', 'VOV114', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '4', 'VOV124', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '5', 'VOV134', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '2', 'OTP101', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '3', 'TMI_ELE', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '4', 'MAE101', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '5', 'PRF192', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '2', 'CEA201', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '3', 'CSI104', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '4', 'SSL101c', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '5', 'NWC203c', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '2', 'MAD101', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '3', 'OSG202', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '4', 'PRO192', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '5', 'SSG104', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '2', 'WED201c', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '3', 'JPD113', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '4', 'DBI202', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '5', 'CSD201', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '2', 'LAB211', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '3', 'PRJ301', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '4', 'SWE201c', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '5', 'MAS291', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '2', 'JPD123', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '3', 'IOT102', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '4', 'PRN212', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '5', 'ITE302c', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '2', 'SWP391', 'SE18B02', '2021-2022'),
    ('Summer', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '3', 'LMS231', 'SE18B02', '2021-2022'),
    ('Fall', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '4', 'SWR302', 'SE18B02', '2021-2022'),
    ('Spring', 8.5, 9.0, 8.0, 9.5, 9.0, 8.5, 8.0, 8.8, '5', 'SWT301', 'SE18B02', '2021-2022');

-- Insert table Assign

INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV001', N'ENT503', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV001', N'ENT503', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV001', N'ENT503', N'SE18B03', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV001', N'ENT503', N'SE18B04', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV001', N'ENT503', N'SE18B05', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV001', N'ENT503', N'SE18B06', N'2023-2024')

INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV002', N'VOV114', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV002', N'VOV114', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV002', N'VOV114', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV002', N'VOV114', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV002', N'VOV114', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV002', N'VOV114', N'SE18B06', N'2021-2022')

INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV003', N'VOV124', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV003', N'VOV124', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV003', N'VOV124', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV003', N'VOV124', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV003', N'VOV124', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV003', N'VOV124', N'SE18B06', N'2021-2022')

INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV004', N'VOV134', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV004', N'VOV134', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV004', N'VOV134', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV004', N'VOV134', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV004', N'VOV134', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV004', N'VOV134', N'SE18B06', N'2021-2022')

INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV005', N'TMI_ELE', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV005', N'TMI_ELE', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV005', N'TMI_ELE', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV005', N'TMI_ELE', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV005', N'TMI_ELE', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV005', N'TMI_ELE', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV006', N'MAE101', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV006', N'MAE101', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV006', N'MAE101', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV006', N'MAE101', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV006', N'MAE101', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV006', N'MAE101', N'SE18B06', N'2021-2022')

INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV007', N'PRF192', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV007', N'PRF192', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV007', N'PRF192', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV007', N'PRF192', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV007', N'PRF192', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV007', N'PRF192', N'SE18B06', N'2021-2022')

INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV008', N'CEA201', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV008', N'CEA201', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV008', N'CEA201', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV008', N'CEA201', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV008', N'CEA201', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV008', N'CEA201', N'SE18B06', N'2021-2022')

INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV009', N'CSI104', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV009', N'CSI104', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV009', N'CSI104', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV009', N'CSI104', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV009', N'CSI104', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV009', N'CSI104', N'SE18B06', N'2021-2022')

INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0010', N'SSL101c', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0010', N'SSL101c', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0010', N'SSL101c', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0010', N'SSL101c', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0010', N'SSL101c', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0010', N'SSL101c', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0011', N'NWC203c', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0011', N'NWC203c', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0011', N'NWC203c', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0011', N'NWC203c', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0011', N'NWC203c', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0011', N'NWC203c', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0012', N'MAD101', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0012', N'MAD101', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0012', N'MAD101', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0012', N'MAD101', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0012', N'MAD101', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0012', N'MAD101', N'SE18B06', N'2021-2022')

INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0013', N'OSG202', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0013', N'OSG202', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0013', N'OSG202', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0013', N'OSG202', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0013', N'OSG202', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0013', N'OSG202', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0014', N'PRO192', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0014', N'PRO192', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0014', N'PRO192', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0014', N'PRO192', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0014', N'PRO192', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0014', N'PRO192', N'SE18B06', N'2021-2022')

INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0015', N'SSG104', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0015', N'SSG104', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0015', N'SSG104', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0015', N'SSG104', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0015', N'SSG104', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0015', N'SSG104', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0016', N'WED201c', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0016', N'WED201c', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0016', N'WED201c', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0016', N'WED201c', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0016', N'WED201c', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0016', N'WED201c', N'SE18B06', N'2021-2022')



INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0017', N'JPD113', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0017', N'JPD113', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0017', N'JPD113', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0017', N'JPD113', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0017', N'JPD113', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0017', N'JPD113', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0018', N'DBI202', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0018', N'DBI202', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0018', N'DBI202', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0018', N'DBI202', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0018', N'DBI202', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0018', N'DBI202', N'SE18B06', N'2021-2022')

INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0019', N'CSD201', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0019', N'CSD201', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0019', N'CSD201', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0019', N'CSD201', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0019', N'CSD201', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0019', N'CSD201', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0020', N'LAB211', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0020', N'LAB211', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0020', N'LAB211', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0020', N'LAB211', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0020', N'LAB211', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0020', N'LAB211', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0021', N'PRJ301', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0021', N'PRJ301', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0021', N'PRJ301', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0021', N'PRJ301', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0021', N'PRJ301', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0021', N'PRJ301', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0022', N'SWE201c', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0022', N'SWE201c', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0022', N'SWE201c', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0022', N'SWE201c', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0022', N'SWE201c', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0022', N'SWE201c', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0023', N'MAS291', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0023', N'MAS291', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0023', N'MAS291', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0023', N'MAS291', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0023', N'MAS291', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0023', N'MAS291', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0024', N'JPD123', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0024', N'JPD123', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0024', N'JPD123', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0024', N'JPD123', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0024', N'JPD123', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0024', N'JPD123', N'SE18B06', N'2021-2022')

INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0025', N'IOT102', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0025', N'IOT102', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0025', N'IOT102', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0025', N'IOT102', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0025', N'IOT102', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0025', N'IOT102', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0026', N'PRN212', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0026', N'PRN212', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0026', N'PRN212', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0026', N'PRN212', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0026', N'PRN212', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0026', N'PRN212', N'SE18B06', N'2021-2022')

INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0027', N'ITE302c', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0027', N'ITE302c', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0027', N'ITE302c', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0027', N'ITE302c', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0027', N'ITE302c', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0027', N'ITE302c', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0028', N'SWP391', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0028', N'SWP391', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0028', N'SWP391', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0028', N'SWP391', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0028', N'SWP391', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0028', N'SWP391', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0029', N'SWR302', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0029', N'SWR302', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0029', N'SWR302', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0029', N'SWR302', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0029', N'SWR302', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0029', N'SWR302', N'SE18B06', N'2021-2022')


INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0030', N'SWT301', N'SE18B01', N'2021-2022')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0030', N'SWT301', N'SE18B02', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0030', N'SWT301', N'SE18B03', N'2022-2023')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0030', N'SWT301', N'SE18B04', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0030', N'SWT301', N'SE18B05', N'2023-2024')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV0030', N'SWT301', N'SE18B06', N'2021-2022')




-- Insert table Subject
INSERT INTO [dbo].[Subject]([IDSubject] ,[NameSubject] ) VALUES
('ENT503', 'Summit2'),
('VOV114', 'Vovinam 1'), 
('VOV124', 'Vovinam 2'),
('VOV134', 'Vovinam 3'),
('OTP101', 'Orientation and General Training Program'),
('TMI_ELE', 'Traditional musical instrument	'),
('MAE101', 'Mathematics for Engineering'),
('PRF192', 'Programming Fundamentals'),
('CEA201', 'Computer Organization and Architecture'),
('CSI104', 'Connecting to Computer Science'),
('SSL101c', 'Academic Skills for University Success'),
('NWC203c', 'Computer Networking'),
('MAD101', 'Discrete mathematics'),
('OSG202', 'Operating System'),
('PRO192', 'Object-Oriented Programming'),
('SSG104', 'Communication and In-Group Working Skills'),
('WED201c', 'WEB DESIGN'),
('JPD113', 'Japanese Elementary (Part 1/4)'),
('DBI202', 'Database Systems'),
('CSD201', 'Data Structure and Algorithm'),
('LAB211', 'OOP with Java'),
('PRJ301', 'Java Web Application Development'),
('SWE201c', 'Introduction to Software Engineering'),
('MAS291', 'Statistics & Probability'),
('JPD123', 'Japanese Elementary 1-A1.2'),
('IOT102', 'Internet of things'),
('PRN212', 'Basis Cross-Platform Application Programming With .NET'),
('ITE302c', 'Ethics in IT'),
('SWP391', 'Software development project'),
('SWR302', 'Software Requirement'),
('SWT301', 'Software Testing');
GO


-- Insert table Rule

INSERT INTO [dbo].[Rule] ([minAge], [maxAge], [passScore], [totalStudent]) VALUES
(18, 22, 5.0, NULL)
 



-- CONSTRAINT

ALTER TABLE [dbo].[Assign]  WITH CHECK ADD  CONSTRAINT [FK_Assign_Class] FOREIGN KEY([nameClass], [schoolYear])
REFERENCES [dbo].[Class] ([nameClass], [schoolYear])
GO

ALTER TABLE [dbo].[Assign] CHECK CONSTRAINT [FK_Assign_Class]
GO

ALTER TABLE [dbo].[Assign]  WITH CHECK ADD  CONSTRAINT [FK_Assign_Teacher_Subject] FOREIGN KEY([IDTeacher], [IDSubject])
REFERENCES [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject])
GO

ALTER TABLE [dbo].[Assign] CHECK CONSTRAINT [FK_Assign_Teacher_Subject]
GO

ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Teacher] FOREIGN KEY([IDTeacher])
REFERENCES [dbo].[Teacher] ([IDTeacher])
GO

ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Teacher]
GO

ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [FK_Mark_Student_Class] FOREIGN KEY([IDStudent], [nameClass], [schoolYear])
REFERENCES [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear])
GO

ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [FK_Mark_Student_Class]
GO

ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [FK_Mark_Subject] FOREIGN KEY([IDSubject])
REFERENCES [dbo].[Subject] ([IDSubject])
GO

ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [FK_Mark_Subject]
GO

ALTER TABLE [dbo].[Student_Class]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class_Class] FOREIGN KEY([nameClass], [schoolYear])
REFERENCES [dbo].[Class] ([nameClass], [schoolYear])
GO

ALTER TABLE [dbo].[Student_Class] CHECK CONSTRAINT [FK_Student_Class_Class]
GO

ALTER TABLE [dbo].[Student_Class]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class_Student] FOREIGN KEY([IDStudent])
REFERENCES [dbo].[Student] ([IDStudent])
GO

ALTER TABLE [dbo].[Student_Class] CHECK CONSTRAINT [FK_Student_Class_Student]
GO

ALTER TABLE [dbo].[Teacher_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject_Subject] FOREIGN KEY([IDSubject])
REFERENCES [dbo].[Subject] ([IDSubject])
GO

ALTER TABLE [dbo].[Teacher_Subject] CHECK CONSTRAINT [FK_Teacher_Subject_Subject]
GO

ALTER TABLE [dbo].[Teacher_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject_Teacher] FOREIGN KEY([IDTeacher])
REFERENCES [dbo].[Teacher] ([IDTeacher])
GO

ALTER TABLE [dbo].[Teacher_Subject] CHECK CONSTRAINT [FK_Teacher_Subject_Teacher]
GO

ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CHECK_GENDER_STUDENT] CHECK  (([Gender]='Female' OR [Gender]='Male'))
GO

ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CHECK_GENDER_STUDENT]
GO

ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [CHECK_GENDER_TEACHER] CHECK  (([Gender]='Female' OR [Gender]='Male'))
GO

ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [CHECK_GENDER_TEACHER]
GO

USE [master]
GO

ALTER DATABASE  PRN212_ManageStudents SET  READ_WRITE 
GO

USE PRN212_ManageStudents
GO



SELECT * FROM dbo.Admin
SELECT * FROM dbo.Subject

DROP DATABASE PRN212_ManageStudents
