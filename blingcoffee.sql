-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 20, 2023 lúc 04:11 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blingcoffee`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `id` char(18) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `gioitinh` tinyint(1) NOT NULL,
  `noidung` text NOT NULL,
  `email` char(100) NOT NULL,
  `sdt` char(10) DEFAULT NULL,
  `id_sanpham` char(18) NOT NULL,
  `thoigian` datetime NOT NULL,
  `matraloi` char(18) DEFAULT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_hoa_don`
--

CREATE TABLE `chi_tiet_hoa_don` (
  `id_hoadon` char(18) NOT NULL,
  `id_chitietsanpham` char(18) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giamgia` int(11) NOT NULL,
  `tonggia` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_khuyen_mai`
--

CREATE TABLE `chi_tiet_khuyen_mai` (
  `id_chitietsanpham` char(18) NOT NULL,
  `id_khuyenmai` char(18) NOT NULL,
  `muckhuyenmai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_san_pham`
--

CREATE TABLE `chi_tiet_san_pham` (
  `id` char(18) NOT NULL,
  `kichthuoc` char(18) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `ngaysanxuat` date NOT NULL,
  `hansudung` date NOT NULL,
  `id_sanpham` char(18) NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_san_pham`
--

INSERT INTO `chi_tiet_san_pham` (`id`, `kichthuoc`, `soluong`, `giasanpham`, `ngaysanxuat`, `hansudung`, `id_sanpham`, `trangthai`, `created_at`, `updated_at`) VALUES
('CTSP001', 'QC20210723205931', 500000, 35000, '2023-01-01', '9999-12-31', 'SP20230217082529', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP002', 'QC20210723205946', 500000, 45000, '2023-01-01', '9999-12-31', 'SP20230217082529', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP003', 'QC20210723205931', 500000, 35000, '2023-01-01', '9999-12-31', 'SP20230217083837', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP004', 'QC20210723205946', 500000, 45000, '2023-01-01', '9999-12-31', 'SP20230217083837', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP005', 'QC20210723205931', 965, 40000, '2023-01-01', '9999-01-01', 'SP20230217084534', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP006', 'QC20210723205946', 965, 50000, '2023-01-01', '9999-01-01', 'SP20230217084534', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP007', 'QC20210723205931', 965, 37000, '2023-01-01', '9999-01-01', 'SP20230217084736', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP008', 'QC20210723205946', 965, 47000, '2023-01-01', '9999-01-01', 'SP20230217084736', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP009', 'QC20210723205931', 965, 40000, '2023-01-01', '9999-01-01', 'SP20230217085134', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP010', 'QC20210723205946', 965, 50000, '2023-01-01', '9999-01-01', 'SP20230217085134', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP011', 'QC20210723205931', 965, 37000, '2023-01-01', '9999-01-01', 'SP20230217085948', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP012', 'QC20210723205946', 965, 47000, '2023-01-01', '9999-01-01', 'SP20230217085948', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP013', 'QC20210723205931', 965, 35000, '2023-01-01', '9999-01-01', 'SP20230217090049', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP014', 'QC20210723205946', 965, 45000, '2023-01-01', '9999-01-01', 'SP20230217090049', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP015', 'QC20210723205931', 965, 37000, '2023-01-01', '9999-01-01', 'SP20230217090206', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP016', 'QC20210723205946', 965, 47000, '2023-01-01', '9999-01-01', 'SP20230217090206', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP017', 'QC20210723205931', 965, 40000, '2023-01-01', '9999-01-01', 'SP20230217090252', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP018', 'QC20210723205946', 965, 50000, '2023-01-01', '9999-01-01', 'SP20230217090252', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP019', 'QC20210723205931', 965, 40000, '2023-01-01', '9999-01-01', 'SP20230217090355', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP020', 'QC20210723205946', 965, 50000, '2023-01-01', '9999-01-01', 'SP20230217090355', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP021', 'QC20210723205931', 965, 40000, '2023-01-01', '9999-01-01', 'SP20230217090438', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP022', 'QC20210723205946', 965, 50000, '2023-01-01', '9999-01-01', 'SP20230217090438', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP023', 'QC20210723205931', 965, 35000, '2023-01-01', '9999-01-01', 'SP20230217090535', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP024', 'QC20210723205946', 965, 45000, '2023-01-01', '9999-01-01', 'SP20230217090535', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP025', 'QC20210723205931', 965, 35000, '2023-01-01', '9999-01-01', 'SP20230217090851', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP026', 'QC20210723205946', 965, 45000, '2023-01-01', '9999-01-01', 'SP20230217090851', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP027', 'QC20210723205931', 965, 23000, '2023-01-01', '9999-01-01', 'SP20230217091005', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP028', 'QC20210723205946', 965, 30000, '2023-01-01', '9999-01-01', 'SP20230217091005', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP029', 'QC20210723205931', 965, 20000, '2023-01-01', '9999-01-01', 'SP20230217091047', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP030', 'QC20210723205946', 965, 27000, '2023-01-01', '9999-01-01', 'SP20230217091047', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP031', 'QC20210723205931', 965, 29000, '2023-01-01', '9999-01-01', 'SP20230217091305', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP032', 'QC20210723205946', 965, 39000, '2023-01-01', '9999-01-01', 'SP20230217091305', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP033', 'QC20210723205931', 965, 33000, '2023-01-01', '9999-01-01', 'SP20230217091343', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP034', 'QC20210723205946', 965, 43000, '2023-01-01', '9999-01-01', 'SP20230217091343', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP035', 'QC20210723205931', 965, 35000, '2023-01-01', '9999-01-01', 'SP20230217091454', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP036', 'QC20210723205946', 965, 45000, '2023-01-01', '9999-01-01', 'SP20230217091454', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP037', 'QC20210723205946', 2000000000, 43000, '1000-01-01', '9999-12-31', 'SP20230217081638', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP038', 'QC20210723205931', 2000000000, 33000, '1000-01-01', '9999-12-31', 'SP20230217081638', 1, '0000-00-00 00:00:00', '2023-02-16 18:34:55'),
('CTSP040', 'QC20210723210000', 2000000000, 35000, '2023-01-01', '9999-12-31', 'SP20230218134336', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP041', 'QC20210723210000', 2000000000, 29000, '2023-01-01', '9999-12-31', 'SP20230218134522', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP042', 'QC20210723210000', 2000000000, 29000, '2023-01-01', '9999-12-31', 'SP20230218134820', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP043', 'QC20210723210000', 2000000000, 35000, '2023-01-01', '9999-12-31', 'SP20230218134907', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP044', 'QC20210723210000', 2000000000, 35000, '2023-01-01', '9999-12-31', 'SP20230218135238', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP045', 'QC20210723210000', 2000000000, 39000, '2023-01-01', '9999-12-31', 'SP20230218135523', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP046', 'QC20210723210000', 2000000000, 30000, '2023-01-01', '9999-12-31', 'SP20230218135613', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP047', 'QC20210723210000', 2000000000, 19000, '2023-01-01', '9999-12-31', 'SP20230218140127', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP048', 'QC20210723210000', 2000000000, 19000, '2023-01-01', '9999-12-31', 'SP20230218140153', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP049', 'QC20210723210000', 2000000000, 35000, '2023-01-01', '9999-12-31', 'SP20230218140236', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP050', 'QC20210723210000', 2000000000, 15000, '2023-01-01', '9999-12-31', 'SP20230218140313', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP051', 'QC20210723210000', 2000000000, 35000, '2023-01-01', '9999-12-31', 'SP20230218140351', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP052', 'QC20210723205910', 965, 144000, '2023-01-23', '2025-01-01', 'SP20230218142623', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP053', 'QC20210723205921', 995, 57000, '2023-01-23', '2025-01-01', 'SP20230218142623', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP054', 'QC20210723205910', 965, 138000, '2023-01-23', '2025-01-01', 'SP20230218142714', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP055', 'QC20210723205921', 995, 55000, '2023-01-23', '2025-01-01', 'SP20230218142714', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP056', 'QC20210723205910', 965, 169000, '2023-01-23', '2025-01-01', 'SP20230218142825', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP057', 'QC20210723205921', 995, 67500, '2023-01-23', '2025-01-01', 'SP20230218142825', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP058', 'QC20210723205910', 965, 238000, '2023-01-23', '2025-01-01', 'SP20230218145938', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP059', 'QC20210723205921', 995, 89500, '2023-01-23', '2025-01-01', 'SP20230218145938', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('CTSP060', 'QC20210723205910', 965, 128000, '2023-01-23', '2025-01-01', 'SP20230218150527', 1, '0000-00-00 00:00:00', '2023-02-18 01:12:26'),
('CTSP061', 'QC20210723205921', 995, 69000, '2023-01-23', '2025-01-01', 'SP20230218150527', 1, '0000-00-00 00:00:00', '2023-02-18 01:13:19'),
('CTSP062', 'QC20210723205910', 965, 119000, '2023-01-23', '2025-01-01', 'SP20230218150743', 1, '0000-00-00 00:00:00', '2023-02-18 01:12:40'),
('CTSP063', 'QC20210723205921', 995, 69500, '2023-01-23', '2025-01-01', 'SP20230218150743', 1, '0000-00-00 00:00:00', '2023-02-18 01:12:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_gia`
--

CREATE TABLE `danh_gia` (
  `id` char(18) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `noidung` text NOT NULL,
  `email` char(100) NOT NULL,
  `id_sanpham` char(18) NOT NULL,
  `thoigian` datetime NOT NULL,
  `sosao` tinyint(4) NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id` char(18) NOT NULL,
  `ngaylap` datetime NOT NULL,
  `tongtienhoadon` int(11) NOT NULL,
  `giamgia` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `diemtichluy` int(11) DEFAULT NULL,
  `tenkhachhang` varchar(50) DEFAULT NULL,
  `sdtkhachhang` char(10) DEFAULT NULL,
  `diachikhachhang` varchar(150) DEFAULT NULL,
  `emailkhachhang` char(100) DEFAULT NULL,
  `ghichukhachhang` text DEFAULT NULL,
  `id_khachhang` char(18) NOT NULL,
  `id_nhanvien` char(18) NOT NULL,
  `hinhthucthanhtoan` char(10) DEFAULT NULL,
  `trangthai` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `id` char(18) NOT NULL,
  `tenkhachhang` varchar(50) NOT NULL,
  `sdt` char(10) NOT NULL,
  `diachi` varchar(150) NOT NULL,
  `email` char(100) NOT NULL,
  `diemtichluy` int(11) NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyen_mai`
--

CREATE TABLE `khuyen_mai` (
  `id` char(18) NOT NULL,
  `tenkhuyenmai` varchar(100) NOT NULL,
  `thoigianbatdau` date NOT NULL,
  `thoigianketthuc` date NOT NULL,
  `mota` text NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_nhan_vien`
--

CREATE TABLE `loai_nhan_vien` (
  `id` char(18) NOT NULL,
  `tenloainhanvien` varchar(50) NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_nhan_vien`
--

INSERT INTO `loai_nhan_vien` (`id`, `tenloainhanvien`, `trangthai`, `created_at`, `updated_at`) VALUES
('LNV00000000000000', 'Admin', 1, '2021-07-22 23:58:00', '2021-07-22 23:58:00'),
('LNV20210726150930', 'Nhân Viên Bán Hàng', 1, '2023-02-13 04:09:30', '2023-02-13 04:09:20'),
('LNV20210726152255', 'Nhân Viên Bảo Vệ', 0, '2026-02-13 04:09:30', '2023-02-13 04:09:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_san_pham`
--

CREATE TABLE `loai_san_pham` (
  `id` char(18) NOT NULL,
  `tenloaisanpham` varchar(50) NOT NULL,
  `trangthai` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_san_pham`
--

INSERT INTO `loai_san_pham` (`id`, `tenloaisanpham`, `trangthai`, `created_at`, `updated_at`) VALUES
('LSP20210723205843', 'Cà Phê Hạt', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LSP20210723205849', 'Nước Uống', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LSP20210723205854', 'Bánh', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `id` char(18) NOT NULL,
  `tennhanvien` varchar(50) NOT NULL,
  `sdt` char(10) NOT NULL,
  `diachi` varchar(150) NOT NULL,
  `email` char(100) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` tinyint(1) NOT NULL,
  `hinhanh` char(25) NOT NULL,
  `luong` int(11) NOT NULL,
  `password` char(200) NOT NULL,
  `id_loainhanvien` char(18) NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_vien`
--

INSERT INTO `nhan_vien` (`id`, `tennhanvien`, `sdt`, `diachi`, `email`, `ngaysinh`, `gioitinh`, `hinhanh`, `luong`, `password`, `id_loainhanvien`, `trangthai`, `created_at`, `updated_at`) VALUES
('NV00000000000000', 'Admin', '0123456789', 'ĐỨC HOÀ LONG AN', 'admin@gmail.com', '2000-07-13', 1, 'NOIMAGE.png', 0, '$2y$10$EQEqaY0mtni5ZCLKsc2E.ee2P5h7w1wDZgd2cRrCOgMNtff/eOv0K', 'LNV00000000000000', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('NV20230217091704', 'Nguyễn Thiện Tâm', '0343344658', 'ĐỨC HOÀ - LONG ÂN', 'tamnt.124010121035@vtc.edu.vn', '2000-09-02', 1, 'NV20230217091704.jpg', 5000000, '$2y$10$1pbmZWh7QGp7IecPk4BTUO.mXh4AS/mJER3.2Nu6II9QjJUwnW8de', 'LNV20210726150930', 1, '2023-02-16 19:17:04', '2023-02-16 19:17:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quy_cach`
--

CREATE TABLE `quy_cach` (
  `id` char(18) NOT NULL,
  `tenquycach` varchar(50) NOT NULL,
  `id_loaisanpham` char(18) NOT NULL,
  `trangthai` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quy_cach`
--

INSERT INTO `quy_cach` (`id`, `tenquycach`, `id_loaisanpham`, `trangthai`, `created_at`, `updated_at`) VALUES
('QC20210723205910', 'TÚI 500G', 'LSP20210723205843', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('QC20210723205921', 'TÚI 250G', 'LSP20210723205843', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('QC20210723205931', 'Nhỏ', 'LSP20210723205849', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('QC20210723205946', 'Lớn', 'LSP20210723205849', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('QC20210723210000', 'Phần Lớn', 'LSP20210723205854', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` char(18) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `hinhanh` char(25) NOT NULL,
  `mota` text DEFAULT NULL,
  `the` varchar(50) NOT NULL,
  `sosao` float DEFAULT NULL,
  `id_loaisanpham` char(18) NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `tensanpham`, `hinhanh`, `mota`, `the`, `sosao`, `id_loaisanpham`, `trangthai`, `created_at`, `updated_at`) VALUES
('SP20230217081638', 'MELON PEACH TEA', 'SP20230217081638.jpg', 'Vị thanh ngọt của đào, vị mát lạnh của dưa hấu, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng chính là điểm sáng làm nên sức hấp dẫn của thức uống này.', 'BÁN CHẠY NHẤT', NULL, 'LSP20210723205849', 1, '2023-02-16 18:16:38', '2023-02-16 18:22:42'),
('SP20230217082529', 'LYCHEE LOTUS', 'SP20230217082529.jpg', 'Thức uống mang hương vị của vải, của sen, của trà Oolong đầy thanh mát cho tất cả các thành viên trong dịp hè này. An lành, thư thái và đậm đà chính là những gì Bling mong muốn gửi trao đến bạn và gia đình.', 'THƯỜNG', NULL, 'LSP20210723205849', 1, '2023-02-16 18:25:29', '2023-02-16 18:25:29'),
('SP20230217083837', 'SUPPER TOPPING', 'SP20230217083837.jpg', 'Nền trà oolong hảo hạng kết hợp cùng nhãn tươi, ngọt ngọt và vị trà chát nhẹ. Trà nhãn siêu topping là thức uống thanh mát, nhẹ nhàng phù hợp cho cả buổi sáng và chiều tối.', 'THƯỜNG', NULL, 'LSP20210723205849', 1, '2023-02-16 18:38:37', '2023-02-16 18:38:37'),
('SP20230217084534', 'OLONG CHOCO MACCHIATO', 'SP20230217084534.jpg', 'Bột chocolate nguyên chất hoà cùng sữa tươi béo ngậy, ấm nóng ,phủ bên trên là lớp Macchiato \"homemade\" bồng bềnh quyến rũ vị phô mai mặn mặn mà béo béo.. Vị ngọt tự nhiên, không gắt cổ, để lại một chút đắng nhẹ, cay cay trên đầu lưỡi.', 'MỚI', NULL, 'LSP20210723205849', 1, '2023-02-16 18:45:34', '2023-02-16 18:45:34'),
('SP20230217084736', 'LATTE CAFE MACCHIATO', 'SP20230217084736.jpg', 'Một sự kết hợp tinh tế giữa vị đắng cà phê Espresso nguyên chất hòa quyện cùng vị sữa nóng ngọt ngào, bên trên là một lớp Macchiato mỏng nhẹ tạo nên một tách cà phê hoàn hảo về hương vị lẫn nhãn quan.', 'THƯỜNG', NULL, 'LSP20210723205849', 1, '2023-02-16 18:47:36', '2023-02-16 18:47:36'),
('SP20230217085134', 'MATCHA', 'SP20230217085134.jpg', 'Trà xanh thượng hạng từ cao nguyên Việt Nam, kết hợp cùng đá xay và một lớp kem dày phủ lên trên vô cùng hấp dẫn. Matcha đá xay thơm ngon, mát lạnh, chinh phục bất kỳ ai ngay lần đầu nếm thử', 'THƯỜNG', NULL, 'LSP20210723205849', 1, '2023-02-16 18:51:34', '2023-02-16 18:51:34'),
('SP20230217085948', 'WHITE COLDBREW', 'SP20230217085948.jpg', 'Thanh mát và cân bằng với hương vị cà phê nguyên bản 100% Arabica Cầu Đất cùng sữa tươi thơm béo cho từng ngụm tròn vị, hấp dẫn.', 'THƯỜNG', NULL, 'LSP20210723205849', 1, '2023-02-16 18:59:48', '2023-02-16 18:59:48'),
('SP20230217090049', 'ORIGINAL COLDBREW', 'SP20230217090049.jpg', 'Tại Bling Coffee, Cold Brew được ủ và phục vụ mỗi ngày từ 100% hạt Arabica Cầu Đất với hương gỗ thông, hạt dẻ, nốt sô-cô-la đặc trưng, thoang thoảng hương khói nhẹ giúp Cold Brew giữ nguyên vị tươi mới.', 'THƯỜNG', NULL, 'LSP20210723205849', 1, '2023-02-16 19:00:50', '2023-02-16 19:01:01'),
('SP20230217090206', 'AMERICANO', 'SP20230217090206.jpg', 'Americano được pha chế bằng cách pha thêm nước với tỷ lệ nhất định vào tách cà phê Espresso, từ đó mang lại hương vị nhẹ nhàng và giữ trọn được mùi hương cà phê đặc trưng.', 'THƯỜNG', NULL, 'LSP20210723205849', 1, '2023-02-16 19:02:06', '2023-02-16 19:02:06'),
('SP20230217090252', 'CAPPUCHINO', 'SP20230217090252.jpg', 'Capuchino là thức uống hòa quyện giữa hương thơm của sữa, vị béo của bọt kem cùng vị đậm đà từ cà phê Espresso. Tất cả tạo nên một hương vị đặc biệt, một chút nhẹ nhàng, trầm lắng và tinh tế.', 'THƯỜNG', NULL, 'LSP20210723205849', 1, '2023-02-16 19:02:52', '2023-02-16 19:02:52'),
('SP20230217090355', 'BLING COFFEE LATTE ( COLD )', 'SP20230217090355.jpg', 'Một sự kết hợp tinh tế giữa vị đắng cà phê Espresso nguyên chất hòa quyện cùng vị sữa nóng ngọt ngào, bên trên là một lớp kem mỏng nhẹ tạo nên một tách cà phê hoàn hảo về hương vị lẫn nhãn quan', 'THƯỜNG', NULL, 'LSP20210723205849', 1, '2023-02-16 19:03:55', '2023-02-16 19:13:56'),
('SP20230217090438', 'BLING COFFEE LATTE ( HOT )', 'SP20230217090438.jpg', 'Một sự kết hợp tinh tế giữa vị đắng cà phê Espresso nguyên chất hòa quyện cùng vị sữa nóng ngọt ngào, bên trên là một lớp kem mỏng nhẹ tạo nên một tách cà phê hoàn hảo về hương vị lẫn nhãn quan.', 'THƯỜNG', NULL, 'LSP20210723205849', 1, '2023-02-16 19:04:38', '2023-02-16 19:14:06'),
('SP20230217090535', 'BITTER ORANGE', 'SP20230217090535.jpg', 'Vị chua ngọt của cam làm dậy lên hương vị trái cây tự nhiên vốn sẵn có trong hạt cà phê, hòa quyện thêm vị đăng đắng, ngọt dịu nhẹ nhàng của  hạt Arabica Cầu Đất để mang đến một cách thưởng thức cà phê hoàn toàn mới, vừa thơm lừng hương cà phê quen thuộc, vừa nhẹ nhàng và thanh mát bởi hương trái cây đầy thú vị.', 'MỚI', NULL, 'LSP20210723205849', 1, '2023-02-16 19:05:35', '2023-02-16 19:05:35'),
('SP20230217090851', 'COFFEE ICE BLENDED', 'SP20230217090851.jpg', 'Được kết hợp từ cà phê pha Phin truyền thống chỉ có tại Bling Coffee, cùng với đá xay mát lạnh. Trên cùng là lớp kem tươi thơm béo và bột ca cao đậm đà. Món nước hoàn hảo để khởi đầu câu chuyện cùng bạn bè.', 'THƯỜNG', NULL, 'LSP20210723205849', 1, '2023-02-16 19:08:51', '2023-02-16 19:08:51'),
('SP20230217091005', 'NAU DA', 'SP20230217091005.jpg', 'Cà phê Đắk Lắk nguyên chất được pha phin truyền thống kết hợp với sữa đặc tạo nên hương vị đậm đà, hài hòa giữa vị ngọt đầu lưỡi và vị đắng thanh thoát nơi hậu vị.', 'BÁN CHẠY NHẤT', NULL, 'LSP20210723205849', 1, '2023-02-16 19:10:05', '2023-02-16 19:10:05'),
('SP20230217091047', 'DEN DA', 'SP20230217091047.jpg', 'Không ngọt ngào như Bạc sỉu hay Cà phê sữa, Cà phê đen mang trong mình phong vị trầm lắng, thi vị hơn. Người ta thường phải ngồi rất lâu mới cảm nhận được hết hương thơm ngào ngạt, phảng phất mùi cacao và cái đắng mượt mà trôi tuột xuống vòm họng.', 'BÁN CHẠY NHẤT', NULL, 'LSP20210723205849', 1, '2023-02-16 19:10:47', '2023-02-16 19:14:19'),
('SP20230217091305', 'HANOI', 'SP20230217091305.jpg', 'Được làm từ 100% Arabica kết hợp với sữa đặc sau đó mang đi đánh lạnh để tạo cảm giác như đang uống bia hơi Hà Nội - một nét văn hoá đặc trưng tại thành phố thủ đô. Đem lại hương vị đậm đà khó quên nhưng rất sảng khoái.', 'MỚI', NULL, 'LSP20210723205849', 1, '2023-02-16 19:13:05', '2023-02-16 19:13:50'),
('SP20230217091343', 'SAIGON', 'SP20230217091343.jpg', '- Được làm từ 100% Arabica kết hợp với sữa đặc và Foam sữa đánh lạnh. Như tính cách của Sài Gòn - phóng khoáng mà tinh tế. Sài Gòn là thức uống thích hợp cho mọi đối tượng, cũng như cái cách Sài Gòn là nơi dễ sống, nơi người dân tất cả mọi miền đất nước cùng sinh sống và làm việc, hoà đồng và trang nhã.', 'MỚI', NULL, 'LSP20210723205849', 1, '2023-02-16 19:13:43', '2023-02-16 19:13:43'),
('SP20230217091454', 'DALAT', 'SP20230217091454.jpg', 'Được làm từ 100% Arabica kết hợp với kem sữa béo. hương vị đem đến cảm giác nhẹ nhàng và nên thơ. Lấy ý tưởng từ trải nghiệm của rất nhiều lần đến Đà Lạt - Đà Lạt nhẹ nhàng, ngọt ngào, đơn giản nhưng sẽ làm người ta nghiện bởi những thứ ấy.', 'MỚI', NULL, 'LSP20210723205849', 1, '2023-02-16 19:14:54', '2023-02-16 19:14:54'),
('SP20230218134336', 'PHÔ MAI TRÀ XANH', 'SP20230218134336.jpg', 'Một sự sáng tạo mới mẻ, kết hợp giữa trà xanh đậm đà và phô mai ít béo.', 'MỚI', NULL, 'LSP20210723205854', 1, '2023-02-17 23:43:36', '2023-02-17 23:55:37'),
('SP20230218134522', 'PHÔ MAI CÀ PHÊ', 'SP20230218134522.jpg', 'Làm từ cà phê truyền thống của Bling Coffee, kết hợp với phô mai thơm ngon! Chiếc bánh phù hợp đi cùng với bất cứ món cà phê nào!', 'THƯỜNG', NULL, 'LSP20210723205854', 1, '2023-02-17 23:45:22', '2023-02-17 23:52:59'),
('SP20230218134820', 'PHÔ MAI CHANH DÂY', 'SP20230218134820.jpg', 'Vị béo của phô mai cùng với vị chua của chanh dây, tạo nên chiếc bánh thơm ngon hấp dẫn!', 'THƯỜNG', NULL, 'LSP20210723205854', 1, '2023-02-17 23:48:20', '2023-02-17 23:52:54'),
('SP20230218134907', 'MOUSSE ĐÀO', 'SP20230218134907.png', 'Một sự kết hợp khéo léo giữa kem và lớp bánh mềm, được phủ lên trên vài lát đào ngon tuyệt.', 'THƯỜNG', NULL, 'LSP20210723205854', 1, '2023-02-17 23:49:07', '2023-02-17 23:55:42'),
('SP20230218135238', 'MOUSSE RED VELVET', 'SP20230218135238.jpg', 'Bánh nhiều lớp được phủ lớp kem bên trên bằng Cream cheese.', 'BÁN CHẠY NHẤT', NULL, 'LSP20210723205854', 1, '2023-02-17 23:52:38', '2023-02-17 23:56:27'),
('SP20230218135523', 'MOUSSE BEAR CHOCOLATE', 'SP20230218135523.jpg', 'Với vẻ ngoài đáng yêu và hương vị ngọt ngào, thơm béo nhất định bạn phải thử ít nhất 1 lần.', 'THƯỜNG', NULL, 'LSP20210723205854', 1, '2023-02-17 23:55:23', '2023-02-17 23:55:23'),
('SP20230218135613', 'TIRAMISU', 'SP20230218135613.jpg', 'Tiramisu thơm béo, làm từ ca-cao Việt Nam đậm đà, kết hợp với phô mai ít béo, vani và chút rum nhẹ nhàng.', 'THƯỜNG', NULL, 'LSP20210723205854', 1, '2023-02-17 23:56:13', '2023-02-17 23:56:13'),
('SP20230218140127', 'MOCHI KEM PHÚC BỒN TỬ', 'SP20230218140127.jpg', 'Bao bọc bởi lớp vỏ Mochi dẻo thơm, bên trong là lớp kem lạnh cùng nhân phúc bồn tử ngọt ngào. Gọi 1 chiếc Mochi cho ngày thật tươi mát. Sản phẩm phải bảo quán mát và dùng ngon nhất trong 2h sau khi nhận hàng.', 'MỚI', NULL, 'LSP20210723205854', 1, '2023-02-18 00:01:27', '2023-02-18 00:01:27'),
('SP20230218140153', 'MOCHI KEM DỪA DỨA', 'SP20230218140153.jpg', 'Bao bọc bởi lớp vỏ Mochi dẻo thơm, bên trong là lớp kem lạnh cùng nhân dừa dứa thơm lừng lạ miệng. Gọi 1 chiếc Mochi cho ngày thật tươi mát. Sản phẩm phải bảo quán mát và dùng ngon nhất trong 2h sau khi nhận hàng.', 'MỚI', NULL, 'LSP20210723205854', 1, '2023-02-18 00:01:53', '2023-02-18 00:02:42'),
('SP20230218140236', 'CROISSANT TRỨNG MUỐI', 'SP20230218140236.jpg', 'Croissant trứng muối thơm lừng, bên ngoài vỏ bánh giòn hấp dẫn bên trong trứng muối vị ngon khó cưỡng.', 'BÁN CHẠY NHẤT', NULL, 'LSP20210723205854', 1, '2023-02-18 00:02:36', '2023-02-18 00:02:36'),
('SP20230218140313', 'BÁNH MÌ QUE PATE', 'SP20230218140313.jpg', 'Vỏ bánh mì giòn tan, kết hợp với lớp nhân pate béo béo đậm đà sẽ là lựa chọn lý tưởng nhẹ nhàng để lấp đầy chiếc bụng đói , cho 1 bữa sáng - trưa - chiều - tối của bạn thêm phần thú vị.', 'BÁN CHẠY NHẤT', NULL, 'LSP20210723205854', 1, '2023-02-18 00:03:13', '2023-02-18 00:03:13'),
('SP20230218140351', 'BÁNH MÌ VIỆT NAM', 'SP20230218140351.jpg', 'Gói gọn trong ổ bánh mì Việt Nam là từng lớp chả, từng lớp jambon hòa quyện cùng bơ và pate thơm lừng, thêm dưa rau cho bữa sáng đầy năng lượng. *Phần bánh sẽ ngon và đậm đà nhất khi kèm pate. Để đảm bảo hương vị được trọn vẹn, chúng mình mong bạn thông cảm vì không thể thay đổi định lượng pate.', 'BÁN CHẠY NHẤT', NULL, 'LSP20210723205854', 1, '2023-02-18 00:03:51', '2023-02-18 00:03:51'),
('SP20230218142623', 'DALAT', 'SP20230218142623.jpg', 'Cà phê hạt Arabica (hay còn gọi là cà phê chè) là loại hạt cà phê được trồng và sử dụng phổ biến tại Việt Nam. Đây gần như là loại cà phê được sử dụng nhiều nhất, bên cạnh các loại khác như cafe Moka hay cafe Catimor. Khu vực trồng nhiều Arabica nhất là Lâm Đồng – Tây Nguyên. Đây cũng là nguyên liệu chính của các hãng / thương hiệu cà phê lớn tại châu Á.', 'THƯỜNG', NULL, 'LSP20210723205843', 1, '2023-02-18 00:26:23', '2023-02-18 00:26:23'),
('SP20230218142714', 'HANOI', 'SP20230218142714.jpg', 'Từ Arabica và Robusta 100% nguyên chất với tỉ lệ và chế độ rang khác biệt. Dành cho những ai có gu cà phê đậm đà nhưng không quá gắt và thích có thêm một vị gì đó để thưởng thức, không chỉ là vị cà phê mà còn có thể cảm nhận và liên tưởng đến một số vị gần gũi như thảo mộc, hương trái cây.', 'THƯỜNG', NULL, 'LSP20210723205843', 1, '2023-02-18 00:27:14', '2023-02-18 00:27:14'),
('SP20230218142825', 'SAIGON', 'SP20230218142825.jpg', 'Được tạo ra bởi ý tưởng tạo điểm nhấn trong hậu vị sao cho “chinh phục tuyệt đối” cảm xúc của người thưởng thức. Từ đó, chính sự kết hợp chuẩn xác giữa Robusta cùng Arabica Cầu Đất đã đem đến một “cái kết ngọt ngào” với dư vị dày, lâu tan sau hành trình trải nghiệm cà phê hoàn hảo.', 'THƯỜNG', NULL, 'LSP20210723205843', 1, '2023-02-18 00:28:25', '2023-02-18 00:34:53'),
('SP20230218145938', 'CÀ PHÊ PHIN CẦU ĐẤT', 'SP20230218145938.jpg', 'Là sự kết hợp giữa Arabica (30%) và Robusta (70%) từ vùng nguyên liệu cà phê Cầu Đất - Đà Lạt chất lượng lâu đời. Nằm trên độ cao hơn 1600m so với mực nước biển, Cầu Đất có khí hậu ôn hoà quanh năm, thổ nhưỡng Bazan màu mỡ đã tạo nên những đồi cà phê có hương thơm và phẩm chất rất riêng biệt.', 'THƯỜNG', NULL, 'LSP20210723205843', 1, '2023-02-18 00:59:38', '2023-02-18 00:59:38'),
('SP20230218150527', 'CÀ PHÊ ROUBUSTA LÂM ĐỒNG', 'SP20230218150527.jpg', 'Cà phê Robusta Lâm Đồng được trồng từ vùng nguyên liệu Di Linh - Lâm Đồng chất lượng. Nằm trên độ cao 1000m so với mực nước biển, Di Linh có thổ nhưỡng Bazan màu mỡ và khí hậu phù hợp để tạo nên những vườn cà phê Robusta có hương thơm và phẩm chất rất riêng biệt', 'THƯỜNG', NULL, 'LSP20210723205843', 1, '2023-02-18 01:05:27', '2023-02-18 01:05:27'),
('SP20230218150743', 'CÀ PHÊ ARABICA CẦU ĐẤT', 'SP20230218150743.jpg', 'Cà phê Arabica Cầu Đất được trồng từ vùng nguyên liệu Cầu Đất - Đà Lạt, nơi được mệnh danh là thủ phủ Arabica, chất lượng lâu đời. Nằm trên độ cao hơn 1600m so với mực nước biển, Cầu Đất có khí hậu ôn hoà quanh năm, thổ nhưỡng Bazan màu mỡ đã tạo nên những đồi cà phê có hương thơm và phẩm chất rất riêng biệt', 'THƯỜNG', NULL, 'LSP20210723205843', 1, '2023-02-18 01:07:43', '2023-02-18 01:07:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_ke`
--

CREATE TABLE `thong_ke` (
  `id` char(18) NOT NULL,
  `thoigian` date NOT NULL,
  `doanhso` int(11) NOT NULL,
  `loinhuan` int(11) NOT NULL,
  `soluongdaban` int(11) NOT NULL,
  `soluongdonhang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binh_luan_id_sanpham_foreign` (`id_sanpham`);

--
-- Chỉ mục cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD KEY `chi_tiet_hoa_don_id_hoadon_foreign` (`id_hoadon`),
  ADD KEY `chi_tiet_hoa_don_id_chitietsanpham_foreign` (`id_chitietsanpham`);

--
-- Chỉ mục cho bảng `chi_tiet_khuyen_mai`
--
ALTER TABLE `chi_tiet_khuyen_mai`
  ADD KEY `chi_tiet_khuyen_mai_id_chitietsanpham_foreign` (`id_chitietsanpham`),
  ADD KEY `chi_tiet_khuyen_mai_id_khuyenmai_foreign` (`id_khuyenmai`);

--
-- Chỉ mục cho bảng `chi_tiet_san_pham`
--
ALTER TABLE `chi_tiet_san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chi_tiet_san_pham_id_sanpham_foreign` (`id_sanpham`),
  ADD KEY `chi_tiet_san_pham_kichthuoc_foreign` (`kichthuoc`);

--
-- Chỉ mục cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danh_gia_id_sanpham_foreign` (`id_sanpham`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hoa_don_id_khachhang_foreign` (`id_khachhang`),
  ADD KEY `hoa_don_id_nhanvien_foreign` (`id_nhanvien`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai_nhan_vien`
--
ALTER TABLE `loai_nhan_vien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhan_vien_id_loainhanvien_foreign` (`id_loainhanvien`);

--
-- Chỉ mục cho bảng `quy_cach`
--
ALTER TABLE `quy_cach`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quy_cach_id_loaisanpham_foreign` (`id_loaisanpham`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `san_pham_id_loaisanpham_foreign` (`id_loaisanpham`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`);

--
-- Các ràng buộc cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD CONSTRAINT `chi_tiet_hoa_don_id_chitietsanpham_foreign` FOREIGN KEY (`id_chitietsanpham`) REFERENCES `chi_tiet_san_pham` (`id`),
  ADD CONSTRAINT `chi_tiet_hoa_don_id_hoadon_foreign` FOREIGN KEY (`id_hoadon`) REFERENCES `hoa_don` (`id`);

--
-- Các ràng buộc cho bảng `chi_tiet_khuyen_mai`
--
ALTER TABLE `chi_tiet_khuyen_mai`
  ADD CONSTRAINT `chi_tiet_khuyen_mai_id_chitietsanpham_foreign` FOREIGN KEY (`id_chitietsanpham`) REFERENCES `chi_tiet_san_pham` (`id`),
  ADD CONSTRAINT `chi_tiet_khuyen_mai_id_khuyenmai_foreign` FOREIGN KEY (`id_khuyenmai`) REFERENCES `khuyen_mai` (`id`);

--
-- Các ràng buộc cho bảng `chi_tiet_san_pham`
--
ALTER TABLE `chi_tiet_san_pham`
  ADD CONSTRAINT `chi_tiet_san_pham_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `chi_tiet_san_pham_kichthuoc_foreign` FOREIGN KEY (`kichthuoc`) REFERENCES `quy_cach` (`id`);

--
-- Các ràng buộc cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD CONSTRAINT `danh_gia_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`);

--
-- Các ràng buộc cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_id_khachhang_foreign` FOREIGN KEY (`id_khachhang`) REFERENCES `khach_hang` (`id`),
  ADD CONSTRAINT `hoa_don_id_nhanvien_foreign` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhan_vien` (`id`);

--
-- Các ràng buộc cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD CONSTRAINT `nhan_vien_id_loainhanvien_foreign` FOREIGN KEY (`id_loainhanvien`) REFERENCES `loai_nhan_vien` (`id`);

--
-- Các ràng buộc cho bảng `quy_cach`
--
ALTER TABLE `quy_cach`
  ADD CONSTRAINT `quy_cach_id_loaisanpham_foreign` FOREIGN KEY (`id_loaisanpham`) REFERENCES `loai_san_pham` (`id`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_id_loaisanpham_foreign` FOREIGN KEY (`id_loaisanpham`) REFERENCES `loai_san_pham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
