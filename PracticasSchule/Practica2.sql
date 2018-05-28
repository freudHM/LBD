USE [master]
GO
/****** Object:  Database [Schule]    Script Date: 5/27/2018 8:05:26 PM ******/
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
USE [Schule]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 5/27/2018 8:05:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[idalumno] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[fechaingreso] [date] NOT NULL,
	[idcarrera] [int] NOT NULL,
	[anocurso] [int] NOT NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[idalumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 5/27/2018 8:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[idcarrera] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[duracion] [int] NOT NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[idcarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 5/27/2018 8:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[idsalon] [int] NOT NULL,
	[idmaestro] [int] NOT NULL,
	[idmateria] [int] NOT NULL,
	[idgrupo] [int] NOT NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[idgrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoAlumno]    Script Date: 5/27/2018 8:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoAlumno](
	[idgrupo] [int] NOT NULL,
	[idalumno] [int] NOT NULL,
 CONSTRAINT [PK_GrupoAlumno] PRIMARY KEY CLUSTERED 
(
	[idgrupo] ASC,
	[idalumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 5/27/2018 8:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[idhorario] [int] NOT NULL,
	[dia] [varchar](50) NOT NULL,
	[horainicio] [time](7) NOT NULL,
	[horafin] [time](7) NOT NULL,
	[turno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[idhorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorariosAsignados]    Script Date: 5/27/2018 8:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorariosAsignados](
	[idhorario] [int] NOT NULL,
	[idgrupo] [int] NOT NULL,
 CONSTRAINT [PK_HorariosAsignados] PRIMARY KEY CLUSTERED 
(
	[idhorario] ASC,
	[idgrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 5/27/2018 8:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestro](
	[idmaestro] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idmateria] [int] NOT NULL,
	[iniciocontrato] [date] NOT NULL,
 CONSTRAINT [PK_Maestro] PRIMARY KEY CLUSTERED 
(
	[idmaestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 5/27/2018 8:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[idmateria] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idcarrera] [int] NOT NULL,
	[idsalon] [int] NOT NULL,
 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 
(
	[idmateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salon]    Script Date: 5/27/2018 8:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salon](
	[idsalon] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[numero] [int] NOT NULL,
 CONSTRAINT [PK_Salon] PRIMARY KEY CLUSTERED 
(
	[idsalon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Schule] SET  READ_WRITE 
GO
