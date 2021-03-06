USE [master]
GO
/****** Object:  Database [deck]    Script Date: 6/12/2017 8:20:58 PM ******/
CREATE DATABASE [deck]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deck', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\deck.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deck_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\deck_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deck] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deck].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deck] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deck] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deck] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deck] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deck] SET ARITHABORT OFF 
GO
ALTER DATABASE [deck] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [deck] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deck] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deck] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deck] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deck] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deck] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deck] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deck] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deck] SET  ENABLE_BROKER 
GO
ALTER DATABASE [deck] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deck] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deck] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deck] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deck] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deck] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deck] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deck] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [deck] SET  MULTI_USER 
GO
ALTER DATABASE [deck] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deck] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deck] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deck] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deck] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [deck] SET QUERY_STORE = OFF
GO
USE [deck]
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
USE [deck]
GO
/****** Object:  Table [dbo].[cards]    Script Date: 6/12/2017 8:20:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cards](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cards_divinations]    Script Date: 6/12/2017 8:20:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cards_divinations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cards_id] [int] NULL,
	[divinations_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[divinations]    Script Date: 6/12/2017 8:20:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[divinations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[text] [varchar](150) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cards] ON 

INSERT [dbo].[cards] ([id], [name]) VALUES (1, N'The Sea')
INSERT [dbo].[cards] ([id], [name]) VALUES (2, N'The Limb')
INSERT [dbo].[cards] ([id], [name]) VALUES (3, N'The Stones')
INSERT [dbo].[cards] ([id], [name]) VALUES (4, N'The Ancestor')
INSERT [dbo].[cards] ([id], [name]) VALUES (5, N'The Waltzing Mouse')
INSERT [dbo].[cards] ([id], [name]) VALUES (6, N'The Ecorche')
INSERT [dbo].[cards] ([id], [name]) VALUES (7, N'The Plant')
INSERT [dbo].[cards] ([id], [name]) VALUES (8, N'The Effigy')
INSERT [dbo].[cards] ([id], [name]) VALUES (9, N'The Child')
INSERT [dbo].[cards] ([id], [name]) VALUES (10, N'The Blue Dog')
INSERT [dbo].[cards] ([id], [name]) VALUES (11, N'The Feather')
INSERT [dbo].[cards] ([id], [name]) VALUES (12, N'The Bottle')
INSERT [dbo].[cards] ([id], [name]) VALUES (13, N'The Burning Head')
INSERT [dbo].[cards] ([id], [name]) VALUES (14, N'The Tunnel')
INSERT [dbo].[cards] ([id], [name]) VALUES (15, N'The Ladder')
INSERT [dbo].[cards] ([id], [name]) VALUES (16, N'The Bundle')
INSERT [dbo].[cards] ([id], [name]) VALUES (17, N'The Insects')
INSERT [dbo].[cards] ([id], [name]) VALUES (18, N'The Urn')
INSERT [dbo].[cards] ([id], [name]) VALUES (19, N'The Yellow Bird')
INSERT [dbo].[cards] ([id], [name]) VALUES (20, N'The Black Doll')
SET IDENTITY_INSERT [dbo].[cards] OFF
SET IDENTITY_INSERT [dbo].[cards_divinations] ON 

INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (1, 1, 1)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (2, 1, 2)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (3, 1, 3)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (4, 1, 4)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (5, 1, 5)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (6, 1, 6)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (7, 1, 7)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (8, 1, 8)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (9, 1, 9)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (10, 1, 10)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (11, 1, 11)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (12, 1, 12)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (13, 1, 13)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (14, 2, 14)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (15, 2, 15)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (16, 2, 16)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (17, 2, 17)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (18, 2, 18)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (19, 2, 19)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (20, 2, 20)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (21, 2, 21)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (22, 2, 22)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (23, 2, 23)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (24, 2, 24)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (25, 2, 25)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (26, 2, 26)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (27, 3, 27)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (28, 3, 28)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (29, 3, 29)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (30, 3, 30)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (31, 3, 31)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (32, 3, 32)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (33, 3, 33)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (34, 3, 34)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (35, 3, 35)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (36, 3, 36)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (37, 3, 37)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (38, 3, 38)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (39, 4, 39)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (40, 4, 40)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (41, 4, 41)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (42, 4, 42)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (43, 4, 43)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (44, 4, 44)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (45, 4, 45)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (46, 4, 46)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (47, 4, 47)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (48, 4, 48)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (49, 4, 49)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (50, 4, 50)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (51, 4, 51)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (52, 5, 52)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (53, 5, 53)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (54, 5, 54)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (55, 5, 55)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (56, 5, 56)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (57, 5, 57)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (58, 5, 58)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (59, 5, 59)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (60, 5, 60)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (61, 5, 61)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (62, 5, 62)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (63, 5, 63)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (64, 5, 64)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (65, 6, 65)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (66, 6, 66)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (67, 6, 67)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (68, 6, 68)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (69, 6, 69)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (70, 6, 70)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (71, 6, 71)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (72, 6, 72)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (73, 6, 73)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (74, 6, 74)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (75, 6, 75)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (76, 6, 76)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (77, 6, 77)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (78, 7, 78)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (79, 7, 79)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (80, 7, 80)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (81, 7, 81)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (82, 7, 82)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (83, 7, 83)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (84, 7, 84)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (85, 7, 85)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (86, 7, 86)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (87, 7, 87)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (88, 7, 88)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (89, 7, 89)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (90, 7, 90)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (91, 8, 91)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (92, 8, 92)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (93, 8, 93)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (94, 8, 94)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (95, 8, 95)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (96, 8, 96)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (97, 8, 97)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (98, 8, 98)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (99, 8, 99)
GO
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (100, 8, 100)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (101, 8, 101)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (102, 8, 102)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (103, 8, 103)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (104, 9, 104)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (105, 9, 105)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (106, 9, 106)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (107, 9, 107)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (108, 9, 108)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (109, 9, 109)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (110, 9, 110)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (111, 9, 111)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (112, 9, 112)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (113, 9, 113)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (114, 9, 114)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (115, 9, 115)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (116, 9, 116)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (117, 10, 117)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (118, 10, 118)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (119, 10, 119)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (120, 10, 120)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (121, 10, 121)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (122, 10, 122)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (123, 10, 123)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (124, 10, 124)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (125, 10, 125)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (126, 10, 126)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (127, 10, 127)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (128, 11, 128)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (129, 11, 129)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (130, 11, 130)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (131, 11, 131)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (132, 11, 132)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (133, 11, 133)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (134, 11, 134)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (135, 11, 135)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (136, 11, 136)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (137, 11, 137)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (138, 11, 138)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (139, 11, 139)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (140, 11, 140)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (141, 12, 141)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (142, 12, 142)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (143, 12, 143)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (144, 12, 144)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (145, 12, 145)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (146, 12, 146)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (147, 12, 147)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (148, 12, 148)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (149, 12, 149)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (150, 12, 150)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (151, 12, 151)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (152, 12, 152)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (153, 12, 153)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (154, 13, 154)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (155, 13, 155)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (156, 13, 156)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (157, 13, 157)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (158, 13, 158)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (159, 13, 159)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (160, 13, 160)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (161, 13, 161)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (162, 13, 162)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (163, 13, 163)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (164, 13, 164)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (165, 13, 165)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (166, 13, 166)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (167, 14, 167)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (168, 14, 168)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (169, 14, 169)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (170, 14, 170)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (171, 14, 171)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (172, 14, 172)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (173, 14, 173)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (174, 14, 174)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (175, 14, 175)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (176, 14, 176)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (177, 14, 177)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (178, 14, 178)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (179, 14, 179)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (180, 15, 180)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (181, 15, 181)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (182, 15, 182)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (183, 15, 183)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (184, 15, 184)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (185, 15, 185)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (186, 15, 186)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (187, 15, 187)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (188, 15, 188)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (189, 15, 189)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (190, 15, 190)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (191, 15, 191)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (192, 15, 192)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (193, 16, 193)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (194, 16, 194)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (195, 16, 195)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (196, 16, 196)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (197, 16, 197)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (198, 16, 198)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (199, 16, 199)
GO
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (200, 16, 200)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (201, 16, 201)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (202, 16, 202)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (203, 16, 203)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (204, 16, 204)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (205, 17, 205)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (206, 17, 206)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (207, 17, 207)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (208, 17, 208)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (209, 17, 209)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (210, 17, 210)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (211, 17, 211)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (212, 17, 212)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (213, 17, 213)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (214, 17, 214)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (215, 17, 215)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (216, 17, 216)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (217, 17, 217)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (218, 18, 218)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (219, 18, 219)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (220, 18, 220)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (221, 18, 221)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (222, 18, 222)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (223, 18, 223)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (224, 18, 224)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (225, 18, 225)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (226, 18, 226)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (227, 18, 227)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (228, 18, 228)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (229, 18, 229)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (230, 18, 230)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (231, 19, 231)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (232, 19, 232)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (233, 19, 233)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (234, 19, 234)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (235, 19, 235)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (236, 19, 236)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (237, 19, 237)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (238, 19, 238)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (239, 19, 239)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (240, 19, 240)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (241, 19, 241)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (242, 19, 242)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (243, 19, 243)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (244, 20, 244)
INSERT [dbo].[cards_divinations] ([id], [cards_id], [divinations_id]) VALUES (245, NULL, NULL)
SET IDENTITY_INSERT [dbo].[cards_divinations] OFF
SET IDENTITY_INSERT [dbo].[divinations] ON 

INSERT [dbo].[divinations] ([id], [text]) VALUES (1, N'January')
INSERT [dbo].[divinations] ([id], [text]) VALUES (2, N'wasting')
INSERT [dbo].[divinations] ([id], [text]) VALUES (3, N'loss of ears')
INSERT [dbo].[divinations] ([id], [text]) VALUES (4, N'an accident in an elevator')
INSERT [dbo].[divinations] ([id], [text]) VALUES (5, N'luurching sickness')
INSERT [dbo].[divinations] ([id], [text]) VALUES (6, N'cracks')
INSERT [dbo].[divinations] ([id], [text]) VALUES (7, N'false affection')
INSERT [dbo].[divinations] ([id], [text]) VALUES (8, N'vapors')
INSERT [dbo].[divinations] ([id], [text]) VALUES (9, N'a secret enemy')
INSERT [dbo].[divinations] ([id], [text]) VALUES (10, N'misdirection')
INSERT [dbo].[divinations] ([id], [text]) VALUES (11, N'demons')
INSERT [dbo].[divinations] ([id], [text]) VALUES (12, N'estrangement')
INSERT [dbo].[divinations] ([id], [text]) VALUES (13, N'chagrin')
INSERT [dbo].[divinations] ([id], [text]) VALUES (14, N'February')
INSERT [dbo].[divinations] ([id], [text]) VALUES (15, N'miscarriage of justice')
INSERT [dbo].[divinations] ([id], [text]) VALUES (16, N'gapes')
INSERT [dbo].[divinations] ([id], [text]) VALUES (17, N'a forged snapshot')
INSERT [dbo].[divinations] ([id], [text]) VALUES (18, N'morbid sensations')
INSERT [dbo].[divinations] ([id], [text]) VALUES (19, N'a useless sacrifice')
INSERT [dbo].[divinations] ([id], [text]) VALUES (20, N'alopecia')
INSERT [dbo].[divinations] ([id], [text]) VALUES (21, N'a generalized calamity')
INSERT [dbo].[divinations] ([id], [text]) VALUES (22, N'broken promises')
INSERT [dbo].[divinations] ([id], [text]) VALUES (23, N'ignominy')
INSERT [dbo].[divinations] ([id], [text]) VALUES (24, N'an accident in a theatre')
INSERT [dbo].[divinations] ([id], [text]) VALUES (25, N'fugues')
INSERT [dbo].[divinations] ([id], [text]) VALUES (26, N'poverty')
INSERT [dbo].[divinations] ([id], [text]) VALUES (27, N'March')
INSERT [dbo].[divinations] ([id], [text]) VALUES (28, N'a forged letter')
INSERT [dbo].[divinations] ([id], [text]) VALUES (29, N'paralysis')
INSERT [dbo].[divinations] ([id], [text]) VALUES (30, N'false arrest')
INSERT [dbo].[divinations] ([id], [text]) VALUES (31, N'falling sickness')
INSERT [dbo].[divinations] ([id], [text]) VALUES (32, N'evil communications')
INSERT [dbo].[divinations] ([id], [text]) VALUES (33, N'estrangement')
INSERT [dbo].[divinations] ([id], [text]) VALUES (34, N'a sudden affliction')
INSERT [dbo].[divinations] ([id], [text]) VALUES (35, N'anemia')
INSERT [dbo].[divinations] ([id], [text]) VALUES (36, N'strife')
INSERT [dbo].[divinations] ([id], [text]) VALUES (37, N'a distasteful duty')
INSERT [dbo].[divinations] ([id], [text]) VALUES (38, N'misconstruction')
INSERT [dbo].[divinations] ([id], [text]) VALUES (39, N'April')
INSERT [dbo].[divinations] ([id], [text]) VALUES (40, N'hereditary')
INSERT [dbo].[divinations] ([id], [text]) VALUES (41, N'weakness')
INSERT [dbo].[divinations] ([id], [text]) VALUES (42, N'thrush')
INSERT [dbo].[divinations] ([id], [text]) VALUES (43, N'loss of money')
INSERT [dbo].[divinations] ([id], [text]) VALUES (44, N'a false statement')
INSERT [dbo].[divinations] ([id], [text]) VALUES (45, N'morbid dependency')
INSERT [dbo].[divinations] ([id], [text]) VALUES (46, N'champerty')
INSERT [dbo].[divinations] ([id], [text]) VALUES (47, N'mergims')
INSERT [dbo].[divinations] ([id], [text]) VALUES (48, N'paranoia')
INSERT [dbo].[divinations] ([id], [text]) VALUES (49, N'an overdose')
INSERT [dbo].[divinations] ([id], [text]) VALUES (50, N'imprisionment')
INSERT [dbo].[divinations] ([id], [text]) VALUES (51, N'instable furniture')
INSERT [dbo].[divinations] ([id], [text]) VALUES (52, N'May')
INSERT [dbo].[divinations] ([id], [text]) VALUES (53, N'vertigo')
INSERT [dbo].[divinations] ([id], [text]) VALUES (54, N'loss of jewelry')
INSERT [dbo].[divinations] ([id], [text]) VALUES (55, N'a betise')
INSERT [dbo].[divinations] ([id], [text]) VALUES (56, N'morbid cravings')
INSERT [dbo].[divinations] ([id], [text]) VALUES (57, N'disorders of the large intestine')
INSERT [dbo].[divinations] ([id], [text]) VALUES (58, N'corruption')
INSERT [dbo].[divinations] ([id], [text]) VALUES (59, N'equivocal symptoms')
INSERT [dbo].[divinations] ([id], [text]) VALUES (60, N'a hazardous project')
INSERT [dbo].[divinations] ([id], [text]) VALUES (61, N'brawls')
INSERT [dbo].[divinations] ([id], [text]) VALUES (62, N'suicide')
INSERT [dbo].[divinations] ([id], [text]) VALUES (63, N'involentary seclusion')
INSERT [dbo].[divinations] ([id], [text]) VALUES (64, N'shriveling')
INSERT [dbo].[divinations] ([id], [text]) VALUES (65, N'June')
INSERT [dbo].[divinations] ([id], [text]) VALUES (66, N'sexual incompetence')
INSERT [dbo].[divinations] ([id], [text]) VALUES (67, N'a forged check')
INSERT [dbo].[divinations] ([id], [text]) VALUES (68, N'obscurity')
INSERT [dbo].[divinations] ([id], [text]) VALUES (69, N'irregularities')
INSERT [dbo].[divinations] ([id], [text]) VALUES (70, N'puckers')
INSERT [dbo].[divinations] ([id], [text]) VALUES (71, N'inconstancy')
INSERT [dbo].[divinations] ([id], [text]) VALUES (72, N'an accident on a pier')
INSERT [dbo].[divinations] ([id], [text]) VALUES (73, N'morbid sensibilities')
INSERT [dbo].[divinations] ([id], [text]) VALUES (74, N'deception')
INSERT [dbo].[divinations] ([id], [text]) VALUES (75, N'a social disease')
INSERT [dbo].[divinations] ([id], [text]) VALUES (76, N'confinement')
INSERT [dbo].[divinations] ([id], [text]) VALUES (77, N'cysts')
INSERT [dbo].[divinations] ([id], [text]) VALUES (78, N'July')
INSERT [dbo].[divinations] ([id], [text]) VALUES (79, N'tics')
INSERT [dbo].[divinations] ([id], [text]) VALUES (80, N'sexual indecision')
INSERT [dbo].[divinations] ([id], [text]) VALUES (81, N'impetigo')
INSERT [dbo].[divinations] ([id], [text]) VALUES (82, N'loss of intellect')
INSERT [dbo].[divinations] ([id], [text]) VALUES (83, N'misplaced confidence')
INSERT [dbo].[divinations] ([id], [text]) VALUES (84, N'writhing sickness')
INSERT [dbo].[divinations] ([id], [text]) VALUES (85, N'loose ends')
INSERT [dbo].[divinations] ([id], [text]) VALUES (86, N'palsy')
INSERT [dbo].[divinations] ([id], [text]) VALUES (87, N'assailed credit')
INSERT [dbo].[divinations] ([id], [text]) VALUES (88, N'dissolution')
INSERT [dbo].[divinations] ([id], [text]) VALUES (89, N'scandal')
INSERT [dbo].[divinations] ([id], [text]) VALUES (90, N'worms')
INSERT [dbo].[divinations] ([id], [text]) VALUES (91, N'August')
INSERT [dbo].[divinations] ([id], [text]) VALUES (92, N'a sexual problem')
INSERT [dbo].[divinations] ([id], [text]) VALUES (93, N'assailed honor')
INSERT [dbo].[divinations] ([id], [text]) VALUES (94, N'unpleasant secrets')
INSERT [dbo].[divinations] ([id], [text]) VALUES (95, N'amnesia')
INSERT [dbo].[divinations] ([id], [text]) VALUES (96, N'broken hopes')
INSERT [dbo].[divinations] ([id], [text]) VALUES (97, N'a misalliance')
INSERT [dbo].[divinations] ([id], [text]) VALUES (98, N'rashness')
INSERT [dbo].[divinations] ([id], [text]) VALUES (99, N'yaws')
GO
INSERT [dbo].[divinations] ([id], [text]) VALUES (100, N'clouded mentality')
INSERT [dbo].[divinations] ([id], [text]) VALUES (101, N'abrasions')
INSERT [dbo].[divinations] ([id], [text]) VALUES (102, N'financial loses')
INSERT [dbo].[divinations] ([id], [text]) VALUES (103, N'an accident in a stadium')
INSERT [dbo].[divinations] ([id], [text]) VALUES (104, N'September')
INSERT [dbo].[divinations] ([id], [text]) VALUES (105, N'denigration')
INSERT [dbo].[divinations] ([id], [text]) VALUES (106, N'sexual inadequacy')
INSERT [dbo].[divinations] ([id], [text]) VALUES (107, N'sties')
INSERT [dbo].[divinations] ([id], [text]) VALUES (108, N'hallucinations')
INSERT [dbo].[divinations] ([id], [text]) VALUES (109, N'breakage')
INSERT [dbo].[divinations] ([id], [text]) VALUES (110, N'loss of youth')
INSERT [dbo].[divinations] ([id], [text]) VALUES (111, N'rust')
INSERT [dbo].[divinations] ([id], [text]) VALUES (112, N'crawling sickness')
INSERT [dbo].[divinations] ([id], [text]) VALUES (113, N'an obstacle')
INSERT [dbo].[divinations] ([id], [text]) VALUES (114, N'forced restraint')
INSERT [dbo].[divinations] ([id], [text]) VALUES (115, N'aberrations')
INSERT [dbo].[divinations] ([id], [text]) VALUES (116, N'catarrh')
INSERT [dbo].[divinations] ([id], [text]) VALUES (117, N'October')
INSERT [dbo].[divinations] ([id], [text]) VALUES (118, N'loss of one of the senses')
INSERT [dbo].[divinations] ([id], [text]) VALUES (119, N'weltschemerz')
INSERT [dbo].[divinations] ([id], [text]) VALUES (120, N'disorders of the knee')
INSERT [dbo].[divinations] ([id], [text]) VALUES (121, N'disturbances')
INSERT [dbo].[divinations] ([id], [text]) VALUES (122, N'miscarriage of a child')
INSERT [dbo].[divinations] ([id], [text]) VALUES (123, N'an accident in a garage')
INSERT [dbo].[divinations] ([id], [text]) VALUES (124, N'dementia')
INSERT [dbo].[divinations] ([id], [text]) VALUES (125, N'fraud')
INSERT [dbo].[divinations] ([id], [text]) VALUES (126, N'a quarrel')
INSERT [dbo].[divinations] ([id], [text]) VALUES (127, N'wispiness')
INSERT [dbo].[divinations] ([id], [text]) VALUES (128, N'November')
INSERT [dbo].[divinations] ([id], [text]) VALUES (129, N'blackmail')
INSERT [dbo].[divinations] ([id], [text]) VALUES (130, N'a forged passport')
INSERT [dbo].[divinations] ([id], [text]) VALUES (131, N'hysterical pregnancy')
INSERT [dbo].[divinations] ([id], [text]) VALUES (132, N'loss of eyelashes')
INSERT [dbo].[divinations] ([id], [text]) VALUES (133, N'disorders of the small intestine')
INSERT [dbo].[divinations] ([id], [text]) VALUES (134, N'a disagreeable letter')
INSERT [dbo].[divinations] ([id], [text]) VALUES (135, N'delirium')
INSERT [dbo].[divinations] ([id], [text]) VALUES (136, N'hinderance to prospects')
INSERT [dbo].[divinations] ([id], [text]) VALUES (137, N'twitching')
INSERT [dbo].[divinations] ([id], [text]) VALUES (138, N'separation')
INSERT [dbo].[divinations] ([id], [text]) VALUES (139, N'imbroglios')
INSERT [dbo].[divinations] ([id], [text]) VALUES (140, N'a mistake')
INSERT [dbo].[divinations] ([id], [text]) VALUES (141, N'December')
INSERT [dbo].[divinations] ([id], [text]) VALUES (142, N'melancholia')
INSERT [dbo].[divinations] ([id], [text]) VALUES (143, N'itching')
INSERT [dbo].[divinations] ([id], [text]) VALUES (144, N'unfortunate publicity')
INSERT [dbo].[divinations] ([id], [text]) VALUES (145, N'a disregarded warning')
INSERT [dbo].[divinations] ([id], [text]) VALUES (146, N'irregularity')
INSERT [dbo].[divinations] ([id], [text]) VALUES (147, N'an accident on a bicycle')
INSERT [dbo].[divinations] ([id], [text]) VALUES (148, N'loss of feeling')
INSERT [dbo].[divinations] ([id], [text]) VALUES (149, N'flukes')
INSERT [dbo].[divinations] ([id], [text]) VALUES (150, N'vexation')
INSERT [dbo].[divinations] ([id], [text]) VALUES (151, N'intrigue')
INSERT [dbo].[divinations] ([id], [text]) VALUES (152, N'abandonment')
INSERT [dbo].[divinations] ([id], [text]) VALUES (153, N'frustrated hopes')
INSERT [dbo].[divinations] ([id], [text]) VALUES (154, N'Sunday')
INSERT [dbo].[divinations] ([id], [text]) VALUES (155, N'bafflement')
INSERT [dbo].[divinations] ([id], [text]) VALUES (156, N'loss of saliva')
INSERT [dbo].[divinations] ([id], [text]) VALUES (157, N'a forged deed')
INSERT [dbo].[divinations] ([id], [text]) VALUES (158, N'an impasse')
INSERT [dbo].[divinations] ([id], [text]) VALUES (159, N'extradition')
INSERT [dbo].[divinations] ([id], [text]) VALUES (160, N'a boating accident')
INSERT [dbo].[divinations] ([id], [text]) VALUES (161, N'chilblains')
INSERT [dbo].[divinations] ([id], [text]) VALUES (162, N'delayd desires')
INSERT [dbo].[divinations] ([id], [text]) VALUES (163, N'wandering sickness')
INSERT [dbo].[divinations] ([id], [text]) VALUES (164, N'evil companions')
INSERT [dbo].[divinations] ([id], [text]) VALUES (165, N'an impediment')
INSERT [dbo].[divinations] ([id], [text]) VALUES (166, N'despondency')
INSERT [dbo].[divinations] ([id], [text]) VALUES (167, N'Monday')
INSERT [dbo].[divinations] ([id], [text]) VALUES (168, N'sexual disturbance')
INSERT [dbo].[divinations] ([id], [text]) VALUES (169, N'a swindle')
INSERT [dbo].[divinations] ([id], [text]) VALUES (170, N'loss of wits')
INSERT [dbo].[divinations] ([id], [text]) VALUES (171, N'diseases of the blood')
INSERT [dbo].[divinations] ([id], [text]) VALUES (172, N'angst')
INSERT [dbo].[divinations] ([id], [text]) VALUES (173, N'false trust')
INSERT [dbo].[divinations] ([id], [text]) VALUES (174, N'an irrational project')
INSERT [dbo].[divinations] ([id], [text]) VALUES (175, N'an unpleasant discovery')
INSERT [dbo].[divinations] ([id], [text]) VALUES (176, N'bad luck')
INSERT [dbo].[divinations] ([id], [text]) VALUES (177, N'an execution')
INSERT [dbo].[divinations] ([id], [text]) VALUES (178, N'boredom')
INSERT [dbo].[divinations] ([id], [text]) VALUES (179, N'panic')
INSERT [dbo].[divinations] ([id], [text]) VALUES (180, N'Tuesday')
INSERT [dbo].[divinations] ([id], [text]) VALUES (181, N'slander')
INSERT [dbo].[divinations] ([id], [text]) VALUES (182, N'reversals')
INSERT [dbo].[divinations] ([id], [text]) VALUES (183, N'creeping sickness')
INSERT [dbo].[divinations] ([id], [text]) VALUES (184, N'a forged will')
INSERT [dbo].[divinations] ([id], [text]) VALUES (185, N'insomnia')
INSERT [dbo].[divinations] ([id], [text]) VALUES (186, N'loss of hair')
INSERT [dbo].[divinations] ([id], [text]) VALUES (187, N'detention')
INSERT [dbo].[divinations] ([id], [text]) VALUES (188, N'theft')
INSERT [dbo].[divinations] ([id], [text]) VALUES (189, N'cafard')
INSERT [dbo].[divinations] ([id], [text]) VALUES (190, N'jealousy')
INSERT [dbo].[divinations] ([id], [text]) VALUES (191, N'an accident in a restaurant')
INSERT [dbo].[divinations] ([id], [text]) VALUES (192, N'inanimation')
INSERT [dbo].[divinations] ([id], [text]) VALUES (193, N'Wednesday')
INSERT [dbo].[divinations] ([id], [text]) VALUES (194, N'a tedious illness')
INSERT [dbo].[divinations] ([id], [text]) VALUES (195, N'inadequate drainage')
INSERT [dbo].[divinations] ([id], [text]) VALUES (196, N'a broken engagement')
INSERT [dbo].[divinations] ([id], [text]) VALUES (197, N'a train accident')
INSERT [dbo].[divinations] ([id], [text]) VALUES (198, N'malaise')
INSERT [dbo].[divinations] ([id], [text]) VALUES (199, N'false friends')
GO
INSERT [dbo].[divinations] ([id], [text]) VALUES (200, N'hangnails')
INSERT [dbo].[divinations] ([id], [text]) VALUES (201, N'misconduct')
INSERT [dbo].[divinations] ([id], [text]) VALUES (202, N'regrets')
INSERT [dbo].[divinations] ([id], [text]) VALUES (203, N'disappointment')
INSERT [dbo].[divinations] ([id], [text]) VALUES (204, N'fluctuation')
INSERT [dbo].[divinations] ([id], [text]) VALUES (205, N'Thursday')
INSERT [dbo].[divinations] ([id], [text]) VALUES (206, N' folie a deux')
INSERT [dbo].[divinations] ([id], [text]) VALUES (207, N'green sickness')
INSERT [dbo].[divinations] ([id], [text]) VALUES (208, N'senseless talk')
INSERT [dbo].[divinations] ([id], [text]) VALUES (209, N'loss of vitality')
INSERT [dbo].[divinations] ([id], [text]) VALUES (210, N'an accident in a field')
INSERT [dbo].[divinations] ([id], [text]) VALUES (211, N'false hopes')
INSERT [dbo].[divinations] ([id], [text]) VALUES (212, N'spasms')
INSERT [dbo].[divinations] ([id], [text]) VALUES (213, N'a refusal')
INSERT [dbo].[divinations] ([id], [text]) VALUES (214, N'insincere love')
INSERT [dbo].[divinations] ([id], [text]) VALUES (215, N'blisters')
INSERT [dbo].[divinations] ([id], [text]) VALUES (216, N'disagreeable news')
INSERT [dbo].[divinations] ([id], [text]) VALUES (217, N'threats')
INSERT [dbo].[divinations] ([id], [text]) VALUES (218, N'Friday')
INSERT [dbo].[divinations] ([id], [text]) VALUES (219, N'a sexual dilemma')
INSERT [dbo].[divinations] ([id], [text]) VALUES (220, N'a forged invitation')
INSERT [dbo].[divinations] ([id], [text]) VALUES (221, N'harmful rays')
INSERT [dbo].[divinations] ([id], [text]) VALUES (222, N'alginuresis ')
INSERT [dbo].[divinations] ([id], [text]) VALUES (223, N'a broken heart')
INSERT [dbo].[divinations] ([id], [text]) VALUES (224, N'mumbling sickness')
INSERT [dbo].[divinations] ([id], [text]) VALUES (225, N'broken communications')
INSERT [dbo].[divinations] ([id], [text]) VALUES (226, N'injustice')
INSERT [dbo].[divinations] ([id], [text]) VALUES (227, N'interference')
INSERT [dbo].[divinations] ([id], [text]) VALUES (228, N'miscalculation')
INSERT [dbo].[divinations] ([id], [text]) VALUES (229, N'low fever')
INSERT [dbo].[divinations] ([id], [text]) VALUES (230, N'scales')
INSERT [dbo].[divinations] ([id], [text]) VALUES (231, N'Saturday')
INSERT [dbo].[divinations] ([id], [text]) VALUES (232, N'true love thrown away')
INSERT [dbo].[divinations] ([id], [text]) VALUES (233, N'pique')
INSERT [dbo].[divinations] ([id], [text]) VALUES (234, N'foot trouble')
INSERT [dbo].[divinations] ([id], [text]) VALUES (235, N'mania')
INSERT [dbo].[divinations] ([id], [text]) VALUES (236, N'barratry')
INSERT [dbo].[divinations] ([id], [text]) VALUES (237, N'an accident on a ladder')
INSERT [dbo].[divinations] ([id], [text]) VALUES (238, N'indiscretion')
INSERT [dbo].[divinations] ([id], [text]) VALUES (239, N'bone disease')
INSERT [dbo].[divinations] ([id], [text]) VALUES (240, N'thwarted ambitions')
INSERT [dbo].[divinations] ([id], [text]) VALUES (241, N'poison')
INSERT [dbo].[divinations] ([id], [text]) VALUES (242, N'an unfortunate catastrophe')
INSERT [dbo].[divinations] ([id], [text]) VALUES (243, N'complications')
INSERT [dbo].[divinations] ([id], [text]) VALUES (244, N'In the words of the old rhyme What most you fear is coming near')
SET IDENTITY_INSERT [dbo].[divinations] OFF
USE [master]
GO
ALTER DATABASE [deck] SET  READ_WRITE 
GO
