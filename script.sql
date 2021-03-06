USE [master]
GO
/****** Object:  Database [webproject]    Script Date: 6/2/2021 12:59:04 PM ******/
CREATE DATABASE [webproject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'webproject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\webproject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'webproject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\webproject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [webproject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webproject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webproject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [webproject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [webproject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [webproject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [webproject] SET ARITHABORT OFF 
GO
ALTER DATABASE [webproject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [webproject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [webproject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [webproject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [webproject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [webproject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [webproject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [webproject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [webproject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [webproject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [webproject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [webproject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [webproject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [webproject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [webproject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [webproject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [webproject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [webproject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [webproject] SET  MULTI_USER 
GO
ALTER DATABASE [webproject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [webproject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [webproject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [webproject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [webproject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [webproject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [webproject] SET QUERY_STORE = OFF
GO
USE [webproject]
GO
/****** Object:  Table [dbo].[grades]    Script Date: 23/05/2022 15:12:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hw_grades](
	[id] [nvarchar](50) NOT NULL,
	[hw1] [int] NULL,
	[hw2] [int] NULL,
	[hw3] [int] NULL,
	[hw4] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grades]    Script Date: 23/05/2022 15:12:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lab_grades](
	[id] [nvarchar](50) NOT NULL,
	[lab1] [int] NULL,
	[lab2] [int] NULL,
	[lab3] [int] NULL,
	[lab4] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 23/05/2022 15:12:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[full_name] [nvarchar](50) NOT NULL,
	[role] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[hw_grades] ([id], [hw1], [hw2], [hw3], [hw4]) VALUES (N'2', 76, 98, 98, 100)
INSERT [dbo].[hw_grades] ([id], [hw1], [hw2], [hw3], [hw4]) VALUES (N'3', 85, 95, 79, 98)
INSERT [dbo].[hw_grades] ([id], [hw1], [hw2], [hw3], [hw4]) VALUES (N'4', 70, 100, 60, 80)
INSERT [dbo].[hw_grades] ([id], [hw1], [hw2], [hw3], [hw4]) VALUES (N'5', 98, 55, 65, 85)
GO
INSERT [dbo].[lab_grades] ([id], [lab1], [lab2], [lab3], [lab4]) VALUES (N'2', 81, 82, 83, 84)
INSERT [dbo].[lab_grades] ([id], [lab1], [lab2], [lab3], [lab4]) VALUES (N'3', 71, 72, 73, 74)
INSERT [dbo].[lab_grades] ([id], [lab1], [lab2], [lab3], [lab4]) VALUES (N'4', 61, 62, 63, 64)
INSERT [dbo].[lab_grades] ([id], [lab1], [lab2], [lab3], [lab4]) VALUES (N'5', 91, 92, 93, 94)
GO
INSERT [dbo].[users] ([id], [password], [full_name], [role]) VALUES (N'1', N'1234', N'Alex Keselman', N'lecturer')
INSERT [dbo].[users] ([id], [password], [full_name], [role]) VALUES (N'2', N'1234', N'Or Zuk', N'student')
INSERT [dbo].[users] ([id], [password], [full_name], [role]) VALUES (N'3', N'1234', N'Aviv Ariel', N'student')
INSERT [dbo].[users] ([id], [password], [full_name], [role]) VALUES (N'4', N'1234', N'Israel Israeli', N'student')
INSERT [dbo].[users] ([id], [password], [full_name], [role]) VALUES (N'5', N'1234', N'Rut Ruti', N'student')
GO
