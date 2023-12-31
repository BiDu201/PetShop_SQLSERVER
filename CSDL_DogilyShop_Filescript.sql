USE [master]
GO
/****** Object:  Database [QL_DogilyPetShop]    Script Date: 12/29/2022 1:12:07 PM ******/
CREATE DATABASE [QL_DogilyPetShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_DogilyPetShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QL_DogilyPetShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_DogilyPetShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QL_DogilyPetShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QL_DogilyPetShop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_DogilyPetShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_DogilyPetShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_DogilyPetShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_DogilyPetShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_DogilyPetShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_DogilyPetShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET RECOVERY FULL 
GO
ALTER DATABASE [QL_DogilyPetShop] SET  MULTI_USER 
GO
ALTER DATABASE [QL_DogilyPetShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_DogilyPetShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_DogilyPetShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_DogilyPetShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_DogilyPetShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_DogilyPetShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_DogilyPetShop', N'ON'
GO
ALTER DATABASE [QL_DogilyPetShop] SET QUERY_STORE = OFF
GO
USE [QL_DogilyPetShop]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[macv] [int] NOT NULL,
	[tencv] [nvarchar](20) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[macv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhieuNhap]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuNhap](
	[mapn] [char](10) NOT NULL,
	[masp] [char](10) NOT NULL,
	[soluong] [int] NULL,
	[gianhap] [decimal](18, 2) NOT NULL,
	[thanhtien] [money] NULL,
 CONSTRAINT [PK_ChiTietPN] PRIMARY KEY CLUSTERED 
(
	[mapn] ASC,
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonGia]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonGia](
	[masp] [char](10) NOT NULL,
	[giaban] [money] NULL,
 CONSTRAINT [PK_DonGia] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiongPet]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiongPet](
	[magiong] [int] NOT NULL,
	[tengiong] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_GiongPet] PRIMARY KEY CLUSTERED 
(
	[magiong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UNIQUE_GiongPet] UNIQUE NONCLUSTERED 
(
	[tengiong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[mahd] [int] IDENTITY(1,1) NOT NULL,
	[transno] [varchar](15) NULL,
	[masp] [char](10) NULL,
	[soluong] [int] NULL,
	[gia] [decimal](18, 2) NULL,
	[thanhtien] [money] NULL,
	[makh] [char](10) NULL,
	[thungan] [varchar](20) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[makh] [char](10) NOT NULL,
	[tenkh] [nvarchar](30) NOT NULL,
	[diachi] [nvarchar](100) NULL,
	[dthoai] [varchar](20) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPet]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPet](
	[maloai] [int] NOT NULL,
	[tenloai] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_LoaiPet] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UNIQUE_LoaiPet] UNIQUE NONCLUSTERED 
