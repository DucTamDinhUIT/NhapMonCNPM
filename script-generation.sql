USE [master]
GO
/****** Object:  Database [QuanLyCLB]    Script Date: 7/7/2020 2:22:16 PM ******/
CREATE DATABASE [QuanLyCLB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyCLB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLyCLB.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyCLB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLyCLB_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyCLB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyCLB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyCLB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyCLB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyCLB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyCLB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyCLB] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyCLB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyCLB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyCLB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyCLB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyCLB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyCLB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyCLB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyCLB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyCLB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyCLB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyCLB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyCLB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyCLB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyCLB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyCLB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyCLB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyCLB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyCLB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyCLB] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyCLB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyCLB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyCLB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyCLB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyCLB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuanLyCLB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/7/2020 2:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL DEFAULT (N'Admin'),
	[PassWord] [nvarchar](1000) NOT NULL DEFAULT ((0)),
	[Type] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiemThi]    Script Date: 7/7/2020 2:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemThi](
	[MaDiemThi] [int] NOT NULL,
	[STT] [int] NOT NULL,
	[DiemThi] [float] NULL,
	[KetQua] [nvarchar](50) NULL,
	[CapBacKeTiep] [nvarchar](50) NULL,
	[CapBacHienTai] [nvarchar](50) NULL,
	[NgayKiemTra] [nvarchar](50) NULL,
	[NguoiKiemTra] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDiemThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiKiemTra]    Script Date: 7/7/2020 2:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiKiemTra](
	[MaSoID] [int] NOT NULL,
	[HoTen] [float] NULL,
	[MaPhieuChi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuChi]    Script Date: 7/7/2020 2:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuChi](
	[MaPhieuChi] [int] NOT NULL,
	[SoTienChi] [float] NULL,
	[NgayChi] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuThu]    Script Date: 7/7/2020 2:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThu](
	[MaPhieuThu] [int] NOT NULL,
	[STT] [int] NOT NULL,
	[SoTienNop] [float] NULL,
	[NgayThu] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VoSinh]    Script Date: 7/7/2020 2:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoSinh](
	[STT] [int] NOT NULL,
	[TenVoSinh] [nvarchar](200) NULL,
	[Truong] [nvarchar](200) NULL,
	[SinhNhat] [nvarchar](50) NULL,
	[CapBac] [nvarchar](50) NULL,
	[NgayThamGia] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([UserName], [DisplayName], [PassWord], [Type]) VALUES (N'K9', N'RongK9', N'1', 1)
INSERT [dbo].[Account] ([UserName], [DisplayName], [PassWord], [Type]) VALUES (N'staff', N'staff', N'1', 0)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [STT], [SoTienNop], [NgayThu], [GhiChu]) VALUES (0, 0, 0, N'n/a', N'n/a')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [STT], [SoTienNop], [NgayThu], [GhiChu]) VALUES (1, 0, 80900, N'  Tuesday, July 7, 2020 ', N'eeee')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [STT], [SoTienNop], [NgayThu], [GhiChu]) VALUES (2, 2, 344, N'  Tuesday, July 7, 2020 ', N'cdcdc')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [STT], [SoTienNop], [NgayThu], [GhiChu]) VALUES (3, 3, 4534, N'  Tuesday, July 7, 2020 ', N'cdcdc234')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [STT], [SoTienNop], [NgayThu], [GhiChu]) VALUES (4, 2, 344, N'  Tuesday, July 7, 2020 ', N'cdvfbg')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [STT], [SoTienNop], [NgayThu], [GhiChu]) VALUES (5, 1, 0, N'  Tuesday, July 7, 2020 ', N'cdcá')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (0, N'Duc Tam', N'UIT', N'n/a', N'White', N'n/a')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (1, N' dc ', N'  dff ', N'Tuesday, July 7, 2020', N'Yellow', N'Tuesday, July 7, 2020')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (2, N' dcdv ', N'  dffdvv ', N'Tuesday, July 7, 2020', N'Blue', N'Tuesday, July 7, 2020')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (3, N' 2wd ', N'  sca ', N'Tuesday, July 7, 2020', N'Red', N'Tuesday, July 7, 2020')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (4, N' 234 ', N'  23423 ', N'Tuesday, July 7, 2020', N'Green', N'Tuesday, July 7, 2020')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (5, N' Bla Bla ', N'  TTO ', N'Tuesday, July 7, 2020', N'Yellow', N'Tuesday, July 7, 2020')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (6, N' Ho en ', N'  HCD ', N'Tuesday, July 7, 2020', N'', N'Tuesday, July 7, 2020')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (7, N' tr ', N'  dv ', N'Tuesday, July 7, 2020', N'', N'Tuesday, July 7, 2020')
ALTER TABLE [dbo].[DiemThi]  WITH CHECK ADD FOREIGN KEY([STT])
REFERENCES [dbo].[VoSinh] ([STT])
GO
ALTER TABLE [dbo].[NguoiKiemTra]  WITH CHECK ADD FOREIGN KEY([MaPhieuChi])
REFERENCES [dbo].[PhieuChi] ([MaPhieuChi])
GO
ALTER TABLE [dbo].[PhieuThu]  WITH CHECK ADD FOREIGN KEY([STT])
REFERENCES [dbo].[VoSinh] ([STT])
GO
/****** Object:  StoredProcedure [dbo].[Get_Infor]    Script Date: 7/7/2020 2:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROC [dbo].[Get_Infor]
@TenVoSinh nvarchar(100),  @CapBac nvarchar(20)
AS
BEGIN
	SELECT * FROM dbo.VoSinh WHERE TenVoSinh = @TenVoSinh AND CapBac = @CapBac
END

GO
/****** Object:  StoredProcedure [dbo].[USP_GetAccountByUserName]    Script Date: 7/7/2020 2:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[USP_GetAccountByUserName]
@userName nvarchar(100)
AS 
BEGIN
	SELECT * FROM dbo.Account WHERE UserName = @userName
END

GO
/****** Object:  StoredProcedure [dbo].[USP_Login]    Script Date: 7/7/2020 2:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[USP_Login]
@userName nvarchar(100), @passWord nvarchar(100)
AS
BEGIN
	SELECT * FROM dbo.Account WHERE UserName = @userName AND PassWord = @passWord
END

GO
/****** Object:  StoredProcedure [dbo].[VoSinh_Find]    Script Date: 7/7/2020 2:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROC [dbo].[VoSinh_Find]
@voSinhId nvarchar(100),  @ten nvarchar(20)
AS
BEGIN
	SELECT * FROM dbo.VoSinh WHERE STT = @voSinhId AND TenVoSinh = @ten
END

GO
/****** Object:  StoredProcedure [dbo].[VoSinh_Insert]    Script Date: 7/7/2020 2:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROC [dbo].[VoSinh_Insert]
@voSinhId nvarchar(100),  @ten nvarchar(20)
AS
BEGIN
	INSERT 
	INTO  dbo.VoSinh(STT,TenVoSinh,Truong,SinhNhat,CapBac,NgayThamGia) 
	 VALUES ('4', 'Thanh', 'UIT', 'Haiphong', 'trắng','26/8'); 
 END

GO
USE [master]
GO
ALTER DATABASE [QuanLyCLB] SET  READ_WRITE 
GO
