USE [GuitarShopDB]
GO
ALTER TABLE [dbo].[UserRole] DROP CONSTRAINT [FKn2dct5d4tljl2cm7x8huxsr39]
GO
ALTER TABLE [dbo].[UserRole] DROP CONSTRAINT [FK1gock2487832072it3421n4ai]
GO
ALTER TABLE [dbo].[Rate] DROP CONSTRAINT [FK6pq5j13s0clw2rmuonts1pr61]
GO
ALTER TABLE [dbo].[ProductImage] DROP CONSTRAINT [FK6ch4gkmymtkgrhncc35bhyrmf]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FKexqqeaksnmmku5py194ywp140]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FKcegp2ce7tblso6aysslutlmg9]
GO
ALTER TABLE [dbo].[InvoiceDetail] DROP CONSTRAINT [FKjn9jnuye5bhcqwejajyp7wsam]
GO
ALTER TABLE [dbo].[InvoiceDetail] DROP CONSTRAINT [FKa3mdqlwds7uq46eu2u4qi50xj]
GO
ALTER TABLE [dbo].[Invoice] DROP CONSTRAINT [FK12txwi2wgp2nlege4dk2tkp2s]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF__Product__quantit__1A9EF37A]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_discount_amount]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 12/19/2020 12:17:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Wishlist]') AND type in (N'U'))
DROP TABLE [dbo].[Wishlist]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 12/19/2020 12:17:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRole]') AND type in (N'U'))
DROP TABLE [dbo].[UserRole]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/19/2020 12:17:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 12/19/2020 12:17:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rate]') AND type in (N'U'))
DROP TABLE [dbo].[Rate]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 12/19/2020 12:17:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductImage]') AND type in (N'U'))
DROP TABLE [dbo].[ProductImage]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/19/2020 12:17:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 12/19/2020 12:17:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Person]') AND type in (N'U'))
DROP TABLE [dbo].[Person]
GO
/****** Object:  Table [dbo].[MESSAGE]    Script Date: 12/19/2020 12:17:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MESSAGE]') AND type in (N'U'))
DROP TABLE [dbo].[MESSAGE]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 12/19/2020 12:17:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Manufacturer]') AND type in (N'U'))
DROP TABLE [dbo].[Manufacturer]
GO
/****** Object:  Table [dbo].[InvoiceDetail]    Script Date: 12/19/2020 12:17:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvoiceDetail]') AND type in (N'U'))
DROP TABLE [dbo].[InvoiceDetail]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 12/19/2020 12:17:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoice]') AND type in (N'U'))
DROP TABLE [dbo].[Invoice]
GO
/****** Object:  Table [dbo].[hibernate_sequence]    Script Date: 12/19/2020 12:17:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hibernate_sequence]') AND type in (N'U'))
DROP TABLE [dbo].[hibernate_sequence]
GO
/****** Object:  Table [dbo].[DiscountCode]    Script Date: 12/19/2020 12:17:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DiscountCode]') AND type in (N'U'))
DROP TABLE [dbo].[DiscountCode]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/19/2020 12:17:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/19/2020 12:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[metadata] [nvarchar](50) NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountCode]    Script Date: 12/19/2020 12:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountCode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[discount_amount] [int] NULL,
	[end_date] [datetime] NULL,
	[start_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hibernate_sequence]    Script Date: 12/19/2020 12:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hibernate_sequence](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 12/19/2020 12:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_time] [datetime] NULL,
	[customer_address] [nvarchar](1255) NULL,
	[customer_email] [varchar](255) NULL,
	[customer_message] [nvarchar](1255) NULL,
	[customer_name] [nvarchar](255) NULL,
	[customer_phone] [varchar](20) NULL,
	[discount_id] [int] NULL,
	[person_id] [int] NULL,
	[payment_method] [nvarchar](255) NULL,
	[status] [int] NULL,
	[total] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceDetail]    Script Date: 12/19/2020 12:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetail](
	[invoice_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[invoice_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 12/19/2020 12:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MESSAGE]    Script Date: 12/19/2020 12:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MESSAGE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NULL,
	[Message_Content] [nvarchar](1000) NULL,
	[Name] [nvarchar](255) NULL,
	[Title] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 12/19/2020 12:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](1255) NULL,
	[Email] [varchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Password] [varchar](255) NULL,
	[Phone] [varchar](20) NULL,
	[enable] [tinyint] NULL,
	[verificationCode] [varchar](64) NULL,
	[reset_password_token] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/19/2020 12:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[average_rate] [float] NULL,
	[created_time] [datetime] NULL,
	[description] [nvarchar](1255) NULL,
	[discount_amount] [int] NULL,
	[category_id] [int] NULL,
	[manufacturer_id] [int] NULL,
	[main_img] [text] NULL,
	[name] [nvarchar](255) NULL,
	[price] [float] NULL,
	[style] [nvarchar](255) NULL,
	[warranty] [nvarchar](255) NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 12/19/2020 12:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[data] [text] NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 12/19/2020 12:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[star] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/19/2020 12:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Role_Id] [int] NOT NULL,
	[Role_Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 12/19/2020 12:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[User_Id] [int] NOT NULL,
	[Role_Id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 12/19/2020 12:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [metadata], [name]) VALUES (1, N'acoustic-guitars', N'Acoustic guitars')
INSERT [dbo].[Category] ([id], [metadata], [name]) VALUES (2, N'classic-guitars', N'Classic guitars A')
INSERT [dbo].[Category] ([id], [metadata], [name]) VALUES (3, N'guitars-with-eq', N'Guitars with EQ')
INSERT [dbo].[Category] ([id], [metadata], [name]) VALUES (61, N'other-categories', N'Khác')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[DiscountCode] ON 

INSERT [dbo].[DiscountCode] ([id], [code], [discount_amount], [end_date], [start_date]) VALUES (6, N'NOEL2020', 5, CAST(N'2020-12-30T00:00:00.000' AS DateTime), CAST(N'2020-12-19T00:00:00.000' AS DateTime))
INSERT [dbo].[DiscountCode] ([id], [code], [discount_amount], [end_date], [start_date]) VALUES (7, N'NEWYEAR2021', 10, CAST(N'2020-12-30T00:00:00.000' AS DateTime), CAST(N'2020-12-19T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DiscountCode] OFF
GO
INSERT [dbo].[hibernate_sequence] ([next_val]) VALUES (CAST(1 AS Numeric(19, 0)))
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([id], [country], [name]) VALUES (1, N'Tây Ban Nha', N'Admira')
INSERT [dbo].[Manufacturer] ([id], [country], [name]) VALUES (2, N'Italia', N'EKO')
INSERT [dbo].[Manufacturer] ([id], [country], [name]) VALUES (3, N'Trung Quốc', N'Epiphone')
INSERT [dbo].[Manufacturer] ([id], [country], [name]) VALUES (4, N'Hoa Kỳ', N'FENDER')
INSERT [dbo].[Manufacturer] ([id], [country], [name]) VALUES (5, N'Trung Quốc', N'MAGNA')
INSERT [dbo].[Manufacturer] ([id], [country], [name]) VALUES (6, N'Việt Nam', N'Mini')
INSERT [dbo].[Manufacturer] ([id], [country], [name]) VALUES (7, N'Việt Nam', N'Station')
INSERT [dbo].[Manufacturer] ([id], [country], [name]) VALUES (8, N'Trung Quốc', N'Yamaha')
INSERT [dbo].[Manufacturer] ([id], [country], [name]) VALUES (9, N'Không rõ', N'Others')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([User_Id], [Address], [Email], [Name], [Password], [Phone], [enable], [verificationCode], [reset_password_token]) VALUES (1, N'Tp. HCM', N'admin@gmail.com', N'Admin', N'$2a$10$//hPnL2LSgRlOqAKmdaFX.ti7db3S3KeHrJTI573hiaNEY0ZNl.Y.', N'', 1, NULL, NULL)
INSERT [dbo].[Person] ([User_Id], [Address], [Email], [Name], [Password], [Phone], [enable], [verificationCode], [reset_password_token]) VALUES (19, N'529 Bình Giã, F. Thắng Nhất, TP. Vũng Tàu', N'ngothanhbinh261@gmail.com', N'Ngô Thanh Bình', N'$2a$10$4S499kggGVo0WpgL0Tc6/uU45jwr5JRBBZTKeC4dnBHKQGSoMCfEy', N'0335 056 697', 1, N'M00rqaaxrVu8MWQmbCuHm14HrYHyr8sKTkeAml8pm17rSPUtQ9dqvtjunQv5ei2M', NULL)
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (1, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 7, N'img1.jfif', N'Guitar Acoustic STATION CC-269', 2690000, N'Dáng A, thùng khuyết tròn', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (2, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 5, N'img1.jfif', N'Guitar Acoustic MAGNA – M-91-NAT', 2790000, N'Dáng D, thùng đầy', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (3, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 9, 1, 8, N'img1.jfif', N'Guitar Acoustic Yamaha F310', 3500000, N'Dáng D, thùng đầy', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (4, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 6, 1, 7, N'img1.jfif', N'Guitar Acoustic Station CA-80', 8000000, N'Dáng A, thùng khuyết tròn', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (5, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 7, N'img1.jfif', N'Guitar Acoustic Station HD-199', 1990000, N'Dáng D, thùng khuyết', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (6, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 11, 1, 2, N'img1.jfif', N'Guitar Acoustic EKO-NXT 018', 3000000, N'Dáng OM', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (7, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 5, N'img1.jfif', N'Guitar Acoustic MAGNA – M-91C-NAT', 2790000, N'Dáng D, thùng khuyết', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (8, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 6, N'img1.jfif', N'Guitar Acoustic Mini Station BABY-GS-35', 3500000, N'Dáng OM', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (9, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 4, N'img1.jfif', N'Guitar Acoustic FENDER – FA-100', 2790000, N'Dáng D, thùng đầy', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (10, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 7, N'img1.jfif', N'Guitar Acoustic Station HD-119', 1190000, N'Dáng A, thùng khuyết tròn', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (11, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 7, N'img1.jfif', N'Guitar Acoustic Station HD-179', 1790000, N'Dáng A, thùng khuyết tròn', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (12, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 7, N'img1.jfif', N'Guitar Acoustic Station HD-199A', 1990000, N'Dáng A, thùng khuyết vừa', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (13, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 7, N'img1.jfif', N'Guitar Acoustic Station CC300A', 4800000, N'Dáng A, thùng khuyết tròn', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (14, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 11, 1, 2, N'img1.jfif', N'Guitar Acoustic EKO-NXT-D-Natural', 3000000, N'Dáng D, thùng đầy', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (15, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 3, N'img1.jfif', N'Guitar Acoustic Epiphone DR-100-Natural', 3190000, N'Dáng D, thùng đầy', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (16, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 7, N'img1.jfif', N'Guitar Acoustic Station MA-375', 3750000, N'Dáng A, thùng khuyết tròn', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (17, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 7, N'img1.jfif', N'Guitar Acoustic Station DC-45', 4500000, N'Dáng A, thùng khuyết tròn', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (18, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 20, 1, 7, N'img1.jfif', N'Guitar Acoustic Station MA-450L', 4690000, N'Dáng D, thùng đầy', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (19, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 20, 1, 7, N'img1.jfif', N'Guitar Acoustic Station MA-450CL', 4690000, N'Dáng D, thùng khuyết', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (20, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 7, N'img1.jfif', N'Guitar Acoustic Station MA-375-BD', 3750000, N'Dáng D, thùng khuyết', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (21, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 33, 1, 7, N'img1.jfif', N'Guitar Acoustic Station CA-550L-DC', 5990000, N'Dáng D, thùng khuyết', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (22, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 33, 1, 7, N'img1.jfif', N'Guitar Acoustic Station CA-550L', 5990000, N'Dáng D, thùng đầy', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (23, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 7, N'img1.jfif', N'Guitar Acoustic Station CC-48', 4800000, N'Dáng D, thùng khuyết', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (24, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 1, 3, N'img1.jfif', N'Guitar Acoustic Epiphone DR-100 – Vintage Sunbust', 3190000, N'Dáng D, thùng đầy', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (25, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 2, 7, N'img1.jfif', N'Guitar Classic Station C-199', 1990000, N'Dáng OM', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (26, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 22, 2, 1, N'img1.jfif', N'Guitar Classic Admira Malaga', 5500000, N'Dáng OM', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (27, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 2, 7, N'img1.jfif', N'Guitar Classic Station CL-375', 3750000, N'Dáng A, thùng khuyết vừa', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (28, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 2, 7, N'img1.jfif', N'Guitar Classic Station CL450', 5500000, N'Dáng A, thùng khuyết tròn', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (29, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 2, 7, N'img1.jfif', N'Guitar Classic Station C-350', 3500000, N'Dáng D, thùng đầy', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (30, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 2, 7, N'img1.jfif', N'Guitar Classic Station C-375', 3750000, N'Dáng D, thùng đầy', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (31, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 22, 2, 1, N'img1.jfif', N'Guitar Classic Admira Malaga CW', 5500000, N'Dáng OM', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (32, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 2, 7, N'img1.jfif', N'Guitar Station CL-199', 1990000, N'Dáng A, thùng khuyết tròn', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (33, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 0, 2, 7, N'img1.jfif', N'Guitar Classic Station CL-350', 3500000, N'Dáng D, thùng đầy', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (34, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 13, 3, 2, N'img1.jfif', N'Guitar Acoustic EKO NXT 018 EQ', 4200000, N'Dáng A, thùng khuyết vừa', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (35, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 13, 3, 2, N'img1.jfif', N'Guitar Acoustic EKO-EQ-Blue', 4200000, N'Dáng D, thùng khuyết', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (36, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 13, 3, 2, N'img1.jfif', N'Guitar Acoustic EKO-EQ-Black-A', 4200000, N'Dáng A, thùng khuyết tròn', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (37, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 13, 3, 2, N'img1.jfif', N'Guitar Acoustic EKO D CW EQ Natural', 4200000, N'Dáng D, thùng khuyết', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (38, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 13, 3, 2, N'img1.jfif', N'Guitar Acoustic EKO-EQ-Blue-A', 4200000, N'Dáng A, thùng khuyết tròn', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (39, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 13, 3, 2, N'img1.jfif', N'Guitar Acoustic EKO-EQ-Red', 4200000, N'Dáng D, thùng khuyết', N'1 năm', 10)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (40, 0, CAST(N'2019-03-26T21:45:00.000' AS DateTime), N'Get reports for absenteeism, salaries, turnover rate on your company and much more in just one click. Yolohr will automatically generate all these reports and graphs.', 22, 3, 2, N'img1.jfif', N'Guitar Acoustic EKO ONE 018 CW EQ Natural', 5500000, N'Dáng A, thùng khuyết vừa', N'1 năm', 10)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImage] ON 

INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (1, N'img2.jfif', 1)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (2, N'img2.jfif', 2)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (3, N'img2.jfif', 3)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (4, N'img2.jfif', 4)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (5, N'img2.jfif', 5)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (6, N'img2.jfif', 6)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (7, N'img2.jfif', 7)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (8, N'img2.jfif', 8)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (9, N'img2.jfif', 9)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (10, N'img2.jfif', 10)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (11, N'img2.jfif', 11)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (12, N'img2.jfif', 12)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (13, N'img2.jfif', 13)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (14, N'img2.jfif', 14)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (15, N'img2.jfif', 15)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (16, N'img2.jfif', 16)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (17, N'img2.jfif', 17)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (18, N'img2.jfif', 18)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (19, N'img2.jfif', 19)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (20, N'img2.jfif', 20)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (21, N'img2.jfif', 21)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (22, N'img2.jfif', 22)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (23, N'img2.jfif', 23)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (24, N'img2.jfif', 24)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (25, N'img2.jfif', 25)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (26, N'img2.jfif', 26)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (27, N'img2.jfif', 27)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (28, N'img2.jfif', 28)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (29, N'img2.jfif', 29)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (30, N'img2.jfif', 30)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (31, N'img2.jfif', 31)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (32, N'img2.jfif', 32)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (33, N'img2.jfif', 33)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (34, N'img2.jfif', 34)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (35, N'img2.jfif', 35)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (36, N'img2.jfif', 36)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (37, N'img2.jfif', 37)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (38, N'img2.jfif', 38)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (39, N'img2.jfif', 39)
INSERT [dbo].[ProductImage] ([id], [data], [product_id]) VALUES (40, N'img2.jfif', 40)
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[Rate] ON 

INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (1, 1, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (2, 1, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (3, 1, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (4, 1, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (5, 1, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (6, 2, 3)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (7, 2, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (8, 2, 3)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (9, 2, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (10, 3, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (11, 3, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (12, 3, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (13, 3, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (14, 3, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (15, 30, 3)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (16, 30, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (17, 30, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (18, 31, 3)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (19, 31, 3)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (20, 38, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (21, 38, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (22, 38, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (23, 38, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (24, 38, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (25, 21, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (26, 21, 2)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (27, 21, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (28, 21, 3)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (29, 21, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (30, 21, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (31, 21, 3)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (32, 21, 1)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (33, 21, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (34, 21, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (35, 21, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (36, 32, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (37, 32, 3)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (38, 32, 2)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (39, 32, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (40, 21, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (41, 21, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (42, 21, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (43, 21, 3)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (44, 21, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (45, 21, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (46, 21, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (47, 2, 3)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (48, 2, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (49, 2, 3)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (50, 2, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (51, 2, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (52, 2, 4)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (53, 3, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (54, 26, 5)
INSERT [dbo].[Rate] ([id], [product_id], [star]) VALUES (55, 26, 3)
SET IDENTITY_INSERT [dbo].[Rate] OFF
GO
INSERT [dbo].[Role] ([Role_Id], [Role_Name]) VALUES (1, N'user')
INSERT [dbo].[Role] ([Role_Id], [Role_Name]) VALUES (2, N'admin')
GO
INSERT [dbo].[UserRole] ([User_Id], [Role_Id]) VALUES (1, 2)
INSERT [dbo].[UserRole] ([User_Id], [Role_Id]) VALUES (19, 1)
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_discount_amount]  DEFAULT ((0)) FOR [discount_amount]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [quantity]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK12txwi2wgp2nlege4dk2tkp2s] FOREIGN KEY([discount_id])
REFERENCES [dbo].[DiscountCode] ([id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK12txwi2wgp2nlege4dk2tkp2s]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FKa3mdqlwds7uq46eu2u4qi50xj] FOREIGN KEY([invoice_id])
REFERENCES [dbo].[Invoice] ([id])
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FKa3mdqlwds7uq46eu2u4qi50xj]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FKjn9jnuye5bhcqwejajyp7wsam] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FKjn9jnuye5bhcqwejajyp7wsam]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FKcegp2ce7tblso6aysslutlmg9] FOREIGN KEY([manufacturer_id])
REFERENCES [dbo].[Manufacturer] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FKcegp2ce7tblso6aysslutlmg9]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FKexqqeaksnmmku5py194ywp140] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FKexqqeaksnmmku5py194ywp140]
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD  CONSTRAINT [FK6ch4gkmymtkgrhncc35bhyrmf] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[ProductImage] CHECK CONSTRAINT [FK6ch4gkmymtkgrhncc35bhyrmf]
GO
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD  CONSTRAINT [FK6pq5j13s0clw2rmuonts1pr61] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [FK6pq5j13s0clw2rmuonts1pr61]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK1gock2487832072it3421n4ai] FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Role] ([Role_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK1gock2487832072it3421n4ai]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FKn2dct5d4tljl2cm7x8huxsr39] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Person] ([User_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FKn2dct5d4tljl2cm7x8huxsr39]
GO
