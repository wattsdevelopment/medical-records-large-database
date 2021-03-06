USE [master]
GO
/****** Object:  Database [medical-staff]    Script Date: 01/27/2017 11:32:20 ******/
CREATE DATABASE [medical-staff] ON  PRIMARY 
( NAME = N'medical-staff', FILENAME = N'E:\medical-staff.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'medical-staff_log', FILENAME = N'E:\medical-staff_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [medical-staff].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [medical-staff] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [medical-staff] SET ANSI_NULLS OFF
GO
ALTER DATABASE [medical-staff] SET ANSI_PADDING OFF
GO
ALTER DATABASE [medical-staff] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [medical-staff] SET ARITHABORT OFF
GO
ALTER DATABASE [medical-staff] SET AUTO_CLOSE ON
GO
ALTER DATABASE [medical-staff] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [medical-staff] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [medical-staff] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [medical-staff] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [medical-staff] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [medical-staff] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [medical-staff] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [medical-staff] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [medical-staff] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [medical-staff] SET  DISABLE_BROKER
GO
ALTER DATABASE [medical-staff] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [medical-staff] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [medical-staff] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [medical-staff] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [medical-staff] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [medical-staff] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [medical-staff] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [medical-staff] SET  READ_WRITE
GO
ALTER DATABASE [medical-staff] SET RECOVERY SIMPLE
GO
ALTER DATABASE [medical-staff] SET  MULTI_USER
GO
ALTER DATABASE [medical-staff] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [medical-staff] SET DB_CHAINING OFF
GO
USE [medical-staff]
GO
/****** Object:  Table [dbo].[city]    Script Date: 01/27/2017 11:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[city](
	[postcode] [varchar](255) NOT NULL,
	[P_Id] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[prescription]    Script Date: 01/27/2017 11:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prescription](
	[Prescrip_Id] [int] NOT NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Prescrip_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient]    Script Date: 01/27/2017 11:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[patient](
	[P_Id] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[DOB] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[Phone] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[P_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[medicine]    Script Date: 01/27/2017 11:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[medicine](
	[Minventry_Id] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[quantity] [varchar](255) NULL,
	[date] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Minventry_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[doctor]    Script Date: 01/27/2017 11:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[doctor](
	[D_Id] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[FirstName] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[Office] [varchar](255) NULL,
	[Phone] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[D_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[diagnosis]    Script Date: 01/27/2017 11:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[diagnosis](
	[Di_Id] [int] NOT NULL,
	[Category] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Di_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[visit]    Script Date: 01/27/2017 11:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[visit](
	[V_Id] [int] NOT NULL,
	[Date] [varchar](255) NULL,
	[Time] [varchar](255) NULL,
	[Complaint] [varchar](255) NULL,
	[Di_Id] [int] NULL,
	[D_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[V_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[UPDATE-PATIENT]    Script Date: 01/27/2017 11:32:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Michaelwatts>
-- Create date: <27.01.2017>
-- Description:	<update>
-- =============================================
CREATE PROCEDURE [dbo].[UPDATE-PATIENT] 
	-- Add the parameters for the stored procedure here
	 @id int = NULL,
    @name nvarchar(20) = NULL,
    @dob nvarchar(20) = NULL,
    @address nvarchar(50) = NULL,
    @phone int = null
AS
BEGIN
	SET NOCOUNT ON;
    UPDATE patient
    SET Name=ISNULL(@name, Name), 
        DOB=ISNULL(@dob,DOB), 
        Address=ISNULL(@address, Address),
        Phone=ISNULL(@phone, Phone)
    WHERE P_Id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[SELECT-PATIENT-ADDRESS]    Script Date: 01/27/2017 11:32:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<MichaelWatts>
-- Create date: <27.01.2017>
-- Description:	<SELECT-STATEMENT>
-- =============================================
CREATE PROCEDURE [dbo].[SELECT-PATIENT-ADDRESS] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT name,Address FROM patient;
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE-PATIENT]    Script Date: 01/27/2017 11:32:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<michaelwatts>
-- Create date: <27.01.2016>
-- Description:	<DeletePatient>
-- =============================================
CREATE PROCEDURE [dbo].[DELETE-PATIENT] 
	-- Add the parameters for the stored procedure here
	 @id int = NULL,
    @name nvarchar(20) = NULL,
    @dob nvarchar(20) = NULL,
    @address nvarchar(50) = NULL,
    @phone int = null
AS
BEGIN
	SET NOCOUNT ON;
    SELECT Name,
			DOB,
			Address,
			Phone
  FROM dbo.patient
 WHERE P_Id = @id
END
GO
/****** Object:  View [dbo].[visit-DoctorUsage]    Script Date: 01/27/2017 11:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[visit-DoctorUsage]
AS
SELECT        Di_Id AS Expr5, D_Id AS Expr6, dbo.visit.*, Time AS Expr1, Date AS Expr2, V_Id AS Expr3, Complaint AS Expr4
FROM            dbo.visit
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[31] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "visit"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 185
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 2205
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'visit-DoctorUsage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'visit-DoctorUsage'
GO
/****** Object:  StoredProcedure [dbo].[medical_visit]    Script Date: 01/27/2017 11:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Michael>
-- Create date: <06/01/2017>
-- Description:	<visitdetails>
-- =============================================
CREATE PROCEDURE [dbo].[medical_visit]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	INSERT INTO visit (V_Id, Date, Time, Complaint, Di_Id, D_Id)
	Values (2, '26.01.2017','9:00am','back pain',3,3);
	
END
GO
/****** Object:  StoredProcedure [dbo].[medical_details]    Script Date: 01/27/2017 11:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Michael>
-- Create date: <06/01/2017>
-- Description:	<visitdetails>
-- =============================================
CREATE PROCEDURE [dbo].[medical_details]
	-- Add the parameters for the stored procedure here

	@doctor int = 0001

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	SELECT visit.date, time, diagnosis.category, prescription.quantity
	FROM visit, diagnosis, prescription
	WHERE visit.D_Id = @doctor
	AND visit.Di_Id = diagnosis.Di_Id
	
END
GO
/****** Object:  Table [dbo].[history]    Script Date: 01/27/2017 11:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history](
	[V_Id] [int] NULL,
	[P_Id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__visit__D_Id__3A81B327]    Script Date: 01/27/2017 11:32:23 ******/
ALTER TABLE [dbo].[visit]  WITH CHECK ADD FOREIGN KEY([D_Id])
REFERENCES [dbo].[doctor] ([D_Id])
GO
/****** Object:  ForeignKey [FK__visit__Di_Id__3B75D760]    Script Date: 01/27/2017 11:32:23 ******/
ALTER TABLE [dbo].[visit]  WITH CHECK ADD FOREIGN KEY([Di_Id])
REFERENCES [dbo].[diagnosis] ([Di_Id])
GO
/****** Object:  ForeignKey [FK__history__P_Id__403A8C7D]    Script Date: 01/27/2017 11:32:27 ******/
ALTER TABLE [dbo].[history]  WITH CHECK ADD FOREIGN KEY([P_Id])
REFERENCES [dbo].[patient] ([P_Id])
GO
/****** Object:  ForeignKey [FK__history__V_Id__3F466844]    Script Date: 01/27/2017 11:32:27 ******/
ALTER TABLE [dbo].[history]  WITH CHECK ADD FOREIGN KEY([V_Id])
REFERENCES [dbo].[visit] ([V_Id])
GO
