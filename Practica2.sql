USE [master]
GO
/****** Object:  Database [Schoolah]    Script Date: 24/02/2018 11:58:06 a.m. ******/
CREATE DATABASE [Schoolah]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Schoolah', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Schoolah.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Schoolah_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Schoolah_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Schoolah] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Schoolah].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Schoolah] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Schoolah] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Schoolah] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Schoolah] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Schoolah] SET ARITHABORT OFF 
GO
ALTER DATABASE [Schoolah] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Schoolah] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Schoolah] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Schoolah] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Schoolah] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Schoolah] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Schoolah] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Schoolah] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Schoolah] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Schoolah] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Schoolah] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Schoolah] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Schoolah] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Schoolah] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Schoolah] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Schoolah] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Schoolah] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Schoolah] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Schoolah] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Schoolah] SET  MULTI_USER 
GO
ALTER DATABASE [Schoolah] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Schoolah] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Schoolah] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Schoolah] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Schoolah]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 24/02/2018 11:58:06 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[Matricula] [int] NULL,
	[Nombre] [nchar](10) NULL,
	[FechaIngreso] [date] NULL,
	[Carrera] [nchar](10) NULL,
	[AñoCurso] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 24/02/2018 11:58:06 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestro](
	[NoEmpleado] [int] NULL,
	[Nombre] [nchar](10) NULL,
	[Materia] [int] NULL,
	[InicioContrato] [date] NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Schoolah] SET  READ_WRITE 
GO
