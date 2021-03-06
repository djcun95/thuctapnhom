USE [HelpBike]
GO
/****** Object:  Table [dbo].[typePrice]    Script Date: 04/26/2016 22:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[typePrice](
	[id] [int] NOT NULL,
	[typePrice] [nchar](10) NOT NULL,
	[persentbonus] [float] NULL,
 CONSTRAINT [PK_typePrice] PRIMARY KEY CLUSTERED 
(
	[typePrice] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Centers]    Script Date: 04/26/2016 22:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Centers](
	[id] [int] NOT NULL,
	[nameCenter] [nvarchar](100) NULL,
	[codeCenter] [nchar](10) NULL,
	[adressCenter] [nvarchar](50) NULL,
	[PhoneNum] [char](20) NULL,
	[rating] [float] NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_Centers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 04/26/2016 22:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[realname] [nvarchar](50) NULL,
	[TypeBike] [nvarchar](50) NULL,
	[displayname] [nvarchar](50) NULL,
	[phoneNum] [char](20) NULL,
	[passcode] [varchar](20) NULL,
	[age] [int] NULL,
	[Sex] [bit] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Service]    Script Date: 04/26/2016 22:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[id] [int] NOT NULL,
	[name] [nvarchar](100) NULL,
	[Description] [ntext] NULL,
	[Price] [decimal](18, 0) NULL,
	[priceAddition] [decimal](18, 0) NULL,
	[typeAccessary] [nchar](10) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Local]    Script Date: 04/26/2016 22:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Local](
	[id] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[longitude] [decimal](5, 4) NULL,
	[latitude] [decimal](5, 4) NULL,
	[adress] [nvarchar](200) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Local] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 04/26/2016 22:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[id] [int] NOT NULL,
	[CustomerLocalID] [int] NULL,
	[Tittle] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[rating] [float] NULL,
	[CenterID] [int] NULL,
	[Feedback] [ntext] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceInCenter]    Script Date: 04/26/2016 22:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceInCenter](
	[id] [int] NOT NULL,
	[CenterId] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
 CONSTRAINT [PK_ServiceInCenter_1] PRIMARY KEY CLUSTERED 
(
	[CenterId] ASC,
	[ServiceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [unique_serrvice] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceProcess]    Script Date: 04/26/2016 22:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceProcess](
	[id] [int] NOT NULL,
	[LocalCustomerServiceID] [int] NULL,
	[ServiceDetail] [int] NULL,
	[CurrentPrice] [decimal](18, 0) NULL,
	[dateService] [date] NULL,
	[checkMethod] [nchar](10) NULL,
 CONSTRAINT [PK_ServiceProcess] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Comment_Centers]    Script Date: 04/26/2016 22:49:15 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Centers] FOREIGN KEY([CenterID])
REFERENCES [dbo].[Centers] ([id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Centers]
GO
/****** Object:  ForeignKey [FK_Comment_Local]    Script Date: 04/26/2016 22:49:15 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Local] FOREIGN KEY([CustomerLocalID])
REFERENCES [dbo].[Local] ([id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Local]
GO
/****** Object:  ForeignKey [FK_Local_Customer]    Script Date: 04/26/2016 22:49:15 ******/
ALTER TABLE [dbo].[Local]  WITH CHECK ADD  CONSTRAINT [FK_Local_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Local] CHECK CONSTRAINT [FK_Local_Customer]
GO
/****** Object:  ForeignKey [FK_Service_typePrice]    Script Date: 04/26/2016 22:49:15 ******/
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_typePrice] FOREIGN KEY([typeAccessary])
REFERENCES [dbo].[typePrice] ([typePrice])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_typePrice]
GO
/****** Object:  ForeignKey [FK_ServiceInCenter_Centers1]    Script Date: 04/26/2016 22:49:15 ******/
ALTER TABLE [dbo].[ServiceInCenter]  WITH CHECK ADD  CONSTRAINT [FK_ServiceInCenter_Centers1] FOREIGN KEY([CenterId])
REFERENCES [dbo].[Centers] ([id])
GO
ALTER TABLE [dbo].[ServiceInCenter] CHECK CONSTRAINT [FK_ServiceInCenter_Centers1]
GO
/****** Object:  ForeignKey [FK_ServiceInCenter_Service]    Script Date: 04/26/2016 22:49:15 ******/
ALTER TABLE [dbo].[ServiceInCenter]  WITH CHECK ADD  CONSTRAINT [FK_ServiceInCenter_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([id])
GO
ALTER TABLE [dbo].[ServiceInCenter] CHECK CONSTRAINT [FK_ServiceInCenter_Service]
GO
/****** Object:  ForeignKey [FK_ServiceProcess_Local]    Script Date: 04/26/2016 22:49:15 ******/
ALTER TABLE [dbo].[ServiceProcess]  WITH CHECK ADD  CONSTRAINT [FK_ServiceProcess_Local] FOREIGN KEY([LocalCustomerServiceID])
REFERENCES [dbo].[Local] ([id])
GO
ALTER TABLE [dbo].[ServiceProcess] CHECK CONSTRAINT [FK_ServiceProcess_Local]
GO
/****** Object:  ForeignKey [FK_ServiceProcess_ServiceInCenter]    Script Date: 04/26/2016 22:49:15 ******/
ALTER TABLE [dbo].[ServiceProcess]  WITH CHECK ADD  CONSTRAINT [FK_ServiceProcess_ServiceInCenter] FOREIGN KEY([ServiceDetail])
REFERENCES [dbo].[ServiceInCenter] ([id])
GO
ALTER TABLE [dbo].[ServiceProcess] CHECK CONSTRAINT [FK_ServiceProcess_ServiceInCenter]
GO
