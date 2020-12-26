-- select * from MESSAGE
-- SP_WHO
-- KILL 54
-- DROP DATABASE GuitarShopDB
-- create database GuitarShopDB;
USE [GuitarShopDB]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/26/2020 4:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/26/2020 4:57:09 PM ******/
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
/****** Object:  Table [dbo].[DiscountCode]    Script Date: 12/26/2020 4:57:09 PM ******/
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
/****** Object:  Table [dbo].[hibernate_sequence]    Script Date: 12/26/2020 4:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hibernate_sequence](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 12/26/2020 4:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_time] [date] NULL,
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
 CONSTRAINT [PK__INVOICE__3214EC075514B981] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceDetail]    Script Date: 12/26/2020 4:57:09 PM ******/
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
/****** Object:  Table [dbo].[InvoiceStatus]    Script Date: 12/26/2020 4:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 12/26/2020 4:57:09 PM ******/
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
/****** Object:  Table [dbo].[MESSAGE]    Script Date: 12/26/2020 4:57:09 PM ******/
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
	[product_id] [int] NULL,
  [created_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 12/26/2020 4:57:09 PM ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 12/26/2020 4:57:09 PM ******/
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
/****** Object:  Table [dbo].[ProductImage]    Script Date: 12/26/2020 4:57:09 PM ******/
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
/****** Object:  Table [dbo].[Rate]    Script Date: 12/26/2020 4:57:09 PM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 12/26/2020 4:57:09 PM ******/
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
/****** Object:  Table [dbo].[UserRole]    Script Date: 12/26/2020 4:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[User_Id] [int] NOT NULL,
	[Role_Id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 12/26/2020 4:57:09 PM ******/
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
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[DiscountCode] ON 

INSERT [dbo].[DiscountCode] ([id], [code], [discount_amount], [end_date], [start_date]) VALUES (6, N'NOEL2020', 5, CAST(N'2020-12-30T00:00:00.000' AS DateTime), CAST(N'2020-12-18T00:00:00.000' AS DateTime))
INSERT [dbo].[DiscountCode] ([id], [code], [discount_amount], [end_date], [start_date]) VALUES (7, N'NEWYEAR2021', 10, CAST(N'2020-12-30T00:00:00.000' AS DateTime), CAST(N'2020-12-18T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DiscountCode] OFF
GO
INSERT [dbo].[hibernate_sequence] ([next_val]) VALUES (CAST(1 AS Numeric(19, 0)))
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([id], [created_time], [customer_address], [customer_email], [customer_message], [customer_name], [customer_phone], [discount_id], [person_id], [payment_method], [status], [total]) VALUES (23, CAST(N'2020-12-23' AS Date), N'529 Bình Giã, F. Thắng Nhất, TP. Vũng Tàu', N'ngothanhbinh261@gmail.com', N'', N'Ngô Thanh Bình', N'0335 056 697', 6, 22, N'COD', 2, 1890500)
INSERT [dbo].[Invoice] ([id], [created_time], [customer_address], [customer_email], [customer_message], [customer_name], [customer_phone], [discount_id], [person_id], [payment_method], [status], [total]) VALUES (25, CAST(N'2020-12-26' AS Date), N'529 Bình Giã, F. Thắng Nhất, TP. Vũng Tàu', N'ngothanhbinh261@gmail.com', N'Shipper gọi điện 30'' trước khi giao.', N'Ngô Thanh Bình', N'0335056697', 6, 22, N'COD', 2, 7625270)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
INSERT [dbo].[InvoiceDetail] ([invoice_id], [product_id], [quantity]) VALUES (23, 25, 1)
INSERT [dbo].[InvoiceDetail] ([invoice_id], [product_id], [quantity]) VALUES (25, 21, 2)
GO
SET IDENTITY_INSERT [dbo].[InvoiceStatus] ON 

INSERT [dbo].[InvoiceStatus] ([id], [status]) VALUES (1, N'Pending')
INSERT [dbo].[InvoiceStatus] ([id], [status]) VALUES (2, N'Shipping')
INSERT [dbo].[InvoiceStatus] ([id], [status]) VALUES (3, N'Completed')
INSERT [dbo].[InvoiceStatus] ([id], [status]) VALUES (4, N'Cancelled')
SET IDENTITY_INSERT [dbo].[InvoiceStatus] OFF
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
INSERT [dbo].[Person] ([User_Id], [Address], [Email], [Name], [Password], [Phone], [enable], [verificationCode], [reset_password_token]) VALUES (22, N'529 Bình Giã, F. Thắng Nhất, TP. Vũng Tàu', N'ngothanhbinh261@gmail.com', N'Ngô Thanh Bình ASD', N'$2a$10$kKjDF23yIxZZEloqVVtXION1AJRk40zRqX7kjzJSB.L/QvP1ilhQi', N'0335056697', 1, N'BuU3Ns3Ucd3ROScx9GpCdicSkkh4tqXQelO80HJEpVPVKaCWtPnyPnpolHpkVrCl', N'8BWKRrFgMGqru3TnsZSzVN4qPrvusX')
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
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (75, NULL, NULL, N'Dan guitar', 0, 1, 1, N'guitar.jpg', N'Ngô Thanh Bình', 123, N'asdadas', NULL, 12)
INSERT [dbo].[Product] ([id], [average_rate], [created_time], [description], [discount_amount], [category_id], [manufacturer_id], [main_img], [name], [price], [style], [warranty], [quantity]) VALUES (76, NULL, CAST(N'2020-12-25T16:12:16.677' AS DateTime), N'OK', 5, 1, 1, N'acoustic-guitar-isolated-over-white-background-8493625.jpg', N'Ngô Thanh Bình', 123, N'asdadas', NULL, 12)
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
INSERT [dbo].[UserRole] ([User_Id], [Role_Id]) VALUES (22, 1)
GO
/****** Object:  Index [InvoiceStatus_pk]    Script Date: 12/26/2020 4:57:09 PM ******/
ALTER TABLE [dbo].[InvoiceStatus] ADD  CONSTRAINT [InvoiceStatus_pk] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FKki42yw0rwekalwdwvxeduw35o] FOREIGN KEY([status])
REFERENCES [dbo].[InvoiceStatus] ([id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FKki42yw0rwekalwdwvxeduw35o]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FKa3mdqlwds7uq46eu2u4qi50xj] FOREIGN KEY([invoice_id])
REFERENCES [dbo].[Invoice] ([id])
ON DELETE CASCADE
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
