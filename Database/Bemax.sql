USE [master]
GO
/****** Object:  Database [Bemax]    Script Date: 16.06.2019 17:25:02 ******/
CREATE DATABASE [Bemax]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bemax', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Bemax.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bemax_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Bemax_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Bemax] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bemax].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bemax] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bemax] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bemax] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bemax] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bemax] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bemax] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bemax] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bemax] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bemax] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bemax] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bemax] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bemax] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bemax] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bemax] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bemax] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Bemax] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bemax] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bemax] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bemax] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bemax] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bemax] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bemax] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bemax] SET RECOVERY FULL 
GO
ALTER DATABASE [Bemax] SET  MULTI_USER 
GO
ALTER DATABASE [Bemax] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bemax] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bemax] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bemax] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bemax] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Bemax', N'ON'
GO
ALTER DATABASE [Bemax] SET QUERY_STORE = OFF
GO
USE [Bemax]
GO
/****** Object:  Table [dbo].[HomeBemax]    Script Date: 16.06.2019 17:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeBemax](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Text] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeBgSlider]    Script Date: 16.06.2019 17:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeBgSlider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title1] [nvarchar](250) NULL,
	[Title2] [nvarchar](250) NULL,
	[Button] [nvarchar](250) NULL,
	[Photo] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeBlog]    Script Date: 16.06.2019 17:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeBlog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](250) NULL,
	[Date] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Text] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeCards]    Script Date: 16.06.2019 17:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeCards](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](250) NULL,
	[Icon] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Text] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeChoose]    Script Date: 16.06.2019 17:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeChoose](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Video] [nvarchar](250) NULL,
	[Icon] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Text] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeContact]    Script Date: 16.06.2019 17:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeContact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](250) NULL,
	[Fax] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[Phone] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeDescription]    Script Date: 16.06.2019 17:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeDescription](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sentence] [nvarchar](250) NULL,
	[Button] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeFeatures]    Script Date: 16.06.2019 17:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeFeatures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeLogo]    Script Date: 16.06.2019 17:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeLogo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeMenu]    Script Date: 16.06.2019 17:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Href] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeProjects]    Script Date: 16.06.2019 17:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeProjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Text] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeTest]    Script Date: 16.06.2019 17:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeTest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
	[Position] [nvarchar](250) NULL,
	[Text] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeWork]    Script Date: 16.06.2019 17:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeWork](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Text] [nvarchar](250) NULL,
	[Button] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HomeBgSlider] ON 

INSERT [dbo].[HomeBgSlider] ([Id], [Title1], [Title2], [Button], [Photo]) VALUES (1, N'Dream Big', N'Work Hard', N'Get Started', N'slide_01.jpg')
INSERT [dbo].[HomeBgSlider] ([Id], [Title1], [Title2], [Button], [Photo]) VALUES (2, N'We Are Here', N'Dusk Till Dawn', N'Get Started', N'slide_02.jpg')
INSERT [dbo].[HomeBgSlider] ([Id], [Title1], [Title2], [Button], [Photo]) VALUES (3, N'We Are Here', N'Here We Are', N'Get Started', N'slide_03.jpg')
SET IDENTITY_INSERT [dbo].[HomeBgSlider] OFF
SET IDENTITY_INSERT [dbo].[HomeBlog] ON 

INSERT [dbo].[HomeBlog] ([Id], [Photo], [Date], [Title], [Text]) VALUES (1, N'blog_01.jpg', N'June 16, 2019', N'10 Tips for a Business Strong Start', N'Donec sit amet neque lectus. Ut vitae turpis justo. Nullam a sodales est, at viverra sem. Mauris vitae pellentesque nisi, sit amet viverra orci.')
INSERT [dbo].[HomeBlog] ([Id], [Photo], [Date], [Title], [Text]) VALUES (2, N'blog_02.jpg', N'September 3, 2002', N'10 Things I Hate About You', N'Donec sit amet neque lectus. Ut vitae turpis justo. Nullam a sodales est, at viverra sem. Mauris vitae pellentesque nisi, sit amet viverra orci.')
INSERT [dbo].[HomeBlog] ([Id], [Photo], [Date], [Title], [Text]) VALUES (3, N'blog_03.jpg', N'September 3, 2002', N'10 Things I Hate About You', N'Donec sit amet neque lectus. Ut vitae turpis justo. Nullam a sodales est, at viverra sem. Mauris vitae pellentesque nisi, sit amet viverra orci.')
SET IDENTITY_INSERT [dbo].[HomeBlog] OFF
SET IDENTITY_INSERT [dbo].[HomeCards] ON 

INSERT [dbo].[HomeCards] ([Id], [Photo], [Icon], [Title], [Text]) VALUES (1, N'iconbox_01.jpg', N'bar-chart', N'Top Investment Advisors', N' Mauris scelerisque ut ipsum id vulputate. Nulla laoreet, ligula vel congue ultricies, nibh ipsum egestas nunc, id porta nibh nunc non felis. Vestibulum nibh urna, lobortis ut euismod sed, dignissim non neque')
INSERT [dbo].[HomeCards] ([Id], [Photo], [Icon], [Title], [Text]) VALUES (2, N'iconbox_02.jpg', N'cogs', N'Business Performance', N' Mauris scelerisque ut ipsum id vulputate. Nulla laoreet, ligula vel congue ultricies, nibh ipsum egestas nunc, id porta nibh nunc non felis. Vestibulum nibh urna, lobortis ut euismod sed, dignissim non neque')
INSERT [dbo].[HomeCards] ([Id], [Photo], [Icon], [Title], [Text]) VALUES (3, N'iconbox_03.jpg', N'line-chart', N'Growth Hacking and Success', N' Mauris scelerisque ut ipsum id vulputate. Nulla laoreet, ligula vel congue ultricies, nibh ipsum egestas nunc, id porta nibh nunc non felis. Vestibulum nibh urna, lobortis ut euismod sed, dignissim non neque')
SET IDENTITY_INSERT [dbo].[HomeCards] OFF
SET IDENTITY_INSERT [dbo].[HomeChoose] ON 

INSERT [dbo].[HomeChoose] ([Id], [Video], [Icon], [Title], [Text]) VALUES (1, NULL, N'cogs', N'Awesome Design', N'Morbi vehicula a nibh in commodo. Aliquam quis dolor eget lectus pulvinar malesuada. Suspendisse eu rhoncus ligula.')
INSERT [dbo].[HomeChoose] ([Id], [Video], [Icon], [Title], [Text]) VALUES (2, NULL, N'diamond', N'Flexible Layouts', N'Morbi vehicula a nibh in commodo. Aliquam quis dolor eget lectus pulvinar malesuada. Suspendisse eu rhoncus ligula.')
INSERT [dbo].[HomeChoose] ([Id], [Video], [Icon], [Title], [Text]) VALUES (3, NULL, N'briefcase', N'Easy to Use', N'Morbi vehicula a nibh in commodo. Aliquam quis dolor eget lectus pulvinar malesuada. Suspendisse eu rhoncus ligula.')
SET IDENTITY_INSERT [dbo].[HomeChoose] OFF
SET IDENTITY_INSERT [dbo].[HomeContact] ON 

INSERT [dbo].[HomeContact] ([Id], [Address], [Fax], [Email], [Phone]) VALUES (1, N'Rue du Rhone 41, 1204 Geneve, Switzerland', N' +(112) 345 8999', N'contact@bemax.com', N'+41 22 707 30 50')
SET IDENTITY_INSERT [dbo].[HomeContact] OFF
SET IDENTITY_INSERT [dbo].[HomeDescription] ON 

INSERT [dbo].[HomeDescription] ([Id], [Sentence], [Button]) VALUES (1, N'We’ve completed more than project for our amazing clients, If you interested?', N'Hire Us')
SET IDENTITY_INSERT [dbo].[HomeDescription] OFF
SET IDENTITY_INSERT [dbo].[HomeFeatures] ON 

INSERT [dbo].[HomeFeatures] ([Id], [Name]) VALUES (1, N'About Us')
INSERT [dbo].[HomeFeatures] ([Id], [Name]) VALUES (2, N'Our Story')
INSERT [dbo].[HomeFeatures] ([Id], [Name]) VALUES (3, N'Terms & Conditions')
INSERT [dbo].[HomeFeatures] ([Id], [Name]) VALUES (4, N'Privacy & Policy')
INSERT [dbo].[HomeFeatures] ([Id], [Name]) VALUES (5, N'Sites Map')
SET IDENTITY_INSERT [dbo].[HomeFeatures] OFF
SET IDENTITY_INSERT [dbo].[HomeLogo] ON 

INSERT [dbo].[HomeLogo] ([Id], [Photo]) VALUES (1, N'partner_01.png')
INSERT [dbo].[HomeLogo] ([Id], [Photo]) VALUES (2, N'partner_02.png')
INSERT [dbo].[HomeLogo] ([Id], [Photo]) VALUES (3, N'partner_03.png')
INSERT [dbo].[HomeLogo] ([Id], [Photo]) VALUES (4, N'partner_04.png')
INSERT [dbo].[HomeLogo] ([Id], [Photo]) VALUES (5, N'partner_05.png')
INSERT [dbo].[HomeLogo] ([Id], [Photo]) VALUES (6, N'partner_06.png')
SET IDENTITY_INSERT [dbo].[HomeLogo] OFF
SET IDENTITY_INSERT [dbo].[HomeMenu] ON 

INSERT [dbo].[HomeMenu] ([Id], [Href], [Name]) VALUES (1, N'@Url.Action("Index","Home")', N'Menu')
INSERT [dbo].[HomeMenu] ([Id], [Href], [Name]) VALUES (2, N'#', N'Features')
INSERT [dbo].[HomeMenu] ([Id], [Href], [Name]) VALUES (3, N'#', N'Pages')
INSERT [dbo].[HomeMenu] ([Id], [Href], [Name]) VALUES (4, N'#', N'Portfolio')
INSERT [dbo].[HomeMenu] ([Id], [Href], [Name]) VALUES (5, N'#', N'Blog')
INSERT [dbo].[HomeMenu] ([Id], [Href], [Name]) VALUES (6, N'#', N'Contact')
SET IDENTITY_INSERT [dbo].[HomeMenu] OFF
SET IDENTITY_INSERT [dbo].[HomeProjects] ON 

INSERT [dbo].[HomeProjects] ([Id], [Photo], [Title], [Text]) VALUES (1, N'project_01.jpg', N'Business Growth Solution', N'Finance, Marketing')
INSERT [dbo].[HomeProjects] ([Id], [Photo], [Title], [Text]) VALUES (2, N'project_02.jpg', N'Business Growth Solution', N'Finance, Marketing')
INSERT [dbo].[HomeProjects] ([Id], [Photo], [Title], [Text]) VALUES (3, N'project_03.jpg', N'Business Growth Solution', N'Finance, Marketing')
INSERT [dbo].[HomeProjects] ([Id], [Photo], [Title], [Text]) VALUES (4, N'project_04.jpg', N'Business Growth Solution', N'Finance, Marketing')
INSERT [dbo].[HomeProjects] ([Id], [Photo], [Title], [Text]) VALUES (5, N'project_05.jpg', N'Business Growth Solution', N'Finance, Marketing')
INSERT [dbo].[HomeProjects] ([Id], [Photo], [Title], [Text]) VALUES (6, N'project_06.jpg', N'Business Growth Solution', N'Finance, Marketing')
INSERT [dbo].[HomeProjects] ([Id], [Photo], [Title], [Text]) VALUES (7, N'project_07.jpg', N'Business Growth Solution', N'Finance, Marketing')
INSERT [dbo].[HomeProjects] ([Id], [Photo], [Title], [Text]) VALUES (8, N'project_08.jpg', N'Business Growth Solution', N'Finance, Marketing')
INSERT [dbo].[HomeProjects] ([Id], [Photo], [Title], [Text]) VALUES (9, N'project_09.jpg', N'Business Growth Solution', N'Finance, Marketing')
INSERT [dbo].[HomeProjects] ([Id], [Photo], [Title], [Text]) VALUES (10, N'project_10.jpg', N'Business Growth Solution', N'Finance, Marketing')
INSERT [dbo].[HomeProjects] ([Id], [Photo], [Title], [Text]) VALUES (11, N'project_11.jpg', N'Business Growth Solution', N'Finance, Marketing')
INSERT [dbo].[HomeProjects] ([Id], [Photo], [Title], [Text]) VALUES (12, N'project_12.jpg', N'Business Growth Solution', N'Finance, Marketing')
SET IDENTITY_INSERT [dbo].[HomeProjects] OFF
SET IDENTITY_INSERT [dbo].[HomeTest] ON 

INSERT [dbo].[HomeTest] ([Id], [Photo], [Name], [Position], [Text]) VALUES (1, N'user_01.png', N'John Doe', N'Project Manager', N'Donec sit amet neque lectus. Ut vitae turpis justo. Nullam a sodales est, at viverra sem. Mauris vitae pellentesque nisi, sit amet viverra orci.')
INSERT [dbo].[HomeTest] ([Id], [Photo], [Name], [Position], [Text]) VALUES (2, N'user_02.png', N'Kojima', N'CEO', N'Donec sit amet neque lectus. Ut vitae turpis justo. Nullam a sodales est, at viverra sem. Mauris vitae pellentesque nisi, sit amet viverra orci.')
SET IDENTITY_INSERT [dbo].[HomeTest] OFF
SET IDENTITY_INSERT [dbo].[HomeWork] ON 

INSERT [dbo].[HomeWork] ([Id], [Photo], [Title], [Text], [Button]) VALUES (1, N'hire_us.png', N'Working with Us', N'We’ve completed more than 100+ project for our am azing clients, If you interested?', N'Hire Us')
SET IDENTITY_INSERT [dbo].[HomeWork] OFF
USE [master]
GO
ALTER DATABASE [Bemax] SET  READ_WRITE 
GO
