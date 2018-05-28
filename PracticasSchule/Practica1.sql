USE [master]
GO
/****** Object:  Database [Schule]    Script Date: 5/27/2018 7:57:19 PM ******/
CREATE DATABASE [Schule]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Schule', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Schule.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Schule_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Schule_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Schule] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Schule].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Schule] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Schule] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Schule] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Schule] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Schule] SET ARITHABORT OFF 
GO
ALTER DATABASE [Schule] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Schule] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Schule] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Schule] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Schule] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Schule] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Schule] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Schule] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Schule] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Schule] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Schule] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Schule] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Schule] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Schule] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Schule] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Schule] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Schule] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Schule] SET RECOVERY FULL 
GO
ALTER DATABASE [Schule] SET  MULTI_USER 
GO
ALTER DATABASE [Schule] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Schule] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Schule] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Schule] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Schule] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Schule', N'ON'
GO
ALTER DATABASE [Schule] SET QUERY_STORE = OFF
GO
USE [Schule]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
ALTER DATABASE [Schule] SET  READ_WRITE 
GO
