USE [master]
GO
/****** Object:  Database [GCReports]    Script Date: 7/30/2023 12:29:10 PM ******/
CREATE DATABASE [GCReports]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GCReports', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\GCReports.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GCReports_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\GCReports_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GCReports] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GCReports].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GCReports] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GCReports] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GCReports] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GCReports] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GCReports] SET ARITHABORT OFF 
GO
ALTER DATABASE [GCReports] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GCReports] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GCReports] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GCReports] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GCReports] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GCReports] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GCReports] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GCReports] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GCReports] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GCReports] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GCReports] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GCReports] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GCReports] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GCReports] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GCReports] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GCReports] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GCReports] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GCReports] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GCReports] SET  MULTI_USER 
GO
ALTER DATABASE [GCReports] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GCReports] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GCReports] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GCReports] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [GCReports] SET DELAYED_DURABILITY = DISABLED 
GO
USE [GCReports]
GO
/****** Object:  Table [dbo].[GRLines]    Script Date: 7/30/2023 12:29:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRLines](
	[GRNLineNO] [int] IDENTITY(1,1) NOT NULL,
	[GRNID] [int] NULL,
	[SERIAL] [int] NULL,
	[ITM_DIS] [nvarchar](50) NULL,
	[ITM_ID] [int] NULL,
	[POID] [int] NULL,
	[POlineNO] [int] NULL,
	[PRID] [int] NULL,
	[PRlineNO] [int] NULL,
	[LotNO] [nvarchar](20) NULL,
	[BatchID] [int] NULL,
	[Q_recived] [decimal](18, 0) NULL,
	[Q_Accepted] [decimal](18, 0) NULL,
	[Q_Qurinate] [decimal](18, 0) NULL,
	[Q_ToStore] [decimal](18, 0) NULL,
	[Q_Stored] [decimal](18, 0) NULL,
	[Qty] [decimal](18, 0) NULL,
	[UnitPack] [decimal](18, 0) NULL,
	[TotalQty] [decimal](18, 0) NULL,
	[UIMID] [int] NULL,
	[POU] [decimal](18, 0) NULL,
	[TOTAL] [decimal](18, 0) NULL,
	[CURRUNCYID] [int] NULL,
	[RATE] [decimal](18, 0) NULL,
	[FIValue] [decimal](18, 0) NULL,
	[TotalUnitPrice] [decimal](18, 0) NULL,
	[CreatedDate] [smalldatetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModefaiedDate] [smalldatetime] NULL,
	[ModefiedBy] [nvarchar](50) NULL,
	[QCDate] [smalldatetime] NULL,
	[QCUser] [nvarchar](50) NULL,
	[StoredOn] [smalldatetime] NULL,
	[StoredBy] [nvarchar](50) NULL,
	[WID] [int] NULL,
	[StateID] [int] NULL,
	[ExpiryDate] [smalldatetime] NULL,
	[BL] [nvarchar](50) NULL,
	[POPatchID] [int] NULL,
	[Wight] [decimal](18, 0) NULL,
 CONSTRAINT [PK_GRLines] PRIMARY KEY CLUSTERED 
(
	[GRNLineNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GRN]    Script Date: 7/30/2023 12:29:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GRN_NUM] [nvarchar](50) NULL,
	[GRN_DATE] [datetime] NULL,
	[PO_NUM] [nvarchar](50) NULL,
	[PO_DATE] [datetime] NULL,
	[CREATED_BY] [nvarchar](50) NULL,
	[GRN_STATE] [nvarchar](50) NULL,
	[VENDEOR_CODE] [nvarchar](50) NULL,
	[VENDEOR_NAME] [nvarchar](50) NULL,
	[PL] [nvarchar](50) NULL,
	[WH] [nvarchar](50) NULL,
 CONSTRAINT [PK_GRN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 7/30/2023 12:29:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[CodeItem] [varchar](50) NULL,
	[ItemName] [varchar](150) NULL,
	[ItemNameAR] [varchar](150) NULL,
	[ItemDC] [varchar](300) NULL,
	[ItemDCAR] [nchar](300) NULL,
	[UIntID] [int] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR]    Script Date: 7/30/2023 12:29:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR](
	[PRID] [int] NOT NULL,
	[PRNO] [varchar](50) NULL,
	[Dept] [varchar](50) NULL,
	[Date] [smalldatetime] NULL,
	[Machine] [varchar](100) NULL,
	[ItemType] [varchar](100) NULL,
	[BusinessUnit] [varchar](100) NULL,
	[Importance] [varchar](100) NULL,
	[Purpose] [varchar](100) NULL,
	[OrderType] [varchar](100) NULL,
	[Mode] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[CreatedBy] [varchar](100) NULL,
	[Notes] [varchar](300) NULL,
 CONSTRAINT [PK_PR] PRIMARY KEY CLUSTERED 
(
	[PRID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRLines]    Script Date: 7/30/2023 12:29:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRLines](
	[PRLinesID] [int] NOT NULL,
	[PRID] [int] NULL,
	[ItemID] [int] NULL,
	[UIntID] [int] NULL,
	[Quatntity] [decimal](18, 0) NULL,
	[Inv_Balance] [decimal](18, 0) NULL,
	[RequiredDate] [smalldatetime] NULL,
 CONSTRAINT [PK_PRLines] PRIMARY KEY CLUSTERED 
(
	[PRLinesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UInt]    Script Date: 7/30/2023 12:29:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UInt](
	[UintID] [int] NOT NULL,
	[Uint] [varchar](50) NULL,
 CONSTRAINT [PK_UInt] PRIMARY KEY CLUSTERED 
(
	[UintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[GetGRNData]    Script Date: 7/30/2023 12:29:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Mohamed Mohsen>
-- Create date: <Create Date,10-7-2023>
-- Description:	<Description,Report for Grn Data>
-- =============================================
CREATE PROCEDURE [dbo].[GetGRNData] --[dbo].[GetGRNData]  @ID=1
(
@ID INT
)
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
	GR.id as 'ID',
	GR.GRN_DATE,
	GR.GRN_NUM ,
	GR.PO_NUM,
	GR.CREATED_BY,
	GR.GRN_STATE,
	GR.VENDEOR_CODE,
	GR.VENDEOR_NAME,
	GR.WH,
	GR.PL, --GRN Main Data
	--grn items data
	GRI.SERIAL,
	GRI.PRlineNO,
	GRI.ITM_ID,
	GRI.ITM_DIS,
	GRI.UIMID,
	GRI.Qty,
	GRI.LotNO,
	GRI.ExpiryDate
	FROM dbo.GRN GR WITH (NOLOCK) INNER JOIN dbo.GRLines GRI
	ON GR.id = GRI.GRNID WHERE GR.id =@ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_PrData]    Script Date: 7/30/2023 12:29:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Mohamed Mohsen>
-- Create date: <Create Date,17-07-2023>
-- Description:	<Description,Report for pr>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_PrData] --[dbo].[sp_Get_PrData] @PRID=12
(
@PRID INT
)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
    Items.CodeItem,
    Items.ItemDC,
    PR.PRID,
	PR.PRNO,
    PR.Dept,
    PR.Date,
    PR.Machine,
    PR.ItemType,
    PR.BusinessUnit,
    PR.Importance,
    PR.Purpose,
    PR.OrderType,
    PR.Mode,
    PR.State,
    PR.CreatedBy,
    PR.Notes,
    PRLines.Quatntity,
    PRLines.Inv_Balance,
    PRLines.RequiredDate,
    UInt.Uint
FROM
    GCReports.dbo.PR PR
    INNER JOIN GCReports.dbo.PRLines PRLines ON PR.PRID = PRLines.PRID
    INNER JOIN GCReports.dbo.Items Items ON PRLines.ItemID = Items.ItemID
    INNER JOIN GCReports.dbo.UInt UInt ON Items.UIntID = UInt.UintID
 where PR.PRID =@PRID




END

GO
USE [master]
GO
ALTER DATABASE [GCReports] SET  READ_WRITE 
GO
