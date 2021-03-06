USE [SilabosDB]
GO
/****** Object:  Table [dbo].[UnidadCurso]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnidadCurso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubUnidad] [int] NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.UnidadCurso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocente]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.TipoDocente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 05/25/2019 20:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Criterio]    Script Date: 05/25/2019 20:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Criterio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Orden] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Criterio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompetenciaCurso]    Script Date: 05/25/2019 20:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompetenciaCurso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[IdFase] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.CompetenciaCurso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Saber]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Saber](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Orden] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Saber] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanFuncionamiento]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanFuncionamiento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Anio] [datetime] NOT NULL,
	[Semestre] [nvarchar](max) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.PlanFuncionamiento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Division]    Script Date: 05/25/2019 20:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Division](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](max) NULL,
	[Docente] [nvarchar](max) NULL,
	[Vista] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Division] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parametrica]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parametrica](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoControl] [int] NOT NULL,
	[DescripcionControl] [nvarchar](50) NOT NULL,
	[Informacion] [nvarchar](50) NOT NULL,
	[valor] [int] NOT NULL,
	[texto] [nvarchar](50) NOT NULL,
	[Auxiliar01] [int] NULL,
	[Auxiliar02] [int] NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Parametrica] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentificacionAcademica]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentificacionAcademica](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Escuela] [nvarchar](max) NULL,
	[Facultad] [nvarchar](max) NULL,
	[HorasSemanalesPracticaAula] [int] NOT NULL,
	[HorasSemanalesPracticaJefe] [int] NOT NULL,
	[HorasSemanalesPracticaVirtual] [int] NOT NULL,
	[HorasSemestralesTeorica] [int] NOT NULL,
	[HorasSemestralesPractica] [int] NOT NULL,
	[HorasSemestralesVirtuales] [int] NOT NULL,
	[Credito] [int] NOT NULL,
	[HorasSemanalesTeorica] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.IdentificacionAcademica] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fase]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fase](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Orden] [nvarchar](max) NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Fase] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facultad]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facultad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Facultad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evidencia]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evidencia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Orden] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Evidencia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estrategia]    Script Date: 05/25/2019 20:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estrategia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Orden] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Estrategia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 05/25/2019 20:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](10) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Estado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Escuela]    Script Date: 05/25/2019 20:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Escuela](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[FacultadId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Escuela] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Docente]    Script Date: 05/25/2019 20:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](10) NOT NULL,
	[ApellidoPaterno] [nvarchar](50) NOT NULL,
	[ApellidoMaterno] [nvarchar](50) NOT NULL,
	[Nombres] [nvarchar](50) NOT NULL,
	[idTipoDocente] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Docente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 05/25/2019 20:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[FacultadId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Departamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanEstudio]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanEstudio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEscuela] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.PlanEstudio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Competencia]    Script Date: 05/25/2019 20:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competencia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEscuelas] [int] NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Competencia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asignatura]    Script Date: 05/25/2019 20:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignatura](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Codigo] [nvarchar](50) NOT NULL,
	[Semestre] [int] NOT NULL,
	[HorasSemanalesTeoricas] [real] NOT NULL,
	[HorasSemanalesPracticaAula] [real] NOT NULL,
	[HorasSemanalesPracticaJefe] [real] NOT NULL,
	[HorasSemanalesVirtuales] [real] NOT NULL,
	[HorasSemestralesTeorica] [real] NOT NULL,
	[HorasSemestralesPractica] [real] NOT NULL,
	[HorasSemestralesVirtuales] [real] NOT NULL,
	[Creditos] [int] NOT NULL,
	[IdPlanEstudio] [int] NOT NULL,
	[IdDepartamento] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Asignatura] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Silabo]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Silabo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPlanFuncionamiento] [int] NOT NULL,
	[IdAsignatura] [int] NOT NULL,
	[Sumilla] [nvarchar](max) NULL,
	[AmbienteTeoria] [nvarchar](max) NULL,
	[AmbientePractica] [nvarchar](max) NULL,
	[AnioAcademico] [int] NOT NULL,
	[SelectedSilaboFase] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Silabo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unidad]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unidad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[IdAsignatura] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Unidad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SilaboFase]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SilaboFase](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdFase] [int] NOT NULL,
	[IdSilabo] [int] NOT NULL,
	[Titulo] [nvarchar](max) NULL,
	[HoraFase] [int] NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.SilaboFase] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SilaboCompetencia]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SilaboCompetencia](
	[Id] [int] NOT NULL,
	[IdSilabo] [int] NOT NULL,
	[IdDivision] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.SilaboCompetencia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SilaboDocente]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SilaboDocente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSilabo] [int] NOT NULL,
	[IdDocente] [int] NOT NULL,
	[Funcion] [nvarchar](50) NOT NULL,
	[Cargo] [nvarchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.SilaboDocente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SilaboDivision]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SilaboDivision](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSilabo] [int] NOT NULL,
	[IdDivision] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.SilaboDivision] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Silabos]    Script Date: 05/25/2019 20:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Listar_Silabos]
AS
BEGIN
	SELECT
	Id,
	'Escuela' Escuela,
	'Docente' Docente,
	'Curso' Curso,
	'Semestre' Semestre,
	'Estado' Estado
	FROM dbo.Silabo;
END
GO
/****** Object:  Table [dbo].[AsignaturaCompetencia]    Script Date: 05/25/2019 20:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsignaturaCompetencia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCompetencia] [int] NOT NULL,
	[IdAsignatura] [int] NOT NULL,
	[IdSilaboFase] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.AsignaturaCompetencia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SilaboFaseUnidad]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SilaboFaseUnidad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSilaboFase] [int] NOT NULL,
	[IdSilaboUnidad] [int] NOT NULL,
	[UnidadI] [int] NOT NULL,
	[SubUnidad] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.SilaboFaseUnidad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SilaboFaseSaber]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SilaboFaseSaber](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[IdSaberes] [int] NOT NULL,
	[IdSilaboFase] [int] NOT NULL,
	[ValorTeorico] [int] NOT NULL,
	[ValorPractico] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.SilaboFaseSaber] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SilaboEvidencia]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SilaboEvidencia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEvidencia] [int] NOT NULL,
	[IdSilaboFasesSaberes] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.SilaboEvidencia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SilaboEstrategia]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SilaboEstrategia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEstrategia] [int] NOT NULL,
	[IdSilaboFasesSaberes] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.SilaboEstrategia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SilaboCriterio]    Script Date: 05/25/2019 20:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SilaboCriterio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCriterios] [int] NOT NULL,
	[IdSilaboFasesSaberes] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [nvarchar](50) NOT NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.SilaboCriterio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_dbo.Asignatura_dbo.Departamento_IdDepartamento]    Script Date: 05/25/2019 20:23:06 ******/