(
	[tenloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[mand] [char](10) NOT NULL,
	[tennd] [varchar](50) NOT NULL,
	[dchi] [nvarchar](50) NULL,
	[dienthoai] [varchar](50) NULL,
	[macv] [int] NULL,
	[ngsinh] [date] NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[mand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UNIQUE_NguoiDung] UNIQUE NONCLUSTERED 
(
	[tennd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[mancc] [char](10) NOT NULL,
	[tenncc] [nvarchar](30) NOT NULL,
	[dchincc] [nvarchar](50) NOT NULL,
	[dthoaincc] [char](12) NOT NULL,
 CONSTRAINT [PK_NhaCC] PRIMARY KEY CLUSTERED 
(
	[mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[mapn] [char](10) NOT NULL,
	[ngaynhap] [date] NOT NULL,
	[mancc] [char](10) NULL,
	[mand] [char](10) NULL,
	[tongtien] [money] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[mapn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[masp] [char](10) NOT NULL,
	[tensp] [nvarchar](50) NOT NULL,
	[magiong] [int] NOT NULL,
	[maloai] [int] NOT NULL,
	[soluongton] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CTPhieuNhap] ADD  DEFAULT ((0)) FOR [thanhtien]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [thanhtien]
GO
ALTER TABLE [dbo].[PhieuNhap] ADD  DEFAULT (getdate()) FOR [ngaynhap]
GO
ALTER TABLE [dbo].[PhieuNhap] ADD  DEFAULT ((0)) FOR [tongtien]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [soluongton]
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_PhieuNhap] FOREIGN KEY([mapn])
REFERENCES [dbo].[PhieuNhap] ([mapn])
GO
ALTER TABLE [dbo].[CTPhieuNhap] CHECK CONSTRAINT [FK_CTPN_PhieuNhap]
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_SanPham] FOREIGN KEY([masp])
REFERENCES [dbo].[SanPham] ([masp])
GO
ALTER TABLE [dbo].[CTPhieuNhap] CHECK CONSTRAINT [FK_CTPN_SanPham]
GO
ALTER TABLE [dbo].[DonGia]  WITH CHECK ADD  CONSTRAINT [FK_DonGia_SanPham] FOREIGN KEY([masp])
REFERENCES [dbo].[SanPham] ([masp])
GO
ALTER TABLE [dbo].[DonGia] CHECK CONSTRAINT [FK_DonGia_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([makh])
REFERENCES [dbo].[KhachHang] ([makh])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_SanPham] FOREIGN KEY([masp])
REFERENCES [dbo].[SanPham] ([masp])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_SanPham]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_ChucVu] FOREIGN KEY([macv])
REFERENCES [dbo].[ChucVu] ([macv])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_ChucVu]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NguoiDung] FOREIGN KEY([mand])
REFERENCES [dbo].[NguoiDung] ([mand])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NguoiDung]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCC] FOREIGN KEY([mancc])
REFERENCES [dbo].[NhaCungCap] ([mancc])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCC]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_GiongPet] FOREIGN KEY([magiong])
REFERENCES [dbo].[GiongPet] ([magiong])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_GiongPet]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiPet] FOREIGN KEY([maloai])
REFERENCES [dbo].[LoaiPet] ([maloai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiPet]
GO
/****** Object:  StoredProcedure [dbo].[Insert_CTPhieuNhap]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Insert_CTPhieuNhap] @mapn char(10), @masp char(10), @sl int, @gianhap money
As
	Insert Into CTPhieuNhap(mapn,masp,soluong,gianhap)
	Values(@mapn,@masp,@sl,@gianhap)
GO
/****** Object:  StoredProcedure [dbo].[Insert_PN]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Thêm phiếu nhập*/
Create proc [dbo].[Insert_PN] @mapn char(10), @mancc char(10), @mand char(10)
As
	INSERT INTO PhieuNhap(mapn,mancc,mand)
	VALUES(@mapn,@mancc,@mand)
GO
/****** Object:  StoredProcedure [dbo].[Insert_SanPham]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Thêm sản phẩm*/
Create Proc [dbo].[Insert_SanPham] @masp char(10), @tensp nvarchar(30), @mg int, @ml int, @gia money
As
	Insert Into SanPham(masp,tensp,magiong,maloai)
	Values(@masp,@tensp, @mg, @ml)

	Insert Into DonGia
	Values(@masp,@gia)
GO
/****** Object:  StoredProcedure [dbo].[ShowBill]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Show bill (chi tiết những sản phẩm đã chọn mua)*/
Create Proc [dbo].[ShowBill] @transno varchar(15)
As
	If (Select TOP(1) makh from HoaDon where transno LIKE @transno) is null
		SELECT DISTINCT mahd, hd.masp, tensp, soluong, gia, thanhtien, 'tenkh' = NULL,thungan
		FROM HoaDon hd, KhachHang kh, SanPham sp
		Where sp.masp = hd.masp and transno LIKE @transno
	Else
		SELECT mahd, hd.masp, tensp, soluong, gia, thanhtien,kh.tenkh,thungan
		FROM HoaDon hd, KhachHang kh, SanPham sp
		Where kh.makh = hd.makh and sp.masp = hd.masp and transno LIKE @transno
GO
/****** Object:  StoredProcedure [dbo].[Update_SanPham]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Sửa sản phẩm*/
Create Proc [dbo].[Update_SanPham] @masp char(10), @tensp nvarchar(30), @mg int, @ml int, @slt int, @gia money
As
	Update SanPham
	Set tensp = @tensp, magiong = @mg, maloai = @ml, soluongton = @slt
	Where masp = @masp

	Update DonGia
	Set giaban = @gia 
	Where masp = @masp
GO
/****** Object:  StoredProcedure [dbo].[Xoa_CTPN]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Xóa chi tiết phiếu nhập*/
Create proc [dbo].[Xoa_CTPN] @mapn char(10), @masp char(10)
As
	Delete From CTPhieuNhap Where mapn = @mapn and masp = @masp
GO
/****** Object:  StoredProcedure [dbo].[Xoa_PN]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Thủ tục xóa 1 phiếu nhập*/
Create Proc [dbo].[Xoa_PN] @mapn char(10)
As
	Delete From CTPhieuNhap Where mapn = @mapn
	Delete From PhieuNhap Where mapn = @mapn
GO
/****** Object:  StoredProcedure [dbo].[Xoa_SP]    Script Date: 12/29/2022 1:12:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Xóa 1 sản phẩm*/
Create Proc [dbo].[Xoa_SP] @masp char(10)
As
	if (Select Count(*) From CTPhieuNhap WHere masp = @masp) > 0
		Commit tran
	Else
		Delete From DonGia Where masp = @masp
		Delete From SanPham Where masp = @masp
GO
USE [master]
GO
ALTER DATABASE [QL_DogilyPetShop] SET  READ_WRITE 
GO
