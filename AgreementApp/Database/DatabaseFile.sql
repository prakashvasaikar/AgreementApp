USE [PK_2022_DB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/7/2023 8:11:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/7/2023 8:11:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/7/2023 8:11:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/7/2023 8:11:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/7/2023 8:11:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/7/2023 8:11:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/7/2023 8:11:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/7/2023 8:11:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAgreementDetail]    Script Date: 6/7/2023 8:11:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAgreementDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[refID_ProductGroupMaster] [int] NULL,
	[refID_ProductMaster] [int] NULL,
	[EffectiveDate] [datetime] NULL,
	[ExpirationDate] [datetime] NULL,
	[ProductPrice] [decimal](18, 2) NULL,
	[NewPrice] [decimal](18, 2) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblAgreementDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductGroupMaster]    Script Date: 6/7/2023 8:11:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductGroupMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupDescription] [nvarchar](100) NULL,
	[GroupCode] [varchar](20) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_ProductGroupMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductMaster]    Script Date: 6/7/2023 8:11:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[refID_ProductGroupMaster] [int] NULL,
	[ProductDescription] [nvarchar](100) NULL,
	[ProductNumber] [nvarchar](20) NULL,
	[Price] [decimal](18, 2) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK__ProductM__3214EC07D8C835E4] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230604084132_test1', N'5.0.17')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'00169ea0-b698-4d08-8428-aef66755766d', N'rahul123@gmail.com', N'RAHUL123@GMAIL.COM', N'rahul123@gmail.com', N'RAHUL123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEI9vzjLqylJd9edVyfl+p9UIJr0HEDvUPc7Xm2h/8lEv4v85LEixQMwLsIifRn9qZw==', N'SETGRJNAXE73JZMCNP65TRQA5JK2H433', N'9af2a35d-90f0-457c-9ca6-ccb6d3dd0388', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'845ddd09-71a8-4ec3-b223-ec5816d2cdcb', N'prakashvasaikar6595@gmail.com', N'PRAKASHVASAIKAR6595@GMAIL.COM', N'prakashvasaikar6595@gmail.com', N'PRAKASHVASAIKAR6595@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJQghD16pq2oRr4eSfzaHG5fhSj/nkZH2LqMOVGHv7t4ZqGCfS6QadiAYcJW4gZELg==', N'ZLCWFBNY2YZKH2LBTDZ3JTQCDLRUP5PJ', N'd2f5a6f6-137f-478d-ad2c-1048d6627df7', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cf86263c-420d-47bc-b87f-8212f9e54af6', N'sprakashvasaikar@gmail.com', N'SPRAKASHVASAIKAR@GMAIL.COM', N'sprakashvasaikar@gmail.com', N'SPRAKASHVASAIKAR@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEfi6lOQYCfo4Z1gWlGziHnoRU4MT3a7p3E1lt+Q+Yvfw4+/ftlFxY8OPzXynk0mrA==', N'GN5RGVBAUHZYVYJYNHFR4EQCP2NDYLS5', N'39707f60-1afe-4da5-a4de-2629c727ee9c', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[tblAgreementDetail] ON 
