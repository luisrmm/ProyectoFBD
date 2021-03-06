USE [ProyectoFBD]
GO
/****** Object:  Table [dbo].[academico]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[academico](
	[AcademicoID] [int] IDENTITY(1,1) NOT NULL,
	[AspiranteID] [int] NOT NULL,
	[IdiomaID] [int] NULL,
 CONSTRAINT [PK__academic__13D206C4B9CF7718] PRIMARY KEY CLUSTERED 
(
	[AcademicoID] ASC,
	[AspiranteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspirante]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspirante](
	[Cedula] [int] NOT NULL,
	[Nombre] [varchar](30) NULL,
	[Apeliido] [varchar](30) NULL,
	[FechaNacimiento] [datetime] NULL,
	[Telefono] [int] NULL,
	[Correo] [varchar](50) NULL,
	[LaboralID] [int] NULL,
	[EstadoID] [int] NULL,
	[ResidenciaID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[conexion]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conexion](
	[ConexionID] [int] IDENTITY(1,1) NOT NULL,
	[AspiranteID] [int] NOT NULL,
	[GradoAcadID] [int] NULL,
 CONSTRAINT [PK__conexion__32E6B4A40B5D2204] PRIMARY KEY CLUSTERED 
(
	[ConexionID] ASC,
	[AspiranteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estadocivil]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estadocivil](
	[EstadoID] [int] NOT NULL,
	[Estado] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[EstadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gradoacademico]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gradoacademico](
	[GradoAcademicoID] [int] NOT NULL,
	[NombreCarrera] [varchar](30) NULL,
	[NombreInstitucion] [varchar](51) NULL,
	[AñoGraducaicon] [datetime] NULL,
 CONSTRAINT [PK__gradoaca__0228E9957A72416D] PRIMARY KEY CLUSTERED 
(
	[GradoAcademicoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idioma]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idioma](
	[IdiomaID] [int] NOT NULL,
	[Idioma] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdiomaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laboral]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laboral](
	[LaboralID] [int] NOT NULL,
	[NombreEmpresa] [varchar](30) NULL,
	[Puesto] [varchar](30) NULL,
	[Años_labor] [int] NULL,
 CONSTRAINT [PK__laboral__5204CCA31A4706FB] PRIMARY KEY CLUSTERED 
(
	[LaboralID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[residencia]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[residencia](
	[ResidenciaID] [int] IDENTITY(1,1) NOT NULL,
	[Risidencia] [varchar](30) NULL,
 CONSTRAINT [PK__residenc__DFF855398A3F2907] PRIMARY KEY CLUSTERED 
(
	[ResidenciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[academico] ADD  CONSTRAINT [DF__academico__Idiom__24927208]  DEFAULT (NULL) FOR [IdiomaID]
GO
ALTER TABLE [dbo].[aspirante] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[aspirante] ADD  DEFAULT (NULL) FOR [Apeliido]
GO
ALTER TABLE [dbo].[aspirante] ADD  DEFAULT (NULL) FOR [FechaNacimiento]
GO
ALTER TABLE [dbo].[aspirante] ADD  DEFAULT (NULL) FOR [Telefono]
GO
ALTER TABLE [dbo].[aspirante] ADD  DEFAULT (NULL) FOR [Correo]
GO
ALTER TABLE [dbo].[aspirante] ADD  DEFAULT (NULL) FOR [LaboralID]
GO
ALTER TABLE [dbo].[aspirante] ADD  DEFAULT (NULL) FOR [EstadoID]
GO
ALTER TABLE [dbo].[aspirante] ADD  DEFAULT (NULL) FOR [ResidenciaID]
GO
ALTER TABLE [dbo].[conexion] ADD  CONSTRAINT [DF__conexion__GradoA__30F848ED]  DEFAULT (NULL) FOR [GradoAcadID]
GO
ALTER TABLE [dbo].[estadocivil] ADD  DEFAULT (NULL) FOR [Estado]
GO
ALTER TABLE [dbo].[gradoacademico] ADD  CONSTRAINT [DF__gradoacad__Nombr__36B12243]  DEFAULT (NULL) FOR [NombreCarrera]
GO
ALTER TABLE [dbo].[gradoacademico] ADD  CONSTRAINT [DF__gradoacad__Nombr__37A5467C]  DEFAULT (NULL) FOR [NombreInstitucion]
GO
ALTER TABLE [dbo].[gradoacademico] ADD  CONSTRAINT [DF__gradoacad__AñoGr__38996AB5]  DEFAULT (NULL) FOR [AñoGraducaicon]
GO
ALTER TABLE [dbo].[idioma] ADD  DEFAULT (NULL) FOR [Idioma]
GO
ALTER TABLE [dbo].[residencia] ADD  CONSTRAINT [DF__residenci__Risid__4316F928]  DEFAULT (NULL) FOR [Risidencia]
GO
ALTER TABLE [dbo].[academico]  WITH CHECK ADD  CONSTRAINT [FK_academico_aspirante] FOREIGN KEY([AspiranteID])
REFERENCES [dbo].[aspirante] ([Cedula])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[academico] CHECK CONSTRAINT [FK_academico_aspirante]
GO
ALTER TABLE [dbo].[academico]  WITH CHECK ADD  CONSTRAINT [FK_academico_idioma] FOREIGN KEY([IdiomaID])
REFERENCES [dbo].[idioma] ([IdiomaID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[academico] CHECK CONSTRAINT [FK_academico_idioma]
GO
ALTER TABLE [dbo].[aspirante]  WITH CHECK ADD  CONSTRAINT [FK_aspirante_estadocivil] FOREIGN KEY([EstadoID])
REFERENCES [dbo].[estadocivil] ([EstadoID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[aspirante] CHECK CONSTRAINT [FK_aspirante_estadocivil]
GO
ALTER TABLE [dbo].[aspirante]  WITH CHECK ADD  CONSTRAINT [FK_aspirante_residencia] FOREIGN KEY([ResidenciaID])
REFERENCES [dbo].[residencia] ([ResidenciaID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[aspirante] CHECK CONSTRAINT [FK_aspirante_residencia]
GO
ALTER TABLE [dbo].[conexion]  WITH CHECK ADD  CONSTRAINT [FK_conexion_aspirante] FOREIGN KEY([AspiranteID])
REFERENCES [dbo].[aspirante] ([Cedula])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[conexion] CHECK CONSTRAINT [FK_conexion_aspirante]
GO
ALTER TABLE [dbo].[conexion]  WITH CHECK ADD  CONSTRAINT [FK_conexion_gradoacademico] FOREIGN KEY([GradoAcadID])
REFERENCES [dbo].[gradoacademico] ([GradoAcademicoID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[conexion] CHECK CONSTRAINT [FK_conexion_gradoacademico]
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteAspirante]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[SP_DeleteAspirante](
@Id int)
as 
BEGIN

delete laboral from aspirante, laboral
where aspirante.Cedula = @Id and laboral.LaboralID = aspirante.LaboralID;

delete academico from academico
where academico.AspiranteID=@id;

delete gradoacademico from gradoacademico, conexion
where conexion.AspiranteID = @Id and gradoacademico.GradoAcademicoID = conexion.GradoAcadID;

delete conexion from conexion
where conexion.AspiranteID=@id;

delete aspirante
from aspirante,laboral,academico,conexion,gradoacademico
WHERE aspirante.Cedula = @Id;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_EstadoCivil]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_EstadoCivil]
as 
begin
SELECT * FROM estadocivil;
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Idioma]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_Idioma]
as
begin 
select * from idioma;
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Residencia]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Residencia]
as
begin
select * from residencia;
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectAspirantes]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[SP_SelectAspirantes]
as
BEGIN
SELECT aspirante.Cedula, aspirante.Nombre, aspirante.Apeliido, aspirante.FechaNacimiento,estadocivil.Estado, aspirante.Telefono, aspirante.Correo, laboral.NombreEmpresa, laboral.Puesto, laboral.Años_labor, residencia.Risidencia, idioma.Idioma, gradoacademico.NombreCarrera, gradoacademico.NombreInstitucion, gradoacademico.AñoGraducaicon
FROM academico
INNER JOIN idioma ON idioma.IdiomaID = academico.IdiomaID
INNER JOIN aspirante ON aspirante.Cedula = academico.AspiranteID
INNER JOIN estadocivil ON estadocivil.EstadoID = aspirante.EstadoID
INNER JOIN laboral ON aspirante.LaboralID = laboral.LaboralID
INNER JOIN residencia ON aspirante.ResidenciaID = residencia.ResidenciaID
INNER JOIN conexion ON conexion.AspiranteId = aspirante.Cedula
INNER JOIN gradoacademico ON gradoacademico.GradoAcademicoID = conexion.GradoAcadID;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectCarrera]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SelectCarrera](
@GradoID varchar(30))

as
BEGIN
SELECT gradoacademico.NombreCarrera, aspirante.Cedula, aspirante.Nombre, aspirante.Apeliido, laboral.Años_labor, gradoacademico.NombreCarrera
FROM conexion
INNER JOIN aspirante ON  conexion.AspiranteID = aspirante.Cedula
INNER JOIN laboral ON aspirante.Cedula = laboral.LaboralID
INNER JOIN gradoacademico ON gradoacademico.GradoAcademicoID = conexion.GradoAcadID
WHERE gradoacademico.NombreCarrera = @GradoID;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectIdioma]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[SP_SelectIdioma](
@idioma int
)
as
BEGIN
SELECT  idioma.Idioma, aspirante.Cedula, aspirante.Nombre, aspirante.Apeliido, laboral.Años_labor, gradoacademico.NombreCarrera
FROM idioma
INNER JOIN academico ON academico.IdiomaID = idioma.IdiomaID
INNER JOIN aspirante ON academico.AspiranteID = aspirante.Cedula 
INNER JOIN laboral ON aspirante.Cedula = laboral.LaboralID
INNER JOIN conexion ON aspirante.Cedula = conexion.AspiranteID
INNER JOIN gradoacademico ON gradoacademico.GradoAcademicoID = conexion.GradoAcadID
WHERE idioma.IdiomaID = 5;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateAspirante]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UpdateAspirante](
@id int,
@nombre varchar(30),
@apellido varchar(30),
@Fecha_Nac date,
@Tel int,
@correo varchar(50),
@stateId int,
@residenciaId int)
AS
BEGIN
update  aspirante set aspirante.Nombre = @nombre,
aspirante.Apeliido = @apellido,
aspirante.FechaNacimiento = @Fecha_Nac,
aspirante.Telefono = @Tel,
aspirante.Correo = @correo,
aspirante.ResidenciaID = @residenciaId,
aspirante.EstadoID = @stateId  from aspirante
INNER JOIN academico ON aspirante.Cedula = academico.AspiranteID
INNER JOIN conexion ON aspirante.Cedula = conexion.AspiranteId
INNER JOIN gradoacademico ON conexion.GradoAcadID = gradoacademico.GradoAcademicoID
INNER JOIN idioma ON academico.IdiomaID = idioma.IdiomaID
INNER JOIN laboral ON aspirante.LaboralID = laboral.LaboralID
INNER JOIN estadocivil ON aspirante.EstadoID = estadocivil.EstadoID
INNER JOIN residencia ON aspirante.ResidenciaID = residencia.ResidenciaID

where Cedula = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertAcademico]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spInsertAcademico] (
@NombreCarrera varchar(30),
@NombreInstitucion varchar(51),
@FechaGraduacion datetime,
@idiomaID int,
@cedula int
)
as
begin 
SET NOCOUNT ON
insert into gradoacademico (GradoAcademicoID,NombreCarrera,NombreInstitucion,AñoGraducaicon)
values (@cedula,@NombreCarrera,@NombreInstitucion,@FechaGraduacion)
insert into conexion (AspiranteID, GradoAcadID)
values (@cedula, @cedula)
insert into academico (AspiranteID,IdiomaID)
values (@cedula,@idiomaID)
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertAspirante]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[spInsertAspirante] (
@cedula int,
@Nombre varchar(30),
@Apellido varchar(30),
@FechaNacimiento date,
@Telefono int,
@Correo varchar(30),
@EstadoID int,
@ResidenciaID int,
@NombreEmpresa varchar(30),
@Puesto varchar(30),
@AñosLaborados int
)
as
begin 
SET NOCOUNT ON
insert into laboral (LaboralID,NombreEmpresa, Puesto, Años_labor)
values (@cedula,@NombreEmpresa,@Puesto,@AñosLaborados)
insert into aspirante (Cedula,Nombre,Apeliido,FechaNacimiento,Telefono, Correo, LaboralID, EstadoID, ResidenciaID)
values (@cedula,@Nombre,@Apellido,@FechaNacimiento,@Telefono,@Correo,@cedula,@EstadoID,@ResidenciaID)

end
GO
/****** Object:  StoredProcedure [dbo].[spSelectAspirante]    Script Date: 10/8/2021 17:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spSelectAspirante](@cedula int)
as
begin
set nocount on
select aspirante.Cedula from aspirante
where aspirante.cedula = @cedula;
end
GO
