USE [master]
GO

CREATE DATABASE [ContactsDB]
GO

USE [ContactsDB]
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[CountryID] [int] NOT NULL,
	[ImagePath] [nvarchar](500) NULL,
 CONSTRAINT [PK__Contacts__5C6625BBE2F19656] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 7/31/2024 1:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](3) NULL,
	[PhoneCode] [nvarchar](3) NULL,
 CONSTRAINT [PK__Countrie__10D160BFDBD6933F] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactID], [FirstName], [LastName], [Email], [Phone], [Address], [DateOfBirth], [CountryID], [ImagePath]) VALUES (2, N'Ali', N'Salem2', N'Khaled22@gmail.com', N'08277722222', N'ADrees32222', CAST(N'2023-02-12T15:37:26.000' AS DateTime), 1, NULL)
INSERT [dbo].[Contacts] ([ContactID], [FirstName], [LastName], [Email], [Phone], [Address], [DateOfBirth], [CountryID], [ImagePath]) VALUES (5, N'Maha', N'Aram', N'Maha@g.com', N'23499323', N'Amman Jordan Building 10', CAST(N'2023-06-04T13:38:53.133' AS DateTime), 1, NULL)
INSERT [dbo].[Contacts] ([ContactID], [FirstName], [LastName], [Email], [Phone], [Address], [DateOfBirth], [CountryID], [ImagePath]) VALUES (6, N'Omar', N'Jamal', N'Omar@g.com', N'2384847', N'buidling 33', CAST(N'2023-06-04T13:42:22.030' AS DateTime), 1, NULL)
INSERT [dbo].[Contacts] ([ContactID], [FirstName], [LastName], [Email], [Phone], [Address], [DateOfBirth], [CountryID], [ImagePath]) VALUES (7, N'Maher', N'Mazen', N'maher@c.om', N'234234', N'buidling 103', CAST(N'2023-06-04T13:45:04.537' AS DateTime), 1, NULL)
INSERT [dbo].[Contacts] ([ContactID], [FirstName], [LastName], [Email], [Phone], [Address], [DateOfBirth], [CountryID], [ImagePath]) VALUES (15, N'Fadi', N'Maher', N'A@a.com', N'010010', N'address1', CAST(N'1977-11-06T10:30:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[Contacts] ([ContactID], [FirstName], [LastName], [Email], [Phone], [Address], [DateOfBirth], [CountryID], [ImagePath]) VALUES (1015, N'Ali', N'Maher', N'A@a.com', N'01003310', N'address2', CAST(N'1997-11-06T10:30:00.000' AS DateTime), 3, NULL)
INSERT [dbo].[Contacts] ([ContactID], [FirstName], [LastName], [Email], [Phone], [Address], [DateOfBirth], [CountryID], [ImagePath]) VALUES (3016, N'Shady', N'Ahmed', N'shady@gjdj.hd', N'5342561', N'address3', CAST(N'2024-07-16T12:42:53.000' AS DateTime), 12, NULL)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([CountryID], [CountryName], [Code], [PhoneCode]) VALUES (1, N'United States', N'UST', N'501')
INSERT [dbo].[Countries] ([CountryID], [CountryName], [Code], [PhoneCode]) VALUES (2, N'United Kingdom', N'UTK', N'321')
INSERT [dbo].[Countries] ([CountryID], [CountryName], [Code], [PhoneCode]) VALUES (3, N'Canada', N'CDN', N'132')
INSERT [dbo].[Countries] ([CountryID], [CountryName], [Code], [PhoneCode]) VALUES (4, N'Australia', NULL, NULL)
INSERT [dbo].[Countries] ([CountryID], [CountryName], [Code], [PhoneCode]) VALUES (5, N'Germany', NULL, NULL)
INSERT [dbo].[Countries] ([CountryID], [CountryName], [Code], [PhoneCode]) VALUES (6, N'Egypt', NULL, NULL)
INSERT [dbo].[Countries] ([CountryID], [CountryName], [Code], [PhoneCode]) VALUES (8, N'Syria', N'Syr', N'112')
INSERT [dbo].[Countries] ([CountryID], [CountryName], [Code], [PhoneCode]) VALUES (12, N'Jordan', N'Jor', N'110')
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK__Contacts__Countr__398D8EEE] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([CountryID])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK__Contacts__Countr__398D8EEE]

