/****** Object:  Table [dbo].[addcity]    Script Date: 10/10/2015 13:13:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addcity]') AND type in (N'U'))
DROP TABLE [dbo].[addcity]
GO
/****** Object:  Table [dbo].[addcomm]    Script Date: 10/10/2015 13:13:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addcomm]') AND type in (N'U'))
DROP TABLE [dbo].[addcomm]
GO
/****** Object:  Table [dbo].[adddriver]    Script Date: 10/10/2015 13:13:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[adddriver]') AND type in (N'U'))
DROP TABLE [dbo].[adddriver]
GO
/****** Object:  Table [dbo].[addlocality]    Script Date: 10/10/2015 13:13:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addlocality]') AND type in (N'U'))
DROP TABLE [dbo].[addlocality]
GO
/****** Object:  Table [dbo].[addtime]    Script Date: 10/10/2015 13:13:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addtime]') AND type in (N'U'))
DROP TABLE [dbo].[addtime]
GO
/****** Object:  Table [dbo].[addtype]    Script Date: 10/10/2015 13:13:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addtype]') AND type in (N'U'))
DROP TABLE [dbo].[addtype]
GO
/****** Object:  Table [dbo].[assigncabtobooking]    Script Date: 10/10/2015 13:13:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[assigncabtobooking]') AND type in (N'U'))
DROP TABLE [dbo].[assigncabtobooking]
GO
/****** Object:  Table [dbo].[billing]    Script Date: 10/10/2015 13:13:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[billing]') AND type in (N'U'))
DROP TABLE [dbo].[billing]
GO
/****** Object:  Table [dbo].[booking]    Script Date: 10/10/2015 13:13:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[booking]') AND type in (N'U'))
DROP TABLE [dbo].[booking]
GO
/****** Object:  Table [dbo].[commiss]    Script Date: 10/10/2015 13:13:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[commiss]') AND type in (N'U'))
DROP TABLE [dbo].[commiss]
GO
/****** Object:  Table [dbo].[signup]    Script Date: 10/10/2015 13:13:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[signup]') AND type in (N'U'))
DROP TABLE [dbo].[signup]
GO
/****** Object:  Table [dbo].[signup]    Script Date: 10/10/2015 13:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[signup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[signup](
	[Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[State] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Phone] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Username] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Password] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UserType] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_signup] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[signup] ([Name], [Address], [City], [State], [Phone], [Username], [Password], [UserType]) VALUES (N'Admin', N'21, Model Town', N'Jalandhar', N'Punjab', N'9876543210', N'admin@gmail.com', N'123', N'admin')
INSERT [dbo].[signup] ([Name], [Address], [City], [State], [Phone], [Username], [Password], [UserType]) VALUES (N'Manish', N'21, Model Town', N'Jalandhar', N'Punjab', N'874593210', N'manish@yahoo.com', N'123', N'normal')
INSERT [dbo].[signup] ([Name], [Address], [City], [State], [Phone], [Username], [Password], [UserType]) VALUES (N'Manish Sharma', N'321, Rohini ', N'New Delhi', N'Delhi', N'7894561320', N'manishs@gmail.com', N'123', N'normal')
INSERT [dbo].[signup] ([Name], [Address], [City], [State], [Phone], [Username], [Password], [UserType]) VALUES (N'Rakesh', N'21, Model Town', N'Jalandhar', N'Punjab', N'7894561230', N'rakesh@gmail.com', N'123', N'normal')
/****** Object:  Table [dbo].[commiss]    Script Date: 10/10/2015 13:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[commiss]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[commiss](
	[Commissid] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[BookingID] [numeric](18, 0) NULL,
	[CommissionAmt] [numeric](18, 0) NULL,
	[CommDt] [datetime] NULL,
	[DriverUname] [numeric](18, 0) NULL,
	[TotalBill] [numeric](18, 0) NULL,
 CONSTRAINT [PK_commiss] PRIMARY KEY CLUSTERED 
(
	[Commissid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[commiss] ON
INSERT [dbo].[commiss] ([Commissid], [BookingID], [CommissionAmt], [CommDt], [DriverUname], [TotalBill]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1010 AS Numeric(18, 0)), CAST(190 AS Numeric(18, 0)), CAST(0x0000A52B00000000 AS DateTime), CAST(7418529630 AS Numeric(18, 0)), CAST(253 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[commiss] OFF
/****** Object:  Table [dbo].[booking]    Script Date: 10/10/2015 13:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[booking]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[booking](
	[BookingID] [numeric](18, 0) IDENTITY(1000,1) NOT NULL,
	[PickupDate] [date] NULL,
	[PicupTime] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PickupCity] [numeric](18, 0) NULL,
	[PickupLocality] [numeric](18, 0) NULL,
	[DropLocality] [numeric](18, 0) NULL,
	[TravellerName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TravellerPhone] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BookingBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BookingDate] [datetime] NULL,
	[Status] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TypeID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_booking] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[booking] ON
INSERT [dbo].[booking] ([BookingID], [PickupDate], [PicupTime], [PickupCity], [PickupLocality], [DropLocality], [TravellerName], [TravellerPhone], [BookingBy], [BookingDate], [Status], [TypeID]) VALUES (CAST(1003 AS Numeric(18, 0)), CAST(0xDD390B00 AS Date), N'29', CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Manish', N'874593210', N'manish@yahoo.com', CAST(0x0000A47B010F2C56 AS DateTime), N'Completed', NULL)
INSERT [dbo].[booking] ([BookingID], [PickupDate], [PicupTime], [PickupCity], [PickupLocality], [DropLocality], [TravellerName], [TravellerPhone], [BookingBy], [BookingDate], [Status], [TypeID]) VALUES (CAST(1004 AS Numeric(18, 0)), CAST(0xE4390B00 AS Date), N'30', CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Manish', N'874593210', N'manish@yahoo.com', CAST(0x0000A482010BAED3 AS DateTime), N'Pending', NULL)
INSERT [dbo].[booking] ([BookingID], [PickupDate], [PicupTime], [PickupCity], [PickupLocality], [DropLocality], [TravellerName], [TravellerPhone], [BookingBy], [BookingDate], [Status], [TypeID]) VALUES (CAST(1005 AS Numeric(18, 0)), CAST(0xE7390B00 AS Date), N'43', CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Manish', N'874593210', N'manish@yahoo.com', CAST(0x0000A48A00FF734F AS DateTime), N'Completed', NULL)
INSERT [dbo].[booking] ([BookingID], [PickupDate], [PicupTime], [PickupCity], [PickupLocality], [DropLocality], [TravellerName], [TravellerPhone], [BookingBy], [BookingDate], [Status], [TypeID]) VALUES (CAST(1006 AS Numeric(18, 0)), CAST(0xEC390B00 AS Date), N'14', CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Manish', N'874593210', N'manish@yahoo.com', CAST(0x0000A48A011195FF AS DateTime), N'Pending', NULL)
INSERT [dbo].[booking] ([BookingID], [PickupDate], [PicupTime], [PickupCity], [PickupLocality], [DropLocality], [TravellerName], [TravellerPhone], [BookingBy], [BookingDate], [Status], [TypeID]) VALUES (CAST(1007 AS Numeric(18, 0)), CAST(0x773A0B00 AS Date), N'22', CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Manish', N'874593210', N'manish@yahoo.com', CAST(0x0000A51C00DC30CD AS DateTime), N'Pending', NULL)
INSERT [dbo].[booking] ([BookingID], [PickupDate], [PicupTime], [PickupCity], [PickupLocality], [DropLocality], [TravellerName], [TravellerPhone], [BookingBy], [BookingDate], [Status], [TypeID]) VALUES (CAST(1008 AS Numeric(18, 0)), CAST(0x853A0B00 AS Date), N'31', CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Manish', N'874593210', N'manish@yahoo.com', CAST(0x0000A52A010A6221 AS DateTime), N'Pending', NULL)
INSERT [dbo].[booking] ([BookingID], [PickupDate], [PicupTime], [PickupCity], [PickupLocality], [DropLocality], [TravellerName], [TravellerPhone], [BookingBy], [BookingDate], [Status], [TypeID]) VALUES (CAST(1009 AS Numeric(18, 0)), CAST(0x923A0B00 AS Date), N'23', CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Manish', N'874593210', N'manish@yahoo.com', CAST(0x0000A52A012CC62F AS DateTime), N'Completed', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[booking] ([BookingID], [PickupDate], [PicupTime], [PickupCity], [PickupLocality], [DropLocality], [TravellerName], [TravellerPhone], [BookingBy], [BookingDate], [Status], [TypeID]) VALUES (CAST(1010 AS Numeric(18, 0)), CAST(0x883A0B00 AS Date), N'18', CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Manish', N'874593210', N'manish@yahoo.com', CAST(0x0000A52B010A41CD AS DateTime), N'Completed', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[booking] ([BookingID], [PickupDate], [PicupTime], [PickupCity], [PickupLocality], [DropLocality], [TravellerName], [TravellerPhone], [BookingBy], [BookingDate], [Status], [TypeID]) VALUES (CAST(1011 AS Numeric(18, 0)), CAST(0x873A0B00 AS Date), N'26', CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Rakesh', N'7894561230', N'rakesh@gmail.com', CAST(0x0000A52C00E8ED4E AS DateTime), N'Driver Assigned', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[booking] ([BookingID], [PickupDate], [PicupTime], [PickupCity], [PickupLocality], [DropLocality], [TravellerName], [TravellerPhone], [BookingBy], [BookingDate], [Status], [TypeID]) VALUES (CAST(1012 AS Numeric(18, 0)), CAST(0x883A0B00 AS Date), N'23', CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Manish Sharma', N'7894561320', N'manishs@gmail.com', CAST(0x0000A52D00D51F87 AS DateTime), N'Pending', CAST(4 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[booking] OFF
/****** Object:  Table [dbo].[billing]    Script Date: 10/10/2015 13:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[billing]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[billing](
	[BillingID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[BookingID] [numeric](18, 0) NULL,
	[TotalBill] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BillDate] [date] NULL,
	[CabID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_billing] PRIMARY KEY CLUSTERED 
(
	[BillingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[billing] ON
INSERT [dbo].[billing] ([BillingID], [BookingID], [TotalBill], [BillDate], [CabID]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1001 AS Numeric(18, 0)), N'120', CAST(0xD6390B00 AS Date), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[billing] ([BillingID], [BookingID], [TotalBill], [BillDate], [CabID]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1003 AS Numeric(18, 0)), N'60', CAST(0xD6390B00 AS Date), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[billing] ([BillingID], [BookingID], [TotalBill], [BillDate], [CabID]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(1005 AS Numeric(18, 0)), N'130', CAST(0xE5390B00 AS Date), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[billing] ([BillingID], [BookingID], [TotalBill], [BillDate], [CabID]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(1009 AS Numeric(18, 0)), N'164', CAST(0x863A0B00 AS Date), CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[billing] ([BillingID], [BookingID], [TotalBill], [BillDate], [CabID]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(1010 AS Numeric(18, 0)), N'253', CAST(0x863A0B00 AS Date), CAST(5 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[billing] OFF
/****** Object:  Table [dbo].[assigncabtobooking]    Script Date: 10/10/2015 13:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[assigncabtobooking]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[assigncabtobooking](
	[AsignID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[BookingID] [numeric](18, 0) NULL,
	[CityID] [numeric](18, 0) NULL,
	[DrivrID] [numeric](18, 0) NULL,
	[DriverID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_assigncabtobooking] PRIMARY KEY CLUSTERED 
(
	[AsignID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[assigncabtobooking] ON
INSERT [dbo].[assigncabtobooking] ([AsignID], [BookingID], [CityID], [DrivrID], [DriverID]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(1002 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(7894561230 AS Numeric(18, 0)))
INSERT [dbo].[assigncabtobooking] ([AsignID], [BookingID], [CityID], [DrivrID], [DriverID]) VALUES (CAST(11 AS Numeric(18, 0)), CAST(1011 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(9876543210 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[assigncabtobooking] OFF
/****** Object:  Table [dbo].[addtype]    Script Date: 10/10/2015 13:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addtype]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[addtype](
	[TypeID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CityID] [numeric](18, 0) NULL,
	[MinBillCharge] [numeric](18, 0) NULL,
	[FreeKms] [numeric](18, 0) NULL,
	[WaitingCharges] [numeric](18, 0) NULL,
	[charge] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_addcity] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[addtype] ON
INSERT [dbo].[addtype] ([TypeID], [TypeName], [CityID], [MinBillCharge], [FreeKms], [WaitingCharges], [charge]) VALUES (CAST(2 AS Numeric(18, 0)), N'Jalandhar', NULL, CAST(49 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'20')
INSERT [dbo].[addtype] ([TypeID], [TypeName], [CityID], [MinBillCharge], [FreeKms], [WaitingCharges], [charge]) VALUES (CAST(3 AS Numeric(18, 0)), N'Phagwara', NULL, CAST(45 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'18')
INSERT [dbo].[addtype] ([TypeID], [TypeName], [CityID], [MinBillCharge], [FreeKms], [WaitingCharges], [charge]) VALUES (CAST(4 AS Numeric(18, 0)), N'Hatchback', CAST(1 AS Numeric(18, 0)), CAST(49 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'12')
INSERT [dbo].[addtype] ([TypeID], [TypeName], [CityID], [MinBillCharge], [FreeKms], [WaitingCharges], [charge]) VALUES (CAST(5 AS Numeric(18, 0)), N'Sedan', CAST(1 AS Numeric(18, 0)), CAST(59 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'15')
INSERT [dbo].[addtype] ([TypeID], [TypeName], [CityID], [MinBillCharge], [FreeKms], [WaitingCharges], [charge]) VALUES (CAST(6 AS Numeric(18, 0)), N'Hatchback', CAST(3 AS Numeric(18, 0)), CAST(49 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'5')
INSERT [dbo].[addtype] ([TypeID], [TypeName], [CityID], [MinBillCharge], [FreeKms], [WaitingCharges], [charge]) VALUES (CAST(7 AS Numeric(18, 0)), N'Sedan', CAST(3 AS Numeric(18, 0)), CAST(59 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'8')
INSERT [dbo].[addtype] ([TypeID], [TypeName], [CityID], [MinBillCharge], [FreeKms], [WaitingCharges], [charge]) VALUES (CAST(8 AS Numeric(18, 0)), N'MUVs', CAST(3 AS Numeric(18, 0)), CAST(69 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'18')
SET IDENTITY_INSERT [dbo].[addtype] OFF
/****** Object:  Table [dbo].[addtime]    Script Date: 10/10/2015 13:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addtime]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[addtime](
	[SlotID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[SlotName] [time](7) NULL,
 CONSTRAINT [PK_addtime] PRIMARY KEY CLUSTERED 
(
	[SlotID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[addtime] ON
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(14 AS Numeric(18, 0)), CAST(0x070010ACD1530000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(15 AS Numeric(18, 0)), CAST(0x0700448E02580000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(16 AS Numeric(18, 0)), CAST(0x07007870335C0000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(17 AS Numeric(18, 0)), CAST(0x0700AC5264600000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(19 AS Numeric(18, 0)), CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(20 AS Numeric(18, 0)), CAST(0x07001417C6680000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(21 AS Numeric(18, 0)), CAST(0x070048F9F66C0000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(22 AS Numeric(18, 0)), CAST(0x07007CDB27710000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(23 AS Numeric(18, 0)), CAST(0x0700964C40730000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(24 AS Numeric(18, 0)), CAST(0x0700B0BD58750000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(25 AS Numeric(18, 0)), CAST(0x0700E49F89790000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(26 AS Numeric(18, 0)), CAST(0x0700FE10A27B0000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(27 AS Numeric(18, 0)), CAST(0x07001882BA7D0000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(28 AS Numeric(18, 0)), CAST(0x07004C64EB810000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(29 AS Numeric(18, 0)), CAST(0x070066D503840000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(30 AS Numeric(18, 0)), CAST(0x070080461C860000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(31 AS Numeric(18, 0)), CAST(0x0700B4284D8A0000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(32 AS Numeric(18, 0)), CAST(0x0700E80A7E8E0000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(33 AS Numeric(18, 0)), CAST(0x07001CEDAE920000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(34 AS Numeric(18, 0)), CAST(0x070050CFDF960000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(35 AS Numeric(18, 0)), CAST(0x070084B1109B0000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(36 AS Numeric(18, 0)), CAST(0x0700B893419F0000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(37 AS Numeric(18, 0)), CAST(0x0700EC7572A30000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(38 AS Numeric(18, 0)), CAST(0x07002058A3A70000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(39 AS Numeric(18, 0)), CAST(0x0700543AD4AB0000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(40 AS Numeric(18, 0)), CAST(0x0700881C05B00000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(41 AS Numeric(18, 0)), CAST(0x0700BCFE35B40000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(42 AS Numeric(18, 0)), CAST(0x0700F0E066B80000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(43 AS Numeric(18, 0)), CAST(0x070024C397BC0000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(44 AS Numeric(18, 0)), CAST(0x070058A5C8C00000 AS Time))
INSERT [dbo].[addtime] ([SlotID], [SlotName]) VALUES (CAST(45 AS Numeric(18, 0)), CAST(0x07008C87F9C40000 AS Time))
SET IDENTITY_INSERT [dbo].[addtime] OFF
/****** Object:  Table [dbo].[addlocality]    Script Date: 10/10/2015 13:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addlocality]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[addlocality](
	[LocID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CityID] [numeric](18, 0) NULL,
	[LocalityName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_addlocality] PRIMARY KEY CLUSTERED 
(
	[LocID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[addlocality] ON
INSERT [dbo].[addlocality] ([LocID], [CityID], [LocalityName]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Lajpat Nagar')
INSERT [dbo].[addlocality] ([LocID], [CityID], [LocalityName]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Urban Estate - I')
INSERT [dbo].[addlocality] ([LocID], [CityID], [LocalityName]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Urban Estate - II')
INSERT [dbo].[addlocality] ([LocID], [CityID], [LocalityName]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Defence Colony')
INSERT [dbo].[addlocality] ([LocID], [CityID], [LocalityName]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Professor Colony')
INSERT [dbo].[addlocality] ([LocID], [CityID], [LocalityName]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Hargobind Nagar')
INSERT [dbo].[addlocality] ([LocID], [CityID], [LocalityName]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'LPU Campus')
SET IDENTITY_INSERT [dbo].[addlocality] OFF
/****** Object:  Table [dbo].[adddriver]    Script Date: 10/10/2015 13:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[adddriver]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[adddriver](
	[DriverID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WorkingCity] [numeric](18, 0) NULL,
	[EmailID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Username] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Password] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DriverPic] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TypeID] [numeric](18, 0) NULL,
	[CarName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CarNumber] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_adddriver] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[adddriver] ON
INSERT [dbo].[adddriver] ([DriverID], [Name], [Address], [WorkingCity], [EmailID], [Username], [Password], [DriverPic], [TypeID], [CarName], [CarNumber], [Status]) VALUES (CAST(5 AS Numeric(18, 0)), N'Guddu', N'21, Basti Sheikh', CAST(1 AS Numeric(18, 0)), N'guddu@gmail.com', N'7418529630', N'123', N'cardrivder.png', CAST(4 AS Numeric(18, 0)), N'Indica', N'PB08 BT 1411', N'Free')
INSERT [dbo].[adddriver] ([DriverID], [Name], [Address], [WorkingCity], [EmailID], [Username], [Password], [DriverPic], [TypeID], [CarName], [CarNumber], [Status]) VALUES (CAST(6 AS Numeric(18, 0)), N'Ram', N'212, Surya Enclave', CAST(1 AS Numeric(18, 0)), N'na', N'9876543210', N'147', N'cardrivder.png', CAST(5 AS Numeric(18, 0)), N'Etios', N'PB01CK2114', N'busy')
SET IDENTITY_INSERT [dbo].[adddriver] OFF
/****** Object:  Table [dbo].[addcomm]    Script Date: 10/10/2015 13:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addcomm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[addcomm](
	[CommId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Amount] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_addcomm] PRIMARY KEY CLUSTERED 
(
	[CommId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[addcomm] ON
INSERT [dbo].[addcomm] ([CommId], [Amount]) VALUES (CAST(1 AS Numeric(18, 0)), N'75')
SET IDENTITY_INSERT [dbo].[addcomm] OFF
/****** Object:  Table [dbo].[addcity]    Script Date: 10/10/2015 13:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addcity]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[addcity](
	[CityID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_addcity_1] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[addcity] ON
INSERT [dbo].[addcity] ([CityID], [CityName]) VALUES (CAST(1 AS Numeric(18, 0)), N'Jalandhar')
INSERT [dbo].[addcity] ([CityID], [CityName]) VALUES (CAST(3 AS Numeric(18, 0)), N'Ludhiana')
SET IDENTITY_INSERT [dbo].[addcity] OFF
