USE [master]
GO
/****** Object:  Database [QuanLyCLB]    Script Date: 6/30/2021 5:16:40 PM ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 6/30/2021 5:16:40 PM ******/
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
/****** Object:  Table [dbo].[DiemThi]    Script Date: 6/30/2021 5:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemThi](
	[MaDiemThi] [int] NOT NULL,
	[STT] [int] NULL,
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
/****** Object:  Table [dbo].[NguoiKiemTra]    Script Date: 6/30/2021 5:16:40 PM ******/
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
/****** Object:  Table [dbo].[PhieuChi]    Script Date: 6/30/2021 5:16:40 PM ******/
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
/****** Object:  Table [dbo].[PhieuThu]    Script Date: 6/30/2021 5:16:40 PM ******/
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
/****** Object:  Table [dbo].[VoSinh]    Script Date: 6/30/2021 5:16:40 PM ******/
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
INSERT [dbo].[DiemThi] ([MaDiemThi], [STT], [DiemThi], [KetQua], [CapBacKeTiep], [CapBacHienTai], [NgayKiemTra], [NguoiKiemTra], [GhiChu]) VALUES (1, 1, 10, N'Dat', N'Blue', N'Trang', N'26 March, 2020', N'Admin', N'no')
INSERT [dbo].[DiemThi] ([MaDiemThi], [STT], [DiemThi], [KetQua], [CapBacKeTiep], [CapBacHienTai], [NgayKiemTra], [NguoiKiemTra], [GhiChu]) VALUES (2, 2, 10, N'Dat', N'Trang', N'Trang', N'23/6/2019', N'Admin', N'khong')
INSERT [dbo].[DiemThi] ([MaDiemThi], [STT], [DiemThi], [KetQua], [CapBacKeTiep], [CapBacHienTai], [NgayKiemTra], [NguoiKiemTra], [GhiChu]) VALUES (3, 2, 10, N'Dat', N'Trang', N'Trang', N'23/6/2019', N'Admin', N'khong')
INSERT [dbo].[DiemThi] ([MaDiemThi], [STT], [DiemThi], [KetQua], [CapBacKeTiep], [CapBacHienTai], [NgayKiemTra], [NguoiKiemTra], [GhiChu]) VALUES (4, 1, 2, N'Khong dat', N'White', N'Trang', N'Wednesday, June 30, 2021', N'Admin', N'Thi lai')
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [SoTienChi], [NgayChi], [NoiDung]) VALUES (0, NULL, NULL, NULL)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [SoTienChi], [NgayChi], [NoiDung]) VALUES (1, 0, N' Tuesday, June 29, 2021 ', N'   ')
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [SoTienChi], [NgayChi], [NoiDung]) VALUES (2, 0, N' Tuesday, June 29, 2021 ', N'   ')
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [SoTienChi], [NgayChi], [NoiDung]) VALUES (3, 20000, N' Wednesday, June 30, 2021 ', N'  Mua trai cay ')
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [SoTienChi], [NgayChi], [NoiDung]) VALUES (4, 20000, N' Tuesday, June 22, 2021 ', N'  Mua võ ph?c m?i cho Tâm ')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [STT], [SoTienNop], [NgayThu], [GhiChu]) VALUES (3, 4, 100, N'  Sunday, June 27, 2021 ', N'')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [STT], [SoTienNop], [NgayThu], [GhiChu]) VALUES (4, 1, 20000, N'  Monday, June 28, 2021 ', N'')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [STT], [SoTienNop], [NgayThu], [GhiChu]) VALUES (5, 2, 30000, N'  Monday, June 28, 2021 ', N'')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [STT], [SoTienNop], [NgayThu], [GhiChu]) VALUES (6, 2, 50000, N'  Monday, June 28, 2021 ', N'')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [STT], [SoTienNop], [NgayThu], [GhiChu]) VALUES (7, 1, 50000, N'  Monday, June 28, 2021 ', N'')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [STT], [SoTienNop], [NgayThu], [GhiChu]) VALUES (8, 6, 9000, N'  Monday, June 28, 2021 ', N'')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [STT], [SoTienNop], [NgayThu], [GhiChu]) VALUES (9, 7, 20000, N'  Wednesday, June 30, 2021 ', N'Hoc Phi')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (1, N'Duc Tai', N'TEST', N'Wednesday, June 9, 2021', N'Yellow', N'Friday, June 25, 2021')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (2, N'  Hoang Van BHHH  ', N'      KHTN   ', N'Wednesday, November 6, 1996', N'White', N'Friday, June 25, 2021')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (4, N'   Hoang Happu  ', N'  HCMUTM ', N'Wednesday, June 17, 1998', N'Yellow', N'Sunday, June 27, 2021')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (5, N' Vu Van CD  ', N'  KHTN  ', N'Friday, October 1, 1993', N'White', N'Monday, May 31, 2021')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (6, N' Le Thi EF ', N'  KHTN ', N'Tuesday, October 1, 1996', N'White', N'Monday, May 31, 2021')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (7, N' Le Thi IK ', N'  BKU ', N'Wednesday, April 13, 1994', N'Blue', N'Sunday, October 7, 2018')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (8, N'  Hoang Dieu MN  ', N'    SPKT  ', N'Thursday, June 3, 1999', N'White', N'Monday, June 28, 2021')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (9, N' Nguyen Van HK ', N'  KHTN ', N'Friday, June 7, 1996', N'Yellow', N'Monday, June 28, 2021')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (10, N' Nguyen Thi QA ', N'  UIT ', N'Wednesday, July 7, 1999', N'Red', N'Friday, June 28, 2019')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (11, N' Le Thi NM ', N'  HMCUTE ', N'Tuesday, June 5, 2001', N'Orange', N'Wednesday, June 30, 2021')
INSERT [dbo].[VoSinh] ([STT], [TenVoSinh], [Truong], [SinhNhat], [CapBac], [NgayThamGia]) VALUES (12, N' Nguyen Van ET ', N'  KHOA Y  ', N'Saturday, June 5, 2004', N'Orange', N'Wednesday, June 30, 2021')
ALTER TABLE [dbo].[DiemThi]  WITH CHECK ADD FOREIGN KEY([STT])
REFERENCES [dbo].[VoSinh] ([STT])
GO
ALTER TABLE [dbo].[NguoiKiemTra]  WITH CHECK ADD FOREIGN KEY([MaPhieuChi])
REFERENCES [dbo].[PhieuChi] ([MaPhieuChi])
GO
ALTER TABLE [dbo].[PhieuThu]  WITH CHECK ADD FOREIGN KEY([STT])
REFERENCES [dbo].[VoSinh] ([STT])
GO
/****** Object:  StoredProcedure [dbo].[Get_Infor]    Script Date: 6/30/2021 5:16:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[USP_GetAccountByUserName]    Script Date: 6/30/2021 5:16:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[USP_Login]    Script Date: 6/30/2021 5:16:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[VoSinh_Find]    Script Date: 6/30/2021 5:16:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[VoSinh_Insert]    Script Date: 6/30/2021 5:16:40 PM ******/
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
