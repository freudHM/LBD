USE [master]
GO
/****** Object:  Database [Schoolah]    Script Date: 03/03/2018 11:21:26 a.m. ******/
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
/****** Object:  Table [dbo].[Alumno]    Script Date: 03/03/2018 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[IdAlumno] [int] NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
	[FechaIngreso] [date] NOT NULL,
	[IdCarrera] [int] NOT NULL,
	[AñoCurso] [int] NOT NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 03/03/2018 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[IdCarrera] [int] NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
	[Duracion] [int] NOT NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[IdCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 03/03/2018 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[IdGrupo] [int] NOT NULL,
	[IdSalon] [int] NOT NULL,
	[IdMaestro] [int] NOT NULL,
	[IdMateria] [int] NOT NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GrupoAlumno]    Script Date: 03/03/2018 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoAlumno](
	[IdGrupo] [int] NOT NULL,
	[IdAlumno] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Horario]    Script Date: 03/03/2018 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[IdHorario] [int] NOT NULL,
	[HoraInicio] [time](7) NULL,
	[HoraFin] [time](7) NULL,
	[Turno] [nchar](10) NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[IdHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HorariosAsignados]    Script Date: 03/03/2018 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorariosAsignados](
	[IdHorario] [int] NOT NULL,
	[IdGrupo] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 03/03/2018 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestro](
	[IdMaestro] [int] NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
	[IdMateria] [int] NOT NULL,
	[InicioContrato] [date] NOT NULL,
 CONSTRAINT [PK_Maestro] PRIMARY KEY CLUSTERED 
(
	[IdMaestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Materia]    Script Date: 03/03/2018 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[IdMateria] [int] NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
	[IdCarrera] [int] NOT NULL,
	[IdSalon] [int] NOT NULL,
 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 
(
	[IdMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salon]    Script Date: 03/03/2018 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salon](
	[IdSalon] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Numero] [int] NOT NULL,
 CONSTRAINT [PK_Salon] PRIMARY KEY CLUSTERED 
(
	[IdSalon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Carrera] FOREIGN KEY([IdCarrera])
REFERENCES [dbo].[Carrera] ([IdCarrera])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Carrera]
GO
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Maestro] FOREIGN KEY([IdMaestro])
REFERENCES [dbo].[Maestro] ([IdMaestro])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Maestro]
GO
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Materia] FOREIGN KEY([IdMateria])
REFERENCES [dbo].[Materia] ([IdMateria])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Materia]
GO
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Salon] FOREIGN KEY([IdSalon])
REFERENCES [dbo].[Salon] ([IdSalon])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Salon]
GO
ALTER TABLE [dbo].[GrupoAlumno]  WITH CHECK ADD  CONSTRAINT [FK_GrupoAlumno_Alumno] FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[Alumno] ([IdAlumno])
GO
ALTER TABLE [dbo].[GrupoAlumno] CHECK CONSTRAINT [FK_GrupoAlumno_Alumno]
GO
ALTER TABLE [dbo].[GrupoAlumno]  WITH CHECK ADD  CONSTRAINT [FK_GrupoAlumno_Grupo] FOREIGN KEY([IdGrupo])
REFERENCES [dbo].[Grupo] ([IdGrupo])
GO
ALTER TABLE [dbo].[GrupoAlumno] CHECK CONSTRAINT [FK_GrupoAlumno_Grupo]
GO
ALTER TABLE [dbo].[HorariosAsignados]  WITH CHECK ADD  CONSTRAINT [FK_HorariosAsignados_Grupo] FOREIGN KEY([IdGrupo])
REFERENCES [dbo].[Grupo] ([IdGrupo])
GO
ALTER TABLE [dbo].[HorariosAsignados] CHECK CONSTRAINT [FK_HorariosAsignados_Grupo]
GO
ALTER TABLE [dbo].[HorariosAsignados]  WITH CHECK ADD  CONSTRAINT [FK_HorariosAsignados_Horario] FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[HorariosAsignados] CHECK CONSTRAINT [FK_HorariosAsignados_Horario]
GO
ALTER TABLE [dbo].[Maestro]  WITH CHECK ADD  CONSTRAINT [FK_Maestro_Materia] FOREIGN KEY([IdMateria])
REFERENCES [dbo].[Materia] ([IdMateria])
GO
ALTER TABLE [dbo].[Maestro] CHECK CONSTRAINT [FK_Maestro_Materia]
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Carrera] FOREIGN KEY([IdCarrera])
REFERENCES [dbo].[Carrera] ([IdCarrera])
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Carrera]
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Salon] FOREIGN KEY([IdSalon])
REFERENCES [dbo].[Salon] ([IdSalon])
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Salon]
GO
USE [master]
GO
ALTER DATABASE [Schoolah] SET  READ_WRITE 
GO
