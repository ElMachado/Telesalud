USE [master]
GO
/****** Object:  Database [TeleSalud]    Script Date: 17/09/2019 15:48:02 ******/
CREATE DATABASE [TeleSalud]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TeleSalud', FILENAME = N'E:\Universidad\SLQ Server 2017\MSSQL14.MSSQLSERVER01\MSSQL\DATA\TeleSalud.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TeleSalud_log', FILENAME = N'E:\Universidad\SLQ Server 2017\MSSQL14.MSSQLSERVER01\MSSQL\DATA\TeleSalud_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TeleSalud] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TeleSalud].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TeleSalud] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TeleSalud] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TeleSalud] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TeleSalud] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TeleSalud] SET ARITHABORT OFF 
GO
ALTER DATABASE [TeleSalud] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TeleSalud] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TeleSalud] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TeleSalud] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TeleSalud] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TeleSalud] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TeleSalud] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TeleSalud] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TeleSalud] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TeleSalud] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TeleSalud] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TeleSalud] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TeleSalud] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TeleSalud] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TeleSalud] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TeleSalud] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TeleSalud] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TeleSalud] SET RECOVERY FULL 
GO
ALTER DATABASE [TeleSalud] SET  MULTI_USER 
GO
ALTER DATABASE [TeleSalud] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TeleSalud] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TeleSalud] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TeleSalud] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TeleSalud] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TeleSalud', N'ON'
GO
ALTER DATABASE [TeleSalud] SET QUERY_STORE = OFF
GO
USE [TeleSalud]
GO
/****** Object:  Table [dbo].[AntecedentesFamiliares]    Script Date: 17/09/2019 15:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AntecedentesFamiliares](
	[EstadoPadre] [nvarchar](10) NOT NULL,
	[EnfermedadesPadre] [nvarchar](100) NOT NULL,
	[EstadoMadre] [nvarchar](10) NOT NULL,
	[EnfermedadesMadre] [nvarchar](100) NOT NULL,
	[NumeroHermanos] [int] NOT NULL,
	[HermanosVivos] [int] NOT NULL,
	[EnfermedadesHermanos] [nvarchar](100) NOT NULL,
	[Otros] [nvarchar](50) NOT NULL,
	[IDAntecedentesFamiliares] [int] NOT NULL,
	[CC] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_AntecedentesFamiliares] PRIMARY KEY CLUSTERED 
(
	[IDAntecedentesFamiliares] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AntecedentesPersonalesNoPatologicos]    Script Date: 17/09/2019 15:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AntecedentesPersonalesNoPatologicos](
	[Alcohol] [nvarchar](10) NOT NULL,
	[Tabaquismo] [nvarchar](10) NOT NULL,
	[Drogas] [nvarchar](10) NOT NULL,
	[Inmunizaciones] [nvarchar](10) NOT NULL,
	[Otros] [nvarchar](10) NOT NULL,
	[IDAntecedentesPersonalesNoPatologicos] [int] NOT NULL,
	[CC] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_AntecedentesPersonalesNoPatologicos] PRIMARY KEY CLUSTERED 
(
	[IDAntecedentesPersonalesNoPatologicos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AntecedentesPersonalesPatologicos]    Script Date: 17/09/2019 15:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AntecedentesPersonalesPatologicos](
	[IDAntecedentesPersonalesPatologicos] [int] NOT NULL,
	[CC] [int] NOT NULL,
	[CardioVasculares] [nvarchar](10) NOT NULL,
	[Pulmonares] [nvarchar](10) NOT NULL,
	[Digestivos] [nvarchar](10) NOT NULL,
	[Diabetes] [nvarchar](10) NOT NULL,
	[Renales] [nvarchar](10) NOT NULL,
	[Quirurgicos] [nvarchar](10) NOT NULL,
	[Alergias] [nvarchar](10) NOT NULL,
	[Transfuciones] [nvarchar](10) NOT NULL,
	[Medicamentos] [nvarchar](50) NOT NULL,
	[Especifique] [nvarchar](100) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_AntecedentesPersonalesPatologicos.] PRIMARY KEY CLUSTERED 
(
	[IDAntecedentesPersonalesPatologicos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AntecendentesGinecoObstetricos]    Script Date: 17/09/2019 15:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AntecendentesGinecoObstetricos](
	[IDAntecedentesGinecoObstetricos] [int] NOT NULL,
	[CC] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Menarquia] [nvarchar](10) NOT NULL,
	[ritmo] [int] NOT NULL,
	[FUM] [nvarchar](10) NOT NULL,
	[Anticonceptivos] [nvarchar](10) NOT NULL,
	[EspecifiqueAnticonceptivos] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AntecendentesGinecoObstetricos] PRIMARY KEY CLUSTERED 
(
	[IDAntecedentesGinecoObstetricos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consulta]    Script Date: 17/09/2019 15:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consulta](
	[IDConsulta] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IDEspecialidad] [int] NOT NULL,
	[MotivoConsulta] [nvarchar](50) NOT NULL,
	[Cuarto] [int] NOT NULL,
	[Sala] [int] NOT NULL,
	[Ocupacion] [nvarchar](10) NOT NULL,
	[PEEA] [nvarchar](50) NOT NULL,
	[DNR] [nvarchar](50) NOT NULL,
	[DPR] [nvarchar](50) NOT NULL,
	[IPAS] [nvarchar](50) NOT NULL,
	[IDExploracionFisica] [int] NOT NULL,
	[IDAntecedentesPersonalesPatologicos] [int] NOT NULL,
	[IDAntecedentesPersonalesNoPatologicos] [int] NOT NULL,
	[IDAntecedentesFamiliares] [int] NOT NULL,
	[IDAntecedentesGinecoObstetricos] [int] NOT NULL,
	[Problemas] [nvarchar](100) NOT NULL,
	[CC] [int] NOT NULL,
 CONSTRAINT [PK_Consulta] PRIMARY KEY CLUSTERED 
(
	[IDConsulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultaXMedico]    Script Date: 17/09/2019 15:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultaXMedico](
	[CC] [int] NOT NULL,
	[IDConsulta] [int] NOT NULL,
	[IDHospital] [int] NOT NULL,
 CONSTRAINT [PK_ConsultaXMedico] PRIMARY KEY CLUSTERED 
(
	[CC] ASC,
	[IDConsulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 17/09/2019 15:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[IDEspecialidad] [int] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[IDEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExploracionFisica]    Script Date: 17/09/2019 15:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExploracionFisica](
	[IDExploracionFisica] [int] NOT NULL,
	[TAbizq] [int] NOT NULL,
	[TAbder] [int] NOT NULL,
	[FC] [int] NOT NULL,
	[FrecResp] [int] NOT NULL,
	[Temp] [int] NOT NULL,
	[Peso] [int] NOT NULL,
	[Talla] [int] NOT NULL,
	[IMC] [int] NOT NULL,
	[CabezaYCuello] [nvarchar](50) NOT NULL,
	[Torax] [nvarchar](50) NOT NULL,
	[Abdomen] [nvarchar](50) NOT NULL,
	[Extremidades] [nvarchar](50) NOT NULL,
	[NeurologicoYEstadoMental] [nvarchar](50) NOT NULL,
	[Laboratorio] [image] NOT NULL,
	[EstudiosImagen] [nvarchar](50) NOT NULL,
	[Otros] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ExploracionFisica] PRIMARY KEY CLUSTERED 
(
	[IDExploracionFisica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 17/09/2019 15:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital](
	[IDHospital] [int] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Hospital] PRIMARY KEY CLUSTERED 
(
	[IDHospital] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HospitalXmedico]    Script Date: 17/09/2019 15:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HospitalXmedico](
	[IDHospital] [int] NOT NULL,
	[CC] [int] NOT NULL,
 CONSTRAINT [PK_HospitalXmedico] PRIMARY KEY CLUSTERED 
(
	[IDHospital] ASC,
	[CC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoXEspecialidad]    Script Date: 17/09/2019 15:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoXEspecialidad](
	[CC] [int] NOT NULL,
	[IDEspecialidad] [int] NOT NULL,
 CONSTRAINT [PK_MedicoXEspecialidad] PRIMARY KEY CLUSTERED 
(
	[CC] ASC,
	[IDEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 17/09/2019 15:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[IDRol] [int] NOT NULL,
	[Descripcion] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[IDRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 17/09/2019 15:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[CC] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [nvarchar](10) NOT NULL,
	[IDRol] [int] NOT NULL,
	[Celular] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[CC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AntecedentesFamiliares]  WITH CHECK ADD  CONSTRAINT [FK_AntecedentesFamiliares_Usuario] FOREIGN KEY([CC])
REFERENCES [dbo].[Usuario] ([CC])
GO
ALTER TABLE [dbo].[AntecedentesFamiliares] CHECK CONSTRAINT [FK_AntecedentesFamiliares_Usuario]
GO
ALTER TABLE [dbo].[AntecedentesPersonalesNoPatologicos]  WITH CHECK ADD  CONSTRAINT [FK_AntecedentesPersonalesNoPatologicos_Usuario] FOREIGN KEY([CC])
REFERENCES [dbo].[Usuario] ([CC])
GO
ALTER TABLE [dbo].[AntecedentesPersonalesNoPatologicos] CHECK CONSTRAINT [FK_AntecedentesPersonalesNoPatologicos_Usuario]
GO
ALTER TABLE [dbo].[AntecedentesPersonalesPatologicos]  WITH CHECK ADD  CONSTRAINT [FK_AntecedentesPersonalesPatologicos._Usuario] FOREIGN KEY([CC])
REFERENCES [dbo].[Usuario] ([CC])
GO
ALTER TABLE [dbo].[AntecedentesPersonalesPatologicos] CHECK CONSTRAINT [FK_AntecedentesPersonalesPatologicos._Usuario]
GO
ALTER TABLE [dbo].[AntecendentesGinecoObstetricos]  WITH CHECK ADD  CONSTRAINT [FK_AntecendentesGinecoObstetricos_Usuario] FOREIGN KEY([CC])
REFERENCES [dbo].[Usuario] ([CC])
GO
ALTER TABLE [dbo].[AntecendentesGinecoObstetricos] CHECK CONSTRAINT [FK_AntecendentesGinecoObstetricos_Usuario]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_AntecedentesFamiliares] FOREIGN KEY([IDAntecedentesFamiliares])
REFERENCES [dbo].[AntecedentesFamiliares] ([IDAntecedentesFamiliares])
GO
ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [FK_Consulta_AntecedentesFamiliares]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_AntecedentesPersonalesNoPatologicos] FOREIGN KEY([IDAntecedentesPersonalesNoPatologicos])
REFERENCES [dbo].[AntecedentesPersonalesNoPatologicos] ([IDAntecedentesPersonalesNoPatologicos])
GO
ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [FK_Consulta_AntecedentesPersonalesNoPatologicos]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_AntecedentesPersonalesPatologicos] FOREIGN KEY([IDAntecedentesPersonalesPatologicos])
REFERENCES [dbo].[AntecedentesPersonalesPatologicos] ([IDAntecedentesPersonalesPatologicos])
GO
ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [FK_Consulta_AntecedentesPersonalesPatologicos]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_AntecendentesGinecoObstetricos] FOREIGN KEY([IDAntecedentesGinecoObstetricos])
REFERENCES [dbo].[AntecendentesGinecoObstetricos] ([IDAntecedentesGinecoObstetricos])
GO
ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [FK_Consulta_AntecendentesGinecoObstetricos]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_Especialidad] FOREIGN KEY([IDEspecialidad])
REFERENCES [dbo].[Especialidad] ([IDEspecialidad])
GO
ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [FK_Consulta_Especialidad]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_ExploracionFisica] FOREIGN KEY([IDExploracionFisica])
REFERENCES [dbo].[ExploracionFisica] ([IDExploracionFisica])
GO
ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [FK_Consulta_ExploracionFisica]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_Usuario] FOREIGN KEY([CC])
REFERENCES [dbo].[Usuario] ([CC])
GO
ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [FK_Consulta_Usuario]
GO
ALTER TABLE [dbo].[ConsultaXMedico]  WITH CHECK ADD  CONSTRAINT [FK_ConsultaXMedico_Consulta] FOREIGN KEY([IDConsulta])
REFERENCES [dbo].[Consulta] ([IDConsulta])
GO
ALTER TABLE [dbo].[ConsultaXMedico] CHECK CONSTRAINT [FK_ConsultaXMedico_Consulta]
GO
ALTER TABLE [dbo].[ConsultaXMedico]  WITH CHECK ADD  CONSTRAINT [FK_ConsultaXMedico_Hospital] FOREIGN KEY([IDHospital])
REFERENCES [dbo].[Hospital] ([IDHospital])
GO
ALTER TABLE [dbo].[ConsultaXMedico] CHECK CONSTRAINT [FK_ConsultaXMedico_Hospital]
GO
ALTER TABLE [dbo].[ConsultaXMedico]  WITH CHECK ADD  CONSTRAINT [FK_ConsultaXMedico_Usuario] FOREIGN KEY([CC])
REFERENCES [dbo].[Usuario] ([CC])
GO
ALTER TABLE [dbo].[ConsultaXMedico] CHECK CONSTRAINT [FK_ConsultaXMedico_Usuario]
GO
ALTER TABLE [dbo].[HospitalXmedico]  WITH CHECK ADD  CONSTRAINT [FK_HospitalXmedico_Hospital] FOREIGN KEY([IDHospital])
REFERENCES [dbo].[Hospital] ([IDHospital])
GO
ALTER TABLE [dbo].[HospitalXmedico] CHECK CONSTRAINT [FK_HospitalXmedico_Hospital]
GO
ALTER TABLE [dbo].[HospitalXmedico]  WITH CHECK ADD  CONSTRAINT [FK_HospitalXmedico_Usuario] FOREIGN KEY([CC])
REFERENCES [dbo].[Usuario] ([CC])
GO
ALTER TABLE [dbo].[HospitalXmedico] CHECK CONSTRAINT [FK_HospitalXmedico_Usuario]
GO
ALTER TABLE [dbo].[MedicoXEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_MedicoXEspecialidad_Especialidad] FOREIGN KEY([IDEspecialidad])
REFERENCES [dbo].[Especialidad] ([IDEspecialidad])
GO
ALTER TABLE [dbo].[MedicoXEspecialidad] CHECK CONSTRAINT [FK_MedicoXEspecialidad_Especialidad]
GO
ALTER TABLE [dbo].[MedicoXEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_MedicoXEspecialidad_Usuario] FOREIGN KEY([CC])
REFERENCES [dbo].[Usuario] ([CC])
GO
ALTER TABLE [dbo].[MedicoXEspecialidad] CHECK CONSTRAINT [FK_MedicoXEspecialidad_Usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Roles] FOREIGN KEY([IDRol])
REFERENCES [dbo].[Roles] ([IDRol])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Roles]
GO
USE [master]
GO
ALTER DATABASE [TeleSalud] SET  READ_WRITE 
GO
