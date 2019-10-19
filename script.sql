USE [BakeryShop]
GO
/****** Object:  User [uyenhtnde130040]    Script Date: 10/19/2019 8:59:35 AM ******/
CREATE USER [uyenhtnde130040] FOR LOGIN [uyenhtnde130040] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/19/2019 8:59:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[C_id] [int] IDENTITY(1,1) NOT NULL,
	[C_username] [nvarchar](50) NOT NULL,
	[C_password] [nvarchar](50) NOT NULL,
	[C_name] [nvarchar](50) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[age] [int] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](10) NOT NULL,
	[gender] [nvarchar](5) NOT NULL,
	[role] [int] NOT NULL,
	[status] [int] NOT NULL,
	[boom] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[C_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 10/19/2019 8:59:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[F_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[feedback] [nvarchar](500) NOT NULL,
	[star] [nvarchar](3) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackCheck]    Script Date: 10/19/2019 8:59:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackCheck](
	[F_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[feedback] [nvarchar](500) NOT NULL,
	[star] [nvarchar](3) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/19/2019 8:59:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Or_id] [int] IDENTITY(1,1) NOT NULL,
	[C_id] [int] NOT NULL,
	[total] [int] NOT NULL,
	[phone] [nvarchar](10) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[status] [int] NOT NULL,
	[date] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Or_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pro_Order]    Script Date: 10/19/2019 8:59:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pro_Order](
	[Or_id] [int] NOT NULL,
	[P_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[total] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/19/2019 8:59:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[P_id] [int] IDENTITY(1,1) NOT NULL,
	[P_name] [nvarchar](50) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[stock] [int] NOT NULL,
	[description] [nvarchar](2000) NOT NULL,
	[image] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[P_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([C_id], [C_username], [C_password], [C_name], [address], [age], [email], [phone], [gender], [role], [status], [boom]) VALUES (7, N'thaouyen', N'12345678', N'Thảo Uyên', N'Hà Huy Tập, Đà Nẵng', 21, N'thaouyen@gmail.com', N'0123456789', N'Nữ', 2, 0, 0)
INSERT [dbo].[Customer] ([C_id], [C_username], [C_password], [C_name], [address], [age], [email], [phone], [gender], [role], [status], [boom]) VALUES (9, N'huyvu', N'11111111', N'Huy Vũ', N'Điện Bàn, Quảng Nam', 21, N'huyvu@gmail.com', N'0112345678', N'Nam', 2, 0, 0)
INSERT [dbo].[Customer] ([C_id], [C_username], [C_password], [C_name], [address], [age], [email], [phone], [gender], [role], [status], [boom]) VALUES (10, N'hailong', N'12345678', N'Hải Long', N'Đà Nẵng', 21, N'hailong@gmail.com', N'0987654321', N'Nam', 1, 0, 0)
INSERT [dbo].[Customer] ([C_id], [C_username], [C_password], [C_name], [address], [age], [email], [phone], [gender], [role], [status], [boom]) VALUES (11, N'nhatuyen_72', N'12345678', N'Nhật Uyên', N'Quảng Nam', 21, N'nhatuyen@gmail.com', N'0968603458', N'Nữ', 1, 0, 0)
INSERT [dbo].[Customer] ([C_id], [C_username], [C_password], [C_name], [address], [age], [email], [phone], [gender], [role], [status], [boom]) VALUES (12, N'admin', N'admin', N'Admin', N'Chủ Shop', 22, N'admin@gmail.com', N'0789456123', N'Nữ', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[FeedbackCheck] ON 

INSERT [dbo].[FeedbackCheck] ([F_id], [first_name], [last_name], [email], [feedback], [star]) VALUES (8, N'Phạm', N'Như Hậu', N'nhuhau@gmail.com', N'5 starssssssss !!! Perfect, Goodddddddđ', N'5')
INSERT [dbo].[FeedbackCheck] ([F_id], [first_name], [last_name], [email], [feedback], [star]) VALUES (13, N'Nhat', N'Uyen', N'uyen@gmail.com', N'Proooo', N'5')
INSERT [dbo].[FeedbackCheck] ([F_id], [first_name], [last_name], [email], [feedback], [star]) VALUES (14, N'Thaoo', N'Uyen', N'tuyen@gmail.com', N'Ngon', N'5')
INSERT [dbo].[FeedbackCheck] ([F_id], [first_name], [last_name], [email], [feedback], [star]) VALUES (9, N'Long', N'Trương', N'hailong@gmail.com', N'Xịn', N'5')
INSERT [dbo].[FeedbackCheck] ([F_id], [first_name], [last_name], [email], [feedback], [star]) VALUES (11, N'Nhat', N'Uyen', N'uyen@gmail.com', N'Proooo', N'5')
INSERT [dbo].[FeedbackCheck] ([F_id], [first_name], [last_name], [email], [feedback], [star]) VALUES (12, N'Thaoo', N'Uyen', N'tuyen@gmail.com', N'Ngon', N'5')
INSERT [dbo].[FeedbackCheck] ([F_id], [first_name], [last_name], [email], [feedback], [star]) VALUES (15, N'Long', N'Trương', N'hailong@gmail.com', N'Xịn', N'5')
SET IDENTITY_INSERT [dbo].[FeedbackCheck] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__10A1769D7398E899]    Script Date: 10/19/2019 8:59:35 AM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[C_username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__AB6E61643896F360]    Script Date: 10/19/2019 8:59:35 AM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__B43B145F22568973]    Script Date: 10/19/2019 8:59:35 AM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([C_id])
REFERENCES [dbo].[Customer] ([C_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Pro_Order]  WITH CHECK ADD  CONSTRAINT [FK_Pro_Order_Order] FOREIGN KEY([Or_id])
REFERENCES [dbo].[Order] ([Or_id])
GO
ALTER TABLE [dbo].[Pro_Order] CHECK CONSTRAINT [FK_Pro_Order_Order]
GO
ALTER TABLE [dbo].[Pro_Order]  WITH CHECK ADD  CONSTRAINT [FK_Pro_Order_Product] FOREIGN KEY([P_id])
REFERENCES [dbo].[Product] ([P_id])
GO
ALTER TABLE [dbo].[Pro_Order] CHECK CONSTRAINT [FK_Pro_Order_Product]
GO