GO
INSERT [dbo].[tblAgreementDetail] ([Id], [UserId], [refID_ProductGroupMaster], [refID_ProductMaster], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (3, N'prakashvasaikar6595@gmail.com', 1, 2, CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(1500.00 AS Decimal(18, 2)), CAST(1520.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblAgreementDetail] ([Id], [UserId], [refID_ProductGroupMaster], [refID_ProductMaster], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (4, N'prakashvasaikar6595@gmail.com', 1, 3, CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[tblAgreementDetail] ([Id], [UserId], [refID_ProductGroupMaster], [refID_ProductMaster], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (5, N'prakashvasaikar6595@gmail.com', 3, 8, CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[tblAgreementDetail] ([Id], [UserId], [refID_ProductGroupMaster], [refID_ProductMaster], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (7, N'prakashvasaikar6595@gmail.com', 3, 9, CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[tblAgreementDetail] ([Id], [UserId], [refID_ProductGroupMaster], [refID_ProductMaster], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (9, N'prakashvasaikar6595@gmail.com', 2, 5, CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[tblAgreementDetail] ([Id], [UserId], [refID_ProductGroupMaster], [refID_ProductMaster], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (10, N'prakashvasaikar6595@gmail.com', 2, 6, CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[tblAgreementDetail] ([Id], [UserId], [refID_ProductGroupMaster], [refID_ProductMaster], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (11, N'prakashvasaikar6595@gmail.com', 2, 4, CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[tblAgreementDetail] ([Id], [UserId], [refID_ProductGroupMaster], [refID_ProductMaster], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (13, N'prakashvasaikar6595@gmail.com', 5, 16, CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(N'2023-06-07T00:00:00.000' AS DateTime), CAST(20.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[tblAgreementDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProductGroupMaster] ON 
GO
INSERT [dbo].[tblProductGroupMaster] ([Id], [GroupDescription], [GroupCode], [Active]) VALUES (1, N'Footwear', N'123F', 1)
GO
INSERT [dbo].[tblProductGroupMaster] ([Id], [GroupDescription], [GroupCode], [Active]) VALUES (2, N'Clothing', N'C120', 1)
GO
INSERT [dbo].[tblProductGroupMaster] ([Id], [GroupDescription], [GroupCode], [Active]) VALUES (3, N'Watch', N'W102', 1)
GO
INSERT [dbo].[tblProductGroupMaster] ([Id], [GroupDescription], [GroupCode], [Active]) VALUES (4, N'Accessories', N'A124', 1)
GO
INSERT [dbo].[tblProductGroupMaster] ([Id], [GroupDescription], [GroupCode], [Active]) VALUES (5, N'Winter Wear', N'WW123', 1)
GO
SET IDENTITY_INSERT [dbo].[tblProductGroupMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProductMaster] ON 
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (1, 1, N'Sport Shoes', N'14527', CAST(2000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (2, 1, N'Casual Shoes', N'46512', CAST(1500.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (3, 1, N'Formal Shoes', N'132465', CAST(1000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (4, 2, N'T-Shirt', N'3245', CAST(500.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (5, 2, N'Formal Shirt', N'4651', CAST(700.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (6, 2, N'Casual Shirt', N'4652', CAST(450.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (7, 3, N'Fastrac', N'101', CAST(750.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (8, 3, N'Titan', N'102', CAST(1200.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (9, 3, N'Sonata', N'103', CAST(1250.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (10, 4, N'Backpak', N'451', CAST(230.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (11, 4, N'Wallet', N'452', CAST(550.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (12, 4, N'Belt', N'453', CAST(230.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (13, 4, N'Sunglasses', N'454', CAST(150.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (14, 5, N'Jacket', N'321', CAST(850.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (15, 5, N'Sweater', N'444', CAST(1600.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[tblProductMaster] ([Id], [refID_ProductGroupMaster], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (16, 5, N'Tracksuit', N'320', CAST(1100.00 AS Decimal(18, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[tblProductMaster] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ProductG__3B97438003408ACE]    Script Date: 6/7/2023 8:11:32 PM ******/
ALTER TABLE [dbo].[tblProductGroupMaster] ADD  CONSTRAINT [UQ__ProductG__3B97438003408ACE] UNIQUE NONCLUSTERED 
(
	[GroupCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ProductM__49A3C839305B7986]    Script Date: 6/7/2023 8:11:32 PM ******/
ALTER TABLE [dbo].[tblProductMaster] ADD  CONSTRAINT [UQ__ProductM__49A3C839305B7986] UNIQUE NONCLUSTERED 
(
	[ProductNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[SP_AgreementList]    Script Date: 6/7/2023 8:11:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_AgreementList]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	
	select 
		ad.Id, 
		ad.UserId, 
		pg.GroupCode +' - '+  pg.GroupDescription as ProductGroupDescription,
		pm.ProductNumber +' - '+pm.ProductDescription as ProductDescription,
		convert(nvarchar, ad.EffectiveDate, 105) as EffectiveDate,
		convert(nvarchar, ad.ExpirationDate, 105) as ExpirationDate,
		ad.ProductPrice, 
		ad.NewPrice, 
		ad.Active
	from [dbo].[tblAgreementDetail] as ad
	left join [dbo].[tblProductGroupMaster] as pg on ad.refID_ProductGroupMaster=pg.Id
	left join [dbo].[tblProductMaster] as pm on ad.refID_ProductMaster=pm.Id
	--order by ad.Id desc
	
END
GO