ALTER TABLE [dbo].[Asignatura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Asignatura_dbo.Departamento_IdDepartamento] FOREIGN KEY([IdDepartamento])
REFERENCES [dbo].[Departamento] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Asignatura] CHECK CONSTRAINT [FK_dbo.Asignatura_dbo.Departamento_IdDepartamento]
GO
/****** Object:  ForeignKey [FK_dbo.Asignatura_dbo.PlanEstudio_IdPlanEstudio]    Script Date: 05/25/2019 20:23:06 ******/
ALTER TABLE [dbo].[Asignatura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Asignatura_dbo.PlanEstudio_IdPlanEstudio] FOREIGN KEY([IdPlanEstudio])
REFERENCES [dbo].[PlanEstudio] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Asignatura] CHECK CONSTRAINT [FK_dbo.Asignatura_dbo.PlanEstudio_IdPlanEstudio]
GO
/****** Object:  ForeignKey [FK_dbo.AsignaturaCompetencia_dbo.Asignatura_IdAsignatura]    Script Date: 05/25/2019 20:23:06 ******/
ALTER TABLE [dbo].[AsignaturaCompetencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AsignaturaCompetencia_dbo.Asignatura_IdAsignatura] FOREIGN KEY([IdAsignatura])
REFERENCES [dbo].[Asignatura] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AsignaturaCompetencia] CHECK CONSTRAINT [FK_dbo.AsignaturaCompetencia_dbo.Asignatura_IdAsignatura]
GO
/****** Object:  ForeignKey [FK_dbo.AsignaturaCompetencia_dbo.Competencia_IdCompetencia]    Script Date: 05/25/2019 20:23:06 ******/
ALTER TABLE [dbo].[AsignaturaCompetencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AsignaturaCompetencia_dbo.Competencia_IdCompetencia] FOREIGN KEY([IdCompetencia])
REFERENCES [dbo].[Competencia] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AsignaturaCompetencia] CHECK CONSTRAINT [FK_dbo.AsignaturaCompetencia_dbo.Competencia_IdCompetencia]
GO
/****** Object:  ForeignKey [FK_dbo.AsignaturaCompetencia_dbo.SilaboFase_IdSilaboFase]    Script Date: 05/25/2019 20:23:06 ******/
ALTER TABLE [dbo].[AsignaturaCompetencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AsignaturaCompetencia_dbo.SilaboFase_IdSilaboFase] FOREIGN KEY([IdSilaboFase])
REFERENCES [dbo].[SilaboFase] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AsignaturaCompetencia] CHECK CONSTRAINT [FK_dbo.AsignaturaCompetencia_dbo.SilaboFase_IdSilaboFase]
GO
/****** Object:  ForeignKey [FK_dbo.Competencia_dbo.Escuela_IdEscuelas]    Script Date: 05/25/2019 20:23:06 ******/
ALTER TABLE [dbo].[Competencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Competencia_dbo.Escuela_IdEscuelas] FOREIGN KEY([IdEscuelas])
REFERENCES [dbo].[Escuela] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Competencia] CHECK CONSTRAINT [FK_dbo.Competencia_dbo.Escuela_IdEscuelas]
GO
/****** Object:  ForeignKey [FK_dbo.Departamento_dbo.Facultad_FacultadId]    Script Date: 05/25/2019 20:23:06 ******/
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Departamento_dbo.Facultad_FacultadId] FOREIGN KEY([FacultadId])
REFERENCES [dbo].[Facultad] ([Id])
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_dbo.Departamento_dbo.Facultad_FacultadId]
GO
/****** Object:  ForeignKey [FK_dbo.Docente_dbo.TipoDocente_idTipoDocente]    Script Date: 05/25/2019 20:23:06 ******/
ALTER TABLE [dbo].[Docente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Docente_dbo.TipoDocente_idTipoDocente] FOREIGN KEY([idTipoDocente])
REFERENCES [dbo].[TipoDocente] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Docente] CHECK CONSTRAINT [FK_dbo.Docente_dbo.TipoDocente_idTipoDocente]
GO
/****** Object:  ForeignKey [FK_dbo.Escuela_dbo.Facultad_FacultadId]    Script Date: 05/25/2019 20:23:06 ******/
ALTER TABLE [dbo].[Escuela]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Escuela_dbo.Facultad_FacultadId] FOREIGN KEY([FacultadId])
REFERENCES [dbo].[Facultad] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Escuela] CHECK CONSTRAINT [FK_dbo.Escuela_dbo.Facultad_FacultadId]
GO
/****** Object:  ForeignKey [FK_dbo.PlanEstudio_dbo.Escuela_IdEscuela]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[PlanEstudio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PlanEstudio_dbo.Escuela_IdEscuela] FOREIGN KEY([IdEscuela])
REFERENCES [dbo].[Escuela] ([Id])
GO
ALTER TABLE [dbo].[PlanEstudio] CHECK CONSTRAINT [FK_dbo.PlanEstudio_dbo.Escuela_IdEscuela]
GO
/****** Object:  ForeignKey [FK_dbo.Silabo_dbo.Asignatura_IdAsignatura]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[Silabo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Silabo_dbo.Asignatura_IdAsignatura] FOREIGN KEY([IdAsignatura])
REFERENCES [dbo].[Asignatura] ([Id])
GO
ALTER TABLE [dbo].[Silabo] CHECK CONSTRAINT [FK_dbo.Silabo_dbo.Asignatura_IdAsignatura]
GO
/****** Object:  ForeignKey [FK_dbo.Silabo_dbo.PlanFuncionamiento_IdPlanFuncionamiento]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[Silabo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Silabo_dbo.PlanFuncionamiento_IdPlanFuncionamiento] FOREIGN KEY([IdPlanFuncionamiento])
REFERENCES [dbo].[PlanFuncionamiento] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Silabo] CHECK CONSTRAINT [FK_dbo.Silabo_dbo.PlanFuncionamiento_IdPlanFuncionamiento]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboCompetencia_dbo.Division_IdDivision]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboCompetencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboCompetencia_dbo.Division_IdDivision] FOREIGN KEY([IdDivision])
REFERENCES [dbo].[Division] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboCompetencia] CHECK CONSTRAINT [FK_dbo.SilaboCompetencia_dbo.Division_IdDivision]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboCompetencia_dbo.Silabo_Id]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboCompetencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboCompetencia_dbo.Silabo_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Silabo] ([Id])
GO
ALTER TABLE [dbo].[SilaboCompetencia] CHECK CONSTRAINT [FK_dbo.SilaboCompetencia_dbo.Silabo_Id]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboCriterio_dbo.Criterio_IdCriterios]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboCriterio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboCriterio_dbo.Criterio_IdCriterios] FOREIGN KEY([IdCriterios])
REFERENCES [dbo].[Criterio] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboCriterio] CHECK CONSTRAINT [FK_dbo.SilaboCriterio_dbo.Criterio_IdCriterios]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboCriterio_dbo.SilaboFaseSaber_IdSilaboFasesSaberes]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboCriterio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboCriterio_dbo.SilaboFaseSaber_IdSilaboFasesSaberes] FOREIGN KEY([IdSilaboFasesSaberes])
REFERENCES [dbo].[SilaboFaseSaber] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboCriterio] CHECK CONSTRAINT [FK_dbo.SilaboCriterio_dbo.SilaboFaseSaber_IdSilaboFasesSaberes]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboDivision_dbo.Division_IdDivision]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboDivision]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboDivision_dbo.Division_IdDivision] FOREIGN KEY([IdDivision])
REFERENCES [dbo].[Division] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboDivision] CHECK CONSTRAINT [FK_dbo.SilaboDivision_dbo.Division_IdDivision]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboDivision_dbo.Silabo_IdSilabo]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboDivision]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboDivision_dbo.Silabo_IdSilabo] FOREIGN KEY([IdSilabo])
REFERENCES [dbo].[Silabo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboDivision] CHECK CONSTRAINT [FK_dbo.SilaboDivision_dbo.Silabo_IdSilabo]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboDocente_dbo.Docente_IdDocente]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboDocente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboDocente_dbo.Docente_IdDocente] FOREIGN KEY([IdDocente])
REFERENCES [dbo].[Docente] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboDocente] CHECK CONSTRAINT [FK_dbo.SilaboDocente_dbo.Docente_IdDocente]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboDocente_dbo.Silabo_IdSilabo]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboDocente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboDocente_dbo.Silabo_IdSilabo] FOREIGN KEY([IdSilabo])
REFERENCES [dbo].[Silabo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboDocente] CHECK CONSTRAINT [FK_dbo.SilaboDocente_dbo.Silabo_IdSilabo]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboEstrategia_dbo.Estrategia_IdEstrategia]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboEstrategia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboEstrategia_dbo.Estrategia_IdEstrategia] FOREIGN KEY([IdEstrategia])
REFERENCES [dbo].[Estrategia] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboEstrategia] CHECK CONSTRAINT [FK_dbo.SilaboEstrategia_dbo.Estrategia_IdEstrategia]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboEstrategia_dbo.SilaboFaseSaber_IdSilaboFasesSaberes]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboEstrategia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboEstrategia_dbo.SilaboFaseSaber_IdSilaboFasesSaberes] FOREIGN KEY([IdSilaboFasesSaberes])
REFERENCES [dbo].[SilaboFaseSaber] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboEstrategia] CHECK CONSTRAINT [FK_dbo.SilaboEstrategia_dbo.SilaboFaseSaber_IdSilaboFasesSaberes]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboEvidencia_dbo.Evidencia_IdEvidencia]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboEvidencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboEvidencia_dbo.Evidencia_IdEvidencia] FOREIGN KEY([IdEvidencia])
REFERENCES [dbo].[Evidencia] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboEvidencia] CHECK CONSTRAINT [FK_dbo.SilaboEvidencia_dbo.Evidencia_IdEvidencia]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboEvidencia_dbo.SilaboFaseSaber_IdSilaboFasesSaberes]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboEvidencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboEvidencia_dbo.SilaboFaseSaber_IdSilaboFasesSaberes] FOREIGN KEY([IdSilaboFasesSaberes])
REFERENCES [dbo].[SilaboFaseSaber] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboEvidencia] CHECK CONSTRAINT [FK_dbo.SilaboEvidencia_dbo.SilaboFaseSaber_IdSilaboFasesSaberes]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboFase_dbo.Fase_IdFase]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboFase]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboFase_dbo.Fase_IdFase] FOREIGN KEY([IdFase])
REFERENCES [dbo].[Fase] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboFase] CHECK CONSTRAINT [FK_dbo.SilaboFase_dbo.Fase_IdFase]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboFase_dbo.Silabo_IdSilabo]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboFase]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboFase_dbo.Silabo_IdSilabo] FOREIGN KEY([IdSilabo])
REFERENCES [dbo].[Silabo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboFase] CHECK CONSTRAINT [FK_dbo.SilaboFase_dbo.Silabo_IdSilabo]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboFaseSaber_dbo.Saber_IdSaberes]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboFaseSaber]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboFaseSaber_dbo.Saber_IdSaberes] FOREIGN KEY([IdSaberes])
REFERENCES [dbo].[Saber] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboFaseSaber] CHECK CONSTRAINT [FK_dbo.SilaboFaseSaber_dbo.Saber_IdSaberes]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboFaseSaber_dbo.SilaboFase_IdSilaboFase]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboFaseSaber]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboFaseSaber_dbo.SilaboFase_IdSilaboFase] FOREIGN KEY([IdSilaboFase])
REFERENCES [dbo].[SilaboFase] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboFaseSaber] CHECK CONSTRAINT [FK_dbo.SilaboFaseSaber_dbo.SilaboFase_IdSilaboFase]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboFaseUnidad_dbo.SilaboFase_IdSilaboFase]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboFaseUnidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboFaseUnidad_dbo.SilaboFase_IdSilaboFase] FOREIGN KEY([IdSilaboFase])
REFERENCES [dbo].[SilaboFase] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboFaseUnidad] CHECK CONSTRAINT [FK_dbo.SilaboFaseUnidad_dbo.SilaboFase_IdSilaboFase]
GO
/****** Object:  ForeignKey [FK_dbo.SilaboFaseUnidad_dbo.Unidad_IdSilaboUnidad]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[SilaboFaseUnidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SilaboFaseUnidad_dbo.Unidad_IdSilaboUnidad] FOREIGN KEY([IdSilaboUnidad])
REFERENCES [dbo].[Unidad] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilaboFaseUnidad] CHECK CONSTRAINT [FK_dbo.SilaboFaseUnidad_dbo.Unidad_IdSilaboUnidad]
GO
/****** Object:  ForeignKey [FK_dbo.Unidad_dbo.Asignatura_IdAsignatura]    Script Date: 05/25/2019 20:23:07 ******/
ALTER TABLE [dbo].[Unidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Unidad_dbo.Asignatura_IdAsignatura] FOREIGN KEY([IdAsignatura])
REFERENCES [dbo].[Asignatura] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Unidad] CHECK CONSTRAINT [FK_dbo.Unidad_dbo.Asignatura_IdAsignatura]
GO
